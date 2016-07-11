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

    private static JDialog frame = new JDialog(); // JFrame was not working together with MPS

    private List<File> files;
    private boolean confirmed;
    private String language;
    private List<String> mpsLanguages;

    public ImportForm(List<String> mpsLanguages) {
        this.mpsLanguages = mpsLanguages;
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
        this.mpsLanguages
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
     * @param <T>          Type of the object
     * @return A Predicate that allows array unique operation.
     */
    private static <T> Predicate<T> distinctFile(Function<? super T, Object> keyExtractor) {
        Map<Object, Boolean> seen = new ConcurrentHashMap<>();
        return t -> seen.putIfAbsent(keyExtractor.apply(t), Boolean.TRUE) == null;
    }

    {
// GUI initializer generated by IntelliJ IDEA GUI Designer
// >>> IMPORTANT!! <<<
// DO NOT EDIT OR ADD ANY CODE HERE!
        $$$setupUI$$$();
    }

    /**
     * Method generated by IntelliJ IDEA GUI Designer
     * >>> IMPORTANT!! <<<
     * DO NOT edit this method OR call it in your code!
     *
     * @noinspection ALL
     */
    private void $$$setupUI$$$() {
        mainPanel = new JPanel();
        mainPanel.setLayout(new GridBagLayout());
        mainPanel.setEnabled(true);
        filePanel = new JPanel();
        filePanel.setLayout(new GridBagLayout());
        GridBagConstraints gbc;
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill = GridBagConstraints.BOTH;
        gbc.insets = new Insets(8, 8, 8, 8);
        mainPanel.add(filePanel, gbc);
        fileButtonPanel = new JPanel();
        fileButtonPanel.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 2;
        gbc.gridy = 0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.NORTHWEST;
        filePanel.add(fileButtonPanel, gbc);
        addFileButton = new JButton();
        addFileButton.setFont(new Font(addFileButton.getFont().getName(), Font.BOLD, 16));
        addFileButton.setText("+");
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.WEST;
        fileButtonPanel.add(addFileButton, gbc);
        removeFileButton = new JButton();
        removeFileButton.setFont(new Font(removeFileButton.getFont().getName(), Font.BOLD, 16));
        removeFileButton.setText("-");
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 1;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.NORTH;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        fileButtonPanel.add(removeFileButton, gbc);
        fileLabelPanel = new JPanel();
        fileLabelPanel.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.NORTHWEST;
        filePanel.add(fileLabelPanel, gbc);
        final JLabel label1 = new JLabel();
        label1.setText("Grammar files:      ");
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.NORTHWEST;
        fileLabelPanel.add(label1, gbc);
        fileListPanel = new JPanel();
        fileListPanel.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 1;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill = GridBagConstraints.BOTH;
        gbc.insets = new Insets(0, 8, 0, 0);
        filePanel.add(fileListPanel, gbc);
        fileList = new JList();
        fileList.setSelectionMode(2);
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.fill = GridBagConstraints.BOTH;
        fileListPanel.add(fileList, gbc);
        buttonPanel = new JPanel();
        buttonPanel.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 2;
        gbc.weightx = 1.0;
        gbc.anchor = GridBagConstraints.SOUTHEAST;
        gbc.insets = new Insets(0, 0, 8, 8);
        mainPanel.add(buttonPanel, gbc);
        importButton = new JButton();
        importButton.setText("Import");
        gbc = new GridBagConstraints();
        gbc.gridx = 1;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.EAST;
        buttonPanel.add(importButton, gbc);
        cancelButton = new JButton();
        cancelButton.setText("Cancel");
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.EAST;
        buttonPanel.add(cancelButton, gbc);
        final JPanel panel1 = new JPanel();
        panel1.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 1;
        gbc.weightx = 1.0;
        gbc.anchor = GridBagConstraints.SOUTH;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.insets = new Insets(0, 8, 8, 8);
        mainPanel.add(panel1, gbc);
        languagePanel = new JPanel();
        languagePanel.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.SOUTH;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        panel1.add(languagePanel, gbc);
        final JPanel panel2 = new JPanel();
        panel2.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.WEST;
        languagePanel.add(panel2, gbc);
        final JLabel label2 = new JLabel();
        label2.setText("Target language:");
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.WEST;
        panel2.add(label2, gbc);
        final JPanel panel3 = new JPanel();
        panel3.setLayout(new GridBagLayout());
        gbc = new GridBagConstraints();
        gbc.gridx = 1;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.SOUTH;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.insets = new Insets(0, 8, 0, 0);
        languagePanel.add(panel3, gbc);
        languages = new JComboBox();
        gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.weightx = 1.0;
        gbc.weighty = 1.0;
        gbc.anchor = GridBagConstraints.NORTHWEST;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        panel3.add(languages, gbc);
    }

    /**
     * @noinspection ALL
     */
    public JComponent $$$getRootComponent$$$() {
        return mainPanel;
    }
}
