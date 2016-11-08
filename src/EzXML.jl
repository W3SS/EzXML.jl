module EzXML

export
    # types
    Node,
    Document,
    XMLError,

    # node constructors
    XMLDocumentNode,
    HTMLDocumentNode,
    ElementNode,
    TextNode,
    CommentNode,
    CDataNode,
    AttributeNode,

    # document constructors
    XMLDocument,
    HTMLDocument,

    # functions
    hasparentnode,
    parentnode,
    hasparentelement,
    parentelement,
    hasnode,
    firstnode,
    lastnode,
    haselement,
    firstelement,
    lastelement,
    hasnextnode,
    nextnode,
    hasprevnode,
    prevnode,
    hasnextelement,
    nextelement,
    hasprevelement,
    prevelement,
    countnodes,
    countelements,
    countattributes,
    link!,
    linknext!,
    linkprev!,
    unlink!,
    addelement!,
    hasroot,
    root,
    setroot!,
    nodetype,
    iselement,
    isattribute,
    istext,
    iscdata,
    iscomment,
    hasdocument,
    document,
    name,
    setname!,
    content,
    setcontent!,
    eachnode,
    nodes,
    eachelement,
    elements,
    eachattribute,
    attributes,
    namespace,
    namespaces,
    readxml,
    readhtml,
    parsexml,
    parsehtml

const libxml2 = "libxml2"

include("node.jl")
include("document.jl")
include("buffer.jl")
include("xpath.jl")
include("error.jl")

function __init__()
    init_error_handler()
end

end # module
