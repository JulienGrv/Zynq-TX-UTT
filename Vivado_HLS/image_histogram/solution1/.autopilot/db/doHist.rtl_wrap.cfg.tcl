set lang "C++"
set moduleName "doHist"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "inStream"
set BitWidth0 "56"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "data"
set BitWidth00 "8"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "[list ap_uint 8 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "keep"
set BitWidth01 "8"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "[list ap_uint 1 ]"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set PortName02 "strb"
set BitWidth02 "8"
set ArrayOpt02 ""
set Const02 "0"
set Volatile02 "0"
set Pointer02 "0"
set Reference02 "0"
set Dims02 [list 0]
set Interface02 "wire"
set DataType02 "[list ap_uint 1 ]"
set Port02 [list $PortName02 $Interface02 $DataType02 $Pointer02 $Dims02 $Const02 $Volatile02 $ArrayOpt02]
lappend structMem0 $Port02
set PortName03 "user"
set BitWidth03 "8"
set ArrayOpt03 ""
set Const03 "0"
set Volatile03 "0"
set Pointer03 "0"
set Reference03 "0"
set Dims03 [list 0]
set Interface03 "wire"
set DataType03 "[list ap_uint 2 ]"
set Port03 [list $PortName03 $Interface03 $DataType03 $Pointer03 $Dims03 $Const03 $Volatile03 $ArrayOpt03]
lappend structMem0 $Port03
set PortName04 "last"
set BitWidth04 "8"
set ArrayOpt04 ""
set Const04 "0"
set Volatile04 "0"
set Pointer04 "0"
set Reference04 "0"
set Dims04 [list 0]
set Interface04 "wire"
set DataType04 "[list ap_uint 1 ]"
set Port04 [list $PortName04 $Interface04 $DataType04 $Pointer04 $Dims04 $Const04 $Volatile04 $ArrayOpt04]
lappend structMem0 $Port04
set PortName05 "id"
set BitWidth05 "8"
set ArrayOpt05 ""
set Const05 "0"
set Volatile05 "0"
set Pointer05 "0"
set Reference05 "0"
set Dims05 [list 0]
set Interface05 "wire"
set DataType05 "[list ap_uint 5 ]"
set Port05 [list $PortName05 $Interface05 $DataType05 $Pointer05 $Dims05 $Const05 $Volatile05 $ArrayOpt05]
lappend structMem0 $Port05
set PortName06 "dest"
set BitWidth06 "8"
set ArrayOpt06 ""
set Const06 "0"
set Volatile06 "0"
set Pointer06 "0"
set Reference06 "0"
set Dims06 [list 0]
set Interface06 "wire"
set DataType06 "[list ap_uint 6 ]"
set Port06 [list $PortName06 $Interface06 $DataType06 $Pointer06 $Dims06 $Const06 $Volatile06 $ArrayOpt06]
lappend structMem0 $Port06
set DataType0tp0 "int"
set DataType0tp1 "int"
set DataType0tp2 "int"
set DataType0tp3 "int"
set structParameter0 [list [list $DataType0tp0 D] [list $DataType0tp1 U] [list $DataType0tp2 TI] [list $DataType0tp3 TD] ]
set structArgument0 [list 8 2 5 6 ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "ap_axiu<8, 2, 5, 6>" "struct ap_axiu" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "histo"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 256]
set Interface1 "wire"
set DataType1 "int"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
