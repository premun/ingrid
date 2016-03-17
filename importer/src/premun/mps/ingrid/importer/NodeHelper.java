package premun.mps.ingrid.importer;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.*;
import jetbrains.mps.lang.structure.util.*;
import jetbrains.mps.smodel.adapter.structure.*;
import org.jetbrains.mps.openapi.language.*;
import org.jetbrains.mps.openapi.model.*;

public class NodeHelper {
    public static SNode createNode(NodeType type, String name, String alias, String virtualPackage, SModel parentModel) {
        SConcept concept;

        switch (type) {
            case Concept:
                concept = MetaAdapterFactory.getConcept(
                    0xc72da2b97cce4447L,
                    0x8389f407dc1158b7L,
                    0xf979ba0450L,
                    "jetbrains.mps.lang.structure.structure.ConceptDeclaration");
                break;

            case Interface:
                concept = MetaAdapterFactory.getConcept(
                    0xc72da2b97cce4447L,
                    0x8389f407dc1158b7L,
                    0x1103556dcafL,
                    "jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration");
                break;

            case ConstraintDataType:
                concept = MetaAdapterFactory.getConcept(
                    0xc72da2b97cce4447L,
                    0x8389f407dc1158b7L,
                    0xfc268c7a37L,
                    "jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration");
                break;

            case InterfaceReference:
                concept = MetaAdapterFactory.getConcept(
                    0xc72da2b97cce4447L,
                    0x8389f407dc1158b7L,
                    0x110356fc618L,
                    "jetbrains.mps.lang.structure.structure.InterfaceConceptReference");
                break;

            default:
                throw new IllegalArgumentException("Unknown node type " + type.toString());
        }

        SNode node = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(concept));

        if (name != null) {
            setProperty(node, Properties.NAME, name);
        }

        if (alias != null) {
            setProperty(node, Properties.ALIAS, alias);
        }

        if (type == NodeType.Concept || type == NodeType.Interface) {
            setProperty(node, Properties.CONCEPT_ID, "" + ConceptIdUtil.generate(node, parentModel));
        }

        if (virtualPackage != null) {
            setProperty(node, Properties.VIRTUAL_PACKAGE, virtualPackage);
        }

        return node;
    }

    public static void setProperty(SNode node, SProperty property, String value) {
        SPropertyOperations.set(node, property, value);
    }
}
