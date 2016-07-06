package premun.mps.ingrid.importer;

import javax.swing.*;
import javax.swing.filechooser.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.*;
import java.util.List;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.stream.*;

/**
 * Class represents an input form, that prompts user for import data.
 */
public class ImportForm {
    private JList fileList;
    private JButton addFileButton;
    private JButton removeFileButton;
    private JPanel buttonPanel;
    private JPanel fileButtonPanel;
    private JPanel fileLabelPanel;
    private JPanel fileListPanel;
    private JPanel filePanel;
    private JPanel mainPanel;
    private JButton importButton;
    private JButton cancelButton;
    private JComboBox languages;
    private JPanel languagePanel;

    private static JDialog frame = new JDialog();
    private static final Object lock = new Object();
    private List<File> files;
    private boolean confirmed;
    private String language;

    public ImportForm(List<String> mpsLanguages) {
        this.files = new ArrayList<>();
        this.confirmed = false;

        frame.setTitle("Import ANTLRv4 grammar");
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.setContentPane(this.mainPanel);
        frame.setSize(600, 300);
        frame.setModal(true);

        // Main buttons
        this.cancelButton.addActionListener(e -> this.cancelDialog());
        this.importButton.addActionListener(e -> this.confirmDialog());

        // Plus / minus buttons
        this.addFileButton.addActionListener(e -> this.addFiles());

        this.removeFileButton.setEnabled(false);
        this.removeFileButton.addActionListener(e -> this.removeFiles());

        // File list
        this.fileList.setModel(new DefaultListModel<String>());
        this.fileList.addListSelectionListener(e ->
            this.removeFileButton.setEnabled(!this.fileList.isSelectionEmpty())
        );

        // Language combo box
        DefaultComboBoxModel<String> languageModel = new DefaultComboBoxModel<>();
        mpsLanguages
            .stream()
            .forEach(languageModel::addElement);
        languageModel.addElement("New language...");
        this.languages.setModel(languageModel);
    }

    /**
     * Opens the form and waits for its closing. Then reports success.
     *
     * @return True, when the form has been filled in correctly and Import button has benn clicked.
     */
    public boolean openAndGet() {
        frame.setVisible(true);

        /*// Wait for the frame to close
        Thread t = new Thread() {
            public void run() {
                synchronized(lock) {
                    while (frame.isVisible()) {
                        try {
                            lock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        };

        t.start();

        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent arg0) {
                synchronized (lock) {
                    frame.setVisible(false);
                    lock.notify();
                }
            }
        });

        try {
            t.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }*/

        return this.isConfirmed();
    }

    public boolean isConfirmed() {
        return this.confirmed;
    }

    public String getLanguage() {
        return this.language;
    }

    public File[] getFiles() {
        return this.files.toArray(new File[0]);
    }

    /**
     * Called, when user presses the "Import" button.
     */
    private void confirmDialog() {
        if (this.files.size() == 0) {
            this.showError("No grammar files selected!");
            return;
        }

        // "New language..." selected
        if (this.languages.getSelectedIndex() == this.languages.getModel().getSize() - 1) {
            this.language = null;
        } else {
            this.language = (String) this.languages.getSelectedItem();
        }

        this.confirmed = true;
        this.closeDialog();
    }

    /**
     * Called, when user presses the "Import" button.
     */
    private void cancelDialog() {
        this.confirmed = false;
        this.closeDialog();
    }

    /**
     * Closes the dialog in the same way as when the cross is clicked.
     */
    private void closeDialog() {
        frame.dispatchEvent(new WindowEvent(frame, WindowEvent.WINDOW_CLOSING));
    }

    private void showError(String message) {
        JOptionPane.showMessageDialog(frame, message);
    }

    /**
     * Prompts user through file dialog to choose grammar files and adds them into the file list and the files field.
     */
    private void addFiles() {
        JFileChooser dialog = new JFileChooser();
        dialog.setMultiSelectionEnabled(true);
        dialog.addChoosableFileFilter(new FileNameExtensionFilter("ANTLRv4", "g4", "g"));
        dialog.showOpenDialog(frame);

        // Add selected files
        files.addAll(Arrays.asList(dialog.getSelectedFiles()));

        // Remove duplicates from the files list
        files = files
            .stream()
            .filter(distinctFile(File::getPath))
            .collect(Collectors.toList());

        this.syncFilesAndList();
    }

    /**
     * Removes rows selected in the list from the file list and the files field.
     */
    private void removeFiles() {
        this.fileList
            .getSelectedValuesList()
            .stream()
            .forEach(i -> this.files.removeIf(f -> f.getName().equals(i)));

        this.syncFilesAndList();
    }

    /**
     * Synchronizes content of the files field and the files list.
     */
    private void syncFilesAndList() {
        DefaultListModel listModel = (DefaultListModel) this.fileList.getModel();
        listModel.clear();
        files
            .stream()
            .map(File::getName)
            .forEach(listModel::addElement);
    }

    /**
     * Predicate used for detecting non-unique elements of an array.
     *
     * @param keyExtractor Object property extractor
     * @param <T> Type of the object
     * @return A Predicate that allows array unique operation.
     */
    private static <T> Predicate<T> distinctFile(Function<? super T,Object> keyExtractor) {
        Map<Object,Boolean> seen = new ConcurrentHashMap<>();
        return t -> seen.putIfAbsent(keyExtractor.apply(t), Boolean.TRUE) == null;
    }
}
