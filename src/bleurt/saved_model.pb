4
 ď
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint˙˙˙˙˙˙˙˙˙"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ľ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.15.02unknown8Ýű,

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
p
PlaceholderPlaceholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
r
Placeholder_1Placeholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
r
Placeholder_2Placeholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
@
ShapeShapePlaceholder*
T0	*
_output_shapes
:
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
­
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
f
zeros/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
a
zeros/ReshapeReshapestrided_slicezeros/Reshape/shape*
T0*
_output_shapes
:
P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
W
zerosFillzeros/Reshapezeros/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
B
Shape_1ShapePlaceholder*
T0	*
_output_shapes
:
_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ˇ
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
q
bert/embeddings/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙

bert/embeddings/ExpandDims
ExpandDimsPlaceholderbert/embeddings/ExpandDims/dim*
T0	*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
Bbert/embeddings/word_embeddings/Initializer/truncated_normal/shapeConst*2
_class(
&$loc:@bert/embeddings/word_embeddings*
_output_shapes
:*
dtype0*
valueB":w     
ş
Abert/embeddings/word_embeddings/Initializer/truncated_normal/meanConst*2
_class(
&$loc:@bert/embeddings/word_embeddings*
_output_shapes
: *
dtype0*
valueB
 *    
ź
Cbert/embeddings/word_embeddings/Initializer/truncated_normal/stddevConst*2
_class(
&$loc:@bert/embeddings/word_embeddings*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<

Lbert/embeddings/word_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBbert/embeddings/word_embeddings/Initializer/truncated_normal/shape*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:şî*
dtype0*
seed˛
ş
@bert/embeddings/word_embeddings/Initializer/truncated_normal/mulMulLbert/embeddings/word_embeddings/Initializer/truncated_normal/TruncatedNormalCbert/embeddings/word_embeddings/Initializer/truncated_normal/stddev*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:şî
¨
<bert/embeddings/word_embeddings/Initializer/truncated_normalAdd@bert/embeddings/word_embeddings/Initializer/truncated_normal/mulAbert/embeddings/word_embeddings/Initializer/truncated_normal/mean*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*!
_output_shapes
:şî
Ń
bert/embeddings/word_embeddingsVarHandleOp*2
_class(
&$loc:@bert/embeddings/word_embeddings*
_output_shapes
: *
dtype0*
shape:şî*0
shared_name!bert/embeddings/word_embeddings

@bert/embeddings/word_embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpbert/embeddings/word_embeddings*
_output_shapes
: 
Ś
&bert/embeddings/word_embeddings/AssignAssignVariableOpbert/embeddings/word_embeddings<bert/embeddings/word_embeddings/Initializer/truncated_normal*
dtype0

3bert/embeddings/word_embeddings/Read/ReadVariableOpReadVariableOpbert/embeddings/word_embeddings*!
_output_shapes
:şî*
dtype0
ó
 bert/embeddings/embedding_lookupResourceGatherbert/embeddings/word_embeddingsbert/embeddings/ExpandDims*
Tindices0	*2
_class(
&$loc:@bert/embeddings/word_embeddings*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0
Ç
)bert/embeddings/embedding_lookup/IdentityIdentity bert/embeddings/embedding_lookup*
T0*2
_class(
&$loc:@bert/embeddings/word_embeddings*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/embeddings/embedding_lookup/Identity_1Identity)bert/embeddings/embedding_lookup/Identity*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
bert/embeddings/ShapeShapebert/embeddings/ExpandDims*
T0	*
_output_shapes
:
m
#bert/embeddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
o
%bert/embeddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
o
%bert/embeddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ý
bert/embeddings/strided_sliceStridedSlicebert/embeddings/Shape#bert/embeddings/strided_slice/stack%bert/embeddings/strided_slice/stack_1%bert/embeddings/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
b
bert/embeddings/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :
b
bert/embeddings/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
´
bert/embeddings/Reshape/shapePackbert/embeddings/strided_slicebert/embeddings/Reshape/shape/1bert/embeddings/Reshape/shape/2*
N*
T0*
_output_shapes
:
Ś
bert/embeddings/ReshapeReshape+bert/embeddings/embedding_lookup/Identity_1bert/embeddings/Reshape/shape*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
bert/embeddings/Shape_1Shapebert/embeddings/Reshape*
T0*
_output_shapes
:
o
%bert/embeddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
q
'bert/embeddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
q
'bert/embeddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

bert/embeddings/strided_slice_1StridedSlicebert/embeddings/Shape_1%bert/embeddings/strided_slice_1/stack'bert/embeddings/strided_slice_1/stack_1'bert/embeddings/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ó
Hbert/embeddings/token_type_embeddings/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:*
dtype0*
valueB"      
Ć
Gbert/embeddings/token_type_embeddings/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
: *
dtype0*
valueB
 *    
Č
Ibert/embeddings/token_type_embeddings/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ť
Rbert/embeddings/token_type_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHbert/embeddings/token_type_embeddings/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	*
dtype0*
seed˛*
seed2
Đ
Fbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mulMulRbert/embeddings/token_type_embeddings/Initializer/truncated_normal/TruncatedNormalIbert/embeddings/token_type_embeddings/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
ž
Bbert/embeddings/token_type_embeddings/Initializer/truncated_normalAddFbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mulGbert/embeddings/token_type_embeddings/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
:	
á
%bert/embeddings/token_type_embeddingsVarHandleOp*8
_class.
,*loc:@bert/embeddings/token_type_embeddings*
_output_shapes
: *
dtype0*
shape:	*6
shared_name'%bert/embeddings/token_type_embeddings

Fbert/embeddings/token_type_embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOp%bert/embeddings/token_type_embeddings*
_output_shapes
: 
¸
,bert/embeddings/token_type_embeddings/AssignAssignVariableOp%bert/embeddings/token_type_embeddingsBbert/embeddings/token_type_embeddings/Initializer/truncated_normal*
dtype0
 
9bert/embeddings/token_type_embeddings/Read/ReadVariableOpReadVariableOp%bert/embeddings/token_type_embeddings*
_output_shapes
:	*
dtype0
r
bert/embeddings/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙

bert/embeddings/Reshape_1ReshapePlaceholder_2bert/embeddings/Reshape_1/shape*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
 bert/embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
f
!bert/embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
_
bert/embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
Ň
bert/embeddings/one_hotOneHotbert/embeddings/Reshape_1bert/embeddings/one_hot/depth bert/embeddings/one_hot/on_value!bert/embeddings/one_hot/off_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

%bert/embeddings/MatMul/ReadVariableOpReadVariableOp%bert/embeddings/token_type_embeddings*
_output_shapes
:	*
dtype0

bert/embeddings/MatMulMatMulbert/embeddings/one_hot%bert/embeddings/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
!bert/embeddings/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value
B :
d
!bert/embeddings/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
ź
bert/embeddings/Reshape_2/shapePackbert/embeddings/strided_slice_1!bert/embeddings/Reshape_2/shape/1!bert/embeddings/Reshape_2/shape/2*
N*
T0*
_output_shapes
:

bert/embeddings/Reshape_2Reshapebert/embeddings/MatMulbert/embeddings/Reshape_2/shape*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

bert/embeddings/addAddV2bert/embeddings/Reshapebert/embeddings/Reshape_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
#bert/embeddings/assert_less_equal/xConst*
_output_shapes
: *
dtype0*
value
B :
f
#bert/embeddings/assert_less_equal/yConst*
_output_shapes
: *
dtype0*
value
B :
Ł
+bert/embeddings/assert_less_equal/LessEqual	LessEqual#bert/embeddings/assert_less_equal/x#bert/embeddings/assert_less_equal/y*
T0*
_output_shapes
: 
j
'bert/embeddings/assert_less_equal/ConstConst*
_output_shapes
: *
dtype0*
valueB 

%bert/embeddings/assert_less_equal/AllAll+bert/embeddings/assert_less_equal/LessEqual'bert/embeddings/assert_less_equal/Const*
_output_shapes
: 

.bert/embeddings/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

0bert/embeddings/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (bert/embeddings/assert_less_equal/x:0) = 

0bert/embeddings/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (bert/embeddings/assert_less_equal/y:0) = 
˘
6bert/embeddings/assert_less_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
Ł
6bert/embeddings/assert_less_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (bert/embeddings/assert_less_equal/x:0) = 
Ł
6bert/embeddings/assert_less_equal/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (bert/embeddings/assert_less_equal/y:0) = 
â
/bert/embeddings/assert_less_equal/Assert/AssertAssert%bert/embeddings/assert_less_equal/All6bert/embeddings/assert_less_equal/Assert/Assert/data_06bert/embeddings/assert_less_equal/Assert/Assert/data_1#bert/embeddings/assert_less_equal/x6bert/embeddings/assert_less_equal/Assert/Assert/data_3#bert/embeddings/assert_less_equal/y*
T	
2
Ď
Fbert/embeddings/position_embeddings/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@bert/embeddings/position_embeddings*
_output_shapes
:*
dtype0*
valueB"      
Â
Ebert/embeddings/position_embeddings/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@bert/embeddings/position_embeddings*
_output_shapes
: *
dtype0*
valueB
 *    
Ä
Gbert/embeddings/position_embeddings/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@bert/embeddings/position_embeddings*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ś
Pbert/embeddings/position_embeddings/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFbert/embeddings/position_embeddings/Initializer/truncated_normal/shape*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
É
Dbert/embeddings/position_embeddings/Initializer/truncated_normal/mulMulPbert/embeddings/position_embeddings/Initializer/truncated_normal/TruncatedNormalGbert/embeddings/position_embeddings/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

ˇ
@bert/embeddings/position_embeddings/Initializer/truncated_normalAddDbert/embeddings/position_embeddings/Initializer/truncated_normal/mulEbert/embeddings/position_embeddings/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@bert/embeddings/position_embeddings* 
_output_shapes
:

Ü
#bert/embeddings/position_embeddingsVarHandleOp*6
_class,
*(loc:@bert/embeddings/position_embeddings*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#bert/embeddings/position_embeddings

Dbert/embeddings/position_embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOp#bert/embeddings/position_embeddings*
_output_shapes
: 
˛
*bert/embeddings/position_embeddings/AssignAssignVariableOp#bert/embeddings/position_embeddings@bert/embeddings/position_embeddings/Initializer/truncated_normal*
dtype0

7bert/embeddings/position_embeddings/Read/ReadVariableOpReadVariableOp#bert/embeddings/position_embeddings* 
_output_shapes
:
*
dtype0
ź
$bert/embeddings/Slice/ReadVariableOpReadVariableOp#bert/embeddings/position_embeddings0^bert/embeddings/assert_less_equal/Assert/Assert* 
_output_shapes
:
*
dtype0

bert/embeddings/Slice/beginConst0^bert/embeddings/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"        

bert/embeddings/Slice/sizeConst0^bert/embeddings/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"   ˙˙˙˙
ľ
bert/embeddings/SliceSlice$bert/embeddings/Slice/ReadVariableOpbert/embeddings/Slice/beginbert/embeddings/Slice/size*
Index0*
T0* 
_output_shapes
:

Ś
bert/embeddings/Reshape_3/shapeConst0^bert/embeddings/assert_less_equal/Assert/Assert*
_output_shapes
:*
dtype0*!
valueB"         

bert/embeddings/Reshape_3Reshapebert/embeddings/Slicebert/embeddings/Reshape_3/shape*
T0*$
_output_shapes
:

bert/embeddings/add_1AddV2bert/embeddings/addbert/embeddings/Reshape_3*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
0bert/embeddings/LayerNorm/beta/Initializer/zerosConst*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
Č
bert/embeddings/LayerNorm/betaVarHandleOp*1
_class'
%#loc:@bert/embeddings/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*/
shared_name bert/embeddings/LayerNorm/beta

?bert/embeddings/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbert/embeddings/LayerNorm/beta*
_output_shapes
: 

%bert/embeddings/LayerNorm/beta/AssignAssignVariableOpbert/embeddings/LayerNorm/beta0bert/embeddings/LayerNorm/beta/Initializer/zeros*
dtype0

2bert/embeddings/LayerNorm/beta/Read/ReadVariableOpReadVariableOpbert/embeddings/LayerNorm/beta*
_output_shapes	
:*
dtype0
ł
0bert/embeddings/LayerNorm/gamma/Initializer/onesConst*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
Ë
bert/embeddings/LayerNorm/gammaVarHandleOp*2
_class(
&$loc:@bert/embeddings/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*0
shared_name!bert/embeddings/LayerNorm/gamma

@bert/embeddings/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbert/embeddings/LayerNorm/gamma*
_output_shapes
: 

&bert/embeddings/LayerNorm/gamma/AssignAssignVariableOpbert/embeddings/LayerNorm/gamma0bert/embeddings/LayerNorm/gamma/Initializer/ones*
dtype0

3bert/embeddings/LayerNorm/gamma/Read/ReadVariableOpReadVariableOpbert/embeddings/LayerNorm/gamma*
_output_shapes	
:*
dtype0

8bert/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ç
&bert/embeddings/LayerNorm/moments/meanMeanbert/embeddings/add_18bert/embeddings/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

.bert/embeddings/LayerNorm/moments/StopGradientStopGradient&bert/embeddings/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
3bert/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencebert/embeddings/add_1.bert/embeddings/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

<bert/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
í
*bert/embeddings/LayerNorm/moments/varianceMean3bert/embeddings/LayerNorm/moments/SquaredDifference<bert/embeddings/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
n
)bert/embeddings/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
ž
'bert/embeddings/LayerNorm/batchnorm/addAddV2*bert/embeddings/LayerNorm/moments/variance)bert/embeddings/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/embeddings/LayerNorm/batchnorm/RsqrtRsqrt'bert/embeddings/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

6bert/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpbert/embeddings/LayerNorm/gamma*
_output_shapes	
:*
dtype0
É
'bert/embeddings/LayerNorm/batchnorm/mulMul)bert/embeddings/LayerNorm/batchnorm/Rsqrt6bert/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
)bert/embeddings/LayerNorm/batchnorm/mul_1Mulbert/embeddings/add_1'bert/embeddings/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
)bert/embeddings/LayerNorm/batchnorm/mul_2Mul&bert/embeddings/LayerNorm/moments/mean'bert/embeddings/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

2bert/embeddings/LayerNorm/batchnorm/ReadVariableOpReadVariableOpbert/embeddings/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ĺ
'bert/embeddings/LayerNorm/batchnorm/subSub2bert/embeddings/LayerNorm/batchnorm/ReadVariableOp)bert/embeddings/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
)bert/embeddings/LayerNorm/batchnorm/add_1AddV2)bert/embeddings/LayerNorm/batchnorm/mul_1'bert/embeddings/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
M
bert/encoder/ShapeShapePlaceholder*
T0	*
_output_shapes
:
j
 bert/encoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"bert/encoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"bert/encoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
î
bert/encoder/strided_sliceStridedSlicebert/encoder/Shape bert/encoder/strided_slice/stack"bert/encoder/strided_slice/stack_1"bert/encoder/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Q
bert/encoder/Shape_1ShapePlaceholder_1*
T0	*
_output_shapes
:
l
"bert/encoder/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
$bert/encoder/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
n
$bert/encoder/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ř
bert/encoder/strided_slice_1StridedSlicebert/encoder/Shape_1"bert/encoder/strided_slice_1/stack$bert/encoder/strided_slice_1/stack_1$bert/encoder/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
bert/encoder/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
_
bert/encoder/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
¨
bert/encoder/Reshape/shapePackbert/encoder/strided_slicebert/encoder/Reshape/shape/1bert/encoder/Reshape/shape/2*
N*
T0*
_output_shapes
:

bert/encoder/ReshapeReshapePlaceholder_1bert/encoder/Reshape/shape*
T0	*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
bert/encoder/CastCastbert/encoder/Reshape*

DstT0*

SrcT0	*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
bert/encoder/ones/mul/yConst*
_output_shapes
: *
dtype0*
value
B :
r
bert/encoder/ones/mulMulbert/encoder/strided_slicebert/encoder/ones/mul/y*
T0*
_output_shapes
: 
[
bert/encoder/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
q
bert/encoder/ones/mul_1Mulbert/encoder/ones/mulbert/encoder/ones/mul_1/y*
T0*
_output_shapes
: 
[
bert/encoder/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č
r
bert/encoder/ones/LessLessbert/encoder/ones/mul_1bert/encoder/ones/Less/y*
T0*
_output_shapes
: 
]
bert/encoder/ones/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
\
bert/encoder/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :
˘
bert/encoder/ones/packedPackbert/encoder/strided_slicebert/encoder/ones/packed/1bert/encoder/ones/packed/2*
N*
T0*
_output_shapes
:
\
bert/encoder/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

bert/encoder/onesFillbert/encoder/ones/packedbert/encoder/ones/Const*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
bert/encoder/mulMulbert/encoder/onesbert/encoder/Cast*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
bert/encoder/Shape_2Shape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:
l
"bert/encoder/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
$bert/encoder/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
n
$bert/encoder/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ř
bert/encoder/strided_slice_2StridedSlicebert/encoder/Shape_2"bert/encoder/strided_slice_2/stack$bert/encoder/strided_slice_2/stack_1$bert/encoder/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

)bert/encoder/layer_0/attention/self/ShapeShape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_0/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_0/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_0/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_0/attention/self/strided_sliceStridedSlice)bert/encoder/layer_0/attention/self/Shape7bert/encoder/layer_0/attention/self/strided_slice/stack9bert/encoder/layer_0/attention/self/strided_slice/stack_19bert/encoder/layer_0/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_0/attention/self/Shape_1Shape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_0/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_0/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_0/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_0/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_0/attention/self/Shape_19bert/encoder/layer_0/attention/self/strided_slice_1/stack;bert/encoder/layer_0/attention/self/strided_slice_1/stack_1;bert/encoder/layer_0/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_0/attention/self/Shape_2Shape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_0/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_0/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_0/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_0/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_0/attention/self/Shape_29bert/encoder/layer_0/attention/self/strided_slice_2/stack;bert/encoder/layer_0/attention/self/strided_slice_2/stack_1;bert/encoder/layer_0/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_0/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_0/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_0/attention/self/query/kernel
ą
Qbert/encoder/layer_0/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_0/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_0/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_0/attention/self/query/kernelMbert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_0/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_0/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_0/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_0/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_0/attention/self/query/ReshapeReshape@bert/encoder/layer_0/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_0/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_0/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_0/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_0/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_0/attention/self/query/bias
­
Obert/encoder/layer_0/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_0/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_0/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_0/attention/self/query/bias@bert/encoder/layer_0/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_0/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_0/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_0/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_0/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_0/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_0/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_0/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_0/attention/self/query/einsum/EinsumEinsum)bert/embeddings/LayerNorm/batchnorm/add_11bert/encoder/layer_0/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_0/attention/self/query/addAddV27bert/encoder/layer_0/attention/self/query/einsum/Einsum3bert/encoder/layer_0/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_0/attention/self/Shape_3Shape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_0/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_0/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_0/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_0/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_0/attention/self/Shape_39bert/encoder/layer_0/attention/self/strided_slice_3/stack;bert/encoder/layer_0/attention/self/strided_slice_3/stack_1;bert/encoder/layer_0/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_0/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_0/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_0/attention/self/key/kernel
­
Obert/encoder/layer_0/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_0/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_0/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_0/attention/self/key/kernelKbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_0/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_0/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_0/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_0/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_0/attention/self/key/ReshapeReshape>bert/encoder/layer_0/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_0/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_0/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_0/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_0/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_0/attention/self/key/bias
Š
Mbert/encoder/layer_0/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_0/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_0/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_0/attention/self/key/bias>bert/encoder/layer_0/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_0/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_0/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_0/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_0/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_0/attention/self/key/Reshape_1Reshape@bert/encoder/layer_0/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_0/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@
ü
5bert/encoder/layer_0/attention/self/key/einsum/EinsumEinsum)bert/embeddings/LayerNorm/batchnorm/add_1/bert/encoder/layer_0/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_0/attention/self/key/addAddV25bert/encoder/layer_0/attention/self/key/einsum/Einsum1bert/encoder/layer_0/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_0/attention/self/Shape_4Shape)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_0/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_0/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_0/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_0/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_0/attention/self/Shape_49bert/encoder/layer_0/attention/self/strided_slice_4/stack;bert/encoder/layer_0/attention/self/strided_slice_4/stack_1;bert/encoder/layer_0/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_0/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_0/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_0/attention/self/value/kernel
ą
Qbert/encoder/layer_0/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_0/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_0/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_0/attention/self/value/kernelMbert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_0/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_0/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_0/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_0/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_0/attention/self/value/ReshapeReshape@bert/encoder/layer_0/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_0/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_0/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_0/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_0/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_0/attention/self/value/bias
­
Obert/encoder/layer_0/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_0/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_0/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_0/attention/self/value/bias@bert/encoder/layer_0/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_0/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_0/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_0/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_0/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_0/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_0/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_0/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_0/attention/self/value/einsum/EinsumEinsum)bert/embeddings/LayerNorm/batchnorm/add_11bert/encoder/layer_0/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_0/attention/self/value/addAddV27bert/encoder/layer_0/attention/self/value/einsum/Einsum3bert/encoder/layer_0/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_0/attention/self/einsum/EinsumEinsum+bert/encoder/layer_0/attention/self/key/add-bert/encoder/layer_0/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_0/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_0/attention/self/MulMul1bert/encoder/layer_0/attention/self/einsum/Einsum)bert/encoder/layer_0/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_0/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_0/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_0/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_0/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_0/attention/self/subSub)bert/encoder/layer_0/attention/self/sub/x.bert/encoder/layer_0/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_0/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_0/attention/self/mul_1Mul'bert/encoder/layer_0/attention/self/sub+bert/encoder/layer_0/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_0/attention/self/addAddV2'bert/encoder/layer_0/attention/self/Mul)bert/encoder/layer_0/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_0/attention/self/SoftmaxSoftmax'bert/encoder/layer_0/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_0/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_0/attention/self/Softmax-bert/encoder/layer_0/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2

Sbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_0/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_0/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_0/attention/output/dense/kernel
ľ
Sbert/encoder/layer_0/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_0/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_0/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_0/attention/output/dense/kernelObert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_0/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_0/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_0/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_0/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_0/attention/output/dense/ReshapeReshapeBbert/encoder/layer_0/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_0/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_0/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_0/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_0/attention/output/dense/bias
ą
Qbert/encoder/layer_0/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_0/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_0/attention/output/dense/biasBbert/encoder/layer_0/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_0/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_0/attention/output/einsum/EinsumEinsum3bert/encoder/layer_0/attention/self/einsum_1/Einsum3bert/encoder/layer_0/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_0/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_0/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_0/attention/output/addAddV23bert/encoder/layer_0/attention/output/einsum/Einsum8bert/encoder/layer_0/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
+bert/encoder/layer_0/attention/output/add_1AddV2)bert/encoder/layer_0/attention/output/add)bert/embeddings/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_0/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_0/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_0/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_0/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_0/attention/output/LayerNorm/betaFbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_0/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_0/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_0/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_0/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_0/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_0/attention/output/LayerNorm/gammaFbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_0/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_0/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_0/attention/output/add_1Nbert/encoder/layer_0/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_0/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_0/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_0/attention/output/add_1Dbert/encoder/layer_0/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_0/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_0/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_0/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_0/attention/output/LayerNorm/moments/variance?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_0/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_0/attention/output/add_1=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_0/attention/output/LayerNorm/moments/mean=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_0/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_0/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_0/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_0/intermediate/ShapeShape?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_0/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_0/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_0/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_0/intermediate/strided_sliceStridedSlice'bert/encoder/layer_0/intermediate/Shape5bert/encoder/layer_0/intermediate/strided_slice/stack7bert/encoder/layer_0/intermediate/strided_slice/stack_17bert/encoder/layer_0/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_0/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_0/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_0/intermediate/dense/kernel
­
Obert/encoder/layer_0/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_0/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_0/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_0/intermediate/dense/kernelKbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_0/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_0/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_0/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_0/intermediate/dense/bias
Š
Mbert/encoder/layer_0/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_0/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_0/intermediate/dense/bias>bert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_0/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_0/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_0/intermediate/einsum/EinsumEinsum?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_0/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_0/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_0/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_0/intermediate/addAddV2/bert/encoder/layer_0/intermediate/einsum/Einsum4bert/encoder/layer_0/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_0/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_0/intermediate/PowPow%bert/encoder/layer_0/intermediate/add'bert/encoder/layer_0/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_0/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_0/intermediate/mulMul'bert/encoder/layer_0/intermediate/mul/x%bert/encoder/layer_0/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_0/intermediate/add_1AddV2%bert/encoder/layer_0/intermediate/add%bert/encoder/layer_0/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_0/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_0/intermediate/mul_1Mul)bert/encoder/layer_0/intermediate/mul_1/x'bert/encoder/layer_0/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_0/intermediate/TanhTanh'bert/encoder/layer_0/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_0/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_0/intermediate/add_2AddV2)bert/encoder/layer_0/intermediate/add_2/x&bert/encoder/layer_0/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_0/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_0/intermediate/mul_2Mul)bert/encoder/layer_0/intermediate/mul_2/x'bert/encoder/layer_0/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_0/intermediate/mul_3Mul%bert/encoder/layer_0/intermediate/add'bert/encoder/layer_0/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_0/output/ShapeShape'bert/encoder/layer_0/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_0/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_0/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_0/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_0/output/strided_sliceStridedSlice!bert/encoder/layer_0/output/Shape/bert/encoder/layer_0/output/strided_slice/stack1bert/encoder/layer_0/output/strided_slice/stack_11bert/encoder/layer_0/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
Ý
Ibert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_0/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_0/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_0/output/dense/kernel
Ą
Ibert/encoder/layer_0/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_0/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_0/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_0/output/dense/kernelEbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_0/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_0/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_0/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_0/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_0/output/dense/bias

Gbert/encoder/layer_0/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_0/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_0/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_0/output/dense/bias8bert/encoder/layer_0/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_0/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_0/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_0/output/einsum/EinsumEinsum'bert/encoder/layer_0/intermediate/mul_38bert/encoder/layer_0/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_0/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_0/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_0/output/addAddV2)bert/encoder/layer_0/output/einsum/Einsum.bert/encoder/layer_0/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_0/output/add_1AddV2bert/encoder/layer_0/output/add?bert/encoder/layer_0/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_0/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_0/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_0/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_0/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_0/output/LayerNorm/beta<bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_0/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_0/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_0/output/LayerNorm/gamma
§
Lbert/encoder/layer_0/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_0/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_0/output/LayerNorm/gamma<bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_0/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_0/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_0/output/LayerNorm/moments/meanMean!bert/encoder/layer_0/output/add_1Dbert/encoder/layer_0/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_0/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_0/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_0/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_0/output/add_1:bert/encoder/layer_0/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_0/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_0/output/LayerNorm/moments/varianceMean?bert/encoder/layer_0/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_0/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_0/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_0/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_0/output/LayerNorm/moments/variance5bert/encoder/layer_0/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_0/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_0/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_0/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_0/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_0/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_0/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_0/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_0/output/add_13bert/encoder/layer_0/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_0/output/LayerNorm/moments/mean3bert/encoder/layer_0/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_0/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_0/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_0/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_0/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_0/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_0/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_1/attention/self/ShapeShape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_1/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_1/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_1/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_1/attention/self/strided_sliceStridedSlice)bert/encoder/layer_1/attention/self/Shape7bert/encoder/layer_1/attention/self/strided_slice/stack9bert/encoder/layer_1/attention/self/strided_slice/stack_19bert/encoder/layer_1/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_1/attention/self/Shape_1Shape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_1/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_1/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_1/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_1/attention/self/Shape_19bert/encoder/layer_1/attention/self/strided_slice_1/stack;bert/encoder/layer_1/attention/self/strided_slice_1/stack_1;bert/encoder/layer_1/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_1/attention/self/Shape_2Shape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_1/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_1/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_1/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_1/attention/self/Shape_29bert/encoder/layer_1/attention/self/strided_slice_2/stack;bert/encoder/layer_1/attention/self/strided_slice_2/stack_1;bert/encoder/layer_1/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2	
ý
Qbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_1/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_1/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_1/attention/self/query/kernel
ą
Qbert/encoder/layer_1/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_1/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_1/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_1/attention/self/query/kernelMbert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_1/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_1/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_1/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_1/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_1/attention/self/query/ReshapeReshape@bert/encoder/layer_1/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_1/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_1/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_1/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_1/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_1/attention/self/query/bias
­
Obert/encoder/layer_1/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_1/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_1/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_1/attention/self/query/bias@bert/encoder/layer_1/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_1/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_1/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_1/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_1/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_1/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_1/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_1/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_1/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_1/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_11bert/encoder/layer_1/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_1/attention/self/query/addAddV27bert/encoder/layer_1/attention/self/query/einsum/Einsum3bert/encoder/layer_1/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_1/attention/self/Shape_3Shape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_1/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_1/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_1/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_1/attention/self/Shape_39bert/encoder/layer_1/attention/self/strided_slice_3/stack;bert/encoder/layer_1/attention/self/strided_slice_3/stack_1;bert/encoder/layer_1/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2

ő
Obert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_1/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_1/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_1/attention/self/key/kernel
­
Obert/encoder/layer_1/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_1/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_1/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_1/attention/self/key/kernelKbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_1/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_1/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_1/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_1/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_1/attention/self/key/ReshapeReshape>bert/encoder/layer_1/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_1/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_1/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_1/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_1/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_1/attention/self/key/bias
Š
Mbert/encoder/layer_1/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_1/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_1/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_1/attention/self/key/bias>bert/encoder/layer_1/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_1/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_1/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_1/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_1/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_1/attention/self/key/Reshape_1Reshape@bert/encoder/layer_1/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_1/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_1/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_1/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_1/attention/self/key/addAddV25bert/encoder/layer_1/attention/self/key/einsum/Einsum1bert/encoder/layer_1/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_1/attention/self/Shape_4Shape5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_1/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_1/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_1/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_1/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_1/attention/self/Shape_49bert/encoder/layer_1/attention/self/strided_slice_4/stack;bert/encoder/layer_1/attention/self/strided_slice_4/stack_1;bert/encoder/layer_1/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_1/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_1/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_1/attention/self/value/kernel
ą
Qbert/encoder/layer_1/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_1/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_1/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_1/attention/self/value/kernelMbert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_1/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_1/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_1/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_1/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_1/attention/self/value/ReshapeReshape@bert/encoder/layer_1/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_1/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_1/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_1/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_1/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_1/attention/self/value/bias
­
Obert/encoder/layer_1/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_1/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_1/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_1/attention/self/value/bias@bert/encoder/layer_1/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_1/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_1/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_1/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_1/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_1/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_1/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_1/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_1/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_11bert/encoder/layer_1/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_1/attention/self/value/addAddV27bert/encoder/layer_1/attention/self/value/einsum/Einsum3bert/encoder/layer_1/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_1/attention/self/einsum/EinsumEinsum+bert/encoder/layer_1/attention/self/key/add-bert/encoder/layer_1/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_1/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_1/attention/self/MulMul1bert/encoder/layer_1/attention/self/einsum/Einsum)bert/encoder/layer_1/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_1/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_1/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_1/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_1/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_1/attention/self/subSub)bert/encoder/layer_1/attention/self/sub/x.bert/encoder/layer_1/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_1/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_1/attention/self/mul_1Mul'bert/encoder/layer_1/attention/self/sub+bert/encoder/layer_1/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_1/attention/self/addAddV2'bert/encoder/layer_1/attention/self/Mul)bert/encoder/layer_1/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_1/attention/self/SoftmaxSoftmax'bert/encoder/layer_1/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_1/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_1/attention/self/Softmax-bert/encoder/layer_1/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2

Sbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_1/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_1/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_1/attention/output/dense/kernel
ľ
Sbert/encoder/layer_1/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_1/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_1/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_1/attention/output/dense/kernelObert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_1/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_1/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_1/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_1/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_1/attention/output/dense/ReshapeReshapeBbert/encoder/layer_1/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_1/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_1/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_1/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_1/attention/output/dense/bias
ą
Qbert/encoder/layer_1/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_1/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_1/attention/output/dense/biasBbert/encoder/layer_1/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_1/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_1/attention/output/einsum/EinsumEinsum3bert/encoder/layer_1/attention/self/einsum_1/Einsum3bert/encoder/layer_1/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_1/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_1/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_1/attention/output/addAddV23bert/encoder/layer_1/attention/output/einsum/Einsum8bert/encoder/layer_1/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_1/attention/output/add_1AddV2)bert/encoder/layer_1/attention/output/add5bert/encoder/layer_0/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_1/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_1/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_1/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_1/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_1/attention/output/LayerNorm/betaFbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_1/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_1/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_1/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_1/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_1/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_1/attention/output/LayerNorm/gammaFbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_1/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_1/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_1/attention/output/add_1Nbert/encoder/layer_1/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_1/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_1/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_1/attention/output/add_1Dbert/encoder/layer_1/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_1/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_1/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_1/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_1/attention/output/LayerNorm/moments/variance?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_1/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_1/attention/output/add_1=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_1/attention/output/LayerNorm/moments/mean=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_1/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_1/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_1/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_1/intermediate/ShapeShape?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_1/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_1/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_1/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_1/intermediate/strided_sliceStridedSlice'bert/encoder/layer_1/intermediate/Shape5bert/encoder/layer_1/intermediate/strided_slice/stack7bert/encoder/layer_1/intermediate/strided_slice/stack_17bert/encoder/layer_1/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_1/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_1/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_1/intermediate/dense/kernel
­
Obert/encoder/layer_1/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_1/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_1/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_1/intermediate/dense/kernelKbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_1/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_1/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_1/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_1/intermediate/dense/bias
Š
Mbert/encoder/layer_1/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_1/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_1/intermediate/dense/bias>bert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_1/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_1/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_1/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_1/intermediate/einsum/EinsumEinsum?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_1/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_1/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_1/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_1/intermediate/addAddV2/bert/encoder/layer_1/intermediate/einsum/Einsum4bert/encoder/layer_1/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_1/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_1/intermediate/PowPow%bert/encoder/layer_1/intermediate/add'bert/encoder/layer_1/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_1/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_1/intermediate/mulMul'bert/encoder/layer_1/intermediate/mul/x%bert/encoder/layer_1/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_1/intermediate/add_1AddV2%bert/encoder/layer_1/intermediate/add%bert/encoder/layer_1/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_1/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_1/intermediate/mul_1Mul)bert/encoder/layer_1/intermediate/mul_1/x'bert/encoder/layer_1/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_1/intermediate/TanhTanh'bert/encoder/layer_1/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_1/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_1/intermediate/add_2AddV2)bert/encoder/layer_1/intermediate/add_2/x&bert/encoder/layer_1/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_1/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_1/intermediate/mul_2Mul)bert/encoder/layer_1/intermediate/mul_2/x'bert/encoder/layer_1/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_1/intermediate/mul_3Mul%bert/encoder/layer_1/intermediate/add'bert/encoder/layer_1/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_1/output/ShapeShape'bert/encoder/layer_1/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_1/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_1/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_1/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_1/output/strided_sliceStridedSlice!bert/encoder/layer_1/output/Shape/bert/encoder/layer_1/output/strided_slice/stack1bert/encoder/layer_1/output/strided_slice/stack_11bert/encoder/layer_1/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
Ý
Ibert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_1/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_1/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_1/output/dense/kernel
Ą
Ibert/encoder/layer_1/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_1/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_1/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_1/output/dense/kernelEbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_1/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_1/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_1/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_1/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_1/output/dense/bias

Gbert/encoder/layer_1/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_1/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_1/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_1/output/dense/bias8bert/encoder/layer_1/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_1/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_1/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_1/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_1/output/einsum/EinsumEinsum'bert/encoder/layer_1/intermediate/mul_38bert/encoder/layer_1/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_1/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_1/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_1/output/addAddV2)bert/encoder/layer_1/output/einsum/Einsum.bert/encoder/layer_1/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_1/output/add_1AddV2bert/encoder/layer_1/output/add?bert/encoder/layer_1/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_1/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_1/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_1/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_1/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_1/output/LayerNorm/beta<bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_1/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_1/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_1/output/LayerNorm/gamma
§
Lbert/encoder/layer_1/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_1/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_1/output/LayerNorm/gamma<bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_1/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_1/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_1/output/LayerNorm/moments/meanMean!bert/encoder/layer_1/output/add_1Dbert/encoder/layer_1/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_1/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_1/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_1/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_1/output/add_1:bert/encoder/layer_1/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_1/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_1/output/LayerNorm/moments/varianceMean?bert/encoder/layer_1/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_1/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_1/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_1/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_1/output/LayerNorm/moments/variance5bert/encoder/layer_1/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_1/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_1/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_1/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_1/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_1/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_1/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_1/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_1/output/add_13bert/encoder/layer_1/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_1/output/LayerNorm/moments/mean3bert/encoder/layer_1/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_1/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_1/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_1/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_1/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_1/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_1/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_2/attention/self/ShapeShape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_2/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_2/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_2/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_2/attention/self/strided_sliceStridedSlice)bert/encoder/layer_2/attention/self/Shape7bert/encoder/layer_2/attention/self/strided_slice/stack9bert/encoder/layer_2/attention/self/strided_slice/stack_19bert/encoder/layer_2/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_2/attention/self/Shape_1Shape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_2/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_2/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_2/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_2/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_2/attention/self/Shape_19bert/encoder/layer_2/attention/self/strided_slice_1/stack;bert/encoder/layer_2/attention/self/strided_slice_1/stack_1;bert/encoder/layer_2/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_2/attention/self/Shape_2Shape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_2/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_2/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_2/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_2/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_2/attention/self/Shape_29bert/encoder/layer_2/attention/self/strided_slice_2/stack;bert/encoder/layer_2/attention/self/strided_slice_2/stack_1;bert/encoder/layer_2/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_2/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_2/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_2/attention/self/query/kernel
ą
Qbert/encoder/layer_2/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_2/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_2/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_2/attention/self/query/kernelMbert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_2/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_2/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_2/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_2/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_2/attention/self/query/ReshapeReshape@bert/encoder/layer_2/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_2/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_2/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_2/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_2/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_2/attention/self/query/bias
­
Obert/encoder/layer_2/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_2/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_2/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_2/attention/self/query/bias@bert/encoder/layer_2/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_2/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_2/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_2/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_2/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_2/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_2/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_2/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_2/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_2/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_11bert/encoder/layer_2/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_2/attention/self/query/addAddV27bert/encoder/layer_2/attention/self/query/einsum/Einsum3bert/encoder/layer_2/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_2/attention/self/Shape_3Shape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_2/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_2/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_2/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_2/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_2/attention/self/Shape_39bert/encoder/layer_2/attention/self/strided_slice_3/stack;bert/encoder/layer_2/attention/self/strided_slice_3/stack_1;bert/encoder/layer_2/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_2/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_2/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_2/attention/self/key/kernel
­
Obert/encoder/layer_2/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_2/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_2/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_2/attention/self/key/kernelKbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_2/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_2/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_2/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_2/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_2/attention/self/key/ReshapeReshape>bert/encoder/layer_2/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_2/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_2/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_2/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_2/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_2/attention/self/key/bias
Š
Mbert/encoder/layer_2/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_2/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_2/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_2/attention/self/key/bias>bert/encoder/layer_2/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_2/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_2/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_2/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_2/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_2/attention/self/key/Reshape_1Reshape@bert/encoder/layer_2/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_2/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_2/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_2/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_2/attention/self/key/addAddV25bert/encoder/layer_2/attention/self/key/einsum/Einsum1bert/encoder/layer_2/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_2/attention/self/Shape_4Shape5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_2/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_2/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_2/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_2/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_2/attention/self/Shape_49bert/encoder/layer_2/attention/self/strided_slice_4/stack;bert/encoder/layer_2/attention/self/strided_slice_4/stack_1;bert/encoder/layer_2/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_2/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_2/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_2/attention/self/value/kernel
ą
Qbert/encoder/layer_2/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_2/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_2/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_2/attention/self/value/kernelMbert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_2/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_2/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_2/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_2/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_2/attention/self/value/ReshapeReshape@bert/encoder/layer_2/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_2/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_2/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_2/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_2/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_2/attention/self/value/bias
­
Obert/encoder/layer_2/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_2/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_2/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_2/attention/self/value/bias@bert/encoder/layer_2/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_2/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_2/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_2/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_2/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_2/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_2/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_2/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_2/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_11bert/encoder/layer_2/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_2/attention/self/value/addAddV27bert/encoder/layer_2/attention/self/value/einsum/Einsum3bert/encoder/layer_2/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_2/attention/self/einsum/EinsumEinsum+bert/encoder/layer_2/attention/self/key/add-bert/encoder/layer_2/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_2/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_2/attention/self/MulMul1bert/encoder/layer_2/attention/self/einsum/Einsum)bert/encoder/layer_2/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_2/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_2/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_2/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_2/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_2/attention/self/subSub)bert/encoder/layer_2/attention/self/sub/x.bert/encoder/layer_2/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_2/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_2/attention/self/mul_1Mul'bert/encoder/layer_2/attention/self/sub+bert/encoder/layer_2/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_2/attention/self/addAddV2'bert/encoder/layer_2/attention/self/Mul)bert/encoder/layer_2/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_2/attention/self/SoftmaxSoftmax'bert/encoder/layer_2/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_2/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_2/attention/self/Softmax-bert/encoder/layer_2/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2

Sbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_2/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_2/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_2/attention/output/dense/kernel
ľ
Sbert/encoder/layer_2/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_2/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_2/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_2/attention/output/dense/kernelObert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_2/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_2/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_2/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_2/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_2/attention/output/dense/ReshapeReshapeBbert/encoder/layer_2/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_2/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_2/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_2/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_2/attention/output/dense/bias
ą
Qbert/encoder/layer_2/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_2/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_2/attention/output/dense/biasBbert/encoder/layer_2/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_2/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_2/attention/output/einsum/EinsumEinsum3bert/encoder/layer_2/attention/self/einsum_1/Einsum3bert/encoder/layer_2/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_2/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_2/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_2/attention/output/addAddV23bert/encoder/layer_2/attention/output/einsum/Einsum8bert/encoder/layer_2/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_2/attention/output/add_1AddV2)bert/encoder/layer_2/attention/output/add5bert/encoder/layer_1/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_2/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_2/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_2/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_2/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_2/attention/output/LayerNorm/betaFbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_2/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_2/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_2/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_2/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_2/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_2/attention/output/LayerNorm/gammaFbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_2/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_2/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_2/attention/output/add_1Nbert/encoder/layer_2/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_2/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_2/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_2/attention/output/add_1Dbert/encoder/layer_2/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_2/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_2/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_2/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_2/attention/output/LayerNorm/moments/variance?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_2/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_2/attention/output/add_1=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_2/attention/output/LayerNorm/moments/mean=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_2/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_2/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_2/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_2/intermediate/ShapeShape?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_2/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_2/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_2/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_2/intermediate/strided_sliceStridedSlice'bert/encoder/layer_2/intermediate/Shape5bert/encoder/layer_2/intermediate/strided_slice/stack7bert/encoder/layer_2/intermediate/strided_slice/stack_17bert/encoder/layer_2/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_2/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_2/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_2/intermediate/dense/kernel
­
Obert/encoder/layer_2/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_2/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_2/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_2/intermediate/dense/kernelKbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_2/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_2/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_2/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_2/intermediate/dense/bias
Š
Mbert/encoder/layer_2/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_2/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_2/intermediate/dense/bias>bert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_2/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_2/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_2/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_2/intermediate/einsum/EinsumEinsum?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_2/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_2/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_2/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_2/intermediate/addAddV2/bert/encoder/layer_2/intermediate/einsum/Einsum4bert/encoder/layer_2/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_2/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_2/intermediate/PowPow%bert/encoder/layer_2/intermediate/add'bert/encoder/layer_2/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_2/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_2/intermediate/mulMul'bert/encoder/layer_2/intermediate/mul/x%bert/encoder/layer_2/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_2/intermediate/add_1AddV2%bert/encoder/layer_2/intermediate/add%bert/encoder/layer_2/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_2/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_2/intermediate/mul_1Mul)bert/encoder/layer_2/intermediate/mul_1/x'bert/encoder/layer_2/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_2/intermediate/TanhTanh'bert/encoder/layer_2/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_2/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_2/intermediate/add_2AddV2)bert/encoder/layer_2/intermediate/add_2/x&bert/encoder/layer_2/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_2/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_2/intermediate/mul_2Mul)bert/encoder/layer_2/intermediate/mul_2/x'bert/encoder/layer_2/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_2/intermediate/mul_3Mul%bert/encoder/layer_2/intermediate/add'bert/encoder/layer_2/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_2/output/ShapeShape'bert/encoder/layer_2/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_2/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_2/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_2/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_2/output/strided_sliceStridedSlice!bert/encoder/layer_2/output/Shape/bert/encoder/layer_2/output/strided_slice/stack1bert/encoder/layer_2/output/strided_slice/stack_11bert/encoder/layer_2/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
Ý
Ibert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_2/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_2/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_2/output/dense/kernel
Ą
Ibert/encoder/layer_2/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_2/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_2/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_2/output/dense/kernelEbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_2/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_2/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_2/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_2/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_2/output/dense/bias

Gbert/encoder/layer_2/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_2/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_2/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_2/output/dense/bias8bert/encoder/layer_2/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_2/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_2/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_2/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_2/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_2/output/einsum/EinsumEinsum'bert/encoder/layer_2/intermediate/mul_38bert/encoder/layer_2/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_2/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_2/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_2/output/addAddV2)bert/encoder/layer_2/output/einsum/Einsum.bert/encoder/layer_2/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_2/output/add_1AddV2bert/encoder/layer_2/output/add?bert/encoder/layer_2/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_2/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_2/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_2/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_2/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_2/output/LayerNorm/beta<bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_2/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_2/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_2/output/LayerNorm/gamma
§
Lbert/encoder/layer_2/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_2/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_2/output/LayerNorm/gamma<bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_2/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_2/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_2/output/LayerNorm/moments/meanMean!bert/encoder/layer_2/output/add_1Dbert/encoder/layer_2/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_2/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_2/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_2/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_2/output/add_1:bert/encoder/layer_2/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_2/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_2/output/LayerNorm/moments/varianceMean?bert/encoder/layer_2/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_2/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_2/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_2/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_2/output/LayerNorm/moments/variance5bert/encoder/layer_2/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_2/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_2/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_2/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_2/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_2/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_2/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_2/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_2/output/add_13bert/encoder/layer_2/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_2/output/LayerNorm/moments/mean3bert/encoder/layer_2/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_2/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_2/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_2/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_2/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_2/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_2/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_3/attention/self/ShapeShape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_3/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_3/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_3/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_3/attention/self/strided_sliceStridedSlice)bert/encoder/layer_3/attention/self/Shape7bert/encoder/layer_3/attention/self/strided_slice/stack9bert/encoder/layer_3/attention/self/strided_slice/stack_19bert/encoder/layer_3/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_3/attention/self/Shape_1Shape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_3/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_3/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_3/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_3/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_3/attention/self/Shape_19bert/encoder/layer_3/attention/self/strided_slice_1/stack;bert/encoder/layer_3/attention/self/strided_slice_1/stack_1;bert/encoder/layer_3/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_3/attention/self/Shape_2Shape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_3/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_3/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_3/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_3/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_3/attention/self/Shape_29bert/encoder/layer_3/attention/self/strided_slice_2/stack;bert/encoder/layer_3/attention/self/strided_slice_2/stack_1;bert/encoder/layer_3/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_3/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_3/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_3/attention/self/query/kernel
ą
Qbert/encoder/layer_3/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_3/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_3/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_3/attention/self/query/kernelMbert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_3/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_3/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_3/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_3/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_3/attention/self/query/ReshapeReshape@bert/encoder/layer_3/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_3/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_3/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_3/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_3/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_3/attention/self/query/bias
­
Obert/encoder/layer_3/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_3/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_3/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_3/attention/self/query/bias@bert/encoder/layer_3/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_3/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_3/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_3/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_3/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_3/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_3/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_3/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_3/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_11bert/encoder/layer_3/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_3/attention/self/query/addAddV27bert/encoder/layer_3/attention/self/query/einsum/Einsum3bert/encoder/layer_3/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_3/attention/self/Shape_3Shape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_3/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_3/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_3/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_3/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_3/attention/self/Shape_39bert/encoder/layer_3/attention/self/strided_slice_3/stack;bert/encoder/layer_3/attention/self/strided_slice_3/stack_1;bert/encoder/layer_3/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_3/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_3/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_3/attention/self/key/kernel
­
Obert/encoder/layer_3/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_3/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_3/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_3/attention/self/key/kernelKbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_3/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_3/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_3/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_3/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_3/attention/self/key/ReshapeReshape>bert/encoder/layer_3/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_3/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_3/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_3/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_3/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_3/attention/self/key/bias
Š
Mbert/encoder/layer_3/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_3/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_3/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_3/attention/self/key/bias>bert/encoder/layer_3/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_3/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_3/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_3/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_3/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_3/attention/self/key/Reshape_1Reshape@bert/encoder/layer_3/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_3/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_3/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_3/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_3/attention/self/key/addAddV25bert/encoder/layer_3/attention/self/key/einsum/Einsum1bert/encoder/layer_3/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_3/attention/self/Shape_4Shape5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_3/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_3/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_3/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_3/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_3/attention/self/Shape_49bert/encoder/layer_3/attention/self/strided_slice_4/stack;bert/encoder/layer_3/attention/self/strided_slice_4/stack_1;bert/encoder/layer_3/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_3/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_3/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_3/attention/self/value/kernel
ą
Qbert/encoder/layer_3/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_3/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_3/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_3/attention/self/value/kernelMbert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_3/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_3/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_3/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_3/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_3/attention/self/value/ReshapeReshape@bert/encoder/layer_3/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_3/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_3/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_3/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_3/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_3/attention/self/value/bias
­
Obert/encoder/layer_3/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_3/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_3/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_3/attention/self/value/bias@bert/encoder/layer_3/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_3/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_3/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_3/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_3/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_3/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_3/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_3/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_3/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_3/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_11bert/encoder/layer_3/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_3/attention/self/value/addAddV27bert/encoder/layer_3/attention/self/value/einsum/Einsum3bert/encoder/layer_3/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_3/attention/self/einsum/EinsumEinsum+bert/encoder/layer_3/attention/self/key/add-bert/encoder/layer_3/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_3/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_3/attention/self/MulMul1bert/encoder/layer_3/attention/self/einsum/Einsum)bert/encoder/layer_3/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_3/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_3/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_3/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_3/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_3/attention/self/subSub)bert/encoder/layer_3/attention/self/sub/x.bert/encoder/layer_3/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_3/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_3/attention/self/mul_1Mul'bert/encoder/layer_3/attention/self/sub+bert/encoder/layer_3/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_3/attention/self/addAddV2'bert/encoder/layer_3/attention/self/Mul)bert/encoder/layer_3/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_3/attention/self/SoftmaxSoftmax'bert/encoder/layer_3/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_3/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_3/attention/self/Softmax-bert/encoder/layer_3/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2

Sbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_3/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_3/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_3/attention/output/dense/kernel
ľ
Sbert/encoder/layer_3/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_3/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_3/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_3/attention/output/dense/kernelObert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_3/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_3/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_3/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_3/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_3/attention/output/dense/ReshapeReshapeBbert/encoder/layer_3/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_3/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_3/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_3/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_3/attention/output/dense/bias
ą
Qbert/encoder/layer_3/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_3/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_3/attention/output/dense/biasBbert/encoder/layer_3/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_3/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_3/attention/output/einsum/EinsumEinsum3bert/encoder/layer_3/attention/self/einsum_1/Einsum3bert/encoder/layer_3/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_3/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_3/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_3/attention/output/addAddV23bert/encoder/layer_3/attention/output/einsum/Einsum8bert/encoder/layer_3/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_3/attention/output/add_1AddV2)bert/encoder/layer_3/attention/output/add5bert/encoder/layer_2/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_3/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_3/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_3/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_3/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_3/attention/output/LayerNorm/betaFbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_3/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_3/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_3/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_3/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_3/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_3/attention/output/LayerNorm/gammaFbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_3/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_3/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_3/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_3/attention/output/add_1Nbert/encoder/layer_3/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_3/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_3/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_3/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_3/attention/output/add_1Dbert/encoder/layer_3/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_3/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_3/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_3/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_3/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_3/attention/output/LayerNorm/moments/variance?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_3/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_3/attention/output/add_1=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_3/attention/output/LayerNorm/moments/mean=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_3/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_3/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_3/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_3/intermediate/ShapeShape?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_3/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_3/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_3/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_3/intermediate/strided_sliceStridedSlice'bert/encoder/layer_3/intermediate/Shape5bert/encoder/layer_3/intermediate/strided_slice/stack7bert/encoder/layer_3/intermediate/strided_slice/stack_17bert/encoder/layer_3/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_3/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_3/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_3/intermediate/dense/kernel
­
Obert/encoder/layer_3/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_3/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_3/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_3/intermediate/dense/kernelKbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_3/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_3/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_3/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_3/intermediate/dense/bias
Š
Mbert/encoder/layer_3/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_3/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_3/intermediate/dense/bias>bert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_3/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_3/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_3/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_3/intermediate/einsum/EinsumEinsum?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_3/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_3/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_3/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_3/intermediate/addAddV2/bert/encoder/layer_3/intermediate/einsum/Einsum4bert/encoder/layer_3/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_3/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_3/intermediate/PowPow%bert/encoder/layer_3/intermediate/add'bert/encoder/layer_3/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_3/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_3/intermediate/mulMul'bert/encoder/layer_3/intermediate/mul/x%bert/encoder/layer_3/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_3/intermediate/add_1AddV2%bert/encoder/layer_3/intermediate/add%bert/encoder/layer_3/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_3/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_3/intermediate/mul_1Mul)bert/encoder/layer_3/intermediate/mul_1/x'bert/encoder/layer_3/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_3/intermediate/TanhTanh'bert/encoder/layer_3/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_3/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_3/intermediate/add_2AddV2)bert/encoder/layer_3/intermediate/add_2/x&bert/encoder/layer_3/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_3/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_3/intermediate/mul_2Mul)bert/encoder/layer_3/intermediate/mul_2/x'bert/encoder/layer_3/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_3/intermediate/mul_3Mul%bert/encoder/layer_3/intermediate/add'bert/encoder/layer_3/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_3/output/ShapeShape'bert/encoder/layer_3/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_3/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_3/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_3/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_3/output/strided_sliceStridedSlice!bert/encoder/layer_3/output/Shape/bert/encoder/layer_3/output/strided_slice/stack1bert/encoder/layer_3/output/strided_slice/stack_11bert/encoder/layer_3/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
Ý
Ibert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_3/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_3/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_3/output/dense/kernel
Ą
Ibert/encoder/layer_3/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_3/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_3/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_3/output/dense/kernelEbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_3/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_3/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_3/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_3/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_3/output/dense/bias

Gbert/encoder/layer_3/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_3/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_3/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_3/output/dense/bias8bert/encoder/layer_3/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_3/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_3/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_3/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_3/output/einsum/EinsumEinsum'bert/encoder/layer_3/intermediate/mul_38bert/encoder/layer_3/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_3/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_3/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_3/output/addAddV2)bert/encoder/layer_3/output/einsum/Einsum.bert/encoder/layer_3/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_3/output/add_1AddV2bert/encoder/layer_3/output/add?bert/encoder/layer_3/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_3/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_3/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_3/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_3/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_3/output/LayerNorm/beta<bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_3/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_3/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_3/output/LayerNorm/gamma
§
Lbert/encoder/layer_3/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_3/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_3/output/LayerNorm/gamma<bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_3/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_3/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_3/output/LayerNorm/moments/meanMean!bert/encoder/layer_3/output/add_1Dbert/encoder/layer_3/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_3/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_3/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_3/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_3/output/add_1:bert/encoder/layer_3/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_3/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_3/output/LayerNorm/moments/varianceMean?bert/encoder/layer_3/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_3/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_3/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_3/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_3/output/LayerNorm/moments/variance5bert/encoder/layer_3/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_3/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_3/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_3/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_3/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_3/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_3/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_3/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_3/output/add_13bert/encoder/layer_3/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_3/output/LayerNorm/moments/mean3bert/encoder/layer_3/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_3/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_3/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_3/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_3/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_3/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_3/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_4/attention/self/ShapeShape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_4/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_4/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_4/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_4/attention/self/strided_sliceStridedSlice)bert/encoder/layer_4/attention/self/Shape7bert/encoder/layer_4/attention/self/strided_slice/stack9bert/encoder/layer_4/attention/self/strided_slice/stack_19bert/encoder/layer_4/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_4/attention/self/Shape_1Shape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_4/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_4/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_4/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_4/attention/self/Shape_19bert/encoder/layer_4/attention/self/strided_slice_1/stack;bert/encoder/layer_4/attention/self/strided_slice_1/stack_1;bert/encoder/layer_4/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_4/attention/self/Shape_2Shape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_4/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_4/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_4/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_4/attention/self/Shape_29bert/encoder/layer_4/attention/self/strided_slice_2/stack;bert/encoder/layer_4/attention/self/strided_slice_2/stack_1;bert/encoder/layer_4/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_4/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_4/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_4/attention/self/query/kernel
ą
Qbert/encoder/layer_4/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_4/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_4/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_4/attention/self/query/kernelMbert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_4/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_4/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_4/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_4/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_4/attention/self/query/ReshapeReshape@bert/encoder/layer_4/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_4/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_4/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_4/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_4/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_4/attention/self/query/bias
­
Obert/encoder/layer_4/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_4/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_4/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_4/attention/self/query/bias@bert/encoder/layer_4/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_4/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_4/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_4/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_4/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_4/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_4/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_4/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_4/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_11bert/encoder/layer_4/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_4/attention/self/query/addAddV27bert/encoder/layer_4/attention/self/query/einsum/Einsum3bert/encoder/layer_4/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_4/attention/self/Shape_3Shape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_4/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_4/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_4/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_4/attention/self/Shape_39bert/encoder/layer_4/attention/self/strided_slice_3/stack;bert/encoder/layer_4/attention/self/strided_slice_3/stack_1;bert/encoder/layer_4/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_4/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_4/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_4/attention/self/key/kernel
­
Obert/encoder/layer_4/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_4/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_4/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_4/attention/self/key/kernelKbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_4/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_4/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_4/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_4/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_4/attention/self/key/ReshapeReshape>bert/encoder/layer_4/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_4/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_4/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_4/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_4/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_4/attention/self/key/bias
Š
Mbert/encoder/layer_4/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_4/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_4/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_4/attention/self/key/bias>bert/encoder/layer_4/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_4/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_4/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_4/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_4/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_4/attention/self/key/Reshape_1Reshape@bert/encoder/layer_4/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_4/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_4/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_4/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_4/attention/self/key/addAddV25bert/encoder/layer_4/attention/self/key/einsum/Einsum1bert/encoder/layer_4/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_4/attention/self/Shape_4Shape5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_4/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_4/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_4/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_4/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_4/attention/self/Shape_49bert/encoder/layer_4/attention/self/strided_slice_4/stack;bert/encoder/layer_4/attention/self/strided_slice_4/stack_1;bert/encoder/layer_4/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ý
Qbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_4/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_4/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_4/attention/self/value/kernel
ą
Qbert/encoder/layer_4/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_4/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_4/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_4/attention/self/value/kernelMbert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_4/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_4/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_4/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_4/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_4/attention/self/value/ReshapeReshape@bert/encoder/layer_4/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_4/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_4/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_4/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_4/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_4/attention/self/value/bias
­
Obert/encoder/layer_4/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_4/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_4/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_4/attention/self/value/bias@bert/encoder/layer_4/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_4/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_4/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_4/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_4/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_4/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_4/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_4/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_4/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_4/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_11bert/encoder/layer_4/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_4/attention/self/value/addAddV27bert/encoder/layer_4/attention/self/value/einsum/Einsum3bert/encoder/layer_4/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_4/attention/self/einsum/EinsumEinsum+bert/encoder/layer_4/attention/self/key/add-bert/encoder/layer_4/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_4/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_4/attention/self/MulMul1bert/encoder/layer_4/attention/self/einsum/Einsum)bert/encoder/layer_4/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_4/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_4/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_4/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_4/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_4/attention/self/subSub)bert/encoder/layer_4/attention/self/sub/x.bert/encoder/layer_4/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_4/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_4/attention/self/mul_1Mul'bert/encoder/layer_4/attention/self/sub+bert/encoder/layer_4/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_4/attention/self/addAddV2'bert/encoder/layer_4/attention/self/Mul)bert/encoder/layer_4/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_4/attention/self/SoftmaxSoftmax'bert/encoder/layer_4/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_4/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_4/attention/self/Softmax-bert/encoder/layer_4/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2

Sbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_4/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_4/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_4/attention/output/dense/kernel
ľ
Sbert/encoder/layer_4/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_4/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_4/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_4/attention/output/dense/kernelObert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_4/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_4/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_4/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_4/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_4/attention/output/dense/ReshapeReshapeBbert/encoder/layer_4/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_4/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_4/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_4/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_4/attention/output/dense/bias
ą
Qbert/encoder/layer_4/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_4/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_4/attention/output/dense/biasBbert/encoder/layer_4/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_4/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_4/attention/output/einsum/EinsumEinsum3bert/encoder/layer_4/attention/self/einsum_1/Einsum3bert/encoder/layer_4/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_4/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_4/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_4/attention/output/addAddV23bert/encoder/layer_4/attention/output/einsum/Einsum8bert/encoder/layer_4/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_4/attention/output/add_1AddV2)bert/encoder/layer_4/attention/output/add5bert/encoder/layer_3/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_4/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_4/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_4/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_4/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_4/attention/output/LayerNorm/betaFbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_4/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_4/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_4/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_4/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_4/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_4/attention/output/LayerNorm/gammaFbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_4/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_4/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_4/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_4/attention/output/add_1Nbert/encoder/layer_4/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_4/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_4/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_4/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_4/attention/output/add_1Dbert/encoder/layer_4/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_4/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_4/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_4/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_4/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_4/attention/output/LayerNorm/moments/variance?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_4/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_4/attention/output/add_1=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_4/attention/output/LayerNorm/moments/mean=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_4/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_4/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_4/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_4/intermediate/ShapeShape?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_4/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_4/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_4/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_4/intermediate/strided_sliceStridedSlice'bert/encoder/layer_4/intermediate/Shape5bert/encoder/layer_4/intermediate/strided_slice/stack7bert/encoder/layer_4/intermediate/strided_slice/stack_17bert/encoder/layer_4/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2
ő
Obert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_4/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_4/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_4/intermediate/dense/kernel
­
Obert/encoder/layer_4/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_4/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_4/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_4/intermediate/dense/kernelKbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_4/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_4/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_4/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_4/intermediate/dense/bias
Š
Mbert/encoder/layer_4/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_4/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_4/intermediate/dense/bias>bert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_4/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_4/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_4/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_4/intermediate/einsum/EinsumEinsum?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_4/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_4/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_4/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_4/intermediate/addAddV2/bert/encoder/layer_4/intermediate/einsum/Einsum4bert/encoder/layer_4/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_4/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_4/intermediate/PowPow%bert/encoder/layer_4/intermediate/add'bert/encoder/layer_4/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_4/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_4/intermediate/mulMul'bert/encoder/layer_4/intermediate/mul/x%bert/encoder/layer_4/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_4/intermediate/add_1AddV2%bert/encoder/layer_4/intermediate/add%bert/encoder/layer_4/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_4/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_4/intermediate/mul_1Mul)bert/encoder/layer_4/intermediate/mul_1/x'bert/encoder/layer_4/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_4/intermediate/TanhTanh'bert/encoder/layer_4/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_4/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_4/intermediate/add_2AddV2)bert/encoder/layer_4/intermediate/add_2/x&bert/encoder/layer_4/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_4/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_4/intermediate/mul_2Mul)bert/encoder/layer_4/intermediate/mul_2/x'bert/encoder/layer_4/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_4/intermediate/mul_3Mul%bert/encoder/layer_4/intermediate/add'bert/encoder/layer_4/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_4/output/ShapeShape'bert/encoder/layer_4/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_4/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_4/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_4/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_4/output/strided_sliceStridedSlice!bert/encoder/layer_4/output/Shape/bert/encoder/layer_4/output/strided_slice/stack1bert/encoder/layer_4/output/strided_slice/stack_11bert/encoder/layer_4/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2 
Ý
Ibert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_4/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_4/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_4/output/dense/kernel
Ą
Ibert/encoder/layer_4/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_4/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_4/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_4/output/dense/kernelEbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_4/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_4/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_4/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_4/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_4/output/dense/bias

Gbert/encoder/layer_4/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_4/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_4/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_4/output/dense/bias8bert/encoder/layer_4/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_4/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_4/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_4/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_4/output/einsum/EinsumEinsum'bert/encoder/layer_4/intermediate/mul_38bert/encoder/layer_4/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_4/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_4/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_4/output/addAddV2)bert/encoder/layer_4/output/einsum/Einsum.bert/encoder/layer_4/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_4/output/add_1AddV2bert/encoder/layer_4/output/add?bert/encoder/layer_4/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_4/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_4/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_4/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_4/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_4/output/LayerNorm/beta<bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_4/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_4/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_4/output/LayerNorm/gamma
§
Lbert/encoder/layer_4/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_4/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_4/output/LayerNorm/gamma<bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_4/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_4/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_4/output/LayerNorm/moments/meanMean!bert/encoder/layer_4/output/add_1Dbert/encoder/layer_4/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_4/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_4/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_4/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_4/output/add_1:bert/encoder/layer_4/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_4/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_4/output/LayerNorm/moments/varianceMean?bert/encoder/layer_4/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_4/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_4/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_4/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_4/output/LayerNorm/moments/variance5bert/encoder/layer_4/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_4/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_4/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_4/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_4/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_4/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_4/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_4/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_4/output/add_13bert/encoder/layer_4/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_4/output/LayerNorm/moments/mean3bert/encoder/layer_4/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_4/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_4/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_4/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_4/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_4/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_4/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_5/attention/self/ShapeShape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_5/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_5/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_5/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_5/attention/self/strided_sliceStridedSlice)bert/encoder/layer_5/attention/self/Shape7bert/encoder/layer_5/attention/self/strided_slice/stack9bert/encoder/layer_5/attention/self/strided_slice/stack_19bert/encoder/layer_5/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_5/attention/self/Shape_1Shape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_5/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_5/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_5/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_5/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_5/attention/self/Shape_19bert/encoder/layer_5/attention/self/strided_slice_1/stack;bert/encoder/layer_5/attention/self/strided_slice_1/stack_1;bert/encoder/layer_5/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_5/attention/self/Shape_2Shape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_5/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_5/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_5/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_5/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_5/attention/self/Shape_29bert/encoder/layer_5/attention/self/strided_slice_2/stack;bert/encoder/layer_5/attention/self/strided_slice_2/stack_1;bert/encoder/layer_5/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2!
ý
Qbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_5/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_5/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_5/attention/self/query/kernel
ą
Qbert/encoder/layer_5/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_5/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_5/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_5/attention/self/query/kernelMbert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_5/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_5/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_5/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_5/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_5/attention/self/query/ReshapeReshape@bert/encoder/layer_5/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_5/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_5/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_5/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_5/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_5/attention/self/query/bias
­
Obert/encoder/layer_5/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_5/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_5/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_5/attention/self/query/bias@bert/encoder/layer_5/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_5/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_5/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_5/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_5/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_5/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_5/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_5/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_5/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_11bert/encoder/layer_5/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_5/attention/self/query/addAddV27bert/encoder/layer_5/attention/self/query/einsum/Einsum3bert/encoder/layer_5/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_5/attention/self/Shape_3Shape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_5/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_5/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_5/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_5/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_5/attention/self/Shape_39bert/encoder/layer_5/attention/self/strided_slice_3/stack;bert/encoder/layer_5/attention/self/strided_slice_3/stack_1;bert/encoder/layer_5/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2"
ő
Obert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_5/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_5/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_5/attention/self/key/kernel
­
Obert/encoder/layer_5/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_5/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_5/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_5/attention/self/key/kernelKbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_5/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_5/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_5/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_5/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_5/attention/self/key/ReshapeReshape>bert/encoder/layer_5/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_5/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_5/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_5/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_5/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_5/attention/self/key/bias
Š
Mbert/encoder/layer_5/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_5/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_5/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_5/attention/self/key/bias>bert/encoder/layer_5/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_5/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_5/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_5/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_5/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_5/attention/self/key/Reshape_1Reshape@bert/encoder/layer_5/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_5/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_5/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_5/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_5/attention/self/key/addAddV25bert/encoder/layer_5/attention/self/key/einsum/Einsum1bert/encoder/layer_5/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_5/attention/self/Shape_4Shape5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_5/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_5/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_5/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_5/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_5/attention/self/Shape_49bert/encoder/layer_5/attention/self/strided_slice_4/stack;bert/encoder/layer_5/attention/self/strided_slice_4/stack_1;bert/encoder/layer_5/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2#
ý
Qbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_5/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_5/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_5/attention/self/value/kernel
ą
Qbert/encoder/layer_5/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_5/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_5/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_5/attention/self/value/kernelMbert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_5/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_5/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_5/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_5/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_5/attention/self/value/ReshapeReshape@bert/encoder/layer_5/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_5/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_5/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_5/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_5/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_5/attention/self/value/bias
­
Obert/encoder/layer_5/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_5/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_5/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_5/attention/self/value/bias@bert/encoder/layer_5/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_5/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_5/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_5/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_5/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_5/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_5/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_5/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_5/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_11bert/encoder/layer_5/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_5/attention/self/value/addAddV27bert/encoder/layer_5/attention/self/value/einsum/Einsum3bert/encoder/layer_5/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_5/attention/self/einsum/EinsumEinsum+bert/encoder/layer_5/attention/self/key/add-bert/encoder/layer_5/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_5/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_5/attention/self/MulMul1bert/encoder/layer_5/attention/self/einsum/Einsum)bert/encoder/layer_5/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_5/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_5/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_5/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_5/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_5/attention/self/subSub)bert/encoder/layer_5/attention/self/sub/x.bert/encoder/layer_5/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_5/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_5/attention/self/mul_1Mul'bert/encoder/layer_5/attention/self/sub+bert/encoder/layer_5/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_5/attention/self/addAddV2'bert/encoder/layer_5/attention/self/Mul)bert/encoder/layer_5/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_5/attention/self/SoftmaxSoftmax'bert/encoder/layer_5/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_5/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_5/attention/self/Softmax-bert/encoder/layer_5/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2$

Sbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_5/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_5/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_5/attention/output/dense/kernel
ľ
Sbert/encoder/layer_5/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_5/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_5/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_5/attention/output/dense/kernelObert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_5/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_5/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_5/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_5/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_5/attention/output/dense/ReshapeReshapeBbert/encoder/layer_5/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_5/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_5/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_5/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_5/attention/output/dense/bias
ą
Qbert/encoder/layer_5/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_5/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_5/attention/output/dense/biasBbert/encoder/layer_5/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_5/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_5/attention/output/einsum/EinsumEinsum3bert/encoder/layer_5/attention/self/einsum_1/Einsum3bert/encoder/layer_5/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_5/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_5/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_5/attention/output/addAddV23bert/encoder/layer_5/attention/output/einsum/Einsum8bert/encoder/layer_5/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_5/attention/output/add_1AddV2)bert/encoder/layer_5/attention/output/add5bert/encoder/layer_4/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_5/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_5/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_5/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_5/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_5/attention/output/LayerNorm/betaFbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_5/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_5/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_5/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_5/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_5/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_5/attention/output/LayerNorm/gammaFbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_5/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_5/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_5/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_5/attention/output/add_1Nbert/encoder/layer_5/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_5/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_5/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_5/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_5/attention/output/add_1Dbert/encoder/layer_5/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_5/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_5/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_5/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_5/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_5/attention/output/LayerNorm/moments/variance?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_5/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_5/attention/output/add_1=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_5/attention/output/LayerNorm/moments/mean=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_5/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_5/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_5/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_5/intermediate/ShapeShape?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_5/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_5/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_5/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_5/intermediate/strided_sliceStridedSlice'bert/encoder/layer_5/intermediate/Shape5bert/encoder/layer_5/intermediate/strided_slice/stack7bert/encoder/layer_5/intermediate/strided_slice/stack_17bert/encoder/layer_5/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2%
ő
Obert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_5/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_5/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_5/intermediate/dense/kernel
­
Obert/encoder/layer_5/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_5/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_5/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_5/intermediate/dense/kernelKbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_5/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_5/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_5/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_5/intermediate/dense/bias
Š
Mbert/encoder/layer_5/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_5/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_5/intermediate/dense/bias>bert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_5/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_5/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_5/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_5/intermediate/einsum/EinsumEinsum?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_5/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_5/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_5/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_5/intermediate/addAddV2/bert/encoder/layer_5/intermediate/einsum/Einsum4bert/encoder/layer_5/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_5/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_5/intermediate/PowPow%bert/encoder/layer_5/intermediate/add'bert/encoder/layer_5/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_5/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_5/intermediate/mulMul'bert/encoder/layer_5/intermediate/mul/x%bert/encoder/layer_5/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_5/intermediate/add_1AddV2%bert/encoder/layer_5/intermediate/add%bert/encoder/layer_5/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_5/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_5/intermediate/mul_1Mul)bert/encoder/layer_5/intermediate/mul_1/x'bert/encoder/layer_5/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_5/intermediate/TanhTanh'bert/encoder/layer_5/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_5/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_5/intermediate/add_2AddV2)bert/encoder/layer_5/intermediate/add_2/x&bert/encoder/layer_5/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_5/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_5/intermediate/mul_2Mul)bert/encoder/layer_5/intermediate/mul_2/x'bert/encoder/layer_5/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_5/intermediate/mul_3Mul%bert/encoder/layer_5/intermediate/add'bert/encoder/layer_5/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_5/output/ShapeShape'bert/encoder/layer_5/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_5/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_5/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_5/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_5/output/strided_sliceStridedSlice!bert/encoder/layer_5/output/Shape/bert/encoder/layer_5/output/strided_slice/stack1bert/encoder/layer_5/output/strided_slice/stack_11bert/encoder/layer_5/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2&
Ý
Ibert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_5/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_5/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_5/output/dense/kernel
Ą
Ibert/encoder/layer_5/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_5/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_5/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_5/output/dense/kernelEbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_5/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_5/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_5/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_5/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_5/output/dense/bias

Gbert/encoder/layer_5/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_5/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_5/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_5/output/dense/bias8bert/encoder/layer_5/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_5/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_5/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_5/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_5/output/einsum/EinsumEinsum'bert/encoder/layer_5/intermediate/mul_38bert/encoder/layer_5/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_5/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_5/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_5/output/addAddV2)bert/encoder/layer_5/output/einsum/Einsum.bert/encoder/layer_5/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_5/output/add_1AddV2bert/encoder/layer_5/output/add?bert/encoder/layer_5/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_5/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_5/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_5/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_5/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_5/output/LayerNorm/beta<bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_5/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_5/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_5/output/LayerNorm/gamma
§
Lbert/encoder/layer_5/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_5/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_5/output/LayerNorm/gamma<bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_5/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_5/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_5/output/LayerNorm/moments/meanMean!bert/encoder/layer_5/output/add_1Dbert/encoder/layer_5/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_5/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_5/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_5/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_5/output/add_1:bert/encoder/layer_5/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_5/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_5/output/LayerNorm/moments/varianceMean?bert/encoder/layer_5/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_5/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_5/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_5/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_5/output/LayerNorm/moments/variance5bert/encoder/layer_5/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_5/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_5/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_5/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_5/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_5/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_5/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_5/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_5/output/add_13bert/encoder/layer_5/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_5/output/LayerNorm/moments/mean3bert/encoder/layer_5/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_5/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_5/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_5/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_5/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_5/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_5/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_6/attention/self/ShapeShape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_6/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_6/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_6/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_6/attention/self/strided_sliceStridedSlice)bert/encoder/layer_6/attention/self/Shape7bert/encoder/layer_6/attention/self/strided_slice/stack9bert/encoder/layer_6/attention/self/strided_slice/stack_19bert/encoder/layer_6/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_6/attention/self/Shape_1Shape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_6/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_6/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_6/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_6/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_6/attention/self/Shape_19bert/encoder/layer_6/attention/self/strided_slice_1/stack;bert/encoder/layer_6/attention/self/strided_slice_1/stack_1;bert/encoder/layer_6/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_6/attention/self/Shape_2Shape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_6/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_6/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_6/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_6/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_6/attention/self/Shape_29bert/encoder/layer_6/attention/self/strided_slice_2/stack;bert/encoder/layer_6/attention/self/strided_slice_2/stack_1;bert/encoder/layer_6/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2'
ý
Qbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_6/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_6/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_6/attention/self/query/kernel
ą
Qbert/encoder/layer_6/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_6/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_6/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_6/attention/self/query/kernelMbert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_6/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_6/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_6/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_6/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_6/attention/self/query/ReshapeReshape@bert/encoder/layer_6/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_6/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_6/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_6/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_6/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_6/attention/self/query/bias
­
Obert/encoder/layer_6/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_6/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_6/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_6/attention/self/query/bias@bert/encoder/layer_6/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_6/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_6/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_6/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_6/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_6/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_6/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_6/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_6/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_11bert/encoder/layer_6/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_6/attention/self/query/addAddV27bert/encoder/layer_6/attention/self/query/einsum/Einsum3bert/encoder/layer_6/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_6/attention/self/Shape_3Shape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_6/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_6/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_6/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_6/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_6/attention/self/Shape_39bert/encoder/layer_6/attention/self/strided_slice_3/stack;bert/encoder/layer_6/attention/self/strided_slice_3/stack_1;bert/encoder/layer_6/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2(
ő
Obert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_6/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_6/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_6/attention/self/key/kernel
­
Obert/encoder/layer_6/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_6/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_6/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_6/attention/self/key/kernelKbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_6/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_6/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_6/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_6/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_6/attention/self/key/ReshapeReshape>bert/encoder/layer_6/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_6/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_6/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_6/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_6/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_6/attention/self/key/bias
Š
Mbert/encoder/layer_6/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_6/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_6/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_6/attention/self/key/bias>bert/encoder/layer_6/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_6/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_6/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_6/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_6/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_6/attention/self/key/Reshape_1Reshape@bert/encoder/layer_6/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_6/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_6/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_6/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_6/attention/self/key/addAddV25bert/encoder/layer_6/attention/self/key/einsum/Einsum1bert/encoder/layer_6/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_6/attention/self/Shape_4Shape5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_6/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_6/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_6/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_6/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_6/attention/self/Shape_49bert/encoder/layer_6/attention/self/strided_slice_4/stack;bert/encoder/layer_6/attention/self/strided_slice_4/stack_1;bert/encoder/layer_6/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2)
ý
Qbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_6/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_6/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_6/attention/self/value/kernel
ą
Qbert/encoder/layer_6/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_6/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_6/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_6/attention/self/value/kernelMbert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_6/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_6/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_6/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_6/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_6/attention/self/value/ReshapeReshape@bert/encoder/layer_6/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_6/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_6/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_6/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_6/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_6/attention/self/value/bias
­
Obert/encoder/layer_6/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_6/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_6/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_6/attention/self/value/bias@bert/encoder/layer_6/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_6/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_6/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_6/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_6/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_6/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_6/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_6/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_6/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_11bert/encoder/layer_6/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_6/attention/self/value/addAddV27bert/encoder/layer_6/attention/self/value/einsum/Einsum3bert/encoder/layer_6/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_6/attention/self/einsum/EinsumEinsum+bert/encoder/layer_6/attention/self/key/add-bert/encoder/layer_6/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_6/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_6/attention/self/MulMul1bert/encoder/layer_6/attention/self/einsum/Einsum)bert/encoder/layer_6/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_6/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_6/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_6/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_6/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_6/attention/self/subSub)bert/encoder/layer_6/attention/self/sub/x.bert/encoder/layer_6/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_6/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_6/attention/self/mul_1Mul'bert/encoder/layer_6/attention/self/sub+bert/encoder/layer_6/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_6/attention/self/addAddV2'bert/encoder/layer_6/attention/self/Mul)bert/encoder/layer_6/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_6/attention/self/SoftmaxSoftmax'bert/encoder/layer_6/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_6/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_6/attention/self/Softmax-bert/encoder/layer_6/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2*

Sbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_6/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_6/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_6/attention/output/dense/kernel
ľ
Sbert/encoder/layer_6/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_6/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_6/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_6/attention/output/dense/kernelObert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_6/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_6/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_6/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_6/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_6/attention/output/dense/ReshapeReshapeBbert/encoder/layer_6/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_6/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_6/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_6/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_6/attention/output/dense/bias
ą
Qbert/encoder/layer_6/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_6/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_6/attention/output/dense/biasBbert/encoder/layer_6/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_6/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_6/attention/output/einsum/EinsumEinsum3bert/encoder/layer_6/attention/self/einsum_1/Einsum3bert/encoder/layer_6/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_6/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_6/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_6/attention/output/addAddV23bert/encoder/layer_6/attention/output/einsum/Einsum8bert/encoder/layer_6/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_6/attention/output/add_1AddV2)bert/encoder/layer_6/attention/output/add5bert/encoder/layer_5/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_6/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_6/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_6/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_6/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_6/attention/output/LayerNorm/betaFbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_6/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_6/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_6/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_6/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_6/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_6/attention/output/LayerNorm/gammaFbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_6/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_6/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_6/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_6/attention/output/add_1Nbert/encoder/layer_6/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_6/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_6/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_6/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_6/attention/output/add_1Dbert/encoder/layer_6/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_6/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_6/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_6/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_6/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_6/attention/output/LayerNorm/moments/variance?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_6/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_6/attention/output/add_1=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_6/attention/output/LayerNorm/moments/mean=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_6/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_6/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_6/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_6/intermediate/ShapeShape?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_6/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_6/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_6/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_6/intermediate/strided_sliceStridedSlice'bert/encoder/layer_6/intermediate/Shape5bert/encoder/layer_6/intermediate/strided_slice/stack7bert/encoder/layer_6/intermediate/strided_slice/stack_17bert/encoder/layer_6/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2+
ő
Obert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_6/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_6/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_6/intermediate/dense/kernel
­
Obert/encoder/layer_6/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_6/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_6/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_6/intermediate/dense/kernelKbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_6/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_6/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_6/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_6/intermediate/dense/bias
Š
Mbert/encoder/layer_6/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_6/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_6/intermediate/dense/bias>bert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_6/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_6/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_6/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_6/intermediate/einsum/EinsumEinsum?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_6/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_6/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_6/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_6/intermediate/addAddV2/bert/encoder/layer_6/intermediate/einsum/Einsum4bert/encoder/layer_6/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_6/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_6/intermediate/PowPow%bert/encoder/layer_6/intermediate/add'bert/encoder/layer_6/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_6/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_6/intermediate/mulMul'bert/encoder/layer_6/intermediate/mul/x%bert/encoder/layer_6/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_6/intermediate/add_1AddV2%bert/encoder/layer_6/intermediate/add%bert/encoder/layer_6/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_6/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_6/intermediate/mul_1Mul)bert/encoder/layer_6/intermediate/mul_1/x'bert/encoder/layer_6/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_6/intermediate/TanhTanh'bert/encoder/layer_6/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_6/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_6/intermediate/add_2AddV2)bert/encoder/layer_6/intermediate/add_2/x&bert/encoder/layer_6/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_6/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_6/intermediate/mul_2Mul)bert/encoder/layer_6/intermediate/mul_2/x'bert/encoder/layer_6/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_6/intermediate/mul_3Mul%bert/encoder/layer_6/intermediate/add'bert/encoder/layer_6/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_6/output/ShapeShape'bert/encoder/layer_6/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_6/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_6/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_6/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_6/output/strided_sliceStridedSlice!bert/encoder/layer_6/output/Shape/bert/encoder/layer_6/output/strided_slice/stack1bert/encoder/layer_6/output/strided_slice/stack_11bert/encoder/layer_6/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2,
Ý
Ibert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_6/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_6/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_6/output/dense/kernel
Ą
Ibert/encoder/layer_6/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_6/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_6/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_6/output/dense/kernelEbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_6/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_6/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_6/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_6/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_6/output/dense/bias

Gbert/encoder/layer_6/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_6/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_6/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_6/output/dense/bias8bert/encoder/layer_6/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_6/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_6/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_6/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_6/output/einsum/EinsumEinsum'bert/encoder/layer_6/intermediate/mul_38bert/encoder/layer_6/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_6/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_6/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_6/output/addAddV2)bert/encoder/layer_6/output/einsum/Einsum.bert/encoder/layer_6/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_6/output/add_1AddV2bert/encoder/layer_6/output/add?bert/encoder/layer_6/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_6/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_6/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_6/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_6/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_6/output/LayerNorm/beta<bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_6/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_6/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_6/output/LayerNorm/gamma
§
Lbert/encoder/layer_6/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_6/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_6/output/LayerNorm/gamma<bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_6/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_6/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_6/output/LayerNorm/moments/meanMean!bert/encoder/layer_6/output/add_1Dbert/encoder/layer_6/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_6/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_6/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_6/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_6/output/add_1:bert/encoder/layer_6/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_6/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_6/output/LayerNorm/moments/varianceMean?bert/encoder/layer_6/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_6/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_6/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_6/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_6/output/LayerNorm/moments/variance5bert/encoder/layer_6/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_6/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_6/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_6/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_6/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_6/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_6/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_6/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_6/output/add_13bert/encoder/layer_6/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_6/output/LayerNorm/moments/mean3bert/encoder/layer_6/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_6/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_6/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_6/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_6/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_6/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_6/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_7/attention/self/ShapeShape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_7/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_7/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_7/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_7/attention/self/strided_sliceStridedSlice)bert/encoder/layer_7/attention/self/Shape7bert/encoder/layer_7/attention/self/strided_slice/stack9bert/encoder/layer_7/attention/self/strided_slice/stack_19bert/encoder/layer_7/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_7/attention/self/Shape_1Shape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_7/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_7/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_7/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_7/attention/self/Shape_19bert/encoder/layer_7/attention/self/strided_slice_1/stack;bert/encoder/layer_7/attention/self/strided_slice_1/stack_1;bert/encoder/layer_7/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_7/attention/self/Shape_2Shape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_7/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_7/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_7/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_7/attention/self/Shape_29bert/encoder/layer_7/attention/self/strided_slice_2/stack;bert/encoder/layer_7/attention/self/strided_slice_2/stack_1;bert/encoder/layer_7/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2-
ý
Qbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_7/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_7/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_7/attention/self/query/kernel
ą
Qbert/encoder/layer_7/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_7/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_7/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_7/attention/self/query/kernelMbert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_7/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_7/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_7/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_7/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_7/attention/self/query/ReshapeReshape@bert/encoder/layer_7/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_7/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_7/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_7/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_7/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_7/attention/self/query/bias
­
Obert/encoder/layer_7/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_7/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_7/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_7/attention/self/query/bias@bert/encoder/layer_7/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_7/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_7/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_7/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_7/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_7/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_7/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_7/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_7/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_11bert/encoder/layer_7/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_7/attention/self/query/addAddV27bert/encoder/layer_7/attention/self/query/einsum/Einsum3bert/encoder/layer_7/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_7/attention/self/Shape_3Shape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_7/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_7/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_7/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_7/attention/self/Shape_39bert/encoder/layer_7/attention/self/strided_slice_3/stack;bert/encoder/layer_7/attention/self/strided_slice_3/stack_1;bert/encoder/layer_7/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2.
ő
Obert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_7/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_7/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_7/attention/self/key/kernel
­
Obert/encoder/layer_7/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_7/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_7/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_7/attention/self/key/kernelKbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_7/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_7/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_7/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_7/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_7/attention/self/key/ReshapeReshape>bert/encoder/layer_7/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_7/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_7/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_7/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_7/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_7/attention/self/key/bias
Š
Mbert/encoder/layer_7/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_7/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_7/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_7/attention/self/key/bias>bert/encoder/layer_7/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_7/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_7/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_7/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_7/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_7/attention/self/key/Reshape_1Reshape@bert/encoder/layer_7/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_7/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_7/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_7/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_7/attention/self/key/addAddV25bert/encoder/layer_7/attention/self/key/einsum/Einsum1bert/encoder/layer_7/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_7/attention/self/Shape_4Shape5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_7/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_7/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_7/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_7/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_7/attention/self/Shape_49bert/encoder/layer_7/attention/self/strided_slice_4/stack;bert/encoder/layer_7/attention/self/strided_slice_4/stack_1;bert/encoder/layer_7/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2/
ý
Qbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_7/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_7/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_7/attention/self/value/kernel
ą
Qbert/encoder/layer_7/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_7/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_7/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_7/attention/self/value/kernelMbert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_7/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_7/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_7/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_7/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_7/attention/self/value/ReshapeReshape@bert/encoder/layer_7/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_7/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_7/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_7/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_7/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_7/attention/self/value/bias
­
Obert/encoder/layer_7/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_7/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_7/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_7/attention/self/value/bias@bert/encoder/layer_7/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_7/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_7/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_7/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_7/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_7/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_7/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_7/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_7/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_11bert/encoder/layer_7/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_7/attention/self/value/addAddV27bert/encoder/layer_7/attention/self/value/einsum/Einsum3bert/encoder/layer_7/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_7/attention/self/einsum/EinsumEinsum+bert/encoder/layer_7/attention/self/key/add-bert/encoder/layer_7/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_7/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_7/attention/self/MulMul1bert/encoder/layer_7/attention/self/einsum/Einsum)bert/encoder/layer_7/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_7/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_7/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_7/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_7/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_7/attention/self/subSub)bert/encoder/layer_7/attention/self/sub/x.bert/encoder/layer_7/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_7/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_7/attention/self/mul_1Mul'bert/encoder/layer_7/attention/self/sub+bert/encoder/layer_7/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_7/attention/self/addAddV2'bert/encoder/layer_7/attention/self/Mul)bert/encoder/layer_7/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_7/attention/self/SoftmaxSoftmax'bert/encoder/layer_7/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_7/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_7/attention/self/Softmax-bert/encoder/layer_7/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed20

Sbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_7/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_7/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_7/attention/output/dense/kernel
ľ
Sbert/encoder/layer_7/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_7/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_7/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_7/attention/output/dense/kernelObert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_7/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_7/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_7/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_7/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_7/attention/output/dense/ReshapeReshapeBbert/encoder/layer_7/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_7/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_7/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_7/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_7/attention/output/dense/bias
ą
Qbert/encoder/layer_7/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_7/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_7/attention/output/dense/biasBbert/encoder/layer_7/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_7/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_7/attention/output/einsum/EinsumEinsum3bert/encoder/layer_7/attention/self/einsum_1/Einsum3bert/encoder/layer_7/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_7/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_7/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_7/attention/output/addAddV23bert/encoder/layer_7/attention/output/einsum/Einsum8bert/encoder/layer_7/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_7/attention/output/add_1AddV2)bert/encoder/layer_7/attention/output/add5bert/encoder/layer_6/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_7/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_7/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_7/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_7/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_7/attention/output/LayerNorm/betaFbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_7/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_7/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_7/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_7/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_7/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_7/attention/output/LayerNorm/gammaFbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_7/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_7/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_7/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_7/attention/output/add_1Nbert/encoder/layer_7/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_7/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_7/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_7/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_7/attention/output/add_1Dbert/encoder/layer_7/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_7/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_7/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_7/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_7/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_7/attention/output/LayerNorm/moments/variance?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_7/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_7/attention/output/add_1=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_7/attention/output/LayerNorm/moments/mean=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_7/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_7/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_7/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_7/intermediate/ShapeShape?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_7/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_7/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_7/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_7/intermediate/strided_sliceStridedSlice'bert/encoder/layer_7/intermediate/Shape5bert/encoder/layer_7/intermediate/strided_slice/stack7bert/encoder/layer_7/intermediate/strided_slice/stack_17bert/encoder/layer_7/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed21
ő
Obert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_7/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_7/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_7/intermediate/dense/kernel
­
Obert/encoder/layer_7/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_7/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_7/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_7/intermediate/dense/kernelKbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_7/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_7/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_7/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_7/intermediate/dense/bias
Š
Mbert/encoder/layer_7/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_7/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_7/intermediate/dense/bias>bert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_7/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_7/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_7/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_7/intermediate/einsum/EinsumEinsum?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_7/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_7/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_7/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_7/intermediate/addAddV2/bert/encoder/layer_7/intermediate/einsum/Einsum4bert/encoder/layer_7/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_7/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_7/intermediate/PowPow%bert/encoder/layer_7/intermediate/add'bert/encoder/layer_7/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_7/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_7/intermediate/mulMul'bert/encoder/layer_7/intermediate/mul/x%bert/encoder/layer_7/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_7/intermediate/add_1AddV2%bert/encoder/layer_7/intermediate/add%bert/encoder/layer_7/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_7/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_7/intermediate/mul_1Mul)bert/encoder/layer_7/intermediate/mul_1/x'bert/encoder/layer_7/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_7/intermediate/TanhTanh'bert/encoder/layer_7/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_7/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_7/intermediate/add_2AddV2)bert/encoder/layer_7/intermediate/add_2/x&bert/encoder/layer_7/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_7/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_7/intermediate/mul_2Mul)bert/encoder/layer_7/intermediate/mul_2/x'bert/encoder/layer_7/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_7/intermediate/mul_3Mul%bert/encoder/layer_7/intermediate/add'bert/encoder/layer_7/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_7/output/ShapeShape'bert/encoder/layer_7/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_7/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_7/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_7/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_7/output/strided_sliceStridedSlice!bert/encoder/layer_7/output/Shape/bert/encoder/layer_7/output/strided_slice/stack1bert/encoder/layer_7/output/strided_slice/stack_11bert/encoder/layer_7/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed22
Ý
Ibert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_7/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_7/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_7/output/dense/kernel
Ą
Ibert/encoder/layer_7/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_7/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_7/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_7/output/dense/kernelEbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_7/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_7/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_7/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_7/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_7/output/dense/bias

Gbert/encoder/layer_7/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_7/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_7/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_7/output/dense/bias8bert/encoder/layer_7/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_7/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_7/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_7/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_7/output/einsum/EinsumEinsum'bert/encoder/layer_7/intermediate/mul_38bert/encoder/layer_7/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_7/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_7/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_7/output/addAddV2)bert/encoder/layer_7/output/einsum/Einsum.bert/encoder/layer_7/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_7/output/add_1AddV2bert/encoder/layer_7/output/add?bert/encoder/layer_7/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_7/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_7/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_7/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_7/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_7/output/LayerNorm/beta<bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_7/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_7/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_7/output/LayerNorm/gamma
§
Lbert/encoder/layer_7/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_7/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_7/output/LayerNorm/gamma<bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_7/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_7/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_7/output/LayerNorm/moments/meanMean!bert/encoder/layer_7/output/add_1Dbert/encoder/layer_7/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_7/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_7/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_7/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_7/output/add_1:bert/encoder/layer_7/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_7/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_7/output/LayerNorm/moments/varianceMean?bert/encoder/layer_7/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_7/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_7/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_7/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_7/output/LayerNorm/moments/variance5bert/encoder/layer_7/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_7/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_7/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_7/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_7/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_7/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_7/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_7/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_7/output/add_13bert/encoder/layer_7/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_7/output/LayerNorm/moments/mean3bert/encoder/layer_7/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_7/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_7/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_7/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_7/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_7/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_7/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_8/attention/self/ShapeShape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_8/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_8/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_8/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_8/attention/self/strided_sliceStridedSlice)bert/encoder/layer_8/attention/self/Shape7bert/encoder/layer_8/attention/self/strided_slice/stack9bert/encoder/layer_8/attention/self/strided_slice/stack_19bert/encoder/layer_8/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_8/attention/self/Shape_1Shape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_8/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_8/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_8/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_8/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_8/attention/self/Shape_19bert/encoder/layer_8/attention/self/strided_slice_1/stack;bert/encoder/layer_8/attention/self/strided_slice_1/stack_1;bert/encoder/layer_8/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_8/attention/self/Shape_2Shape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_8/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_8/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_8/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_8/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_8/attention/self/Shape_29bert/encoder/layer_8/attention/self/strided_slice_2/stack;bert/encoder/layer_8/attention/self/strided_slice_2/stack_1;bert/encoder/layer_8/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed23
ý
Qbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_8/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_8/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_8/attention/self/query/kernel
ą
Qbert/encoder/layer_8/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_8/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_8/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_8/attention/self/query/kernelMbert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_8/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_8/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_8/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_8/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_8/attention/self/query/ReshapeReshape@bert/encoder/layer_8/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_8/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_8/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_8/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_8/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_8/attention/self/query/bias
­
Obert/encoder/layer_8/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_8/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_8/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_8/attention/self/query/bias@bert/encoder/layer_8/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_8/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_8/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_8/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_8/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_8/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_8/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_8/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_8/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_11bert/encoder/layer_8/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_8/attention/self/query/addAddV27bert/encoder/layer_8/attention/self/query/einsum/Einsum3bert/encoder/layer_8/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_8/attention/self/Shape_3Shape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_8/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_8/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_8/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_8/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_8/attention/self/Shape_39bert/encoder/layer_8/attention/self/strided_slice_3/stack;bert/encoder/layer_8/attention/self/strided_slice_3/stack_1;bert/encoder/layer_8/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed24
ő
Obert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_8/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_8/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_8/attention/self/key/kernel
­
Obert/encoder/layer_8/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_8/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_8/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_8/attention/self/key/kernelKbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_8/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_8/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_8/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_8/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_8/attention/self/key/ReshapeReshape>bert/encoder/layer_8/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_8/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_8/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_8/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_8/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_8/attention/self/key/bias
Š
Mbert/encoder/layer_8/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_8/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_8/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_8/attention/self/key/bias>bert/encoder/layer_8/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_8/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_8/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_8/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_8/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_8/attention/self/key/Reshape_1Reshape@bert/encoder/layer_8/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_8/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_8/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_8/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_8/attention/self/key/addAddV25bert/encoder/layer_8/attention/self/key/einsum/Einsum1bert/encoder/layer_8/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_8/attention/self/Shape_4Shape5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_8/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_8/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_8/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_8/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_8/attention/self/Shape_49bert/encoder/layer_8/attention/self/strided_slice_4/stack;bert/encoder/layer_8/attention/self/strided_slice_4/stack_1;bert/encoder/layer_8/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed25
ý
Qbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_8/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_8/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_8/attention/self/value/kernel
ą
Qbert/encoder/layer_8/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_8/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_8/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_8/attention/self/value/kernelMbert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_8/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_8/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_8/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_8/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_8/attention/self/value/ReshapeReshape@bert/encoder/layer_8/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_8/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_8/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_8/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_8/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_8/attention/self/value/bias
­
Obert/encoder/layer_8/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_8/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_8/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_8/attention/self/value/bias@bert/encoder/layer_8/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_8/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_8/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_8/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_8/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_8/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_8/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_8/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_8/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_8/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_11bert/encoder/layer_8/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_8/attention/self/value/addAddV27bert/encoder/layer_8/attention/self/value/einsum/Einsum3bert/encoder/layer_8/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_8/attention/self/einsum/EinsumEinsum+bert/encoder/layer_8/attention/self/key/add-bert/encoder/layer_8/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_8/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_8/attention/self/MulMul1bert/encoder/layer_8/attention/self/einsum/Einsum)bert/encoder/layer_8/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_8/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_8/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_8/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_8/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_8/attention/self/subSub)bert/encoder/layer_8/attention/self/sub/x.bert/encoder/layer_8/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_8/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_8/attention/self/mul_1Mul'bert/encoder/layer_8/attention/self/sub+bert/encoder/layer_8/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_8/attention/self/addAddV2'bert/encoder/layer_8/attention/self/Mul)bert/encoder/layer_8/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_8/attention/self/SoftmaxSoftmax'bert/encoder/layer_8/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_8/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_8/attention/self/Softmax-bert/encoder/layer_8/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed26

Sbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_8/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_8/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_8/attention/output/dense/kernel
ľ
Sbert/encoder/layer_8/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_8/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_8/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_8/attention/output/dense/kernelObert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_8/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_8/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_8/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_8/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_8/attention/output/dense/ReshapeReshapeBbert/encoder/layer_8/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_8/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_8/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_8/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_8/attention/output/dense/bias
ą
Qbert/encoder/layer_8/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_8/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_8/attention/output/dense/biasBbert/encoder/layer_8/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_8/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_8/attention/output/einsum/EinsumEinsum3bert/encoder/layer_8/attention/self/einsum_1/Einsum3bert/encoder/layer_8/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_8/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_8/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_8/attention/output/addAddV23bert/encoder/layer_8/attention/output/einsum/Einsum8bert/encoder/layer_8/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_8/attention/output/add_1AddV2)bert/encoder/layer_8/attention/output/add5bert/encoder/layer_7/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_8/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_8/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_8/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_8/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_8/attention/output/LayerNorm/betaFbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_8/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_8/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_8/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_8/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_8/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_8/attention/output/LayerNorm/gammaFbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_8/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_8/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_8/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_8/attention/output/add_1Nbert/encoder/layer_8/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_8/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_8/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_8/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_8/attention/output/add_1Dbert/encoder/layer_8/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_8/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_8/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_8/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_8/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_8/attention/output/LayerNorm/moments/variance?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_8/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_8/attention/output/add_1=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_8/attention/output/LayerNorm/moments/mean=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_8/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_8/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_8/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_8/intermediate/ShapeShape?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_8/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_8/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_8/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_8/intermediate/strided_sliceStridedSlice'bert/encoder/layer_8/intermediate/Shape5bert/encoder/layer_8/intermediate/strided_slice/stack7bert/encoder/layer_8/intermediate/strided_slice/stack_17bert/encoder/layer_8/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed27
ő
Obert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_8/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_8/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_8/intermediate/dense/kernel
­
Obert/encoder/layer_8/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_8/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_8/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_8/intermediate/dense/kernelKbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_8/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_8/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_8/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_8/intermediate/dense/bias
Š
Mbert/encoder/layer_8/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_8/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_8/intermediate/dense/bias>bert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_8/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_8/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_8/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_8/intermediate/einsum/EinsumEinsum?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_8/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_8/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_8/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_8/intermediate/addAddV2/bert/encoder/layer_8/intermediate/einsum/Einsum4bert/encoder/layer_8/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_8/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_8/intermediate/PowPow%bert/encoder/layer_8/intermediate/add'bert/encoder/layer_8/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_8/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_8/intermediate/mulMul'bert/encoder/layer_8/intermediate/mul/x%bert/encoder/layer_8/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_8/intermediate/add_1AddV2%bert/encoder/layer_8/intermediate/add%bert/encoder/layer_8/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_8/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_8/intermediate/mul_1Mul)bert/encoder/layer_8/intermediate/mul_1/x'bert/encoder/layer_8/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_8/intermediate/TanhTanh'bert/encoder/layer_8/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_8/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_8/intermediate/add_2AddV2)bert/encoder/layer_8/intermediate/add_2/x&bert/encoder/layer_8/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_8/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_8/intermediate/mul_2Mul)bert/encoder/layer_8/intermediate/mul_2/x'bert/encoder/layer_8/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_8/intermediate/mul_3Mul%bert/encoder/layer_8/intermediate/add'bert/encoder/layer_8/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_8/output/ShapeShape'bert/encoder/layer_8/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_8/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_8/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_8/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_8/output/strided_sliceStridedSlice!bert/encoder/layer_8/output/Shape/bert/encoder/layer_8/output/strided_slice/stack1bert/encoder/layer_8/output/strided_slice/stack_11bert/encoder/layer_8/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed28
Ý
Ibert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_8/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_8/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_8/output/dense/kernel
Ą
Ibert/encoder/layer_8/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_8/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_8/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_8/output/dense/kernelEbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_8/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_8/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_8/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_8/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_8/output/dense/bias

Gbert/encoder/layer_8/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_8/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_8/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_8/output/dense/bias8bert/encoder/layer_8/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_8/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_8/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_8/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_8/output/einsum/EinsumEinsum'bert/encoder/layer_8/intermediate/mul_38bert/encoder/layer_8/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_8/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_8/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_8/output/addAddV2)bert/encoder/layer_8/output/einsum/Einsum.bert/encoder/layer_8/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_8/output/add_1AddV2bert/encoder/layer_8/output/add?bert/encoder/layer_8/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_8/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_8/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_8/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_8/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_8/output/LayerNorm/beta<bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_8/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_8/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_8/output/LayerNorm/gamma
§
Lbert/encoder/layer_8/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_8/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_8/output/LayerNorm/gamma<bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_8/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_8/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_8/output/LayerNorm/moments/meanMean!bert/encoder/layer_8/output/add_1Dbert/encoder/layer_8/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_8/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_8/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_8/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_8/output/add_1:bert/encoder/layer_8/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_8/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_8/output/LayerNorm/moments/varianceMean?bert/encoder/layer_8/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_8/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_8/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_8/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_8/output/LayerNorm/moments/variance5bert/encoder/layer_8/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_8/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_8/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_8/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_8/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_8/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_8/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_8/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_8/output/add_13bert/encoder/layer_8/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_8/output/LayerNorm/moments/mean3bert/encoder/layer_8/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_8/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_8/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_8/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_8/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_8/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_8/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

)bert/encoder/layer_9/attention/self/ShapeShape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

7bert/encoder/layer_9/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

9bert/encoder/layer_9/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9bert/encoder/layer_9/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
á
1bert/encoder/layer_9/attention/self/strided_sliceStridedSlice)bert/encoder/layer_9/attention/self/Shape7bert/encoder/layer_9/attention/self/strided_slice/stack9bert/encoder/layer_9/attention/self/strided_slice/stack_19bert/encoder/layer_9/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_9/attention/self/Shape_1Shape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_9/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_9/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_9/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_9/attention/self/strided_slice_1StridedSlice+bert/encoder/layer_9/attention/self/Shape_19bert/encoder/layer_9/attention/self/strided_slice_1/stack;bert/encoder/layer_9/attention/self/strided_slice_1/stack_1;bert/encoder/layer_9/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

+bert/encoder/layer_9/attention/self/Shape_2Shape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_9/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_9/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_9/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_9/attention/self/strided_slice_2StridedSlice+bert/encoder/layer_9/attention/self/Shape_29bert/encoder/layer_9/attention/self/strided_slice_2/stack;bert/encoder/layer_9/attention/self/strided_slice_2/stack_1;bert/encoder/layer_9/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed29
ý
Qbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normalAddQbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:


0bert/encoder/layer_9/attention/self/query/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_9/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_9/attention/self/query/kernel
ą
Qbert/encoder/layer_9/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_9/attention/self/query/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_9/attention/self/query/kernel/AssignAssignVariableOp0bert/encoder/layer_9/attention/self/query/kernelMbert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_9/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_9/attention/self/query/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_9/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_9/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_9/attention/self/query/ReshapeReshape@bert/encoder/layer_9/attention/self/query/Reshape/ReadVariableOp7bert/encoder/layer_9/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_9/attention/self/query/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_9/attention/self/query/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_9/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_9/attention/self/query/bias
­
Obert/encoder/layer_9/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_9/attention/self/query/bias*
_output_shapes
: 
Č
5bert/encoder/layer_9/attention/self/query/bias/AssignAssignVariableOp.bert/encoder/layer_9/attention/self/query/bias@bert/encoder/layer_9/attention/self/query/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_9/attention/self/query/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_9/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_9/attention/self/query/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_9/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_9/attention/self/query/Reshape_1ReshapeBbert/encoder/layer_9/attention/self/query/Reshape_1/ReadVariableOp9bert/encoder/layer_9/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_9/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_11bert/encoder/layer_9/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_9/attention/self/query/addAddV27bert/encoder/layer_9/attention/self/query/einsum/Einsum3bert/encoder/layer_9/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_9/attention/self/Shape_3Shape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_9/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_9/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_9/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_9/attention/self/strided_slice_3StridedSlice+bert/encoder/layer_9/attention/self/Shape_39bert/encoder/layer_9/attention/self/strided_slice_3/stack;bert/encoder/layer_9/attention/self/strided_slice_3/stack_1;bert/encoder/layer_9/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2:
ő
Obert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normalAddObert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_9/attention/self/key/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_9/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_9/attention/self/key/kernel
­
Obert/encoder/layer_9/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_9/attention/self/key/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_9/attention/self/key/kernel/AssignAssignVariableOp.bert/encoder/layer_9/attention/self/key/kernelKbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_9/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
Ż
>bert/encoder/layer_9/attention/self/key/Reshape/ReadVariableOpReadVariableOp.bert/encoder/layer_9/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

5bert/encoder/layer_9/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ß
/bert/encoder/layer_9/attention/self/key/ReshapeReshape>bert/encoder/layer_9/attention/self/key/Reshape/ReadVariableOp5bert/encoder/layer_9/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Î
>bert/encoder/layer_9/attention/self/key/bias/Initializer/zerosConst*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ň
,bert/encoder/layer_9/attention/self/key/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_9/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_9/attention/self/key/bias
Š
Mbert/encoder/layer_9/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_9/attention/self/key/bias*
_output_shapes
: 
Â
3bert/encoder/layer_9/attention/self/key/bias/AssignAssignVariableOp,bert/encoder/layer_9/attention/self/key/bias>bert/encoder/layer_9/attention/self/key/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_9/attention/self/key/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_9/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ş
@bert/encoder/layer_9/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp,bert/encoder/layer_9/attention/self/key/bias*
_output_shapes	
:*
dtype0

7bert/encoder/layer_9/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ŕ
1bert/encoder/layer_9/attention/self/key/Reshape_1Reshape@bert/encoder/layer_9/attention/self/key/Reshape_1/ReadVariableOp7bert/encoder/layer_9/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

5bert/encoder/layer_9/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1/bert/encoder/layer_9/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ů
+bert/encoder/layer_9/attention/self/key/addAddV25bert/encoder/layer_9/attention/self/key/einsum/Einsum1bert/encoder/layer_9/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+bert/encoder/layer_9/attention/self/Shape_4Shape5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

9bert/encoder/layer_9/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

;bert/encoder/layer_9/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

;bert/encoder/layer_9/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ë
3bert/encoder/layer_9/attention/self/strided_slice_4StridedSlice+bert/encoder/layer_9/attention/self/Shape_49bert/encoder/layer_9/attention/self/strided_slice_4/stack;bert/encoder/layer_9/attention/self/strided_slice_4/stack_1;bert/encoder/layer_9/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
é
Sbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ü
Rbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/meanConst*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ţ
Tbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ý
]bert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalSbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2;
ý
Qbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mulMul]bert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:

ë
Mbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normalAddQbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mulRbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:


0bert/encoder/layer_9/attention/self/value/kernelVarHandleOp*C
_class9
75loc:@bert/encoder/layer_9/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20bert/encoder/layer_9/attention/self/value/kernel
ą
Qbert/encoder/layer_9/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_9/attention/self/value/kernel*
_output_shapes
: 
Ů
7bert/encoder/layer_9/attention/self/value/kernel/AssignAssignVariableOp0bert/encoder/layer_9/attention/self/value/kernelMbert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
ˇ
Dbert/encoder/layer_9/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ł
@bert/encoder/layer_9/attention/self/value/Reshape/ReadVariableOpReadVariableOp0bert/encoder/layer_9/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

7bert/encoder/layer_9/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
ĺ
1bert/encoder/layer_9/attention/self/value/ReshapeReshape@bert/encoder/layer_9/attention/self/value/Reshape/ReadVariableOp7bert/encoder/layer_9/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ň
@bert/encoder/layer_9/attention/self/value/bias/Initializer/zerosConst*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ř
.bert/encoder/layer_9/attention/self/value/biasVarHandleOp*A
_class7
53loc:@bert/encoder/layer_9/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.bert/encoder/layer_9/attention/self/value/bias
­
Obert/encoder/layer_9/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_9/attention/self/value/bias*
_output_shapes
: 
Č
5bert/encoder/layer_9/attention/self/value/bias/AssignAssignVariableOp.bert/encoder/layer_9/attention/self/value/bias@bert/encoder/layer_9/attention/self/value/bias/Initializer/zeros*
dtype0
Ž
Bbert/encoder/layer_9/attention/self/value/bias/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:*
dtype0
Ž
Bbert/encoder/layer_9/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp.bert/encoder/layer_9/attention/self/value/bias*
_output_shapes	
:*
dtype0

9bert/encoder/layer_9/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ć
3bert/encoder/layer_9/attention/self/value/Reshape_1ReshapeBbert/encoder/layer_9/attention/self/value/Reshape_1/ReadVariableOp9bert/encoder/layer_9/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

7bert/encoder/layer_9/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_11bert/encoder/layer_9/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
ß
-bert/encoder/layer_9/attention/self/value/addAddV27bert/encoder/layer_9/attention/self/value/einsum/Einsum3bert/encoder/layer_9/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
1bert/encoder/layer_9/attention/self/einsum/EinsumEinsum+bert/encoder/layer_9/attention/self/key/add-bert/encoder/layer_9/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
n
)bert/encoder/layer_9/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Č
'bert/encoder/layer_9/attention/self/MulMul1bert/encoder/layer_9/attention/self/einsum/Einsum)bert/encoder/layer_9/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
2bert/encoder/layer_9/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
ž
.bert/encoder/layer_9/attention/self/ExpandDims
ExpandDimsbert/encoder/mul2bert/encoder/layer_9/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_9/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ĺ
'bert/encoder/layer_9/attention/self/subSub)bert/encoder/layer_9/attention/self/sub/x.bert/encoder/layer_9/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
+bert/encoder/layer_9/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Â
)bert/encoder/layer_9/attention/self/mul_1Mul'bert/encoder/layer_9/attention/self/sub+bert/encoder/layer_9/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
'bert/encoder/layer_9/attention/self/addAddV2'bert/encoder/layer_9/attention/self/Mul)bert/encoder/layer_9/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

+bert/encoder/layer_9/attention/self/SoftmaxSoftmax'bert/encoder/layer_9/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
3bert/encoder/layer_9/attention/self/einsum_1/EinsumEinsum+bert/encoder/layer_9/attention/self/Softmax-bert/encoder/layer_9/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
í
Ubert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
ŕ
Tbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
â
Vbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ă
_bert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2<

Sbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mulMul_bert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalVbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:

ó
Obert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normalAddSbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mulTbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:


2bert/encoder/layer_9/attention/output/dense/kernelVarHandleOp*E
_class;
97loc:@bert/encoder/layer_9/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42bert/encoder/layer_9/attention/output/dense/kernel
ľ
Sbert/encoder/layer_9/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp2bert/encoder/layer_9/attention/output/dense/kernel*
_output_shapes
: 
ß
9bert/encoder/layer_9/attention/output/dense/kernel/AssignAssignVariableOp2bert/encoder/layer_9/attention/output/dense/kernelObert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
ť
Fbert/encoder/layer_9/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp2bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
ˇ
Bbert/encoder/layer_9/attention/output/dense/Reshape/ReadVariableOpReadVariableOp2bert/encoder/layer_9/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

9bert/encoder/layer_9/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
ë
3bert/encoder/layer_9/attention/output/dense/ReshapeReshapeBbert/encoder/layer_9/attention/output/dense/Reshape/ReadVariableOp9bert/encoder/layer_9/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ö
Bbert/encoder/layer_9/attention/output/dense/bias/Initializer/zerosConst*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ţ
0bert/encoder/layer_9/attention/output/dense/biasVarHandleOp*C
_class9
75loc:@bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bert/encoder/layer_9/attention/output/dense/bias
ą
Qbert/encoder/layer_9/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp0bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes
: 
Î
7bert/encoder/layer_9/attention/output/dense/bias/AssignAssignVariableOp0bert/encoder/layer_9/attention/output/dense/biasBbert/encoder/layer_9/attention/output/dense/bias/Initializer/zeros*
dtype0
˛
Dbert/encoder/layer_9/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp0bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:*
dtype0

3bert/encoder/layer_9/attention/output/einsum/EinsumEinsum3bert/encoder/layer_9/attention/self/einsum_1/Einsum3bert/encoder/layer_9/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
Ś
8bert/encoder/layer_9/attention/output/add/ReadVariableOpReadVariableOp0bert/encoder/layer_9/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ů
)bert/encoder/layer_9/attention/output/addAddV23bert/encoder/layer_9/attention/output/einsum/Einsum8bert/encoder/layer_9/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
+bert/encoder/layer_9/attention/output/add_1AddV2)bert/encoder/layer_9/attention/output/add5bert/encoder/layer_8/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Fbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zerosConst*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

4bert/encoder/layer_9/attention/output/LayerNorm/betaVarHandleOp*G
_class=
;9loc:@bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bert/encoder/layer_9/attention/output/LayerNorm/beta
š
Ubert/encoder/layer_9/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp4bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes
: 
Ú
;bert/encoder/layer_9/attention/output/LayerNorm/beta/AssignAssignVariableOp4bert/encoder/layer_9/attention/output/LayerNorm/betaFbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ş
Hbert/encoder/layer_9/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp4bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ß
Fbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/onesConst*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

5bert/encoder/layer_9/attention/output/LayerNorm/gammaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_9/attention/output/LayerNorm/gamma
ť
Vbert/encoder/layer_9/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes
: 
Ü
<bert/encoder/layer_9/attention/output/LayerNorm/gamma/AssignAssignVariableOp5bert/encoder/layer_9/attention/output/LayerNorm/gammaFbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ź
Ibert/encoder/layer_9/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Nbert/encoder/layer_9/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_9/attention/output/LayerNorm/moments/meanMean+bert/encoder/layer_9/attention/output/add_1Nbert/encoder/layer_9/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
É
Dbert/encoder/layer_9/attention/output/LayerNorm/moments/StopGradientStopGradient<bert/encoder/layer_9/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_9/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference+bert/encoder/layer_9/attention/output/add_1Dbert/encoder/layer_9/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rbert/encoder/layer_9/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Ż
@bert/encoder/layer_9/attention/output/LayerNorm/moments/varianceMeanIbert/encoder/layer_9/attention/output/LayerNorm/moments/SquaredDifferenceRbert/encoder/layer_9/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/addAddV2@bert/encoder/layer_9/attention/output/LayerNorm/moments/variance?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/RsqrtRsqrt=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Lbert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp5bert/encoder/layer_9/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mulMul?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/RsqrtLbert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_1Mul+bert/encoder/layer_9/attention/output/add_1=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_2Mul<bert/encoder/layer_9/attention/output/LayerNorm/moments/mean=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
Hbert/encoder/layer_9/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp4bert/encoder/layer_9/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/subSubHbert/encoder/layer_9/attention/output/LayerNorm/batchnorm/ReadVariableOp?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1AddV2?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/mul_1=bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_9/intermediate/ShapeShape?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

5bert/encoder/layer_9/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

7bert/encoder/layer_9/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_9/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
×
/bert/encoder/layer_9/intermediate/strided_sliceStridedSlice'bert/encoder/layer_9/intermediate/Shape5bert/encoder/layer_9/intermediate/strided_slice/stack7bert/encoder/layer_9/intermediate/strided_slice/stack_17bert/encoder/layer_9/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ĺ
Qbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ř
Pbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ú
Rbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
×
[bert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2=
ő
Obert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mulMul[bert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalRbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

ă
Kbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normalAddObert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mulPbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:

ý
.bert/encoder/layer_9/intermediate/dense/kernelVarHandleOp*A
_class7
53loc:@bert/encoder/layer_9/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.bert/encoder/layer_9/intermediate/dense/kernel
­
Obert/encoder/layer_9/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp.bert/encoder/layer_9/intermediate/dense/kernel*
_output_shapes
: 
Ó
5bert/encoder/layer_9/intermediate/dense/kernel/AssignAssignVariableOp.bert/encoder/layer_9/intermediate/dense/kernelKbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ł
Bbert/encoder/layer_9/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp.bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ú
Nbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ę
Dbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/ConstConst*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ă
>bert/encoder/layer_9/intermediate/dense/bias/Initializer/zerosFillNbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/shape_as_tensorDbert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros/Const*
T0*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:
ň
,bert/encoder/layer_9/intermediate/dense/biasVarHandleOp*?
_class5
31loc:@bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_9/intermediate/dense/bias
Š
Mbert/encoder/layer_9/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes
: 
Â
3bert/encoder/layer_9/intermediate/dense/bias/AssignAssignVariableOp,bert/encoder/layer_9/intermediate/dense/bias>bert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros*
dtype0
Ş
@bert/encoder/layer_9/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Ż
>bert/encoder/layer_9/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp.bert/encoder/layer_9/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

/bert/encoder/layer_9/intermediate/einsum/EinsumEinsum?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1>bert/encoder/layer_9/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

4bert/encoder/layer_9/intermediate/add/ReadVariableOpReadVariableOp,bert/encoder/layer_9/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Í
%bert/encoder/layer_9/intermediate/addAddV2/bert/encoder/layer_9/intermediate/einsum/Einsum4bert/encoder/layer_9/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_9/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
´
%bert/encoder/layer_9/intermediate/PowPow%bert/encoder/layer_9/intermediate/add'bert/encoder/layer_9/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
'bert/encoder/layer_9/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
´
%bert/encoder/layer_9/intermediate/mulMul'bert/encoder/layer_9/intermediate/mul/x%bert/encoder/layer_9/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_9/intermediate/add_1AddV2%bert/encoder/layer_9/intermediate/add%bert/encoder/layer_9/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_9/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
ş
'bert/encoder/layer_9/intermediate/mul_1Mul)bert/encoder/layer_9/intermediate/mul_1/x'bert/encoder/layer_9/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

&bert/encoder/layer_9/intermediate/TanhTanh'bert/encoder/layer_9/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_9/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ť
'bert/encoder/layer_9/intermediate/add_2AddV2)bert/encoder/layer_9/intermediate/add_2/x&bert/encoder/layer_9/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
)bert/encoder/layer_9/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ş
'bert/encoder/layer_9/intermediate/mul_2Mul)bert/encoder/layer_9/intermediate/mul_2/x'bert/encoder/layer_9/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
'bert/encoder/layer_9/intermediate/mul_3Mul%bert/encoder/layer_9/intermediate/add'bert/encoder/layer_9/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
!bert/encoder/layer_9/output/ShapeShape'bert/encoder/layer_9/intermediate/mul_3*
T0*
_output_shapes
:
y
/bert/encoder/layer_9/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1bert/encoder/layer_9/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1bert/encoder/layer_9/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
š
)bert/encoder/layer_9/output/strided_sliceStridedSlice!bert/encoder/layer_9/output/Shape/bert/encoder/layer_9/output/strided_slice/stack1bert/encoder/layer_9/output/strided_slice/stack_11bert/encoder/layer_9/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ů
Kbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ě
Jbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Î
Lbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ĺ
Ubert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2>
Ý
Ibert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mulMulUbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalLbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:

Ë
Ebert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normalAddIbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mulJbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:

ë
(bert/encoder/layer_9/output/dense/kernelVarHandleOp*;
_class1
/-loc:@bert/encoder/layer_9/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(bert/encoder/layer_9/output/dense/kernel
Ą
Ibert/encoder/layer_9/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp(bert/encoder/layer_9/output/dense/kernel*
_output_shapes
: 
Á
/bert/encoder/layer_9/output/dense/kernel/AssignAssignVariableOp(bert/encoder/layer_9/output/dense/kernelEbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal*
dtype0
§
<bert/encoder/layer_9/output/dense/kernel/Read/ReadVariableOpReadVariableOp(bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:
*
dtype0
Â
8bert/encoder/layer_9/output/dense/bias/Initializer/zerosConst*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ŕ
&bert/encoder/layer_9/output/dense/biasVarHandleOp*9
_class/
-+loc:@bert/encoder/layer_9/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&bert/encoder/layer_9/output/dense/bias

Gbert/encoder/layer_9/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp&bert/encoder/layer_9/output/dense/bias*
_output_shapes
: 
°
-bert/encoder/layer_9/output/dense/bias/AssignAssignVariableOp&bert/encoder/layer_9/output/dense/bias8bert/encoder/layer_9/output/dense/bias/Initializer/zeros*
dtype0

:bert/encoder/layer_9/output/dense/bias/Read/ReadVariableOpReadVariableOp&bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:*
dtype0
Ł
8bert/encoder/layer_9/output/einsum/Einsum/ReadVariableOpReadVariableOp(bert/encoder/layer_9/output/dense/kernel* 
_output_shapes
:
*
dtype0
ň
)bert/encoder/layer_9/output/einsum/EinsumEinsum'bert/encoder/layer_9/intermediate/mul_38bert/encoder/layer_9/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

.bert/encoder/layer_9/output/add/ReadVariableOpReadVariableOp&bert/encoder/layer_9/output/dense/bias*
_output_shapes	
:*
dtype0
ť
bert/encoder/layer_9/output/addAddV2)bert/encoder/layer_9/output/einsum/Einsum.bert/encoder/layer_9/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
!bert/encoder/layer_9/output/add_1AddV2bert/encoder/layer_9/output/add?bert/encoder/layer_9/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ę
<bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ě
*bert/encoder/layer_9/output/LayerNorm/betaVarHandleOp*=
_class3
1/loc:@bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*bert/encoder/layer_9/output/LayerNorm/beta
Ľ
Kbert/encoder/layer_9/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp*bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes
: 
ź
1bert/encoder/layer_9/output/LayerNorm/beta/AssignAssignVariableOp*bert/encoder/layer_9/output/LayerNorm/beta<bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zeros*
dtype0
Ś
>bert/encoder/layer_9/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp*bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Ë
<bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/onesConst*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ď
+bert/encoder/layer_9/output/LayerNorm/gammaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_9/output/LayerNorm/gamma
§
Lbert/encoder/layer_9/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes
: 
ž
2bert/encoder/layer_9/output/LayerNorm/gamma/AssignAssignVariableOp+bert/encoder/layer_9/output/LayerNorm/gamma<bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/ones*
dtype0
¨
?bert/encoder/layer_9/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Dbert/encoder/layer_9/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ë
2bert/encoder/layer_9/output/LayerNorm/moments/meanMean!bert/encoder/layer_9/output/add_1Dbert/encoder/layer_9/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ľ
:bert/encoder/layer_9/output/LayerNorm/moments/StopGradientStopGradient2bert/encoder/layer_9/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
?bert/encoder/layer_9/output/LayerNorm/moments/SquaredDifferenceSquaredDifference!bert/encoder/layer_9/output/add_1:bert/encoder/layer_9/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Hbert/encoder/layer_9/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

6bert/encoder/layer_9/output/LayerNorm/moments/varianceMean?bert/encoder/layer_9/output/LayerNorm/moments/SquaredDifferenceHbert/encoder/layer_9/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
z
5bert/encoder/layer_9/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
â
3bert/encoder/layer_9/output/LayerNorm/batchnorm/addAddV26bert/encoder/layer_9/output/LayerNorm/moments/variance5bert/encoder/layer_9/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
5bert/encoder/layer_9/output/LayerNorm/batchnorm/RsqrtRsqrt3bert/encoder/layer_9/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Bbert/encoder/layer_9/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp+bert/encoder/layer_9/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
í
3bert/encoder/layer_9/output/LayerNorm/batchnorm/mulMul5bert/encoder/layer_9/output/LayerNorm/batchnorm/RsqrtBbert/encoder/layer_9/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_1Mul!bert/encoder/layer_9/output/add_13bert/encoder/layer_9/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_2Mul2bert/encoder/layer_9/output/LayerNorm/moments/mean3bert/encoder/layer_9/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
>bert/encoder/layer_9/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp*bert/encoder/layer_9/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
é
3bert/encoder/layer_9/output/LayerNorm/batchnorm/subSub>bert/encoder/layer_9/output/LayerNorm/batchnorm/ReadVariableOp5bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1AddV25bert/encoder/layer_9/output/LayerNorm/batchnorm/mul_13bert/encoder/layer_9/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

*bert/encoder/layer_10/attention/self/ShapeShape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

8bert/encoder/layer_10/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

:bert/encoder/layer_10/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

:bert/encoder/layer_10/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ć
2bert/encoder/layer_10/attention/self/strided_sliceStridedSlice*bert/encoder/layer_10/attention/self/Shape8bert/encoder/layer_10/attention/self/strided_slice/stack:bert/encoder/layer_10/attention/self/strided_slice/stack_1:bert/encoder/layer_10/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

,bert/encoder/layer_10/attention/self/Shape_1Shape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_10/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_10/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_10/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_10/attention/self/strided_slice_1StridedSlice,bert/encoder/layer_10/attention/self/Shape_1:bert/encoder/layer_10/attention/self/strided_slice_1/stack<bert/encoder/layer_10/attention/self/strided_slice_1/stack_1<bert/encoder/layer_10/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

,bert/encoder/layer_10/attention/self/Shape_2Shape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_10/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_10/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_10/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_10/attention/self/strided_slice_2StridedSlice,bert/encoder/layer_10/attention/self/Shape_2:bert/encoder/layer_10/attention/self/strided_slice_2/stack<bert/encoder/layer_10/attention/self/strided_slice_2/stack_1<bert/encoder/layer_10/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ë
Tbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ţ
Sbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/meanConst*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ŕ
Ubert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ŕ
^bert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2?

Rbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normalAddRbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:


1bert/encoder/layer_10/attention/self/query/kernelVarHandleOp*D
_class:
86loc:@bert/encoder/layer_10/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31bert/encoder/layer_10/attention/self/query/kernel
ł
Rbert/encoder/layer_10/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp1bert/encoder/layer_10/attention/self/query/kernel*
_output_shapes
: 
Ü
8bert/encoder/layer_10/attention/self/query/kernel/AssignAssignVariableOp1bert/encoder/layer_10/attention/self/query/kernelNbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
š
Ebert/encoder/layer_10/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp1bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ľ
Abert/encoder/layer_10/attention/self/query/Reshape/ReadVariableOpReadVariableOp1bert/encoder/layer_10/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

8bert/encoder/layer_10/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
č
2bert/encoder/layer_10/attention/self/query/ReshapeReshapeAbert/encoder/layer_10/attention/self/query/Reshape/ReadVariableOp8bert/encoder/layer_10/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ô
Abert/encoder/layer_10/attention/self/query/bias/Initializer/zerosConst*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ű
/bert/encoder/layer_10/attention/self/query/biasVarHandleOp*B
_class8
64loc:@bert/encoder/layer_10/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/bert/encoder/layer_10/attention/self/query/bias
Ż
Pbert/encoder/layer_10/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_10/attention/self/query/bias*
_output_shapes
: 
Ë
6bert/encoder/layer_10/attention/self/query/bias/AssignAssignVariableOp/bert/encoder/layer_10/attention/self/query/biasAbert/encoder/layer_10/attention/self/query/bias/Initializer/zeros*
dtype0
°
Cbert/encoder/layer_10/attention/self/query/bias/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:*
dtype0
°
Cbert/encoder/layer_10/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp/bert/encoder/layer_10/attention/self/query/bias*
_output_shapes	
:*
dtype0

:bert/encoder/layer_10/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
é
4bert/encoder/layer_10/attention/self/query/Reshape_1ReshapeCbert/encoder/layer_10/attention/self/query/Reshape_1/ReadVariableOp:bert/encoder/layer_10/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

8bert/encoder/layer_10/attention/self/query/einsum/EinsumEinsum5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_12bert/encoder/layer_10/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
â
.bert/encoder/layer_10/attention/self/query/addAddV28bert/encoder/layer_10/attention/self/query/einsum/Einsum4bert/encoder/layer_10/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,bert/encoder/layer_10/attention/self/Shape_3Shape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_10/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_10/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_10/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_10/attention/self/strided_slice_3StridedSlice,bert/encoder/layer_10/attention/self/Shape_3:bert/encoder/layer_10/attention/self/strided_slice_3/stack<bert/encoder/layer_10/attention/self/strided_slice_3/stack_1<bert/encoder/layer_10/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ç
Rbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ú
Qbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ü
Sbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ú
\bert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2@
ů
Pbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normalAddPbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:


/bert/encoder/layer_10/attention/self/key/kernelVarHandleOp*B
_class8
64loc:@bert/encoder/layer_10/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*@
shared_name1/bert/encoder/layer_10/attention/self/key/kernel
Ż
Pbert/encoder/layer_10/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_10/attention/self/key/kernel*
_output_shapes
: 
Ö
6bert/encoder/layer_10/attention/self/key/kernel/AssignAssignVariableOp/bert/encoder/layer_10/attention/self/key/kernelLbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ľ
Cbert/encoder/layer_10/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
ą
?bert/encoder/layer_10/attention/self/key/Reshape/ReadVariableOpReadVariableOp/bert/encoder/layer_10/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

6bert/encoder/layer_10/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
â
0bert/encoder/layer_10/attention/self/key/ReshapeReshape?bert/encoder/layer_10/attention/self/key/Reshape/ReadVariableOp6bert/encoder/layer_10/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Đ
?bert/encoder/layer_10/attention/self/key/bias/Initializer/zerosConst*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ő
-bert/encoder/layer_10/attention/self/key/biasVarHandleOp*@
_class6
42loc:@bert/encoder/layer_10/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-bert/encoder/layer_10/attention/self/key/bias
Ť
Nbert/encoder/layer_10/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp-bert/encoder/layer_10/attention/self/key/bias*
_output_shapes
: 
Ĺ
4bert/encoder/layer_10/attention/self/key/bias/AssignAssignVariableOp-bert/encoder/layer_10/attention/self/key/bias?bert/encoder/layer_10/attention/self/key/bias/Initializer/zeros*
dtype0
Ź
Abert/encoder/layer_10/attention/self/key/bias/Read/ReadVariableOpReadVariableOp-bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ź
Abert/encoder/layer_10/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp-bert/encoder/layer_10/attention/self/key/bias*
_output_shapes	
:*
dtype0

8bert/encoder/layer_10/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ă
2bert/encoder/layer_10/attention/self/key/Reshape_1ReshapeAbert/encoder/layer_10/attention/self/key/Reshape_1/ReadVariableOp8bert/encoder/layer_10/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

6bert/encoder/layer_10/attention/self/key/einsum/EinsumEinsum5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_10bert/encoder/layer_10/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ü
,bert/encoder/layer_10/attention/self/key/addAddV26bert/encoder/layer_10/attention/self/key/einsum/Einsum2bert/encoder/layer_10/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,bert/encoder/layer_10/attention/self/Shape_4Shape5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_10/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_10/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_10/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_10/attention/self/strided_slice_4StridedSlice,bert/encoder/layer_10/attention/self/Shape_4:bert/encoder/layer_10/attention/self/strided_slice_4/stack<bert/encoder/layer_10/attention/self/strided_slice_4/stack_1<bert/encoder/layer_10/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ë
Tbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ţ
Sbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/meanConst*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ŕ
Ubert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ŕ
^bert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2A

Rbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normalAddRbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:


1bert/encoder/layer_10/attention/self/value/kernelVarHandleOp*D
_class:
86loc:@bert/encoder/layer_10/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31bert/encoder/layer_10/attention/self/value/kernel
ł
Rbert/encoder/layer_10/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp1bert/encoder/layer_10/attention/self/value/kernel*
_output_shapes
: 
Ü
8bert/encoder/layer_10/attention/self/value/kernel/AssignAssignVariableOp1bert/encoder/layer_10/attention/self/value/kernelNbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
š
Ebert/encoder/layer_10/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp1bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ľ
Abert/encoder/layer_10/attention/self/value/Reshape/ReadVariableOpReadVariableOp1bert/encoder/layer_10/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

8bert/encoder/layer_10/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
č
2bert/encoder/layer_10/attention/self/value/ReshapeReshapeAbert/encoder/layer_10/attention/self/value/Reshape/ReadVariableOp8bert/encoder/layer_10/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ô
Abert/encoder/layer_10/attention/self/value/bias/Initializer/zerosConst*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ű
/bert/encoder/layer_10/attention/self/value/biasVarHandleOp*B
_class8
64loc:@bert/encoder/layer_10/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/bert/encoder/layer_10/attention/self/value/bias
Ż
Pbert/encoder/layer_10/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_10/attention/self/value/bias*
_output_shapes
: 
Ë
6bert/encoder/layer_10/attention/self/value/bias/AssignAssignVariableOp/bert/encoder/layer_10/attention/self/value/biasAbert/encoder/layer_10/attention/self/value/bias/Initializer/zeros*
dtype0
°
Cbert/encoder/layer_10/attention/self/value/bias/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:*
dtype0
°
Cbert/encoder/layer_10/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp/bert/encoder/layer_10/attention/self/value/bias*
_output_shapes	
:*
dtype0

:bert/encoder/layer_10/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
é
4bert/encoder/layer_10/attention/self/value/Reshape_1ReshapeCbert/encoder/layer_10/attention/self/value/Reshape_1/ReadVariableOp:bert/encoder/layer_10/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

8bert/encoder/layer_10/attention/self/value/einsum/EinsumEinsum5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_12bert/encoder/layer_10/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
â
.bert/encoder/layer_10/attention/self/value/addAddV28bert/encoder/layer_10/attention/self/value/einsum/Einsum4bert/encoder/layer_10/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ţ
2bert/encoder/layer_10/attention/self/einsum/EinsumEinsum,bert/encoder/layer_10/attention/self/key/add.bert/encoder/layer_10/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
o
*bert/encoder/layer_10/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Ë
(bert/encoder/layer_10/attention/self/MulMul2bert/encoder/layer_10/attention/self/einsum/Einsum*bert/encoder/layer_10/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
3bert/encoder/layer_10/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
Ŕ
/bert/encoder/layer_10/attention/self/ExpandDims
ExpandDimsbert/encoder/mul3bert/encoder/layer_10/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_10/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Č
(bert/encoder/layer_10/attention/self/subSub*bert/encoder/layer_10/attention/self/sub/x/bert/encoder/layer_10/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,bert/encoder/layer_10/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Ĺ
*bert/encoder/layer_10/attention/self/mul_1Mul(bert/encoder/layer_10/attention/self/sub,bert/encoder/layer_10/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
(bert/encoder/layer_10/attention/self/addAddV2(bert/encoder/layer_10/attention/self/Mul*bert/encoder/layer_10/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

,bert/encoder/layer_10/attention/self/SoftmaxSoftmax(bert/encoder/layer_10/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
4bert/encoder/layer_10/attention/self/einsum_1/EinsumEinsum,bert/encoder/layer_10/attention/self/Softmax.bert/encoder/layer_10/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
ď
Vbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
â
Ubert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ä
Wbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ć
`bert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2B

Tbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mulMul`bert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalWbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:

÷
Pbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normalAddTbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mulUbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:


3bert/encoder/layer_10/attention/output/dense/kernelVarHandleOp*F
_class<
:8loc:@bert/encoder/layer_10/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*D
shared_name53bert/encoder/layer_10/attention/output/dense/kernel
ˇ
Tbert/encoder/layer_10/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp3bert/encoder/layer_10/attention/output/dense/kernel*
_output_shapes
: 
â
:bert/encoder/layer_10/attention/output/dense/kernel/AssignAssignVariableOp3bert/encoder/layer_10/attention/output/dense/kernelPbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
˝
Gbert/encoder/layer_10/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp3bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
š
Cbert/encoder/layer_10/attention/output/dense/Reshape/ReadVariableOpReadVariableOp3bert/encoder/layer_10/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

:bert/encoder/layer_10/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
î
4bert/encoder/layer_10/attention/output/dense/ReshapeReshapeCbert/encoder/layer_10/attention/output/dense/Reshape/ReadVariableOp:bert/encoder/layer_10/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ř
Cbert/encoder/layer_10/attention/output/dense/bias/Initializer/zerosConst*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    

1bert/encoder/layer_10/attention/output/dense/biasVarHandleOp*D
_class:
86loc:@bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*B
shared_name31bert/encoder/layer_10/attention/output/dense/bias
ł
Rbert/encoder/layer_10/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp1bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes
: 
Ń
8bert/encoder/layer_10/attention/output/dense/bias/AssignAssignVariableOp1bert/encoder/layer_10/attention/output/dense/biasCbert/encoder/layer_10/attention/output/dense/bias/Initializer/zeros*
dtype0
´
Ebert/encoder/layer_10/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp1bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:*
dtype0

4bert/encoder/layer_10/attention/output/einsum/EinsumEinsum4bert/encoder/layer_10/attention/self/einsum_1/Einsum4bert/encoder/layer_10/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
¨
9bert/encoder/layer_10/attention/output/add/ReadVariableOpReadVariableOp1bert/encoder/layer_10/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ü
*bert/encoder/layer_10/attention/output/addAddV24bert/encoder/layer_10/attention/output/einsum/Einsum9bert/encoder/layer_10/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
,bert/encoder/layer_10/attention/output/add_1AddV2*bert/encoder/layer_10/attention/output/add5bert/encoder/layer_9/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
Gbert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zerosConst*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

5bert/encoder/layer_10/attention/output/LayerNorm/betaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_10/attention/output/LayerNorm/beta
ť
Vbert/encoder/layer_10/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes
: 
Ý
<bert/encoder/layer_10/attention/output/LayerNorm/beta/AssignAssignVariableOp5bert/encoder/layer_10/attention/output/LayerNorm/betaGbert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ź
Ibert/encoder/layer_10/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
á
Gbert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/onesConst*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

6bert/encoder/layer_10/attention/output/LayerNorm/gammaVarHandleOp*I
_class?
=;loc:@bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*G
shared_name86bert/encoder/layer_10/attention/output/LayerNorm/gamma
˝
Wbert/encoder/layer_10/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp6bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes
: 
ß
=bert/encoder/layer_10/attention/output/LayerNorm/gamma/AssignAssignVariableOp6bert/encoder/layer_10/attention/output/LayerNorm/gammaGbert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ž
Jbert/encoder/layer_10/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp6bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Obert/encoder/layer_10/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

=bert/encoder/layer_10/attention/output/LayerNorm/moments/meanMean,bert/encoder/layer_10/attention/output/add_1Obert/encoder/layer_10/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
Ë
Ebert/encoder/layer_10/attention/output/LayerNorm/moments/StopGradientStopGradient=bert/encoder/layer_10/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Jbert/encoder/layer_10/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference,bert/encoder/layer_10/attention/output/add_1Ebert/encoder/layer_10/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Sbert/encoder/layer_10/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
˛
Abert/encoder/layer_10/attention/output/LayerNorm/moments/varianceMeanJbert/encoder/layer_10/attention/output/LayerNorm/moments/SquaredDifferenceSbert/encoder/layer_10/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/addAddV2Abert/encoder/layer_10/attention/output/LayerNorm/moments/variance@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/RsqrtRsqrt>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Mbert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp6bert/encoder/layer_10/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mulMul@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/RsqrtMbert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_1Mul,bert/encoder/layer_10/attention/output/add_1>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_2Mul=bert/encoder/layer_10/attention/output/LayerNorm/moments/mean>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Ibert/encoder/layer_10/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp5bert/encoder/layer_10/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/subSubIbert/encoder/layer_10/attention/output/LayerNorm/batchnorm/ReadVariableOp@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1AddV2@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/mul_1>bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

(bert/encoder/layer_10/intermediate/ShapeShape@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

6bert/encoder/layer_10/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

8bert/encoder/layer_10/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

8bert/encoder/layer_10/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ü
0bert/encoder/layer_10/intermediate/strided_sliceStridedSlice(bert/encoder/layer_10/intermediate/Shape6bert/encoder/layer_10/intermediate/strided_slice/stack8bert/encoder/layer_10/intermediate/strided_slice/stack_18bert/encoder/layer_10/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ç
Rbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ú
Qbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ü
Sbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ú
\bert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2C
ů
Pbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normalAddPbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:


/bert/encoder/layer_10/intermediate/dense/kernelVarHandleOp*B
_class8
64loc:@bert/encoder/layer_10/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*@
shared_name1/bert/encoder/layer_10/intermediate/dense/kernel
Ż
Pbert/encoder/layer_10/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_10/intermediate/dense/kernel*
_output_shapes
: 
Ö
6bert/encoder/layer_10/intermediate/dense/kernel/AssignAssignVariableOp/bert/encoder/layer_10/intermediate/dense/kernelLbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ľ
Cbert/encoder/layer_10/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ü
Obert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ě
Ebert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/ConstConst*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ç
?bert/encoder/layer_10/intermediate/dense/bias/Initializer/zerosFillObert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/shape_as_tensorEbert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros/Const*
T0*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:
ő
-bert/encoder/layer_10/intermediate/dense/biasVarHandleOp*@
_class6
42loc:@bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-bert/encoder/layer_10/intermediate/dense/bias
Ť
Nbert/encoder/layer_10/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp-bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes
: 
Ĺ
4bert/encoder/layer_10/intermediate/dense/bias/AssignAssignVariableOp-bert/encoder/layer_10/intermediate/dense/bias?bert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros*
dtype0
Ź
Abert/encoder/layer_10/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp-bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:*
dtype0
ą
?bert/encoder/layer_10/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp/bert/encoder/layer_10/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

0bert/encoder/layer_10/intermediate/einsum/EinsumEinsum@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1?bert/encoder/layer_10/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd
 
5bert/encoder/layer_10/intermediate/add/ReadVariableOpReadVariableOp-bert/encoder/layer_10/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Đ
&bert/encoder/layer_10/intermediate/addAddV20bert/encoder/layer_10/intermediate/einsum/Einsum5bert/encoder/layer_10/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
(bert/encoder/layer_10/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
ˇ
&bert/encoder/layer_10/intermediate/PowPow&bert/encoder/layer_10/intermediate/add(bert/encoder/layer_10/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
(bert/encoder/layer_10/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
ˇ
&bert/encoder/layer_10/intermediate/mulMul(bert/encoder/layer_10/intermediate/mul/x&bert/encoder/layer_10/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
(bert/encoder/layer_10/intermediate/add_1AddV2&bert/encoder/layer_10/intermediate/add&bert/encoder/layer_10/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_10/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
˝
(bert/encoder/layer_10/intermediate/mul_1Mul*bert/encoder/layer_10/intermediate/mul_1/x(bert/encoder/layer_10/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_10/intermediate/TanhTanh(bert/encoder/layer_10/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_10/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ž
(bert/encoder/layer_10/intermediate/add_2AddV2*bert/encoder/layer_10/intermediate/add_2/x'bert/encoder/layer_10/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_10/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
˝
(bert/encoder/layer_10/intermediate/mul_2Mul*bert/encoder/layer_10/intermediate/mul_2/x(bert/encoder/layer_10/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
(bert/encoder/layer_10/intermediate/mul_3Mul&bert/encoder/layer_10/intermediate/add(bert/encoder/layer_10/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
"bert/encoder/layer_10/output/ShapeShape(bert/encoder/layer_10/intermediate/mul_3*
T0*
_output_shapes
:
z
0bert/encoder/layer_10/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
|
2bert/encoder/layer_10/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
|
2bert/encoder/layer_10/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ž
*bert/encoder/layer_10/output/strided_sliceStridedSlice"bert/encoder/layer_10/output/Shape0bert/encoder/layer_10/output/strided_slice/stack2bert/encoder/layer_10/output/strided_slice/stack_12bert/encoder/layer_10/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ű
Lbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Î
Kbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Đ
Mbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/stddevConst*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Č
Vbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/shape*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2D
á
Jbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mulMulVbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalMbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:

Ď
Fbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normalAddJbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mulKbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:

î
)bert/encoder/layer_10/output/dense/kernelVarHandleOp*<
_class2
0.loc:@bert/encoder/layer_10/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*:
shared_name+)bert/encoder/layer_10/output/dense/kernel
Ł
Jbert/encoder/layer_10/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp)bert/encoder/layer_10/output/dense/kernel*
_output_shapes
: 
Ä
0bert/encoder/layer_10/output/dense/kernel/AssignAssignVariableOp)bert/encoder/layer_10/output/dense/kernelFbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal*
dtype0
Š
=bert/encoder/layer_10/output/dense/kernel/Read/ReadVariableOpReadVariableOp)bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:
*
dtype0
Ä
9bert/encoder/layer_10/output/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ă
'bert/encoder/layer_10/output/dense/biasVarHandleOp*:
_class0
.,loc:@bert/encoder/layer_10/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'bert/encoder/layer_10/output/dense/bias

Hbert/encoder/layer_10/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp'bert/encoder/layer_10/output/dense/bias*
_output_shapes
: 
ł
.bert/encoder/layer_10/output/dense/bias/AssignAssignVariableOp'bert/encoder/layer_10/output/dense/bias9bert/encoder/layer_10/output/dense/bias/Initializer/zeros*
dtype0
 
;bert/encoder/layer_10/output/dense/bias/Read/ReadVariableOpReadVariableOp'bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:*
dtype0
Ľ
9bert/encoder/layer_10/output/einsum/Einsum/ReadVariableOpReadVariableOp)bert/encoder/layer_10/output/dense/kernel* 
_output_shapes
:
*
dtype0
ő
*bert/encoder/layer_10/output/einsum/EinsumEinsum(bert/encoder/layer_10/intermediate/mul_39bert/encoder/layer_10/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

/bert/encoder/layer_10/output/add/ReadVariableOpReadVariableOp'bert/encoder/layer_10/output/dense/bias*
_output_shapes	
:*
dtype0
ž
 bert/encoder/layer_10/output/addAddV2*bert/encoder/layer_10/output/einsum/Einsum/bert/encoder/layer_10/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
"bert/encoder/layer_10/output/add_1AddV2 bert/encoder/layer_10/output/add@bert/encoder/layer_10/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
=bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zerosConst*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ď
+bert/encoder/layer_10/output/LayerNorm/betaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_10/output/LayerNorm/beta
§
Lbert/encoder/layer_10/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes
: 
ż
2bert/encoder/layer_10/output/LayerNorm/beta/AssignAssignVariableOp+bert/encoder/layer_10/output/LayerNorm/beta=bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zeros*
dtype0
¨
?bert/encoder/layer_10/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Í
=bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/onesConst*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ň
,bert/encoder/layer_10/output/LayerNorm/gammaVarHandleOp*?
_class5
31loc:@bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_10/output/LayerNorm/gamma
Š
Mbert/encoder/layer_10/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes
: 
Á
3bert/encoder/layer_10/output/LayerNorm/gamma/AssignAssignVariableOp,bert/encoder/layer_10/output/LayerNorm/gamma=bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/ones*
dtype0
Ş
@bert/encoder/layer_10/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Ebert/encoder/layer_10/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
î
3bert/encoder/layer_10/output/LayerNorm/moments/meanMean"bert/encoder/layer_10/output/add_1Ebert/encoder/layer_10/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ˇ
;bert/encoder/layer_10/output/LayerNorm/moments/StopGradientStopGradient3bert/encoder/layer_10/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
@bert/encoder/layer_10/output/LayerNorm/moments/SquaredDifferenceSquaredDifference"bert/encoder/layer_10/output/add_1;bert/encoder/layer_10/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_10/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_10/output/LayerNorm/moments/varianceMean@bert/encoder/layer_10/output/LayerNorm/moments/SquaredDifferenceIbert/encoder/layer_10/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
{
6bert/encoder/layer_10/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
ĺ
4bert/encoder/layer_10/output/LayerNorm/batchnorm/addAddV27bert/encoder/layer_10/output/LayerNorm/moments/variance6bert/encoder/layer_10/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
6bert/encoder/layer_10/output/LayerNorm/batchnorm/RsqrtRsqrt4bert/encoder/layer_10/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
Cbert/encoder/layer_10/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp,bert/encoder/layer_10/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
đ
4bert/encoder/layer_10/output/LayerNorm/batchnorm/mulMul6bert/encoder/layer_10/output/LayerNorm/batchnorm/RsqrtCbert/encoder/layer_10/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_1Mul"bert/encoder/layer_10/output/add_14bert/encoder/layer_10/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_2Mul3bert/encoder/layer_10/output/LayerNorm/moments/mean4bert/encoder/layer_10/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
?bert/encoder/layer_10/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp+bert/encoder/layer_10/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ě
4bert/encoder/layer_10/output/LayerNorm/batchnorm/subSub?bert/encoder/layer_10/output/LayerNorm/batchnorm/ReadVariableOp6bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1AddV26bert/encoder/layer_10/output/LayerNorm/batchnorm/mul_14bert/encoder/layer_10/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

*bert/encoder/layer_11/attention/self/ShapeShape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

8bert/encoder/layer_11/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

:bert/encoder/layer_11/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

:bert/encoder/layer_11/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ć
2bert/encoder/layer_11/attention/self/strided_sliceStridedSlice*bert/encoder/layer_11/attention/self/Shape8bert/encoder/layer_11/attention/self/strided_slice/stack:bert/encoder/layer_11/attention/self/strided_slice/stack_1:bert/encoder/layer_11/attention/self/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

,bert/encoder/layer_11/attention/self/Shape_1Shape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_11/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_11/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_11/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_11/attention/self/strided_slice_1StridedSlice,bert/encoder/layer_11/attention/self/Shape_1:bert/encoder/layer_11/attention/self/strided_slice_1/stack<bert/encoder/layer_11/attention/self/strided_slice_1/stack_1<bert/encoder/layer_11/attention/self/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

,bert/encoder/layer_11/attention/self/Shape_2Shape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_11/attention/self/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_11/attention/self/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_11/attention/self/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_11/attention/self/strided_slice_2StridedSlice,bert/encoder/layer_11/attention/self/Shape_2:bert/encoder/layer_11/attention/self/strided_slice_2/stack<bert/encoder/layer_11/attention/self/strided_slice_2/stack_1<bert/encoder/layer_11/attention/self/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ë
Tbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/shapeConst*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ţ
Sbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/meanConst*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ŕ
Ubert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/stddevConst*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ŕ
^bert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2E

Rbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normalAddRbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:


1bert/encoder/layer_11/attention/self/query/kernelVarHandleOp*D
_class:
86loc:@bert/encoder/layer_11/attention/self/query/kernel*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31bert/encoder/layer_11/attention/self/query/kernel
ł
Rbert/encoder/layer_11/attention/self/query/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp1bert/encoder/layer_11/attention/self/query/kernel*
_output_shapes
: 
Ü
8bert/encoder/layer_11/attention/self/query/kernel/AssignAssignVariableOp1bert/encoder/layer_11/attention/self/query/kernelNbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal*
dtype0
š
Ebert/encoder/layer_11/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp1bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:
*
dtype0
ľ
Abert/encoder/layer_11/attention/self/query/Reshape/ReadVariableOpReadVariableOp1bert/encoder/layer_11/attention/self/query/kernel* 
_output_shapes
:
*
dtype0

8bert/encoder/layer_11/attention/self/query/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
č
2bert/encoder/layer_11/attention/self/query/ReshapeReshapeAbert/encoder/layer_11/attention/self/query/Reshape/ReadVariableOp8bert/encoder/layer_11/attention/self/query/Reshape/shape*
T0*#
_output_shapes
:@
Ô
Abert/encoder/layer_11/attention/self/query/bias/Initializer/zerosConst*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:*
dtype0*
valueB*    
ű
/bert/encoder/layer_11/attention/self/query/biasVarHandleOp*B
_class8
64loc:@bert/encoder/layer_11/attention/self/query/bias*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/bert/encoder/layer_11/attention/self/query/bias
Ż
Pbert/encoder/layer_11/attention/self/query/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_11/attention/self/query/bias*
_output_shapes
: 
Ë
6bert/encoder/layer_11/attention/self/query/bias/AssignAssignVariableOp/bert/encoder/layer_11/attention/self/query/biasAbert/encoder/layer_11/attention/self/query/bias/Initializer/zeros*
dtype0
°
Cbert/encoder/layer_11/attention/self/query/bias/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:*
dtype0
°
Cbert/encoder/layer_11/attention/self/query/Reshape_1/ReadVariableOpReadVariableOp/bert/encoder/layer_11/attention/self/query/bias*
_output_shapes	
:*
dtype0

:bert/encoder/layer_11/attention/self/query/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
é
4bert/encoder/layer_11/attention/self/query/Reshape_1ReshapeCbert/encoder/layer_11/attention/self/query/Reshape_1/ReadVariableOp:bert/encoder/layer_11/attention/self/query/Reshape_1/shape*
T0*
_output_shapes

:@

8bert/encoder/layer_11/attention/self/query/einsum/EinsumEinsum6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_12bert/encoder/layer_11/attention/self/query/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
â
.bert/encoder/layer_11/attention/self/query/addAddV28bert/encoder/layer_11/attention/self/query/einsum/Einsum4bert/encoder/layer_11/attention/self/query/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,bert/encoder/layer_11/attention/self/Shape_3Shape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_11/attention/self/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_11/attention/self/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_11/attention/self/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_11/attention/self/strided_slice_3StridedSlice,bert/encoder/layer_11/attention/self/Shape_3:bert/encoder/layer_11/attention/self/strided_slice_3/stack<bert/encoder/layer_11/attention/self/strided_slice_3/stack_1<bert/encoder/layer_11/attention/self/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ç
Rbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ú
Qbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ü
Sbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ú
\bert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2F
ů
Pbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normalAddPbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:


/bert/encoder/layer_11/attention/self/key/kernelVarHandleOp*B
_class8
64loc:@bert/encoder/layer_11/attention/self/key/kernel*
_output_shapes
: *
dtype0*
shape:
*@
shared_name1/bert/encoder/layer_11/attention/self/key/kernel
Ż
Pbert/encoder/layer_11/attention/self/key/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_11/attention/self/key/kernel*
_output_shapes
: 
Ö
6bert/encoder/layer_11/attention/self/key/kernel/AssignAssignVariableOp/bert/encoder/layer_11/attention/self/key/kernelLbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal*
dtype0
ľ
Cbert/encoder/layer_11/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:
*
dtype0
ą
?bert/encoder/layer_11/attention/self/key/Reshape/ReadVariableOpReadVariableOp/bert/encoder/layer_11/attention/self/key/kernel* 
_output_shapes
:
*
dtype0

6bert/encoder/layer_11/attention/self/key/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
â
0bert/encoder/layer_11/attention/self/key/ReshapeReshape?bert/encoder/layer_11/attention/self/key/Reshape/ReadVariableOp6bert/encoder/layer_11/attention/self/key/Reshape/shape*
T0*#
_output_shapes
:@
Đ
?bert/encoder/layer_11/attention/self/key/bias/Initializer/zerosConst*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
_output_shapes	
:*
dtype0*
valueB*    
ő
-bert/encoder/layer_11/attention/self/key/biasVarHandleOp*@
_class6
42loc:@bert/encoder/layer_11/attention/self/key/bias*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-bert/encoder/layer_11/attention/self/key/bias
Ť
Nbert/encoder/layer_11/attention/self/key/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp-bert/encoder/layer_11/attention/self/key/bias*
_output_shapes
: 
Ĺ
4bert/encoder/layer_11/attention/self/key/bias/AssignAssignVariableOp-bert/encoder/layer_11/attention/self/key/bias?bert/encoder/layer_11/attention/self/key/bias/Initializer/zeros*
dtype0
Ź
Abert/encoder/layer_11/attention/self/key/bias/Read/ReadVariableOpReadVariableOp-bert/encoder/layer_11/attention/self/key/bias*
_output_shapes	
:*
dtype0
Ź
Abert/encoder/layer_11/attention/self/key/Reshape_1/ReadVariableOpReadVariableOp-bert/encoder/layer_11/attention/self/key/bias*
_output_shapes	
:*
dtype0

8bert/encoder/layer_11/attention/self/key/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
ă
2bert/encoder/layer_11/attention/self/key/Reshape_1ReshapeAbert/encoder/layer_11/attention/self/key/Reshape_1/ReadVariableOp8bert/encoder/layer_11/attention/self/key/Reshape_1/shape*
T0*
_output_shapes

:@

6bert/encoder/layer_11/attention/self/key/einsum/EinsumEinsum6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_10bert/encoder/layer_11/attention/self/key/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
Ü
,bert/encoder/layer_11/attention/self/key/addAddV26bert/encoder/layer_11/attention/self/key/einsum/Einsum2bert/encoder/layer_11/attention/self/key/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,bert/encoder/layer_11/attention/self/Shape_4Shape6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

:bert/encoder/layer_11/attention/self/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 

<bert/encoder/layer_11/attention/self/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

<bert/encoder/layer_11/attention/self/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
đ
4bert/encoder/layer_11/attention/self/strided_slice_4StridedSlice,bert/encoder/layer_11/attention/self/Shape_4:bert/encoder/layer_11/attention/self/strided_slice_4/stack<bert/encoder/layer_11/attention/self/strided_slice_4/stack_1<bert/encoder/layer_11/attention/self/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ë
Tbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/shapeConst*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ţ
Sbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/meanConst*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ŕ
Ubert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/stddevConst*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ŕ
^bert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalTbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/shape*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2G

Rbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mulMul^bert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/TruncatedNormalUbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/stddev*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:

ď
Nbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normalAddRbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mulSbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal/mean*
T0*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:


1bert/encoder/layer_11/attention/self/value/kernelVarHandleOp*D
_class:
86loc:@bert/encoder/layer_11/attention/self/value/kernel*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31bert/encoder/layer_11/attention/self/value/kernel
ł
Rbert/encoder/layer_11/attention/self/value/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp1bert/encoder/layer_11/attention/self/value/kernel*
_output_shapes
: 
Ü
8bert/encoder/layer_11/attention/self/value/kernel/AssignAssignVariableOp1bert/encoder/layer_11/attention/self/value/kernelNbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal*
dtype0
š
Ebert/encoder/layer_11/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp1bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:
*
dtype0
ľ
Abert/encoder/layer_11/attention/self/value/Reshape/ReadVariableOpReadVariableOp1bert/encoder/layer_11/attention/self/value/kernel* 
_output_shapes
:
*
dtype0

8bert/encoder/layer_11/attention/self/value/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      @   
č
2bert/encoder/layer_11/attention/self/value/ReshapeReshapeAbert/encoder/layer_11/attention/self/value/Reshape/ReadVariableOp8bert/encoder/layer_11/attention/self/value/Reshape/shape*
T0*#
_output_shapes
:@
Ô
Abert/encoder/layer_11/attention/self/value/bias/Initializer/zerosConst*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
_output_shapes	
:*
dtype0*
valueB*    
ű
/bert/encoder/layer_11/attention/self/value/biasVarHandleOp*B
_class8
64loc:@bert/encoder/layer_11/attention/self/value/bias*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/bert/encoder/layer_11/attention/self/value/bias
Ż
Pbert/encoder/layer_11/attention/self/value/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_11/attention/self/value/bias*
_output_shapes
: 
Ë
6bert/encoder/layer_11/attention/self/value/bias/AssignAssignVariableOp/bert/encoder/layer_11/attention/self/value/biasAbert/encoder/layer_11/attention/self/value/bias/Initializer/zeros*
dtype0
°
Cbert/encoder/layer_11/attention/self/value/bias/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_11/attention/self/value/bias*
_output_shapes	
:*
dtype0
°
Cbert/encoder/layer_11/attention/self/value/Reshape_1/ReadVariableOpReadVariableOp/bert/encoder/layer_11/attention/self/value/bias*
_output_shapes	
:*
dtype0

:bert/encoder/layer_11/attention/self/value/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
é
4bert/encoder/layer_11/attention/self/value/Reshape_1ReshapeCbert/encoder/layer_11/attention/self/value/Reshape_1/ReadVariableOp:bert/encoder/layer_11/attention/self/value/Reshape_1/shape*
T0*
_output_shapes

:@

8bert/encoder/layer_11/attention/self/value/einsum/EinsumEinsum6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_12bert/encoder/layer_11/attention/self/value/Reshape*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationabc,cde->abde
â
.bert/encoder/layer_11/attention/self/value/addAddV28bert/encoder/layer_11/attention/self/value/einsum/Einsum4bert/encoder/layer_11/attention/self/value/Reshape_1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ţ
2bert/encoder/layer_11/attention/self/einsum/EinsumEinsum,bert/encoder/layer_11/attention/self/key/add.bert/encoder/layer_11/attention/self/query/add*
N*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBTNH,BFNH->BNFT
o
*bert/encoder/layer_11/attention/self/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >
Ë
(bert/encoder/layer_11/attention/self/MulMul2bert/encoder/layer_11/attention/self/einsum/Einsum*bert/encoder/layer_11/attention/self/Mul/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
}
3bert/encoder/layer_11/attention/self/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
Ŕ
/bert/encoder/layer_11/attention/self/ExpandDims
ExpandDimsbert/encoder/mul3bert/encoder/layer_11/attention/self/ExpandDims/dim*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_11/attention/self/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Č
(bert/encoder/layer_11/attention/self/subSub*bert/encoder/layer_11/attention/self/sub/x/bert/encoder/layer_11/attention/self/ExpandDims*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
,bert/encoder/layer_11/attention/self/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ć
Ĺ
*bert/encoder/layer_11/attention/self/mul_1Mul(bert/encoder/layer_11/attention/self/sub,bert/encoder/layer_11/attention/self/mul_1/y*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
(bert/encoder/layer_11/attention/self/addAddV2(bert/encoder/layer_11/attention/self/Mul*bert/encoder/layer_11/attention/self/mul_1*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙

,bert/encoder/layer_11/attention/self/SoftmaxSoftmax(bert/encoder/layer_11/attention/self/add*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
˙
4bert/encoder/layer_11/attention/self/einsum_1/EinsumEinsum,bert/encoder/layer_11/attention/self/Softmax.bert/encoder/layer_11/attention/self/value/add*
N*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
equationBNFT,BTNH->BFNH
ď
Vbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
â
Ubert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/meanConst*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ä
Wbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
ć
`bert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/shape*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2H

Tbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mulMul`bert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalWbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:

÷
Pbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normalAddTbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mulUbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:


3bert/encoder/layer_11/attention/output/dense/kernelVarHandleOp*F
_class<
:8loc:@bert/encoder/layer_11/attention/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*D
shared_name53bert/encoder/layer_11/attention/output/dense/kernel
ˇ
Tbert/encoder/layer_11/attention/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp3bert/encoder/layer_11/attention/output/dense/kernel*
_output_shapes
: 
â
:bert/encoder/layer_11/attention/output/dense/kernel/AssignAssignVariableOp3bert/encoder/layer_11/attention/output/dense/kernelPbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal*
dtype0
˝
Gbert/encoder/layer_11/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp3bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0
š
Cbert/encoder/layer_11/attention/output/dense/Reshape/ReadVariableOpReadVariableOp3bert/encoder/layer_11/attention/output/dense/kernel* 
_output_shapes
:
*
dtype0

:bert/encoder/layer_11/attention/output/dense/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   @      
î
4bert/encoder/layer_11/attention/output/dense/ReshapeReshapeCbert/encoder/layer_11/attention/output/dense/Reshape/ReadVariableOp:bert/encoder/layer_11/attention/output/dense/Reshape/shape*
T0*#
_output_shapes
:@
Ř
Cbert/encoder/layer_11/attention/output/dense/bias/Initializer/zerosConst*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    

1bert/encoder/layer_11/attention/output/dense/biasVarHandleOp*D
_class:
86loc:@bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*B
shared_name31bert/encoder/layer_11/attention/output/dense/bias
ł
Rbert/encoder/layer_11/attention/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp1bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes
: 
Ń
8bert/encoder/layer_11/attention/output/dense/bias/AssignAssignVariableOp1bert/encoder/layer_11/attention/output/dense/biasCbert/encoder/layer_11/attention/output/dense/bias/Initializer/zeros*
dtype0
´
Ebert/encoder/layer_11/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp1bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:*
dtype0

4bert/encoder/layer_11/attention/output/einsum/EinsumEinsum4bert/encoder/layer_11/attention/self/einsum_1/Einsum4bert/encoder/layer_11/attention/output/dense/Reshape*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationBFNH,NHD->BFD
¨
9bert/encoder/layer_11/attention/output/add/ReadVariableOpReadVariableOp1bert/encoder/layer_11/attention/output/dense/bias*
_output_shapes	
:*
dtype0
Ü
*bert/encoder/layer_11/attention/output/addAddV24bert/encoder/layer_11/attention/output/einsum/Einsum9bert/encoder/layer_11/attention/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
,bert/encoder/layer_11/attention/output/add_1AddV2*bert/encoder/layer_11/attention/output/add6bert/encoder/layer_10/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
Gbert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zerosConst*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    

5bert/encoder/layer_11/attention/output/LayerNorm/betaVarHandleOp*H
_class>
<:loc:@bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*F
shared_name75bert/encoder/layer_11/attention/output/LayerNorm/beta
ť
Vbert/encoder/layer_11/attention/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp5bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes
: 
Ý
<bert/encoder/layer_11/attention/output/LayerNorm/beta/AssignAssignVariableOp5bert/encoder/layer_11/attention/output/LayerNorm/betaGbert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zeros*
dtype0
ź
Ibert/encoder/layer_11/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp5bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
á
Gbert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/onesConst*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?

6bert/encoder/layer_11/attention/output/LayerNorm/gammaVarHandleOp*I
_class?
=;loc:@bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*G
shared_name86bert/encoder/layer_11/attention/output/LayerNorm/gamma
˝
Wbert/encoder/layer_11/attention/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes
: 
ß
=bert/encoder/layer_11/attention/output/LayerNorm/gamma/AssignAssignVariableOp6bert/encoder/layer_11/attention/output/LayerNorm/gammaGbert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/ones*
dtype0
ž
Jbert/encoder/layer_11/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Obert/encoder/layer_11/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

=bert/encoder/layer_11/attention/output/LayerNorm/moments/meanMean,bert/encoder/layer_11/attention/output/add_1Obert/encoder/layer_11/attention/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
Ë
Ebert/encoder/layer_11/attention/output/LayerNorm/moments/StopGradientStopGradient=bert/encoder/layer_11/attention/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Jbert/encoder/layer_11/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference,bert/encoder/layer_11/attention/output/add_1Ebert/encoder/layer_11/attention/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Sbert/encoder/layer_11/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
˛
Abert/encoder/layer_11/attention/output/LayerNorm/moments/varianceMeanJbert/encoder/layer_11/attention/output/LayerNorm/moments/SquaredDifferenceSbert/encoder/layer_11/attention/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(

@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+

>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/addAddV2Abert/encoder/layer_11/attention/output/LayerNorm/moments/variance@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ŕ
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/RsqrtRsqrt>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
Mbert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp6bert/encoder/layer_11/attention/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mulMul@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/RsqrtMbert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_1Mul,bert/encoder/layer_11/attention/output/add_1>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_2Mul=bert/encoder/layer_11/attention/output/LayerNorm/moments/mean>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Ibert/encoder/layer_11/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp5bert/encoder/layer_11/attention/output/LayerNorm/beta*
_output_shapes	
:*
dtype0

>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/subSubIbert/encoder/layer_11/attention/output/LayerNorm/batchnorm/ReadVariableOp@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1AddV2@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/mul_1>bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

(bert/encoder/layer_11/intermediate/ShapeShape@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:

6bert/encoder/layer_11/intermediate/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

8bert/encoder/layer_11/intermediate/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

8bert/encoder/layer_11/intermediate/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ü
0bert/encoder/layer_11/intermediate/strided_sliceStridedSlice(bert/encoder/layer_11/intermediate/Shape6bert/encoder/layer_11/intermediate/strided_slice/stack8bert/encoder/layer_11/intermediate/strided_slice/stack_18bert/encoder/layer_11/intermediate/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ç
Rbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ú
Qbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ü
Sbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Ú
\bert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/shape*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2I
ů
Pbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mulMul\bert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/TruncatedNormalSbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:

ç
Lbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normalAddPbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mulQbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:


/bert/encoder/layer_11/intermediate/dense/kernelVarHandleOp*B
_class8
64loc:@bert/encoder/layer_11/intermediate/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*@
shared_name1/bert/encoder/layer_11/intermediate/dense/kernel
Ż
Pbert/encoder/layer_11/intermediate/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp/bert/encoder/layer_11/intermediate/dense/kernel*
_output_shapes
: 
Ö
6bert/encoder/layer_11/intermediate/dense/kernel/AssignAssignVariableOp/bert/encoder/layer_11/intermediate/dense/kernelLbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal*
dtype0
ľ
Cbert/encoder/layer_11/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp/bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0
Ü
Obert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes
:*
dtype0*
valueB:
Ě
Ebert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/ConstConst*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes
: *
dtype0*
valueB
 *    
Ç
?bert/encoder/layer_11/intermediate/dense/bias/Initializer/zerosFillObert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/shape_as_tensorEbert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros/Const*
T0*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:
ő
-bert/encoder/layer_11/intermediate/dense/biasVarHandleOp*@
_class6
42loc:@bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-bert/encoder/layer_11/intermediate/dense/bias
Ť
Nbert/encoder/layer_11/intermediate/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp-bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes
: 
Ĺ
4bert/encoder/layer_11/intermediate/dense/bias/AssignAssignVariableOp-bert/encoder/layer_11/intermediate/dense/bias?bert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros*
dtype0
Ź
Abert/encoder/layer_11/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp-bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:*
dtype0
ą
?bert/encoder/layer_11/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp/bert/encoder/layer_11/intermediate/dense/kernel* 
_output_shapes
:
*
dtype0

0bert/encoder/layer_11/intermediate/einsum/EinsumEinsum@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1?bert/encoder/layer_11/intermediate/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd
 
5bert/encoder/layer_11/intermediate/add/ReadVariableOpReadVariableOp-bert/encoder/layer_11/intermediate/dense/bias*
_output_shapes	
:*
dtype0
Đ
&bert/encoder/layer_11/intermediate/addAddV20bert/encoder/layer_11/intermediate/einsum/Einsum5bert/encoder/layer_11/intermediate/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
(bert/encoder/layer_11/intermediate/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@
ˇ
&bert/encoder/layer_11/intermediate/PowPow&bert/encoder/layer_11/intermediate/add(bert/encoder/layer_11/intermediate/Pow/y*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
(bert/encoder/layer_11/intermediate/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=
ˇ
&bert/encoder/layer_11/intermediate/mulMul(bert/encoder/layer_11/intermediate/mul/x&bert/encoder/layer_11/intermediate/Pow*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
(bert/encoder/layer_11/intermediate/add_1AddV2&bert/encoder/layer_11/intermediate/add&bert/encoder/layer_11/intermediate/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_11/intermediate/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?
˝
(bert/encoder/layer_11/intermediate/mul_1Mul*bert/encoder/layer_11/intermediate/mul_1/x(bert/encoder/layer_11/intermediate/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

'bert/encoder/layer_11/intermediate/TanhTanh(bert/encoder/layer_11/intermediate/mul_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_11/intermediate/add_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
ž
(bert/encoder/layer_11/intermediate/add_2AddV2*bert/encoder/layer_11/intermediate/add_2/x'bert/encoder/layer_11/intermediate/Tanh*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
*bert/encoder/layer_11/intermediate/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
˝
(bert/encoder/layer_11/intermediate/mul_2Mul*bert/encoder/layer_11/intermediate/mul_2/x(bert/encoder/layer_11/intermediate/add_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
(bert/encoder/layer_11/intermediate/mul_3Mul&bert/encoder/layer_11/intermediate/add(bert/encoder/layer_11/intermediate/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
"bert/encoder/layer_11/output/ShapeShape(bert/encoder/layer_11/intermediate/mul_3*
T0*
_output_shapes
:
z
0bert/encoder/layer_11/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
|
2bert/encoder/layer_11/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
|
2bert/encoder/layer_11/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ž
*bert/encoder/layer_11/output/strided_sliceStridedSlice"bert/encoder/layer_11/output/Shape0bert/encoder/layer_11/output/strided_slice/stack2bert/encoder/layer_11/output/strided_slice/stack_12bert/encoder/layer_11/output/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ű
Lbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Î
Kbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Đ
Mbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/stddevConst*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<
Č
Vbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/shape*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2J
á
Jbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mulMulVbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/TruncatedNormalMbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/stddev*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

Ď
Fbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normalAddJbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mulKbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:

î
)bert/encoder/layer_11/output/dense/kernelVarHandleOp*<
_class2
0.loc:@bert/encoder/layer_11/output/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*:
shared_name+)bert/encoder/layer_11/output/dense/kernel
Ł
Jbert/encoder/layer_11/output/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp)bert/encoder/layer_11/output/dense/kernel*
_output_shapes
: 
Ä
0bert/encoder/layer_11/output/dense/kernel/AssignAssignVariableOp)bert/encoder/layer_11/output/dense/kernelFbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal*
dtype0
Š
=bert/encoder/layer_11/output/dense/kernel/Read/ReadVariableOpReadVariableOp)bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:
*
dtype0
Ä
9bert/encoder/layer_11/output/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
ă
'bert/encoder/layer_11/output/dense/biasVarHandleOp*:
_class0
.,loc:@bert/encoder/layer_11/output/dense/bias*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'bert/encoder/layer_11/output/dense/bias

Hbert/encoder/layer_11/output/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp'bert/encoder/layer_11/output/dense/bias*
_output_shapes
: 
ł
.bert/encoder/layer_11/output/dense/bias/AssignAssignVariableOp'bert/encoder/layer_11/output/dense/bias9bert/encoder/layer_11/output/dense/bias/Initializer/zeros*
dtype0
 
;bert/encoder/layer_11/output/dense/bias/Read/ReadVariableOpReadVariableOp'bert/encoder/layer_11/output/dense/bias*
_output_shapes	
:*
dtype0
Ľ
9bert/encoder/layer_11/output/einsum/Einsum/ReadVariableOpReadVariableOp)bert/encoder/layer_11/output/dense/kernel* 
_output_shapes
:
*
dtype0
ő
*bert/encoder/layer_11/output/einsum/EinsumEinsum(bert/encoder/layer_11/intermediate/mul_39bert/encoder/layer_11/output/einsum/Einsum/ReadVariableOp*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationabc,cd->abd

/bert/encoder/layer_11/output/add/ReadVariableOpReadVariableOp'bert/encoder/layer_11/output/dense/bias*
_output_shapes	
:*
dtype0
ž
 bert/encoder/layer_11/output/addAddV2*bert/encoder/layer_11/output/einsum/Einsum/bert/encoder/layer_11/output/add/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
"bert/encoder/layer_11/output/add_1AddV2 bert/encoder/layer_11/output/add@bert/encoder/layer_11/attention/output/LayerNorm/batchnorm/add_1*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
=bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zerosConst*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:*
dtype0*
valueB*    
ď
+bert/encoder/layer_11/output/LayerNorm/betaVarHandleOp*>
_class4
20loc:@bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+bert/encoder/layer_11/output/LayerNorm/beta
§
Lbert/encoder/layer_11/output/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp+bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes
: 
ż
2bert/encoder/layer_11/output/LayerNorm/beta/AssignAssignVariableOp+bert/encoder/layer_11/output/LayerNorm/beta=bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zeros*
dtype0
¨
?bert/encoder/layer_11/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp+bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
Í
=bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/onesConst*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0*
valueB*  ?
ň
,bert/encoder/layer_11/output/LayerNorm/gammaVarHandleOp*?
_class5
31loc:@bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,bert/encoder/layer_11/output/LayerNorm/gamma
Š
Mbert/encoder/layer_11/output/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp,bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes
: 
Á
3bert/encoder/layer_11/output/LayerNorm/gamma/AssignAssignVariableOp,bert/encoder/layer_11/output/LayerNorm/gamma=bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/ones*
dtype0
Ş
@bert/encoder/layer_11/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp,bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0

Ebert/encoder/layer_11/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
î
3bert/encoder/layer_11/output/LayerNorm/moments/meanMean"bert/encoder/layer_11/output/add_1Ebert/encoder/layer_11/output/LayerNorm/moments/mean/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
ˇ
;bert/encoder/layer_11/output/LayerNorm/moments/StopGradientStopGradient3bert/encoder/layer_11/output/LayerNorm/moments/mean*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
@bert/encoder/layer_11/output/LayerNorm/moments/SquaredDifferenceSquaredDifference"bert/encoder/layer_11/output/add_1;bert/encoder/layer_11/output/LayerNorm/moments/StopGradient*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ibert/encoder/layer_11/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:

7bert/encoder/layer_11/output/LayerNorm/moments/varianceMean@bert/encoder/layer_11/output/LayerNorm/moments/SquaredDifferenceIbert/encoder/layer_11/output/LayerNorm/moments/variance/reduction_indices*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(
{
6bert/encoder/layer_11/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
ĺ
4bert/encoder/layer_11/output/LayerNorm/batchnorm/addAddV27bert/encoder/layer_11/output/LayerNorm/moments/variance6bert/encoder/layer_11/output/LayerNorm/batchnorm/add/y*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
6bert/encoder/layer_11/output/LayerNorm/batchnorm/RsqrtRsqrt4bert/encoder/layer_11/output/LayerNorm/batchnorm/add*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
Cbert/encoder/layer_11/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp,bert/encoder/layer_11/output/LayerNorm/gamma*
_output_shapes	
:*
dtype0
đ
4bert/encoder/layer_11/output/LayerNorm/batchnorm/mulMul6bert/encoder/layer_11/output/LayerNorm/batchnorm/RsqrtCbert/encoder/layer_11/output/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_1Mul"bert/encoder/layer_11/output/add_14bert/encoder/layer_11/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_2Mul3bert/encoder/layer_11/output/LayerNorm/moments/mean4bert/encoder/layer_11/output/LayerNorm/batchnorm/mul*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
?bert/encoder/layer_11/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp+bert/encoder/layer_11/output/LayerNorm/beta*
_output_shapes	
:*
dtype0
ě
4bert/encoder/layer_11/output/LayerNorm/batchnorm/subSub?bert/encoder/layer_11/output/LayerNorm/batchnorm/ReadVariableOp6bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_2*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1AddV26bert/encoder/layer_11/output/LayerNorm/batchnorm/mul_14bert/encoder/layer_11/output/LayerNorm/batchnorm/sub*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
bert/pooler/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
v
!bert/pooler/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
v
!bert/pooler/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
Ž
bert/pooler/strided_sliceStridedSlice6bert/encoder/layer_11/output/LayerNorm/batchnorm/add_1bert/pooler/strided_slice/stack!bert/pooler/strided_slice/stack_1!bert/pooler/strided_slice/stack_2*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask

bert/pooler/SqueezeSqueezebert/pooler/strided_slice*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

š
;bert/pooler/dense/kernel/Initializer/truncated_normal/shapeConst*+
_class!
loc:@bert/pooler/dense/kernel*
_output_shapes
:*
dtype0*
valueB"      
Ź
:bert/pooler/dense/kernel/Initializer/truncated_normal/meanConst*+
_class!
loc:@bert/pooler/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ž
<bert/pooler/dense/kernel/Initializer/truncated_normal/stddevConst*+
_class!
loc:@bert/pooler/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *
×Ł<

Ebert/pooler/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;bert/pooler/dense/kernel/Initializer/truncated_normal/shape*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:
*
dtype0*
seed˛*
seed2K

9bert/pooler/dense/kernel/Initializer/truncated_normal/mulMulEbert/pooler/dense/kernel/Initializer/truncated_normal/TruncatedNormal<bert/pooler/dense/kernel/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:


5bert/pooler/dense/kernel/Initializer/truncated_normalAdd9bert/pooler/dense/kernel/Initializer/truncated_normal/mul:bert/pooler/dense/kernel/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@bert/pooler/dense/kernel* 
_output_shapes
:

ť
bert/pooler/dense/kernelVarHandleOp*+
_class!
loc:@bert/pooler/dense/kernel*
_output_shapes
: *
dtype0*
shape:
*)
shared_namebert/pooler/dense/kernel

9bert/pooler/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpbert/pooler/dense/kernel*
_output_shapes
: 

bert/pooler/dense/kernel/AssignAssignVariableOpbert/pooler/dense/kernel5bert/pooler/dense/kernel/Initializer/truncated_normal*
dtype0

,bert/pooler/dense/kernel/Read/ReadVariableOpReadVariableOpbert/pooler/dense/kernel* 
_output_shapes
:
*
dtype0
˘
(bert/pooler/dense/bias/Initializer/zerosConst*)
_class
loc:@bert/pooler/dense/bias*
_output_shapes	
:*
dtype0*
valueB*    
°
bert/pooler/dense/biasVarHandleOp*)
_class
loc:@bert/pooler/dense/bias*
_output_shapes
: *
dtype0*
shape:*'
shared_namebert/pooler/dense/bias
}
7bert/pooler/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpbert/pooler/dense/bias*
_output_shapes
: 

bert/pooler/dense/bias/AssignAssignVariableOpbert/pooler/dense/bias(bert/pooler/dense/bias/Initializer/zeros*
dtype0
~
*bert/pooler/dense/bias/Read/ReadVariableOpReadVariableOpbert/pooler/dense/bias*
_output_shapes	
:*
dtype0

'bert/pooler/dense/MatMul/ReadVariableOpReadVariableOpbert/pooler/dense/kernel* 
_output_shapes
:
*
dtype0

bert/pooler/dense/MatMulMatMulbert/pooler/Squeeze'bert/pooler/dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
(bert/pooler/dense/BiasAdd/ReadVariableOpReadVariableOpbert/pooler/dense/bias*
_output_shapes	
:*
dtype0

bert/pooler/dense/BiasAddBiasAddbert/pooler/dense/MatMul(bert/pooler/dense/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
bert/pooler/dense/TanhTanhbert/pooler/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"      

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ďć´˝

+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ďć´=
č
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	*
dtype0*
seed˛*
seed2L
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0

dense/bias/Initializer/ConstConst*
_class
loc:@dense/bias*
_output_shapes
:*
dtype0*
valueB*>


dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/Const*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
i
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0
}
dense/MatMulMatMulbert/pooler/dense/Tanhdense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
v
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
SqueezeSqueezedense/BiasAdd*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims

H
subSubSqueezezeros*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
D
PowPowsubPow/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
J
MeanMeanPowMean/reduction_indices*
T0*
_output_shapes
: 

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part

save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_b82dcc3a6c1a46169d529cdee29a72f9/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
K
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:Ę*
dtype0*ĽJ
valueJBJĘBbert/embeddings/LayerNorm/betaBbert/embeddings/LayerNorm/gammaB#bert/embeddings/position_embeddingsB%bert/embeddings/token_type_embeddingsBbert/embeddings/word_embeddingsB4bert/encoder/layer_0/attention/output/LayerNorm/betaB5bert/encoder/layer_0/attention/output/LayerNorm/gammaB0bert/encoder/layer_0/attention/output/dense/biasB2bert/encoder/layer_0/attention/output/dense/kernelB,bert/encoder/layer_0/attention/self/key/biasB.bert/encoder/layer_0/attention/self/key/kernelB.bert/encoder/layer_0/attention/self/query/biasB0bert/encoder/layer_0/attention/self/query/kernelB.bert/encoder/layer_0/attention/self/value/biasB0bert/encoder/layer_0/attention/self/value/kernelB,bert/encoder/layer_0/intermediate/dense/biasB.bert/encoder/layer_0/intermediate/dense/kernelB*bert/encoder/layer_0/output/LayerNorm/betaB+bert/encoder/layer_0/output/LayerNorm/gammaB&bert/encoder/layer_0/output/dense/biasB(bert/encoder/layer_0/output/dense/kernelB4bert/encoder/layer_1/attention/output/LayerNorm/betaB5bert/encoder/layer_1/attention/output/LayerNorm/gammaB0bert/encoder/layer_1/attention/output/dense/biasB2bert/encoder/layer_1/attention/output/dense/kernelB,bert/encoder/layer_1/attention/self/key/biasB.bert/encoder/layer_1/attention/self/key/kernelB.bert/encoder/layer_1/attention/self/query/biasB0bert/encoder/layer_1/attention/self/query/kernelB.bert/encoder/layer_1/attention/self/value/biasB0bert/encoder/layer_1/attention/self/value/kernelB,bert/encoder/layer_1/intermediate/dense/biasB.bert/encoder/layer_1/intermediate/dense/kernelB*bert/encoder/layer_1/output/LayerNorm/betaB+bert/encoder/layer_1/output/LayerNorm/gammaB&bert/encoder/layer_1/output/dense/biasB(bert/encoder/layer_1/output/dense/kernelB5bert/encoder/layer_10/attention/output/LayerNorm/betaB6bert/encoder/layer_10/attention/output/LayerNorm/gammaB1bert/encoder/layer_10/attention/output/dense/biasB3bert/encoder/layer_10/attention/output/dense/kernelB-bert/encoder/layer_10/attention/self/key/biasB/bert/encoder/layer_10/attention/self/key/kernelB/bert/encoder/layer_10/attention/self/query/biasB1bert/encoder/layer_10/attention/self/query/kernelB/bert/encoder/layer_10/attention/self/value/biasB1bert/encoder/layer_10/attention/self/value/kernelB-bert/encoder/layer_10/intermediate/dense/biasB/bert/encoder/layer_10/intermediate/dense/kernelB+bert/encoder/layer_10/output/LayerNorm/betaB,bert/encoder/layer_10/output/LayerNorm/gammaB'bert/encoder/layer_10/output/dense/biasB)bert/encoder/layer_10/output/dense/kernelB5bert/encoder/layer_11/attention/output/LayerNorm/betaB6bert/encoder/layer_11/attention/output/LayerNorm/gammaB1bert/encoder/layer_11/attention/output/dense/biasB3bert/encoder/layer_11/attention/output/dense/kernelB-bert/encoder/layer_11/attention/self/key/biasB/bert/encoder/layer_11/attention/self/key/kernelB/bert/encoder/layer_11/attention/self/query/biasB1bert/encoder/layer_11/attention/self/query/kernelB/bert/encoder/layer_11/attention/self/value/biasB1bert/encoder/layer_11/attention/self/value/kernelB-bert/encoder/layer_11/intermediate/dense/biasB/bert/encoder/layer_11/intermediate/dense/kernelB+bert/encoder/layer_11/output/LayerNorm/betaB,bert/encoder/layer_11/output/LayerNorm/gammaB'bert/encoder/layer_11/output/dense/biasB)bert/encoder/layer_11/output/dense/kernelB4bert/encoder/layer_2/attention/output/LayerNorm/betaB5bert/encoder/layer_2/attention/output/LayerNorm/gammaB0bert/encoder/layer_2/attention/output/dense/biasB2bert/encoder/layer_2/attention/output/dense/kernelB,bert/encoder/layer_2/attention/self/key/biasB.bert/encoder/layer_2/attention/self/key/kernelB.bert/encoder/layer_2/attention/self/query/biasB0bert/encoder/layer_2/attention/self/query/kernelB.bert/encoder/layer_2/attention/self/value/biasB0bert/encoder/layer_2/attention/self/value/kernelB,bert/encoder/layer_2/intermediate/dense/biasB.bert/encoder/layer_2/intermediate/dense/kernelB*bert/encoder/layer_2/output/LayerNorm/betaB+bert/encoder/layer_2/output/LayerNorm/gammaB&bert/encoder/layer_2/output/dense/biasB(bert/encoder/layer_2/output/dense/kernelB4bert/encoder/layer_3/attention/output/LayerNorm/betaB5bert/encoder/layer_3/attention/output/LayerNorm/gammaB0bert/encoder/layer_3/attention/output/dense/biasB2bert/encoder/layer_3/attention/output/dense/kernelB,bert/encoder/layer_3/attention/self/key/biasB.bert/encoder/layer_3/attention/self/key/kernelB.bert/encoder/layer_3/attention/self/query/biasB0bert/encoder/layer_3/attention/self/query/kernelB.bert/encoder/layer_3/attention/self/value/biasB0bert/encoder/layer_3/attention/self/value/kernelB,bert/encoder/layer_3/intermediate/dense/biasB.bert/encoder/layer_3/intermediate/dense/kernelB*bert/encoder/layer_3/output/LayerNorm/betaB+bert/encoder/layer_3/output/LayerNorm/gammaB&bert/encoder/layer_3/output/dense/biasB(bert/encoder/layer_3/output/dense/kernelB4bert/encoder/layer_4/attention/output/LayerNorm/betaB5bert/encoder/layer_4/attention/output/LayerNorm/gammaB0bert/encoder/layer_4/attention/output/dense/biasB2bert/encoder/layer_4/attention/output/dense/kernelB,bert/encoder/layer_4/attention/self/key/biasB.bert/encoder/layer_4/attention/self/key/kernelB.bert/encoder/layer_4/attention/self/query/biasB0bert/encoder/layer_4/attention/self/query/kernelB.bert/encoder/layer_4/attention/self/value/biasB0bert/encoder/layer_4/attention/self/value/kernelB,bert/encoder/layer_4/intermediate/dense/biasB.bert/encoder/layer_4/intermediate/dense/kernelB*bert/encoder/layer_4/output/LayerNorm/betaB+bert/encoder/layer_4/output/LayerNorm/gammaB&bert/encoder/layer_4/output/dense/biasB(bert/encoder/layer_4/output/dense/kernelB4bert/encoder/layer_5/attention/output/LayerNorm/betaB5bert/encoder/layer_5/attention/output/LayerNorm/gammaB0bert/encoder/layer_5/attention/output/dense/biasB2bert/encoder/layer_5/attention/output/dense/kernelB,bert/encoder/layer_5/attention/self/key/biasB.bert/encoder/layer_5/attention/self/key/kernelB.bert/encoder/layer_5/attention/self/query/biasB0bert/encoder/layer_5/attention/self/query/kernelB.bert/encoder/layer_5/attention/self/value/biasB0bert/encoder/layer_5/attention/self/value/kernelB,bert/encoder/layer_5/intermediate/dense/biasB.bert/encoder/layer_5/intermediate/dense/kernelB*bert/encoder/layer_5/output/LayerNorm/betaB+bert/encoder/layer_5/output/LayerNorm/gammaB&bert/encoder/layer_5/output/dense/biasB(bert/encoder/layer_5/output/dense/kernelB4bert/encoder/layer_6/attention/output/LayerNorm/betaB5bert/encoder/layer_6/attention/output/LayerNorm/gammaB0bert/encoder/layer_6/attention/output/dense/biasB2bert/encoder/layer_6/attention/output/dense/kernelB,bert/encoder/layer_6/attention/self/key/biasB.bert/encoder/layer_6/attention/self/key/kernelB.bert/encoder/layer_6/attention/self/query/biasB0bert/encoder/layer_6/attention/self/query/kernelB.bert/encoder/layer_6/attention/self/value/biasB0bert/encoder/layer_6/attention/self/value/kernelB,bert/encoder/layer_6/intermediate/dense/biasB.bert/encoder/layer_6/intermediate/dense/kernelB*bert/encoder/layer_6/output/LayerNorm/betaB+bert/encoder/layer_6/output/LayerNorm/gammaB&bert/encoder/layer_6/output/dense/biasB(bert/encoder/layer_6/output/dense/kernelB4bert/encoder/layer_7/attention/output/LayerNorm/betaB5bert/encoder/layer_7/attention/output/LayerNorm/gammaB0bert/encoder/layer_7/attention/output/dense/biasB2bert/encoder/layer_7/attention/output/dense/kernelB,bert/encoder/layer_7/attention/self/key/biasB.bert/encoder/layer_7/attention/self/key/kernelB.bert/encoder/layer_7/attention/self/query/biasB0bert/encoder/layer_7/attention/self/query/kernelB.bert/encoder/layer_7/attention/self/value/biasB0bert/encoder/layer_7/attention/self/value/kernelB,bert/encoder/layer_7/intermediate/dense/biasB.bert/encoder/layer_7/intermediate/dense/kernelB*bert/encoder/layer_7/output/LayerNorm/betaB+bert/encoder/layer_7/output/LayerNorm/gammaB&bert/encoder/layer_7/output/dense/biasB(bert/encoder/layer_7/output/dense/kernelB4bert/encoder/layer_8/attention/output/LayerNorm/betaB5bert/encoder/layer_8/attention/output/LayerNorm/gammaB0bert/encoder/layer_8/attention/output/dense/biasB2bert/encoder/layer_8/attention/output/dense/kernelB,bert/encoder/layer_8/attention/self/key/biasB.bert/encoder/layer_8/attention/self/key/kernelB.bert/encoder/layer_8/attention/self/query/biasB0bert/encoder/layer_8/attention/self/query/kernelB.bert/encoder/layer_8/attention/self/value/biasB0bert/encoder/layer_8/attention/self/value/kernelB,bert/encoder/layer_8/intermediate/dense/biasB.bert/encoder/layer_8/intermediate/dense/kernelB*bert/encoder/layer_8/output/LayerNorm/betaB+bert/encoder/layer_8/output/LayerNorm/gammaB&bert/encoder/layer_8/output/dense/biasB(bert/encoder/layer_8/output/dense/kernelB4bert/encoder/layer_9/attention/output/LayerNorm/betaB5bert/encoder/layer_9/attention/output/LayerNorm/gammaB0bert/encoder/layer_9/attention/output/dense/biasB2bert/encoder/layer_9/attention/output/dense/kernelB,bert/encoder/layer_9/attention/self/key/biasB.bert/encoder/layer_9/attention/self/key/kernelB.bert/encoder/layer_9/attention/self/query/biasB0bert/encoder/layer_9/attention/self/query/kernelB.bert/encoder/layer_9/attention/self/value/biasB0bert/encoder/layer_9/attention/self/value/kernelB,bert/encoder/layer_9/intermediate/dense/biasB.bert/encoder/layer_9/intermediate/dense/kernelB*bert/encoder/layer_9/output/LayerNorm/betaB+bert/encoder/layer_9/output/LayerNorm/gammaB&bert/encoder/layer_9/output/dense/biasB(bert/encoder/layer_9/output/dense/kernelBbert/pooler/dense/biasBbert/pooler/dense/kernelB
dense/biasBdense/kernelBglobal_step

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Ę*
dtype0*Ş
value BĘB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
§l
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices2bert/embeddings/LayerNorm/beta/Read/ReadVariableOp3bert/embeddings/LayerNorm/gamma/Read/ReadVariableOp7bert/embeddings/position_embeddings/Read/ReadVariableOp9bert/embeddings/token_type_embeddings/Read/ReadVariableOp3bert/embeddings/word_embeddings/Read/ReadVariableOpHbert/encoder/layer_0/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_0/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_0/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_0/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_0/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_0/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_0/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_0/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_0/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_0/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_0/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_0/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_0/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_0/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_0/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_0/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_1/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_1/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_1/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_1/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_1/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_1/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_1/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_1/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_1/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_1/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_1/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_1/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_1/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_1/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_1/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_1/output/dense/kernel/Read/ReadVariableOpIbert/encoder/layer_10/attention/output/LayerNorm/beta/Read/ReadVariableOpJbert/encoder/layer_10/attention/output/LayerNorm/gamma/Read/ReadVariableOpEbert/encoder/layer_10/attention/output/dense/bias/Read/ReadVariableOpGbert/encoder/layer_10/attention/output/dense/kernel/Read/ReadVariableOpAbert/encoder/layer_10/attention/self/key/bias/Read/ReadVariableOpCbert/encoder/layer_10/attention/self/key/kernel/Read/ReadVariableOpCbert/encoder/layer_10/attention/self/query/bias/Read/ReadVariableOpEbert/encoder/layer_10/attention/self/query/kernel/Read/ReadVariableOpCbert/encoder/layer_10/attention/self/value/bias/Read/ReadVariableOpEbert/encoder/layer_10/attention/self/value/kernel/Read/ReadVariableOpAbert/encoder/layer_10/intermediate/dense/bias/Read/ReadVariableOpCbert/encoder/layer_10/intermediate/dense/kernel/Read/ReadVariableOp?bert/encoder/layer_10/output/LayerNorm/beta/Read/ReadVariableOp@bert/encoder/layer_10/output/LayerNorm/gamma/Read/ReadVariableOp;bert/encoder/layer_10/output/dense/bias/Read/ReadVariableOp=bert/encoder/layer_10/output/dense/kernel/Read/ReadVariableOpIbert/encoder/layer_11/attention/output/LayerNorm/beta/Read/ReadVariableOpJbert/encoder/layer_11/attention/output/LayerNorm/gamma/Read/ReadVariableOpEbert/encoder/layer_11/attention/output/dense/bias/Read/ReadVariableOpGbert/encoder/layer_11/attention/output/dense/kernel/Read/ReadVariableOpAbert/encoder/layer_11/attention/self/key/bias/Read/ReadVariableOpCbert/encoder/layer_11/attention/self/key/kernel/Read/ReadVariableOpCbert/encoder/layer_11/attention/self/query/bias/Read/ReadVariableOpEbert/encoder/layer_11/attention/self/query/kernel/Read/ReadVariableOpCbert/encoder/layer_11/attention/self/value/bias/Read/ReadVariableOpEbert/encoder/layer_11/attention/self/value/kernel/Read/ReadVariableOpAbert/encoder/layer_11/intermediate/dense/bias/Read/ReadVariableOpCbert/encoder/layer_11/intermediate/dense/kernel/Read/ReadVariableOp?bert/encoder/layer_11/output/LayerNorm/beta/Read/ReadVariableOp@bert/encoder/layer_11/output/LayerNorm/gamma/Read/ReadVariableOp;bert/encoder/layer_11/output/dense/bias/Read/ReadVariableOp=bert/encoder/layer_11/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_2/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_2/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_2/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_2/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_2/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_2/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_2/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_2/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_2/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_2/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_2/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_2/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_2/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_2/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_2/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_2/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_3/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_3/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_3/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_3/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_3/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_3/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_3/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_3/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_3/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_3/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_3/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_3/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_3/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_3/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_3/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_3/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_4/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_4/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_4/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_4/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_4/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_4/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_4/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_4/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_4/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_4/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_4/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_4/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_4/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_4/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_4/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_4/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_5/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_5/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_5/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_5/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_5/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_5/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_5/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_5/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_5/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_5/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_5/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_5/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_5/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_5/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_5/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_5/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_6/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_6/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_6/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_6/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_6/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_6/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_6/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_6/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_6/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_6/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_6/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_6/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_6/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_6/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_6/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_6/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_7/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_7/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_7/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_7/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_7/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_7/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_7/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_7/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_7/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_7/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_7/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_7/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_7/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_7/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_7/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_7/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_8/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_8/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_8/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_8/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_8/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_8/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_8/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_8/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_8/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_8/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_8/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_8/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_8/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_8/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_8/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_8/output/dense/kernel/Read/ReadVariableOpHbert/encoder/layer_9/attention/output/LayerNorm/beta/Read/ReadVariableOpIbert/encoder/layer_9/attention/output/LayerNorm/gamma/Read/ReadVariableOpDbert/encoder/layer_9/attention/output/dense/bias/Read/ReadVariableOpFbert/encoder/layer_9/attention/output/dense/kernel/Read/ReadVariableOp@bert/encoder/layer_9/attention/self/key/bias/Read/ReadVariableOpBbert/encoder/layer_9/attention/self/key/kernel/Read/ReadVariableOpBbert/encoder/layer_9/attention/self/query/bias/Read/ReadVariableOpDbert/encoder/layer_9/attention/self/query/kernel/Read/ReadVariableOpBbert/encoder/layer_9/attention/self/value/bias/Read/ReadVariableOpDbert/encoder/layer_9/attention/self/value/kernel/Read/ReadVariableOp@bert/encoder/layer_9/intermediate/dense/bias/Read/ReadVariableOpBbert/encoder/layer_9/intermediate/dense/kernel/Read/ReadVariableOp>bert/encoder/layer_9/output/LayerNorm/beta/Read/ReadVariableOp?bert/encoder/layer_9/output/LayerNorm/gamma/Read/ReadVariableOp:bert/encoder/layer_9/output/dense/bias/Read/ReadVariableOp<bert/encoder/layer_9/output/dense/kernel/Read/ReadVariableOp*bert/pooler/dense/bias/Read/ReadVariableOp,bert/pooler/dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp"/device:CPU:0*Ű
dtypesĐ
Í2Ę	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
K
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:Ę*
dtype0*ĽJ
valueJBJĘBbert/embeddings/LayerNorm/betaBbert/embeddings/LayerNorm/gammaB#bert/embeddings/position_embeddingsB%bert/embeddings/token_type_embeddingsBbert/embeddings/word_embeddingsB4bert/encoder/layer_0/attention/output/LayerNorm/betaB5bert/encoder/layer_0/attention/output/LayerNorm/gammaB0bert/encoder/layer_0/attention/output/dense/biasB2bert/encoder/layer_0/attention/output/dense/kernelB,bert/encoder/layer_0/attention/self/key/biasB.bert/encoder/layer_0/attention/self/key/kernelB.bert/encoder/layer_0/attention/self/query/biasB0bert/encoder/layer_0/attention/self/query/kernelB.bert/encoder/layer_0/attention/self/value/biasB0bert/encoder/layer_0/attention/self/value/kernelB,bert/encoder/layer_0/intermediate/dense/biasB.bert/encoder/layer_0/intermediate/dense/kernelB*bert/encoder/layer_0/output/LayerNorm/betaB+bert/encoder/layer_0/output/LayerNorm/gammaB&bert/encoder/layer_0/output/dense/biasB(bert/encoder/layer_0/output/dense/kernelB4bert/encoder/layer_1/attention/output/LayerNorm/betaB5bert/encoder/layer_1/attention/output/LayerNorm/gammaB0bert/encoder/layer_1/attention/output/dense/biasB2bert/encoder/layer_1/attention/output/dense/kernelB,bert/encoder/layer_1/attention/self/key/biasB.bert/encoder/layer_1/attention/self/key/kernelB.bert/encoder/layer_1/attention/self/query/biasB0bert/encoder/layer_1/attention/self/query/kernelB.bert/encoder/layer_1/attention/self/value/biasB0bert/encoder/layer_1/attention/self/value/kernelB,bert/encoder/layer_1/intermediate/dense/biasB.bert/encoder/layer_1/intermediate/dense/kernelB*bert/encoder/layer_1/output/LayerNorm/betaB+bert/encoder/layer_1/output/LayerNorm/gammaB&bert/encoder/layer_1/output/dense/biasB(bert/encoder/layer_1/output/dense/kernelB5bert/encoder/layer_10/attention/output/LayerNorm/betaB6bert/encoder/layer_10/attention/output/LayerNorm/gammaB1bert/encoder/layer_10/attention/output/dense/biasB3bert/encoder/layer_10/attention/output/dense/kernelB-bert/encoder/layer_10/attention/self/key/biasB/bert/encoder/layer_10/attention/self/key/kernelB/bert/encoder/layer_10/attention/self/query/biasB1bert/encoder/layer_10/attention/self/query/kernelB/bert/encoder/layer_10/attention/self/value/biasB1bert/encoder/layer_10/attention/self/value/kernelB-bert/encoder/layer_10/intermediate/dense/biasB/bert/encoder/layer_10/intermediate/dense/kernelB+bert/encoder/layer_10/output/LayerNorm/betaB,bert/encoder/layer_10/output/LayerNorm/gammaB'bert/encoder/layer_10/output/dense/biasB)bert/encoder/layer_10/output/dense/kernelB5bert/encoder/layer_11/attention/output/LayerNorm/betaB6bert/encoder/layer_11/attention/output/LayerNorm/gammaB1bert/encoder/layer_11/attention/output/dense/biasB3bert/encoder/layer_11/attention/output/dense/kernelB-bert/encoder/layer_11/attention/self/key/biasB/bert/encoder/layer_11/attention/self/key/kernelB/bert/encoder/layer_11/attention/self/query/biasB1bert/encoder/layer_11/attention/self/query/kernelB/bert/encoder/layer_11/attention/self/value/biasB1bert/encoder/layer_11/attention/self/value/kernelB-bert/encoder/layer_11/intermediate/dense/biasB/bert/encoder/layer_11/intermediate/dense/kernelB+bert/encoder/layer_11/output/LayerNorm/betaB,bert/encoder/layer_11/output/LayerNorm/gammaB'bert/encoder/layer_11/output/dense/biasB)bert/encoder/layer_11/output/dense/kernelB4bert/encoder/layer_2/attention/output/LayerNorm/betaB5bert/encoder/layer_2/attention/output/LayerNorm/gammaB0bert/encoder/layer_2/attention/output/dense/biasB2bert/encoder/layer_2/attention/output/dense/kernelB,bert/encoder/layer_2/attention/self/key/biasB.bert/encoder/layer_2/attention/self/key/kernelB.bert/encoder/layer_2/attention/self/query/biasB0bert/encoder/layer_2/attention/self/query/kernelB.bert/encoder/layer_2/attention/self/value/biasB0bert/encoder/layer_2/attention/self/value/kernelB,bert/encoder/layer_2/intermediate/dense/biasB.bert/encoder/layer_2/intermediate/dense/kernelB*bert/encoder/layer_2/output/LayerNorm/betaB+bert/encoder/layer_2/output/LayerNorm/gammaB&bert/encoder/layer_2/output/dense/biasB(bert/encoder/layer_2/output/dense/kernelB4bert/encoder/layer_3/attention/output/LayerNorm/betaB5bert/encoder/layer_3/attention/output/LayerNorm/gammaB0bert/encoder/layer_3/attention/output/dense/biasB2bert/encoder/layer_3/attention/output/dense/kernelB,bert/encoder/layer_3/attention/self/key/biasB.bert/encoder/layer_3/attention/self/key/kernelB.bert/encoder/layer_3/attention/self/query/biasB0bert/encoder/layer_3/attention/self/query/kernelB.bert/encoder/layer_3/attention/self/value/biasB0bert/encoder/layer_3/attention/self/value/kernelB,bert/encoder/layer_3/intermediate/dense/biasB.bert/encoder/layer_3/intermediate/dense/kernelB*bert/encoder/layer_3/output/LayerNorm/betaB+bert/encoder/layer_3/output/LayerNorm/gammaB&bert/encoder/layer_3/output/dense/biasB(bert/encoder/layer_3/output/dense/kernelB4bert/encoder/layer_4/attention/output/LayerNorm/betaB5bert/encoder/layer_4/attention/output/LayerNorm/gammaB0bert/encoder/layer_4/attention/output/dense/biasB2bert/encoder/layer_4/attention/output/dense/kernelB,bert/encoder/layer_4/attention/self/key/biasB.bert/encoder/layer_4/attention/self/key/kernelB.bert/encoder/layer_4/attention/self/query/biasB0bert/encoder/layer_4/attention/self/query/kernelB.bert/encoder/layer_4/attention/self/value/biasB0bert/encoder/layer_4/attention/self/value/kernelB,bert/encoder/layer_4/intermediate/dense/biasB.bert/encoder/layer_4/intermediate/dense/kernelB*bert/encoder/layer_4/output/LayerNorm/betaB+bert/encoder/layer_4/output/LayerNorm/gammaB&bert/encoder/layer_4/output/dense/biasB(bert/encoder/layer_4/output/dense/kernelB4bert/encoder/layer_5/attention/output/LayerNorm/betaB5bert/encoder/layer_5/attention/output/LayerNorm/gammaB0bert/encoder/layer_5/attention/output/dense/biasB2bert/encoder/layer_5/attention/output/dense/kernelB,bert/encoder/layer_5/attention/self/key/biasB.bert/encoder/layer_5/attention/self/key/kernelB.bert/encoder/layer_5/attention/self/query/biasB0bert/encoder/layer_5/attention/self/query/kernelB.bert/encoder/layer_5/attention/self/value/biasB0bert/encoder/layer_5/attention/self/value/kernelB,bert/encoder/layer_5/intermediate/dense/biasB.bert/encoder/layer_5/intermediate/dense/kernelB*bert/encoder/layer_5/output/LayerNorm/betaB+bert/encoder/layer_5/output/LayerNorm/gammaB&bert/encoder/layer_5/output/dense/biasB(bert/encoder/layer_5/output/dense/kernelB4bert/encoder/layer_6/attention/output/LayerNorm/betaB5bert/encoder/layer_6/attention/output/LayerNorm/gammaB0bert/encoder/layer_6/attention/output/dense/biasB2bert/encoder/layer_6/attention/output/dense/kernelB,bert/encoder/layer_6/attention/self/key/biasB.bert/encoder/layer_6/attention/self/key/kernelB.bert/encoder/layer_6/attention/self/query/biasB0bert/encoder/layer_6/attention/self/query/kernelB.bert/encoder/layer_6/attention/self/value/biasB0bert/encoder/layer_6/attention/self/value/kernelB,bert/encoder/layer_6/intermediate/dense/biasB.bert/encoder/layer_6/intermediate/dense/kernelB*bert/encoder/layer_6/output/LayerNorm/betaB+bert/encoder/layer_6/output/LayerNorm/gammaB&bert/encoder/layer_6/output/dense/biasB(bert/encoder/layer_6/output/dense/kernelB4bert/encoder/layer_7/attention/output/LayerNorm/betaB5bert/encoder/layer_7/attention/output/LayerNorm/gammaB0bert/encoder/layer_7/attention/output/dense/biasB2bert/encoder/layer_7/attention/output/dense/kernelB,bert/encoder/layer_7/attention/self/key/biasB.bert/encoder/layer_7/attention/self/key/kernelB.bert/encoder/layer_7/attention/self/query/biasB0bert/encoder/layer_7/attention/self/query/kernelB.bert/encoder/layer_7/attention/self/value/biasB0bert/encoder/layer_7/attention/self/value/kernelB,bert/encoder/layer_7/intermediate/dense/biasB.bert/encoder/layer_7/intermediate/dense/kernelB*bert/encoder/layer_7/output/LayerNorm/betaB+bert/encoder/layer_7/output/LayerNorm/gammaB&bert/encoder/layer_7/output/dense/biasB(bert/encoder/layer_7/output/dense/kernelB4bert/encoder/layer_8/attention/output/LayerNorm/betaB5bert/encoder/layer_8/attention/output/LayerNorm/gammaB0bert/encoder/layer_8/attention/output/dense/biasB2bert/encoder/layer_8/attention/output/dense/kernelB,bert/encoder/layer_8/attention/self/key/biasB.bert/encoder/layer_8/attention/self/key/kernelB.bert/encoder/layer_8/attention/self/query/biasB0bert/encoder/layer_8/attention/self/query/kernelB.bert/encoder/layer_8/attention/self/value/biasB0bert/encoder/layer_8/attention/self/value/kernelB,bert/encoder/layer_8/intermediate/dense/biasB.bert/encoder/layer_8/intermediate/dense/kernelB*bert/encoder/layer_8/output/LayerNorm/betaB+bert/encoder/layer_8/output/LayerNorm/gammaB&bert/encoder/layer_8/output/dense/biasB(bert/encoder/layer_8/output/dense/kernelB4bert/encoder/layer_9/attention/output/LayerNorm/betaB5bert/encoder/layer_9/attention/output/LayerNorm/gammaB0bert/encoder/layer_9/attention/output/dense/biasB2bert/encoder/layer_9/attention/output/dense/kernelB,bert/encoder/layer_9/attention/self/key/biasB.bert/encoder/layer_9/attention/self/key/kernelB.bert/encoder/layer_9/attention/self/query/biasB0bert/encoder/layer_9/attention/self/query/kernelB.bert/encoder/layer_9/attention/self/value/biasB0bert/encoder/layer_9/attention/self/value/kernelB,bert/encoder/layer_9/intermediate/dense/biasB.bert/encoder/layer_9/intermediate/dense/kernelB*bert/encoder/layer_9/output/LayerNorm/betaB+bert/encoder/layer_9/output/LayerNorm/gammaB&bert/encoder/layer_9/output/dense/biasB(bert/encoder/layer_9/output/dense/kernelBbert/pooler/dense/biasBbert/pooler/dense/kernelB
dense/biasBdense/kernelBglobal_step

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:Ę*
dtype0*Ş
value BĘB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*ž
_output_shapesŤ
¨::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Ű
dtypesĐ
Í2Ę	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
g
save/AssignVariableOpAssignVariableOpbert/embeddings/LayerNorm/betasave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
j
save/AssignVariableOp_1AssignVariableOpbert/embeddings/LayerNorm/gammasave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
n
save/AssignVariableOp_2AssignVariableOp#bert/embeddings/position_embeddingssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
p
save/AssignVariableOp_3AssignVariableOp%bert/embeddings/token_type_embeddingssave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
j
save/AssignVariableOp_4AssignVariableOpbert/embeddings/word_embeddingssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:

save/AssignVariableOp_5AssignVariableOp4bert/encoder/layer_0/attention/output/LayerNorm/betasave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:

save/AssignVariableOp_6AssignVariableOp5bert/encoder/layer_0/attention/output/LayerNorm/gammasave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
{
save/AssignVariableOp_7AssignVariableOp0bert/encoder/layer_0/attention/output/dense/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
}
save/AssignVariableOp_8AssignVariableOp2bert/encoder/layer_0/attention/output/dense/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
x
save/AssignVariableOp_9AssignVariableOp,bert/encoder/layer_0/attention/self/key/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
{
save/AssignVariableOp_10AssignVariableOp.bert/encoder/layer_0/attention/self/key/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
{
save/AssignVariableOp_11AssignVariableOp.bert/encoder/layer_0/attention/self/query/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
}
save/AssignVariableOp_12AssignVariableOp0bert/encoder/layer_0/attention/self/query/kernelsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
{
save/AssignVariableOp_13AssignVariableOp.bert/encoder/layer_0/attention/self/value/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
}
save/AssignVariableOp_14AssignVariableOp0bert/encoder/layer_0/attention/self/value/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
y
save/AssignVariableOp_15AssignVariableOp,bert/encoder/layer_0/intermediate/dense/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
{
save/AssignVariableOp_16AssignVariableOp.bert/encoder/layer_0/intermediate/dense/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
w
save/AssignVariableOp_17AssignVariableOp*bert/encoder/layer_0/output/LayerNorm/betasave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
x
save/AssignVariableOp_18AssignVariableOp+bert/encoder/layer_0/output/LayerNorm/gammasave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
s
save/AssignVariableOp_19AssignVariableOp&bert/encoder/layer_0/output/dense/biassave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
u
save/AssignVariableOp_20AssignVariableOp(bert/encoder/layer_0/output/dense/kernelsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:

save/AssignVariableOp_21AssignVariableOp4bert/encoder/layer_1/attention/output/LayerNorm/betasave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:

save/AssignVariableOp_22AssignVariableOp5bert/encoder/layer_1/attention/output/LayerNorm/gammasave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
}
save/AssignVariableOp_23AssignVariableOp0bert/encoder/layer_1/attention/output/dense/biassave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:

save/AssignVariableOp_24AssignVariableOp2bert/encoder/layer_1/attention/output/dense/kernelsave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
y
save/AssignVariableOp_25AssignVariableOp,bert/encoder/layer_1/attention/self/key/biassave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
{
save/AssignVariableOp_26AssignVariableOp.bert/encoder/layer_1/attention/self/key/kernelsave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
{
save/AssignVariableOp_27AssignVariableOp.bert/encoder/layer_1/attention/self/query/biassave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
}
save/AssignVariableOp_28AssignVariableOp0bert/encoder/layer_1/attention/self/query/kernelsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
{
save/AssignVariableOp_29AssignVariableOp.bert/encoder/layer_1/attention/self/value/biassave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
}
save/AssignVariableOp_30AssignVariableOp0bert/encoder/layer_1/attention/self/value/kernelsave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
y
save/AssignVariableOp_31AssignVariableOp,bert/encoder/layer_1/intermediate/dense/biassave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
{
save/AssignVariableOp_32AssignVariableOp.bert/encoder/layer_1/intermediate/dense/kernelsave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
w
save/AssignVariableOp_33AssignVariableOp*bert/encoder/layer_1/output/LayerNorm/betasave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
x
save/AssignVariableOp_34AssignVariableOp+bert/encoder/layer_1/output/LayerNorm/gammasave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
s
save/AssignVariableOp_35AssignVariableOp&bert/encoder/layer_1/output/dense/biassave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
u
save/AssignVariableOp_36AssignVariableOp(bert/encoder/layer_1/output/dense/kernelsave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:

save/AssignVariableOp_37AssignVariableOp5bert/encoder/layer_10/attention/output/LayerNorm/betasave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:

save/AssignVariableOp_38AssignVariableOp6bert/encoder/layer_10/attention/output/LayerNorm/gammasave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
~
save/AssignVariableOp_39AssignVariableOp1bert/encoder/layer_10/attention/output/dense/biassave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:

save/AssignVariableOp_40AssignVariableOp3bert/encoder/layer_10/attention/output/dense/kernelsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
z
save/AssignVariableOp_41AssignVariableOp-bert/encoder/layer_10/attention/self/key/biassave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
|
save/AssignVariableOp_42AssignVariableOp/bert/encoder/layer_10/attention/self/key/kernelsave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
|
save/AssignVariableOp_43AssignVariableOp/bert/encoder/layer_10/attention/self/query/biassave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
~
save/AssignVariableOp_44AssignVariableOp1bert/encoder/layer_10/attention/self/query/kernelsave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
|
save/AssignVariableOp_45AssignVariableOp/bert/encoder/layer_10/attention/self/value/biassave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
~
save/AssignVariableOp_46AssignVariableOp1bert/encoder/layer_10/attention/self/value/kernelsave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
z
save/AssignVariableOp_47AssignVariableOp-bert/encoder/layer_10/intermediate/dense/biassave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
|
save/AssignVariableOp_48AssignVariableOp/bert/encoder/layer_10/intermediate/dense/kernelsave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:
x
save/AssignVariableOp_49AssignVariableOp+bert/encoder/layer_10/output/LayerNorm/betasave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:
y
save/AssignVariableOp_50AssignVariableOp,bert/encoder/layer_10/output/LayerNorm/gammasave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
t
save/AssignVariableOp_51AssignVariableOp'bert/encoder/layer_10/output/dense/biassave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:
v
save/AssignVariableOp_52AssignVariableOp)bert/encoder/layer_10/output/dense/kernelsave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:

save/AssignVariableOp_53AssignVariableOp5bert/encoder/layer_11/attention/output/LayerNorm/betasave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
T0*
_output_shapes
:

save/AssignVariableOp_54AssignVariableOp6bert/encoder/layer_11/attention/output/LayerNorm/gammasave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:
~
save/AssignVariableOp_55AssignVariableOp1bert/encoder/layer_11/attention/output/dense/biassave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:

save/AssignVariableOp_56AssignVariableOp3bert/encoder/layer_11/attention/output/dense/kernelsave/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
z
save/AssignVariableOp_57AssignVariableOp-bert/encoder/layer_11/attention/self/key/biassave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:
|
save/AssignVariableOp_58AssignVariableOp/bert/encoder/layer_11/attention/self/key/kernelsave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
T0*
_output_shapes
:
|
save/AssignVariableOp_59AssignVariableOp/bert/encoder/layer_11/attention/self/query/biassave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:
~
save/AssignVariableOp_60AssignVariableOp1bert/encoder/layer_11/attention/self/query/kernelsave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
T0*
_output_shapes
:
|
save/AssignVariableOp_61AssignVariableOp/bert/encoder/layer_11/attention/self/value/biassave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
~
save/AssignVariableOp_62AssignVariableOp1bert/encoder/layer_11/attention/self/value/kernelsave/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
z
save/AssignVariableOp_63AssignVariableOp-bert/encoder/layer_11/intermediate/dense/biassave/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
|
save/AssignVariableOp_64AssignVariableOp/bert/encoder/layer_11/intermediate/dense/kernelsave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
x
save/AssignVariableOp_65AssignVariableOp+bert/encoder/layer_11/output/LayerNorm/betasave/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
y
save/AssignVariableOp_66AssignVariableOp,bert/encoder/layer_11/output/LayerNorm/gammasave/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
t
save/AssignVariableOp_67AssignVariableOp'bert/encoder/layer_11/output/dense/biassave/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
v
save/AssignVariableOp_68AssignVariableOp)bert/encoder/layer_11/output/dense/kernelsave/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:

save/AssignVariableOp_69AssignVariableOp4bert/encoder/layer_2/attention/output/LayerNorm/betasave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:

save/AssignVariableOp_70AssignVariableOp5bert/encoder/layer_2/attention/output/LayerNorm/gammasave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
}
save/AssignVariableOp_71AssignVariableOp0bert/encoder/layer_2/attention/output/dense/biassave/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:

save/AssignVariableOp_72AssignVariableOp2bert/encoder/layer_2/attention/output/dense/kernelsave/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
y
save/AssignVariableOp_73AssignVariableOp,bert/encoder/layer_2/attention/self/key/biassave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:
{
save/AssignVariableOp_74AssignVariableOp.bert/encoder/layer_2/attention/self/key/kernelsave/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
{
save/AssignVariableOp_75AssignVariableOp.bert/encoder/layer_2/attention/self/query/biassave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
}
save/AssignVariableOp_76AssignVariableOp0bert/encoder/layer_2/attention/self/query/kernelsave/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:77*
T0*
_output_shapes
:
{
save/AssignVariableOp_77AssignVariableOp.bert/encoder/layer_2/attention/self/value/biassave/Identity_78*
dtype0
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:
}
save/AssignVariableOp_78AssignVariableOp0bert/encoder/layer_2/attention/self/value/kernelsave/Identity_79*
dtype0
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
y
save/AssignVariableOp_79AssignVariableOp,bert/encoder/layer_2/intermediate/dense/biassave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
T0*
_output_shapes
:
{
save/AssignVariableOp_80AssignVariableOp.bert/encoder/layer_2/intermediate/dense/kernelsave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
T0*
_output_shapes
:
w
save/AssignVariableOp_81AssignVariableOp*bert/encoder/layer_2/output/LayerNorm/betasave/Identity_82*
dtype0
R
save/Identity_83Identitysave/RestoreV2:82*
T0*
_output_shapes
:
x
save/AssignVariableOp_82AssignVariableOp+bert/encoder/layer_2/output/LayerNorm/gammasave/Identity_83*
dtype0
R
save/Identity_84Identitysave/RestoreV2:83*
T0*
_output_shapes
:
s
save/AssignVariableOp_83AssignVariableOp&bert/encoder/layer_2/output/dense/biassave/Identity_84*
dtype0
R
save/Identity_85Identitysave/RestoreV2:84*
T0*
_output_shapes
:
u
save/AssignVariableOp_84AssignVariableOp(bert/encoder/layer_2/output/dense/kernelsave/Identity_85*
dtype0
R
save/Identity_86Identitysave/RestoreV2:85*
T0*
_output_shapes
:

save/AssignVariableOp_85AssignVariableOp4bert/encoder/layer_3/attention/output/LayerNorm/betasave/Identity_86*
dtype0
R
save/Identity_87Identitysave/RestoreV2:86*
T0*
_output_shapes
:

save/AssignVariableOp_86AssignVariableOp5bert/encoder/layer_3/attention/output/LayerNorm/gammasave/Identity_87*
dtype0
R
save/Identity_88Identitysave/RestoreV2:87*
T0*
_output_shapes
:
}
save/AssignVariableOp_87AssignVariableOp0bert/encoder/layer_3/attention/output/dense/biassave/Identity_88*
dtype0
R
save/Identity_89Identitysave/RestoreV2:88*
T0*
_output_shapes
:

save/AssignVariableOp_88AssignVariableOp2bert/encoder/layer_3/attention/output/dense/kernelsave/Identity_89*
dtype0
R
save/Identity_90Identitysave/RestoreV2:89*
T0*
_output_shapes
:
y
save/AssignVariableOp_89AssignVariableOp,bert/encoder/layer_3/attention/self/key/biassave/Identity_90*
dtype0
R
save/Identity_91Identitysave/RestoreV2:90*
T0*
_output_shapes
:
{
save/AssignVariableOp_90AssignVariableOp.bert/encoder/layer_3/attention/self/key/kernelsave/Identity_91*
dtype0
R
save/Identity_92Identitysave/RestoreV2:91*
T0*
_output_shapes
:
{
save/AssignVariableOp_91AssignVariableOp.bert/encoder/layer_3/attention/self/query/biassave/Identity_92*
dtype0
R
save/Identity_93Identitysave/RestoreV2:92*
T0*
_output_shapes
:
}
save/AssignVariableOp_92AssignVariableOp0bert/encoder/layer_3/attention/self/query/kernelsave/Identity_93*
dtype0
R
save/Identity_94Identitysave/RestoreV2:93*
T0*
_output_shapes
:
{
save/AssignVariableOp_93AssignVariableOp.bert/encoder/layer_3/attention/self/value/biassave/Identity_94*
dtype0
R
save/Identity_95Identitysave/RestoreV2:94*
T0*
_output_shapes
:
}
save/AssignVariableOp_94AssignVariableOp0bert/encoder/layer_3/attention/self/value/kernelsave/Identity_95*
dtype0
R
save/Identity_96Identitysave/RestoreV2:95*
T0*
_output_shapes
:
y
save/AssignVariableOp_95AssignVariableOp,bert/encoder/layer_3/intermediate/dense/biassave/Identity_96*
dtype0
R
save/Identity_97Identitysave/RestoreV2:96*
T0*
_output_shapes
:
{
save/AssignVariableOp_96AssignVariableOp.bert/encoder/layer_3/intermediate/dense/kernelsave/Identity_97*
dtype0
R
save/Identity_98Identitysave/RestoreV2:97*
T0*
_output_shapes
:
w
save/AssignVariableOp_97AssignVariableOp*bert/encoder/layer_3/output/LayerNorm/betasave/Identity_98*
dtype0
R
save/Identity_99Identitysave/RestoreV2:98*
T0*
_output_shapes
:
x
save/AssignVariableOp_98AssignVariableOp+bert/encoder/layer_3/output/LayerNorm/gammasave/Identity_99*
dtype0
S
save/Identity_100Identitysave/RestoreV2:99*
T0*
_output_shapes
:
t
save/AssignVariableOp_99AssignVariableOp&bert/encoder/layer_3/output/dense/biassave/Identity_100*
dtype0
T
save/Identity_101Identitysave/RestoreV2:100*
T0*
_output_shapes
:
w
save/AssignVariableOp_100AssignVariableOp(bert/encoder/layer_3/output/dense/kernelsave/Identity_101*
dtype0
T
save/Identity_102Identitysave/RestoreV2:101*
T0*
_output_shapes
:

save/AssignVariableOp_101AssignVariableOp4bert/encoder/layer_4/attention/output/LayerNorm/betasave/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:102*
T0*
_output_shapes
:

save/AssignVariableOp_102AssignVariableOp5bert/encoder/layer_4/attention/output/LayerNorm/gammasave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:103*
T0*
_output_shapes
:

save/AssignVariableOp_103AssignVariableOp0bert/encoder/layer_4/attention/output/dense/biassave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:104*
T0*
_output_shapes
:

save/AssignVariableOp_104AssignVariableOp2bert/encoder/layer_4/attention/output/dense/kernelsave/Identity_105*
dtype0
T
save/Identity_106Identitysave/RestoreV2:105*
T0*
_output_shapes
:
{
save/AssignVariableOp_105AssignVariableOp,bert/encoder/layer_4/attention/self/key/biassave/Identity_106*
dtype0
T
save/Identity_107Identitysave/RestoreV2:106*
T0*
_output_shapes
:
}
save/AssignVariableOp_106AssignVariableOp.bert/encoder/layer_4/attention/self/key/kernelsave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:107*
T0*
_output_shapes
:
}
save/AssignVariableOp_107AssignVariableOp.bert/encoder/layer_4/attention/self/query/biassave/Identity_108*
dtype0
T
save/Identity_109Identitysave/RestoreV2:108*
T0*
_output_shapes
:

save/AssignVariableOp_108AssignVariableOp0bert/encoder/layer_4/attention/self/query/kernelsave/Identity_109*
dtype0
T
save/Identity_110Identitysave/RestoreV2:109*
T0*
_output_shapes
:
}
save/AssignVariableOp_109AssignVariableOp.bert/encoder/layer_4/attention/self/value/biassave/Identity_110*
dtype0
T
save/Identity_111Identitysave/RestoreV2:110*
T0*
_output_shapes
:

save/AssignVariableOp_110AssignVariableOp0bert/encoder/layer_4/attention/self/value/kernelsave/Identity_111*
dtype0
T
save/Identity_112Identitysave/RestoreV2:111*
T0*
_output_shapes
:
{
save/AssignVariableOp_111AssignVariableOp,bert/encoder/layer_4/intermediate/dense/biassave/Identity_112*
dtype0
T
save/Identity_113Identitysave/RestoreV2:112*
T0*
_output_shapes
:
}
save/AssignVariableOp_112AssignVariableOp.bert/encoder/layer_4/intermediate/dense/kernelsave/Identity_113*
dtype0
T
save/Identity_114Identitysave/RestoreV2:113*
T0*
_output_shapes
:
y
save/AssignVariableOp_113AssignVariableOp*bert/encoder/layer_4/output/LayerNorm/betasave/Identity_114*
dtype0
T
save/Identity_115Identitysave/RestoreV2:114*
T0*
_output_shapes
:
z
save/AssignVariableOp_114AssignVariableOp+bert/encoder/layer_4/output/LayerNorm/gammasave/Identity_115*
dtype0
T
save/Identity_116Identitysave/RestoreV2:115*
T0*
_output_shapes
:
u
save/AssignVariableOp_115AssignVariableOp&bert/encoder/layer_4/output/dense/biassave/Identity_116*
dtype0
T
save/Identity_117Identitysave/RestoreV2:116*
T0*
_output_shapes
:
w
save/AssignVariableOp_116AssignVariableOp(bert/encoder/layer_4/output/dense/kernelsave/Identity_117*
dtype0
T
save/Identity_118Identitysave/RestoreV2:117*
T0*
_output_shapes
:

save/AssignVariableOp_117AssignVariableOp4bert/encoder/layer_5/attention/output/LayerNorm/betasave/Identity_118*
dtype0
T
save/Identity_119Identitysave/RestoreV2:118*
T0*
_output_shapes
:

save/AssignVariableOp_118AssignVariableOp5bert/encoder/layer_5/attention/output/LayerNorm/gammasave/Identity_119*
dtype0
T
save/Identity_120Identitysave/RestoreV2:119*
T0*
_output_shapes
:

save/AssignVariableOp_119AssignVariableOp0bert/encoder/layer_5/attention/output/dense/biassave/Identity_120*
dtype0
T
save/Identity_121Identitysave/RestoreV2:120*
T0*
_output_shapes
:

save/AssignVariableOp_120AssignVariableOp2bert/encoder/layer_5/attention/output/dense/kernelsave/Identity_121*
dtype0
T
save/Identity_122Identitysave/RestoreV2:121*
T0*
_output_shapes
:
{
save/AssignVariableOp_121AssignVariableOp,bert/encoder/layer_5/attention/self/key/biassave/Identity_122*
dtype0
T
save/Identity_123Identitysave/RestoreV2:122*
T0*
_output_shapes
:
}
save/AssignVariableOp_122AssignVariableOp.bert/encoder/layer_5/attention/self/key/kernelsave/Identity_123*
dtype0
T
save/Identity_124Identitysave/RestoreV2:123*
T0*
_output_shapes
:
}
save/AssignVariableOp_123AssignVariableOp.bert/encoder/layer_5/attention/self/query/biassave/Identity_124*
dtype0
T
save/Identity_125Identitysave/RestoreV2:124*
T0*
_output_shapes
:

save/AssignVariableOp_124AssignVariableOp0bert/encoder/layer_5/attention/self/query/kernelsave/Identity_125*
dtype0
T
save/Identity_126Identitysave/RestoreV2:125*
T0*
_output_shapes
:
}
save/AssignVariableOp_125AssignVariableOp.bert/encoder/layer_5/attention/self/value/biassave/Identity_126*
dtype0
T
save/Identity_127Identitysave/RestoreV2:126*
T0*
_output_shapes
:

save/AssignVariableOp_126AssignVariableOp0bert/encoder/layer_5/attention/self/value/kernelsave/Identity_127*
dtype0
T
save/Identity_128Identitysave/RestoreV2:127*
T0*
_output_shapes
:
{
save/AssignVariableOp_127AssignVariableOp,bert/encoder/layer_5/intermediate/dense/biassave/Identity_128*
dtype0
T
save/Identity_129Identitysave/RestoreV2:128*
T0*
_output_shapes
:
}
save/AssignVariableOp_128AssignVariableOp.bert/encoder/layer_5/intermediate/dense/kernelsave/Identity_129*
dtype0
T
save/Identity_130Identitysave/RestoreV2:129*
T0*
_output_shapes
:
y
save/AssignVariableOp_129AssignVariableOp*bert/encoder/layer_5/output/LayerNorm/betasave/Identity_130*
dtype0
T
save/Identity_131Identitysave/RestoreV2:130*
T0*
_output_shapes
:
z
save/AssignVariableOp_130AssignVariableOp+bert/encoder/layer_5/output/LayerNorm/gammasave/Identity_131*
dtype0
T
save/Identity_132Identitysave/RestoreV2:131*
T0*
_output_shapes
:
u
save/AssignVariableOp_131AssignVariableOp&bert/encoder/layer_5/output/dense/biassave/Identity_132*
dtype0
T
save/Identity_133Identitysave/RestoreV2:132*
T0*
_output_shapes
:
w
save/AssignVariableOp_132AssignVariableOp(bert/encoder/layer_5/output/dense/kernelsave/Identity_133*
dtype0
T
save/Identity_134Identitysave/RestoreV2:133*
T0*
_output_shapes
:

save/AssignVariableOp_133AssignVariableOp4bert/encoder/layer_6/attention/output/LayerNorm/betasave/Identity_134*
dtype0
T
save/Identity_135Identitysave/RestoreV2:134*
T0*
_output_shapes
:

save/AssignVariableOp_134AssignVariableOp5bert/encoder/layer_6/attention/output/LayerNorm/gammasave/Identity_135*
dtype0
T
save/Identity_136Identitysave/RestoreV2:135*
T0*
_output_shapes
:

save/AssignVariableOp_135AssignVariableOp0bert/encoder/layer_6/attention/output/dense/biassave/Identity_136*
dtype0
T
save/Identity_137Identitysave/RestoreV2:136*
T0*
_output_shapes
:

save/AssignVariableOp_136AssignVariableOp2bert/encoder/layer_6/attention/output/dense/kernelsave/Identity_137*
dtype0
T
save/Identity_138Identitysave/RestoreV2:137*
T0*
_output_shapes
:
{
save/AssignVariableOp_137AssignVariableOp,bert/encoder/layer_6/attention/self/key/biassave/Identity_138*
dtype0
T
save/Identity_139Identitysave/RestoreV2:138*
T0*
_output_shapes
:
}
save/AssignVariableOp_138AssignVariableOp.bert/encoder/layer_6/attention/self/key/kernelsave/Identity_139*
dtype0
T
save/Identity_140Identitysave/RestoreV2:139*
T0*
_output_shapes
:
}
save/AssignVariableOp_139AssignVariableOp.bert/encoder/layer_6/attention/self/query/biassave/Identity_140*
dtype0
T
save/Identity_141Identitysave/RestoreV2:140*
T0*
_output_shapes
:

save/AssignVariableOp_140AssignVariableOp0bert/encoder/layer_6/attention/self/query/kernelsave/Identity_141*
dtype0
T
save/Identity_142Identitysave/RestoreV2:141*
T0*
_output_shapes
:
}
save/AssignVariableOp_141AssignVariableOp.bert/encoder/layer_6/attention/self/value/biassave/Identity_142*
dtype0
T
save/Identity_143Identitysave/RestoreV2:142*
T0*
_output_shapes
:

save/AssignVariableOp_142AssignVariableOp0bert/encoder/layer_6/attention/self/value/kernelsave/Identity_143*
dtype0
T
save/Identity_144Identitysave/RestoreV2:143*
T0*
_output_shapes
:
{
save/AssignVariableOp_143AssignVariableOp,bert/encoder/layer_6/intermediate/dense/biassave/Identity_144*
dtype0
T
save/Identity_145Identitysave/RestoreV2:144*
T0*
_output_shapes
:
}
save/AssignVariableOp_144AssignVariableOp.bert/encoder/layer_6/intermediate/dense/kernelsave/Identity_145*
dtype0
T
save/Identity_146Identitysave/RestoreV2:145*
T0*
_output_shapes
:
y
save/AssignVariableOp_145AssignVariableOp*bert/encoder/layer_6/output/LayerNorm/betasave/Identity_146*
dtype0
T
save/Identity_147Identitysave/RestoreV2:146*
T0*
_output_shapes
:
z
save/AssignVariableOp_146AssignVariableOp+bert/encoder/layer_6/output/LayerNorm/gammasave/Identity_147*
dtype0
T
save/Identity_148Identitysave/RestoreV2:147*
T0*
_output_shapes
:
u
save/AssignVariableOp_147AssignVariableOp&bert/encoder/layer_6/output/dense/biassave/Identity_148*
dtype0
T
save/Identity_149Identitysave/RestoreV2:148*
T0*
_output_shapes
:
w
save/AssignVariableOp_148AssignVariableOp(bert/encoder/layer_6/output/dense/kernelsave/Identity_149*
dtype0
T
save/Identity_150Identitysave/RestoreV2:149*
T0*
_output_shapes
:

save/AssignVariableOp_149AssignVariableOp4bert/encoder/layer_7/attention/output/LayerNorm/betasave/Identity_150*
dtype0
T
save/Identity_151Identitysave/RestoreV2:150*
T0*
_output_shapes
:

save/AssignVariableOp_150AssignVariableOp5bert/encoder/layer_7/attention/output/LayerNorm/gammasave/Identity_151*
dtype0
T
save/Identity_152Identitysave/RestoreV2:151*
T0*
_output_shapes
:

save/AssignVariableOp_151AssignVariableOp0bert/encoder/layer_7/attention/output/dense/biassave/Identity_152*
dtype0
T
save/Identity_153Identitysave/RestoreV2:152*
T0*
_output_shapes
:

save/AssignVariableOp_152AssignVariableOp2bert/encoder/layer_7/attention/output/dense/kernelsave/Identity_153*
dtype0
T
save/Identity_154Identitysave/RestoreV2:153*
T0*
_output_shapes
:
{
save/AssignVariableOp_153AssignVariableOp,bert/encoder/layer_7/attention/self/key/biassave/Identity_154*
dtype0
T
save/Identity_155Identitysave/RestoreV2:154*
T0*
_output_shapes
:
}
save/AssignVariableOp_154AssignVariableOp.bert/encoder/layer_7/attention/self/key/kernelsave/Identity_155*
dtype0
T
save/Identity_156Identitysave/RestoreV2:155*
T0*
_output_shapes
:
}
save/AssignVariableOp_155AssignVariableOp.bert/encoder/layer_7/attention/self/query/biassave/Identity_156*
dtype0
T
save/Identity_157Identitysave/RestoreV2:156*
T0*
_output_shapes
:

save/AssignVariableOp_156AssignVariableOp0bert/encoder/layer_7/attention/self/query/kernelsave/Identity_157*
dtype0
T
save/Identity_158Identitysave/RestoreV2:157*
T0*
_output_shapes
:
}
save/AssignVariableOp_157AssignVariableOp.bert/encoder/layer_7/attention/self/value/biassave/Identity_158*
dtype0
T
save/Identity_159Identitysave/RestoreV2:158*
T0*
_output_shapes
:

save/AssignVariableOp_158AssignVariableOp0bert/encoder/layer_7/attention/self/value/kernelsave/Identity_159*
dtype0
T
save/Identity_160Identitysave/RestoreV2:159*
T0*
_output_shapes
:
{
save/AssignVariableOp_159AssignVariableOp,bert/encoder/layer_7/intermediate/dense/biassave/Identity_160*
dtype0
T
save/Identity_161Identitysave/RestoreV2:160*
T0*
_output_shapes
:
}
save/AssignVariableOp_160AssignVariableOp.bert/encoder/layer_7/intermediate/dense/kernelsave/Identity_161*
dtype0
T
save/Identity_162Identitysave/RestoreV2:161*
T0*
_output_shapes
:
y
save/AssignVariableOp_161AssignVariableOp*bert/encoder/layer_7/output/LayerNorm/betasave/Identity_162*
dtype0
T
save/Identity_163Identitysave/RestoreV2:162*
T0*
_output_shapes
:
z
save/AssignVariableOp_162AssignVariableOp+bert/encoder/layer_7/output/LayerNorm/gammasave/Identity_163*
dtype0
T
save/Identity_164Identitysave/RestoreV2:163*
T0*
_output_shapes
:
u
save/AssignVariableOp_163AssignVariableOp&bert/encoder/layer_7/output/dense/biassave/Identity_164*
dtype0
T
save/Identity_165Identitysave/RestoreV2:164*
T0*
_output_shapes
:
w
save/AssignVariableOp_164AssignVariableOp(bert/encoder/layer_7/output/dense/kernelsave/Identity_165*
dtype0
T
save/Identity_166Identitysave/RestoreV2:165*
T0*
_output_shapes
:

save/AssignVariableOp_165AssignVariableOp4bert/encoder/layer_8/attention/output/LayerNorm/betasave/Identity_166*
dtype0
T
save/Identity_167Identitysave/RestoreV2:166*
T0*
_output_shapes
:

save/AssignVariableOp_166AssignVariableOp5bert/encoder/layer_8/attention/output/LayerNorm/gammasave/Identity_167*
dtype0
T
save/Identity_168Identitysave/RestoreV2:167*
T0*
_output_shapes
:

save/AssignVariableOp_167AssignVariableOp0bert/encoder/layer_8/attention/output/dense/biassave/Identity_168*
dtype0
T
save/Identity_169Identitysave/RestoreV2:168*
T0*
_output_shapes
:

save/AssignVariableOp_168AssignVariableOp2bert/encoder/layer_8/attention/output/dense/kernelsave/Identity_169*
dtype0
T
save/Identity_170Identitysave/RestoreV2:169*
T0*
_output_shapes
:
{
save/AssignVariableOp_169AssignVariableOp,bert/encoder/layer_8/attention/self/key/biassave/Identity_170*
dtype0
T
save/Identity_171Identitysave/RestoreV2:170*
T0*
_output_shapes
:
}
save/AssignVariableOp_170AssignVariableOp.bert/encoder/layer_8/attention/self/key/kernelsave/Identity_171*
dtype0
T
save/Identity_172Identitysave/RestoreV2:171*
T0*
_output_shapes
:
}
save/AssignVariableOp_171AssignVariableOp.bert/encoder/layer_8/attention/self/query/biassave/Identity_172*
dtype0
T
save/Identity_173Identitysave/RestoreV2:172*
T0*
_output_shapes
:

save/AssignVariableOp_172AssignVariableOp0bert/encoder/layer_8/attention/self/query/kernelsave/Identity_173*
dtype0
T
save/Identity_174Identitysave/RestoreV2:173*
T0*
_output_shapes
:
}
save/AssignVariableOp_173AssignVariableOp.bert/encoder/layer_8/attention/self/value/biassave/Identity_174*
dtype0
T
save/Identity_175Identitysave/RestoreV2:174*
T0*
_output_shapes
:

save/AssignVariableOp_174AssignVariableOp0bert/encoder/layer_8/attention/self/value/kernelsave/Identity_175*
dtype0
T
save/Identity_176Identitysave/RestoreV2:175*
T0*
_output_shapes
:
{
save/AssignVariableOp_175AssignVariableOp,bert/encoder/layer_8/intermediate/dense/biassave/Identity_176*
dtype0
T
save/Identity_177Identitysave/RestoreV2:176*
T0*
_output_shapes
:
}
save/AssignVariableOp_176AssignVariableOp.bert/encoder/layer_8/intermediate/dense/kernelsave/Identity_177*
dtype0
T
save/Identity_178Identitysave/RestoreV2:177*
T0*
_output_shapes
:
y
save/AssignVariableOp_177AssignVariableOp*bert/encoder/layer_8/output/LayerNorm/betasave/Identity_178*
dtype0
T
save/Identity_179Identitysave/RestoreV2:178*
T0*
_output_shapes
:
z
save/AssignVariableOp_178AssignVariableOp+bert/encoder/layer_8/output/LayerNorm/gammasave/Identity_179*
dtype0
T
save/Identity_180Identitysave/RestoreV2:179*
T0*
_output_shapes
:
u
save/AssignVariableOp_179AssignVariableOp&bert/encoder/layer_8/output/dense/biassave/Identity_180*
dtype0
T
save/Identity_181Identitysave/RestoreV2:180*
T0*
_output_shapes
:
w
save/AssignVariableOp_180AssignVariableOp(bert/encoder/layer_8/output/dense/kernelsave/Identity_181*
dtype0
T
save/Identity_182Identitysave/RestoreV2:181*
T0*
_output_shapes
:

save/AssignVariableOp_181AssignVariableOp4bert/encoder/layer_9/attention/output/LayerNorm/betasave/Identity_182*
dtype0
T
save/Identity_183Identitysave/RestoreV2:182*
T0*
_output_shapes
:

save/AssignVariableOp_182AssignVariableOp5bert/encoder/layer_9/attention/output/LayerNorm/gammasave/Identity_183*
dtype0
T
save/Identity_184Identitysave/RestoreV2:183*
T0*
_output_shapes
:

save/AssignVariableOp_183AssignVariableOp0bert/encoder/layer_9/attention/output/dense/biassave/Identity_184*
dtype0
T
save/Identity_185Identitysave/RestoreV2:184*
T0*
_output_shapes
:

save/AssignVariableOp_184AssignVariableOp2bert/encoder/layer_9/attention/output/dense/kernelsave/Identity_185*
dtype0
T
save/Identity_186Identitysave/RestoreV2:185*
T0*
_output_shapes
:
{
save/AssignVariableOp_185AssignVariableOp,bert/encoder/layer_9/attention/self/key/biassave/Identity_186*
dtype0
T
save/Identity_187Identitysave/RestoreV2:186*
T0*
_output_shapes
:
}
save/AssignVariableOp_186AssignVariableOp.bert/encoder/layer_9/attention/self/key/kernelsave/Identity_187*
dtype0
T
save/Identity_188Identitysave/RestoreV2:187*
T0*
_output_shapes
:
}
save/AssignVariableOp_187AssignVariableOp.bert/encoder/layer_9/attention/self/query/biassave/Identity_188*
dtype0
T
save/Identity_189Identitysave/RestoreV2:188*
T0*
_output_shapes
:

save/AssignVariableOp_188AssignVariableOp0bert/encoder/layer_9/attention/self/query/kernelsave/Identity_189*
dtype0
T
save/Identity_190Identitysave/RestoreV2:189*
T0*
_output_shapes
:
}
save/AssignVariableOp_189AssignVariableOp.bert/encoder/layer_9/attention/self/value/biassave/Identity_190*
dtype0
T
save/Identity_191Identitysave/RestoreV2:190*
T0*
_output_shapes
:

save/AssignVariableOp_190AssignVariableOp0bert/encoder/layer_9/attention/self/value/kernelsave/Identity_191*
dtype0
T
save/Identity_192Identitysave/RestoreV2:191*
T0*
_output_shapes
:
{
save/AssignVariableOp_191AssignVariableOp,bert/encoder/layer_9/intermediate/dense/biassave/Identity_192*
dtype0
T
save/Identity_193Identitysave/RestoreV2:192*
T0*
_output_shapes
:
}
save/AssignVariableOp_192AssignVariableOp.bert/encoder/layer_9/intermediate/dense/kernelsave/Identity_193*
dtype0
T
save/Identity_194Identitysave/RestoreV2:193*
T0*
_output_shapes
:
y
save/AssignVariableOp_193AssignVariableOp*bert/encoder/layer_9/output/LayerNorm/betasave/Identity_194*
dtype0
T
save/Identity_195Identitysave/RestoreV2:194*
T0*
_output_shapes
:
z
save/AssignVariableOp_194AssignVariableOp+bert/encoder/layer_9/output/LayerNorm/gammasave/Identity_195*
dtype0
T
save/Identity_196Identitysave/RestoreV2:195*
T0*
_output_shapes
:
u
save/AssignVariableOp_195AssignVariableOp&bert/encoder/layer_9/output/dense/biassave/Identity_196*
dtype0
T
save/Identity_197Identitysave/RestoreV2:196*
T0*
_output_shapes
:
w
save/AssignVariableOp_196AssignVariableOp(bert/encoder/layer_9/output/dense/kernelsave/Identity_197*
dtype0
T
save/Identity_198Identitysave/RestoreV2:197*
T0*
_output_shapes
:
e
save/AssignVariableOp_197AssignVariableOpbert/pooler/dense/biassave/Identity_198*
dtype0
T
save/Identity_199Identitysave/RestoreV2:198*
T0*
_output_shapes
:
g
save/AssignVariableOp_198AssignVariableOpbert/pooler/dense/kernelsave/Identity_199*
dtype0
T
save/Identity_200Identitysave/RestoreV2:199*
T0*
_output_shapes
:
Y
save/AssignVariableOp_199AssignVariableOp
dense/biassave/Identity_200*
dtype0
T
save/Identity_201Identitysave/RestoreV2:200*
T0*
_output_shapes
:
[
save/AssignVariableOp_200AssignVariableOpdense/kernelsave/Identity_201*
dtype0
T
save/Identity_202Identitysave/RestoreV2:201*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_201AssignVariableOpglobal_stepsave/Identity_202*
dtype0	
Â+
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_108^save/AssignVariableOp_109^save/AssignVariableOp_11^save/AssignVariableOp_110^save/AssignVariableOp_111^save/AssignVariableOp_112^save/AssignVariableOp_113^save/AssignVariableOp_114^save/AssignVariableOp_115^save/AssignVariableOp_116^save/AssignVariableOp_117^save/AssignVariableOp_118^save/AssignVariableOp_119^save/AssignVariableOp_12^save/AssignVariableOp_120^save/AssignVariableOp_121^save/AssignVariableOp_122^save/AssignVariableOp_123^save/AssignVariableOp_124^save/AssignVariableOp_125^save/AssignVariableOp_126^save/AssignVariableOp_127^save/AssignVariableOp_128^save/AssignVariableOp_129^save/AssignVariableOp_13^save/AssignVariableOp_130^save/AssignVariableOp_131^save/AssignVariableOp_132^save/AssignVariableOp_133^save/AssignVariableOp_134^save/AssignVariableOp_135^save/AssignVariableOp_136^save/AssignVariableOp_137^save/AssignVariableOp_138^save/AssignVariableOp_139^save/AssignVariableOp_14^save/AssignVariableOp_140^save/AssignVariableOp_141^save/AssignVariableOp_142^save/AssignVariableOp_143^save/AssignVariableOp_144^save/AssignVariableOp_145^save/AssignVariableOp_146^save/AssignVariableOp_147^save/AssignVariableOp_148^save/AssignVariableOp_149^save/AssignVariableOp_15^save/AssignVariableOp_150^save/AssignVariableOp_151^save/AssignVariableOp_152^save/AssignVariableOp_153^save/AssignVariableOp_154^save/AssignVariableOp_155^save/AssignVariableOp_156^save/AssignVariableOp_157^save/AssignVariableOp_158^save/AssignVariableOp_159^save/AssignVariableOp_16^save/AssignVariableOp_160^save/AssignVariableOp_161^save/AssignVariableOp_162^save/AssignVariableOp_163^save/AssignVariableOp_164^save/AssignVariableOp_165^save/AssignVariableOp_166^save/AssignVariableOp_167^save/AssignVariableOp_168^save/AssignVariableOp_169^save/AssignVariableOp_17^save/AssignVariableOp_170^save/AssignVariableOp_171^save/AssignVariableOp_172^save/AssignVariableOp_173^save/AssignVariableOp_174^save/AssignVariableOp_175^save/AssignVariableOp_176^save/AssignVariableOp_177^save/AssignVariableOp_178^save/AssignVariableOp_179^save/AssignVariableOp_18^save/AssignVariableOp_180^save/AssignVariableOp_181^save/AssignVariableOp_182^save/AssignVariableOp_183^save/AssignVariableOp_184^save/AssignVariableOp_185^save/AssignVariableOp_186^save/AssignVariableOp_187^save/AssignVariableOp_188^save/AssignVariableOp_189^save/AssignVariableOp_19^save/AssignVariableOp_190^save/AssignVariableOp_191^save/AssignVariableOp_192^save/AssignVariableOp_193^save/AssignVariableOp_194^save/AssignVariableOp_195^save/AssignVariableOp_196^save/AssignVariableOp_197^save/AssignVariableOp_198^save/AssignVariableOp_199^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_200^save/AssignVariableOp_201^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
-
save/restore_allNoOp^save/restore_shard"Ď<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"c
model_variablesc˙b
ˇ
 bert/embeddings/LayerNorm/beta:0%bert/embeddings/LayerNorm/beta/Assign4bert/embeddings/LayerNorm/beta/Read/ReadVariableOp:0(22bert/embeddings/LayerNorm/beta/Initializer/zeros:08
ş
!bert/embeddings/LayerNorm/gamma:0&bert/embeddings/LayerNorm/gamma/Assign5bert/embeddings/LayerNorm/gamma/Read/ReadVariableOp:0(22bert/embeddings/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_0/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_0/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_0/output/LayerNorm/beta:01bert/encoder/layer_0/output/LayerNorm/beta/Assign@bert/encoder/layer_0/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_0/output/LayerNorm/gamma:02bert/encoder/layer_0/output/LayerNorm/gamma/AssignAbert/encoder/layer_0/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_1/attention/output/LayerNorm/beta:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_1/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_1/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_1/output/LayerNorm/beta:01bert/encoder/layer_1/output/LayerNorm/beta/Assign@bert/encoder/layer_1/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_1/output/LayerNorm/gamma:02bert/encoder/layer_1/output/LayerNorm/gamma/AssignAbert/encoder/layer_1/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_2/attention/output/LayerNorm/beta:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_2/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_2/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_2/output/LayerNorm/beta:01bert/encoder/layer_2/output/LayerNorm/beta/Assign@bert/encoder/layer_2/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_2/output/LayerNorm/gamma:02bert/encoder/layer_2/output/LayerNorm/gamma/AssignAbert/encoder/layer_2/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_3/attention/output/LayerNorm/beta:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_3/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_3/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_3/output/LayerNorm/beta:01bert/encoder/layer_3/output/LayerNorm/beta/Assign@bert/encoder/layer_3/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_3/output/LayerNorm/gamma:02bert/encoder/layer_3/output/LayerNorm/gamma/AssignAbert/encoder/layer_3/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_4/attention/output/LayerNorm/beta:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_4/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_4/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_4/output/LayerNorm/beta:01bert/encoder/layer_4/output/LayerNorm/beta/Assign@bert/encoder/layer_4/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_4/output/LayerNorm/gamma:02bert/encoder/layer_4/output/LayerNorm/gamma/AssignAbert/encoder/layer_4/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_5/attention/output/LayerNorm/beta:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_5/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_5/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_5/output/LayerNorm/beta:01bert/encoder/layer_5/output/LayerNorm/beta/Assign@bert/encoder/layer_5/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_5/output/LayerNorm/gamma:02bert/encoder/layer_5/output/LayerNorm/gamma/AssignAbert/encoder/layer_5/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_6/attention/output/LayerNorm/beta:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_6/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_6/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_6/output/LayerNorm/beta:01bert/encoder/layer_6/output/LayerNorm/beta/Assign@bert/encoder/layer_6/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_6/output/LayerNorm/gamma:02bert/encoder/layer_6/output/LayerNorm/gamma/AssignAbert/encoder/layer_6/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_7/attention/output/LayerNorm/beta:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_7/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_7/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_7/output/LayerNorm/beta:01bert/encoder/layer_7/output/LayerNorm/beta/Assign@bert/encoder/layer_7/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_7/output/LayerNorm/gamma:02bert/encoder/layer_7/output/LayerNorm/gamma/AssignAbert/encoder/layer_7/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_8/attention/output/LayerNorm/beta:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_8/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_8/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_8/output/LayerNorm/beta:01bert/encoder/layer_8/output/LayerNorm/beta/Assign@bert/encoder/layer_8/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_8/output/LayerNorm/gamma:02bert/encoder/layer_8/output/LayerNorm/gamma/AssignAbert/encoder/layer_8/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/ones:08

6bert/encoder/layer_9/attention/output/LayerNorm/beta:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_9/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_9/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/ones:08
ç
,bert/encoder/layer_9/output/LayerNorm/beta:01bert/encoder/layer_9/output/LayerNorm/beta/Assign@bert/encoder/layer_9/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_9/output/LayerNorm/gamma:02bert/encoder/layer_9/output/LayerNorm/gamma/AssignAbert/encoder/layer_9/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/ones:08

7bert/encoder/layer_10/attention/output/LayerNorm/beta:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/AssignKbert/encoder/layer_10/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Ibert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zeros:08

8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/AssignLbert/encoder/layer_10/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Ibert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/ones:08
ë
-bert/encoder/layer_10/output/LayerNorm/beta:02bert/encoder/layer_10/output/LayerNorm/beta/AssignAbert/encoder/layer_10/output/LayerNorm/beta/Read/ReadVariableOp:0(2?bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zeros:08
î
.bert/encoder/layer_10/output/LayerNorm/gamma:03bert/encoder/layer_10/output/LayerNorm/gamma/AssignBbert/encoder/layer_10/output/LayerNorm/gamma/Read/ReadVariableOp:0(2?bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/ones:08

7bert/encoder/layer_11/attention/output/LayerNorm/beta:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/AssignKbert/encoder/layer_11/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Ibert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zeros:08

8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/AssignLbert/encoder/layer_11/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Ibert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/ones:08
ë
-bert/encoder/layer_11/output/LayerNorm/beta:02bert/encoder/layer_11/output/LayerNorm/beta/AssignAbert/encoder/layer_11/output/LayerNorm/beta/Read/ReadVariableOp:0(2?bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zeros:08
î
.bert/encoder/layer_11/output/LayerNorm/gamma:03bert/encoder/layer_11/output/LayerNorm/gamma/AssignBbert/encoder/layer_11/output/LayerNorm/gamma/Read/ReadVariableOp:0(2?bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/ones:08"%
saved_model_main_op


group_deps"á
trainable_variablesČÄ
Ć
!bert/embeddings/word_embeddings:0&bert/embeddings/word_embeddings/Assign5bert/embeddings/word_embeddings/Read/ReadVariableOp:0(2>bert/embeddings/word_embeddings/Initializer/truncated_normal:08
Ţ
'bert/embeddings/token_type_embeddings:0,bert/embeddings/token_type_embeddings/Assign;bert/embeddings/token_type_embeddings/Read/ReadVariableOp:0(2Dbert/embeddings/token_type_embeddings/Initializer/truncated_normal:08
Ö
%bert/embeddings/position_embeddings:0*bert/embeddings/position_embeddings/Assign9bert/embeddings/position_embeddings/Read/ReadVariableOp:0(2Bbert/embeddings/position_embeddings/Initializer/truncated_normal:08
ˇ
 bert/embeddings/LayerNorm/beta:0%bert/embeddings/LayerNorm/beta/Assign4bert/embeddings/LayerNorm/beta/Read/ReadVariableOp:0(22bert/embeddings/LayerNorm/beta/Initializer/zeros:08
ş
!bert/embeddings/LayerNorm/gamma:0&bert/embeddings/LayerNorm/gamma/Assign5bert/embeddings/LayerNorm/gamma/Read/ReadVariableOp:0(22bert/embeddings/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_0/attention/self/query/kernel:07bert/encoder/layer_0/attention/self/query/kernel/AssignFbert/encoder/layer_0/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_0/attention/self/query/bias:05bert/encoder/layer_0/attention/self/query/bias/AssignDbert/encoder/layer_0/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_0/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_0/attention/self/key/kernel:05bert/encoder/layer_0/attention/self/key/kernel/AssignDbert/encoder/layer_0/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_0/attention/self/key/bias:03bert/encoder/layer_0/attention/self/key/bias/AssignBbert/encoder/layer_0/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_0/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_0/attention/self/value/kernel:07bert/encoder/layer_0/attention/self/value/kernel/AssignFbert/encoder/layer_0/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_0/attention/self/value/bias:05bert/encoder/layer_0/attention/self/value/bias/AssignDbert/encoder/layer_0/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_0/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_0/attention/output/dense/kernel:09bert/encoder/layer_0/attention/output/dense/kernel/AssignHbert/encoder/layer_0/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_0/attention/output/dense/bias:07bert/encoder/layer_0/attention/output/dense/bias/AssignFbert/encoder/layer_0/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_0/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_0/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_0/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_0/intermediate/dense/kernel:05bert/encoder/layer_0/intermediate/dense/kernel/AssignDbert/encoder/layer_0/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_0/intermediate/dense/bias:03bert/encoder/layer_0/intermediate/dense/bias/AssignBbert/encoder/layer_0/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_0/output/dense/kernel:0/bert/encoder/layer_0/output/dense/kernel/Assign>bert/encoder/layer_0/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_0/output/dense/bias:0-bert/encoder/layer_0/output/dense/bias/Assign<bert/encoder/layer_0/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_0/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_0/output/LayerNorm/beta:01bert/encoder/layer_0/output/LayerNorm/beta/Assign@bert/encoder/layer_0/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_0/output/LayerNorm/gamma:02bert/encoder/layer_0/output/LayerNorm/gamma/AssignAbert/encoder/layer_0/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_1/attention/self/query/kernel:07bert/encoder/layer_1/attention/self/query/kernel/AssignFbert/encoder/layer_1/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_1/attention/self/query/bias:05bert/encoder/layer_1/attention/self/query/bias/AssignDbert/encoder/layer_1/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_1/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_1/attention/self/key/kernel:05bert/encoder/layer_1/attention/self/key/kernel/AssignDbert/encoder/layer_1/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_1/attention/self/key/bias:03bert/encoder/layer_1/attention/self/key/bias/AssignBbert/encoder/layer_1/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_1/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_1/attention/self/value/kernel:07bert/encoder/layer_1/attention/self/value/kernel/AssignFbert/encoder/layer_1/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_1/attention/self/value/bias:05bert/encoder/layer_1/attention/self/value/bias/AssignDbert/encoder/layer_1/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_1/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_1/attention/output/dense/kernel:09bert/encoder/layer_1/attention/output/dense/kernel/AssignHbert/encoder/layer_1/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_1/attention/output/dense/bias:07bert/encoder/layer_1/attention/output/dense/bias/AssignFbert/encoder/layer_1/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_1/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_1/attention/output/LayerNorm/beta:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_1/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_1/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_1/intermediate/dense/kernel:05bert/encoder/layer_1/intermediate/dense/kernel/AssignDbert/encoder/layer_1/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_1/intermediate/dense/bias:03bert/encoder/layer_1/intermediate/dense/bias/AssignBbert/encoder/layer_1/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_1/output/dense/kernel:0/bert/encoder/layer_1/output/dense/kernel/Assign>bert/encoder/layer_1/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_1/output/dense/bias:0-bert/encoder/layer_1/output/dense/bias/Assign<bert/encoder/layer_1/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_1/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_1/output/LayerNorm/beta:01bert/encoder/layer_1/output/LayerNorm/beta/Assign@bert/encoder/layer_1/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_1/output/LayerNorm/gamma:02bert/encoder/layer_1/output/LayerNorm/gamma/AssignAbert/encoder/layer_1/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_2/attention/self/query/kernel:07bert/encoder/layer_2/attention/self/query/kernel/AssignFbert/encoder/layer_2/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_2/attention/self/query/bias:05bert/encoder/layer_2/attention/self/query/bias/AssignDbert/encoder/layer_2/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_2/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_2/attention/self/key/kernel:05bert/encoder/layer_2/attention/self/key/kernel/AssignDbert/encoder/layer_2/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_2/attention/self/key/bias:03bert/encoder/layer_2/attention/self/key/bias/AssignBbert/encoder/layer_2/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_2/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_2/attention/self/value/kernel:07bert/encoder/layer_2/attention/self/value/kernel/AssignFbert/encoder/layer_2/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_2/attention/self/value/bias:05bert/encoder/layer_2/attention/self/value/bias/AssignDbert/encoder/layer_2/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_2/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_2/attention/output/dense/kernel:09bert/encoder/layer_2/attention/output/dense/kernel/AssignHbert/encoder/layer_2/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_2/attention/output/dense/bias:07bert/encoder/layer_2/attention/output/dense/bias/AssignFbert/encoder/layer_2/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_2/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_2/attention/output/LayerNorm/beta:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_2/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_2/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_2/intermediate/dense/kernel:05bert/encoder/layer_2/intermediate/dense/kernel/AssignDbert/encoder/layer_2/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_2/intermediate/dense/bias:03bert/encoder/layer_2/intermediate/dense/bias/AssignBbert/encoder/layer_2/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_2/output/dense/kernel:0/bert/encoder/layer_2/output/dense/kernel/Assign>bert/encoder/layer_2/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_2/output/dense/bias:0-bert/encoder/layer_2/output/dense/bias/Assign<bert/encoder/layer_2/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_2/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_2/output/LayerNorm/beta:01bert/encoder/layer_2/output/LayerNorm/beta/Assign@bert/encoder/layer_2/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_2/output/LayerNorm/gamma:02bert/encoder/layer_2/output/LayerNorm/gamma/AssignAbert/encoder/layer_2/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_3/attention/self/query/kernel:07bert/encoder/layer_3/attention/self/query/kernel/AssignFbert/encoder/layer_3/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_3/attention/self/query/bias:05bert/encoder/layer_3/attention/self/query/bias/AssignDbert/encoder/layer_3/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_3/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_3/attention/self/key/kernel:05bert/encoder/layer_3/attention/self/key/kernel/AssignDbert/encoder/layer_3/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_3/attention/self/key/bias:03bert/encoder/layer_3/attention/self/key/bias/AssignBbert/encoder/layer_3/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_3/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_3/attention/self/value/kernel:07bert/encoder/layer_3/attention/self/value/kernel/AssignFbert/encoder/layer_3/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_3/attention/self/value/bias:05bert/encoder/layer_3/attention/self/value/bias/AssignDbert/encoder/layer_3/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_3/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_3/attention/output/dense/kernel:09bert/encoder/layer_3/attention/output/dense/kernel/AssignHbert/encoder/layer_3/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_3/attention/output/dense/bias:07bert/encoder/layer_3/attention/output/dense/bias/AssignFbert/encoder/layer_3/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_3/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_3/attention/output/LayerNorm/beta:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_3/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_3/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_3/intermediate/dense/kernel:05bert/encoder/layer_3/intermediate/dense/kernel/AssignDbert/encoder/layer_3/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_3/intermediate/dense/bias:03bert/encoder/layer_3/intermediate/dense/bias/AssignBbert/encoder/layer_3/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_3/output/dense/kernel:0/bert/encoder/layer_3/output/dense/kernel/Assign>bert/encoder/layer_3/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_3/output/dense/bias:0-bert/encoder/layer_3/output/dense/bias/Assign<bert/encoder/layer_3/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_3/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_3/output/LayerNorm/beta:01bert/encoder/layer_3/output/LayerNorm/beta/Assign@bert/encoder/layer_3/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_3/output/LayerNorm/gamma:02bert/encoder/layer_3/output/LayerNorm/gamma/AssignAbert/encoder/layer_3/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_4/attention/self/query/kernel:07bert/encoder/layer_4/attention/self/query/kernel/AssignFbert/encoder/layer_4/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_4/attention/self/query/bias:05bert/encoder/layer_4/attention/self/query/bias/AssignDbert/encoder/layer_4/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_4/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_4/attention/self/key/kernel:05bert/encoder/layer_4/attention/self/key/kernel/AssignDbert/encoder/layer_4/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_4/attention/self/key/bias:03bert/encoder/layer_4/attention/self/key/bias/AssignBbert/encoder/layer_4/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_4/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_4/attention/self/value/kernel:07bert/encoder/layer_4/attention/self/value/kernel/AssignFbert/encoder/layer_4/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_4/attention/self/value/bias:05bert/encoder/layer_4/attention/self/value/bias/AssignDbert/encoder/layer_4/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_4/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_4/attention/output/dense/kernel:09bert/encoder/layer_4/attention/output/dense/kernel/AssignHbert/encoder/layer_4/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_4/attention/output/dense/bias:07bert/encoder/layer_4/attention/output/dense/bias/AssignFbert/encoder/layer_4/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_4/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_4/attention/output/LayerNorm/beta:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_4/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_4/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_4/intermediate/dense/kernel:05bert/encoder/layer_4/intermediate/dense/kernel/AssignDbert/encoder/layer_4/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_4/intermediate/dense/bias:03bert/encoder/layer_4/intermediate/dense/bias/AssignBbert/encoder/layer_4/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_4/output/dense/kernel:0/bert/encoder/layer_4/output/dense/kernel/Assign>bert/encoder/layer_4/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_4/output/dense/bias:0-bert/encoder/layer_4/output/dense/bias/Assign<bert/encoder/layer_4/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_4/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_4/output/LayerNorm/beta:01bert/encoder/layer_4/output/LayerNorm/beta/Assign@bert/encoder/layer_4/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_4/output/LayerNorm/gamma:02bert/encoder/layer_4/output/LayerNorm/gamma/AssignAbert/encoder/layer_4/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_5/attention/self/query/kernel:07bert/encoder/layer_5/attention/self/query/kernel/AssignFbert/encoder/layer_5/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_5/attention/self/query/bias:05bert/encoder/layer_5/attention/self/query/bias/AssignDbert/encoder/layer_5/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_5/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_5/attention/self/key/kernel:05bert/encoder/layer_5/attention/self/key/kernel/AssignDbert/encoder/layer_5/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_5/attention/self/key/bias:03bert/encoder/layer_5/attention/self/key/bias/AssignBbert/encoder/layer_5/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_5/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_5/attention/self/value/kernel:07bert/encoder/layer_5/attention/self/value/kernel/AssignFbert/encoder/layer_5/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_5/attention/self/value/bias:05bert/encoder/layer_5/attention/self/value/bias/AssignDbert/encoder/layer_5/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_5/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_5/attention/output/dense/kernel:09bert/encoder/layer_5/attention/output/dense/kernel/AssignHbert/encoder/layer_5/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_5/attention/output/dense/bias:07bert/encoder/layer_5/attention/output/dense/bias/AssignFbert/encoder/layer_5/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_5/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_5/attention/output/LayerNorm/beta:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_5/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_5/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_5/intermediate/dense/kernel:05bert/encoder/layer_5/intermediate/dense/kernel/AssignDbert/encoder/layer_5/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_5/intermediate/dense/bias:03bert/encoder/layer_5/intermediate/dense/bias/AssignBbert/encoder/layer_5/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_5/output/dense/kernel:0/bert/encoder/layer_5/output/dense/kernel/Assign>bert/encoder/layer_5/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_5/output/dense/bias:0-bert/encoder/layer_5/output/dense/bias/Assign<bert/encoder/layer_5/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_5/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_5/output/LayerNorm/beta:01bert/encoder/layer_5/output/LayerNorm/beta/Assign@bert/encoder/layer_5/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_5/output/LayerNorm/gamma:02bert/encoder/layer_5/output/LayerNorm/gamma/AssignAbert/encoder/layer_5/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_6/attention/self/query/kernel:07bert/encoder/layer_6/attention/self/query/kernel/AssignFbert/encoder/layer_6/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_6/attention/self/query/bias:05bert/encoder/layer_6/attention/self/query/bias/AssignDbert/encoder/layer_6/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_6/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_6/attention/self/key/kernel:05bert/encoder/layer_6/attention/self/key/kernel/AssignDbert/encoder/layer_6/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_6/attention/self/key/bias:03bert/encoder/layer_6/attention/self/key/bias/AssignBbert/encoder/layer_6/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_6/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_6/attention/self/value/kernel:07bert/encoder/layer_6/attention/self/value/kernel/AssignFbert/encoder/layer_6/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_6/attention/self/value/bias:05bert/encoder/layer_6/attention/self/value/bias/AssignDbert/encoder/layer_6/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_6/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_6/attention/output/dense/kernel:09bert/encoder/layer_6/attention/output/dense/kernel/AssignHbert/encoder/layer_6/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_6/attention/output/dense/bias:07bert/encoder/layer_6/attention/output/dense/bias/AssignFbert/encoder/layer_6/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_6/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_6/attention/output/LayerNorm/beta:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_6/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_6/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_6/intermediate/dense/kernel:05bert/encoder/layer_6/intermediate/dense/kernel/AssignDbert/encoder/layer_6/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_6/intermediate/dense/bias:03bert/encoder/layer_6/intermediate/dense/bias/AssignBbert/encoder/layer_6/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_6/output/dense/kernel:0/bert/encoder/layer_6/output/dense/kernel/Assign>bert/encoder/layer_6/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_6/output/dense/bias:0-bert/encoder/layer_6/output/dense/bias/Assign<bert/encoder/layer_6/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_6/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_6/output/LayerNorm/beta:01bert/encoder/layer_6/output/LayerNorm/beta/Assign@bert/encoder/layer_6/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_6/output/LayerNorm/gamma:02bert/encoder/layer_6/output/LayerNorm/gamma/AssignAbert/encoder/layer_6/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_7/attention/self/query/kernel:07bert/encoder/layer_7/attention/self/query/kernel/AssignFbert/encoder/layer_7/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_7/attention/self/query/bias:05bert/encoder/layer_7/attention/self/query/bias/AssignDbert/encoder/layer_7/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_7/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_7/attention/self/key/kernel:05bert/encoder/layer_7/attention/self/key/kernel/AssignDbert/encoder/layer_7/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_7/attention/self/key/bias:03bert/encoder/layer_7/attention/self/key/bias/AssignBbert/encoder/layer_7/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_7/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_7/attention/self/value/kernel:07bert/encoder/layer_7/attention/self/value/kernel/AssignFbert/encoder/layer_7/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_7/attention/self/value/bias:05bert/encoder/layer_7/attention/self/value/bias/AssignDbert/encoder/layer_7/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_7/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_7/attention/output/dense/kernel:09bert/encoder/layer_7/attention/output/dense/kernel/AssignHbert/encoder/layer_7/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_7/attention/output/dense/bias:07bert/encoder/layer_7/attention/output/dense/bias/AssignFbert/encoder/layer_7/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_7/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_7/attention/output/LayerNorm/beta:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_7/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_7/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_7/intermediate/dense/kernel:05bert/encoder/layer_7/intermediate/dense/kernel/AssignDbert/encoder/layer_7/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_7/intermediate/dense/bias:03bert/encoder/layer_7/intermediate/dense/bias/AssignBbert/encoder/layer_7/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_7/output/dense/kernel:0/bert/encoder/layer_7/output/dense/kernel/Assign>bert/encoder/layer_7/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_7/output/dense/bias:0-bert/encoder/layer_7/output/dense/bias/Assign<bert/encoder/layer_7/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_7/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_7/output/LayerNorm/beta:01bert/encoder/layer_7/output/LayerNorm/beta/Assign@bert/encoder/layer_7/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_7/output/LayerNorm/gamma:02bert/encoder/layer_7/output/LayerNorm/gamma/AssignAbert/encoder/layer_7/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_8/attention/self/query/kernel:07bert/encoder/layer_8/attention/self/query/kernel/AssignFbert/encoder/layer_8/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_8/attention/self/query/bias:05bert/encoder/layer_8/attention/self/query/bias/AssignDbert/encoder/layer_8/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_8/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_8/attention/self/key/kernel:05bert/encoder/layer_8/attention/self/key/kernel/AssignDbert/encoder/layer_8/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_8/attention/self/key/bias:03bert/encoder/layer_8/attention/self/key/bias/AssignBbert/encoder/layer_8/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_8/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_8/attention/self/value/kernel:07bert/encoder/layer_8/attention/self/value/kernel/AssignFbert/encoder/layer_8/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_8/attention/self/value/bias:05bert/encoder/layer_8/attention/self/value/bias/AssignDbert/encoder/layer_8/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_8/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_8/attention/output/dense/kernel:09bert/encoder/layer_8/attention/output/dense/kernel/AssignHbert/encoder/layer_8/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_8/attention/output/dense/bias:07bert/encoder/layer_8/attention/output/dense/bias/AssignFbert/encoder/layer_8/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_8/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_8/attention/output/LayerNorm/beta:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_8/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_8/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_8/intermediate/dense/kernel:05bert/encoder/layer_8/intermediate/dense/kernel/AssignDbert/encoder/layer_8/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_8/intermediate/dense/bias:03bert/encoder/layer_8/intermediate/dense/bias/AssignBbert/encoder/layer_8/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_8/output/dense/kernel:0/bert/encoder/layer_8/output/dense/kernel/Assign>bert/encoder/layer_8/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_8/output/dense/bias:0-bert/encoder/layer_8/output/dense/bias/Assign<bert/encoder/layer_8/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_8/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_8/output/LayerNorm/beta:01bert/encoder/layer_8/output/LayerNorm/beta/Assign@bert/encoder/layer_8/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_8/output/LayerNorm/gamma:02bert/encoder/layer_8/output/LayerNorm/gamma/AssignAbert/encoder/layer_8/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_9/attention/self/query/kernel:07bert/encoder/layer_9/attention/self/query/kernel/AssignFbert/encoder/layer_9/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_9/attention/self/query/bias:05bert/encoder/layer_9/attention/self/query/bias/AssignDbert/encoder/layer_9/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_9/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_9/attention/self/key/kernel:05bert/encoder/layer_9/attention/self/key/kernel/AssignDbert/encoder/layer_9/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_9/attention/self/key/bias:03bert/encoder/layer_9/attention/self/key/bias/AssignBbert/encoder/layer_9/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_9/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_9/attention/self/value/kernel:07bert/encoder/layer_9/attention/self/value/kernel/AssignFbert/encoder/layer_9/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_9/attention/self/value/bias:05bert/encoder/layer_9/attention/self/value/bias/AssignDbert/encoder/layer_9/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_9/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_9/attention/output/dense/kernel:09bert/encoder/layer_9/attention/output/dense/kernel/AssignHbert/encoder/layer_9/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_9/attention/output/dense/bias:07bert/encoder/layer_9/attention/output/dense/bias/AssignFbert/encoder/layer_9/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_9/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_9/attention/output/LayerNorm/beta:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_9/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_9/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_9/intermediate/dense/kernel:05bert/encoder/layer_9/intermediate/dense/kernel/AssignDbert/encoder/layer_9/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_9/intermediate/dense/bias:03bert/encoder/layer_9/intermediate/dense/bias/AssignBbert/encoder/layer_9/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_9/output/dense/kernel:0/bert/encoder/layer_9/output/dense/kernel/Assign>bert/encoder/layer_9/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_9/output/dense/bias:0-bert/encoder/layer_9/output/dense/bias/Assign<bert/encoder/layer_9/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_9/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_9/output/LayerNorm/beta:01bert/encoder/layer_9/output/LayerNorm/beta/Assign@bert/encoder/layer_9/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_9/output/LayerNorm/gamma:02bert/encoder/layer_9/output/LayerNorm/gamma/AssignAbert/encoder/layer_9/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/ones:08

3bert/encoder/layer_10/attention/self/query/kernel:08bert/encoder/layer_10/attention/self/query/kernel/AssignGbert/encoder/layer_10/attention/self/query/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_10/attention/self/query/bias:06bert/encoder/layer_10/attention/self/query/bias/AssignEbert/encoder/layer_10/attention/self/query/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_10/attention/self/query/bias/Initializer/zeros:08

1bert/encoder/layer_10/attention/self/key/kernel:06bert/encoder/layer_10/attention/self/key/kernel/AssignEbert/encoder/layer_10/attention/self/key/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_10/attention/self/key/bias:04bert/encoder/layer_10/attention/self/key/bias/AssignCbert/encoder/layer_10/attention/self/key/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_10/attention/self/key/bias/Initializer/zeros:08

3bert/encoder/layer_10/attention/self/value/kernel:08bert/encoder/layer_10/attention/self/value/kernel/AssignGbert/encoder/layer_10/attention/self/value/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_10/attention/self/value/bias:06bert/encoder/layer_10/attention/self/value/bias/AssignEbert/encoder/layer_10/attention/self/value/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_10/attention/self/value/bias/Initializer/zeros:08

5bert/encoder/layer_10/attention/output/dense/kernel:0:bert/encoder/layer_10/attention/output/dense/kernel/AssignIbert/encoder/layer_10/attention/output/dense/kernel/Read/ReadVariableOp:0(2Rbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal:08

3bert/encoder/layer_10/attention/output/dense/bias:08bert/encoder/layer_10/attention/output/dense/bias/AssignGbert/encoder/layer_10/attention/output/dense/bias/Read/ReadVariableOp:0(2Ebert/encoder/layer_10/attention/output/dense/bias/Initializer/zeros:08

7bert/encoder/layer_10/attention/output/LayerNorm/beta:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/AssignKbert/encoder/layer_10/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Ibert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zeros:08

8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/AssignLbert/encoder/layer_10/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Ibert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/ones:08

1bert/encoder/layer_10/intermediate/dense/kernel:06bert/encoder/layer_10/intermediate/dense/kernel/AssignEbert/encoder/layer_10/intermediate/dense/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_10/intermediate/dense/bias:04bert/encoder/layer_10/intermediate/dense/bias/AssignCbert/encoder/layer_10/intermediate/dense/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros:08
î
+bert/encoder/layer_10/output/dense/kernel:00bert/encoder/layer_10/output/dense/kernel/Assign?bert/encoder/layer_10/output/dense/kernel/Read/ReadVariableOp:0(2Hbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal:08
Ű
)bert/encoder/layer_10/output/dense/bias:0.bert/encoder/layer_10/output/dense/bias/Assign=bert/encoder/layer_10/output/dense/bias/Read/ReadVariableOp:0(2;bert/encoder/layer_10/output/dense/bias/Initializer/zeros:08
ë
-bert/encoder/layer_10/output/LayerNorm/beta:02bert/encoder/layer_10/output/LayerNorm/beta/AssignAbert/encoder/layer_10/output/LayerNorm/beta/Read/ReadVariableOp:0(2?bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zeros:08
î
.bert/encoder/layer_10/output/LayerNorm/gamma:03bert/encoder/layer_10/output/LayerNorm/gamma/AssignBbert/encoder/layer_10/output/LayerNorm/gamma/Read/ReadVariableOp:0(2?bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/ones:08

3bert/encoder/layer_11/attention/self/query/kernel:08bert/encoder/layer_11/attention/self/query/kernel/AssignGbert/encoder/layer_11/attention/self/query/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_11/attention/self/query/bias:06bert/encoder/layer_11/attention/self/query/bias/AssignEbert/encoder/layer_11/attention/self/query/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_11/attention/self/query/bias/Initializer/zeros:08

1bert/encoder/layer_11/attention/self/key/kernel:06bert/encoder/layer_11/attention/self/key/kernel/AssignEbert/encoder/layer_11/attention/self/key/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_11/attention/self/key/bias:04bert/encoder/layer_11/attention/self/key/bias/AssignCbert/encoder/layer_11/attention/self/key/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_11/attention/self/key/bias/Initializer/zeros:08

3bert/encoder/layer_11/attention/self/value/kernel:08bert/encoder/layer_11/attention/self/value/kernel/AssignGbert/encoder/layer_11/attention/self/value/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_11/attention/self/value/bias:06bert/encoder/layer_11/attention/self/value/bias/AssignEbert/encoder/layer_11/attention/self/value/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_11/attention/self/value/bias/Initializer/zeros:08

5bert/encoder/layer_11/attention/output/dense/kernel:0:bert/encoder/layer_11/attention/output/dense/kernel/AssignIbert/encoder/layer_11/attention/output/dense/kernel/Read/ReadVariableOp:0(2Rbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal:08

3bert/encoder/layer_11/attention/output/dense/bias:08bert/encoder/layer_11/attention/output/dense/bias/AssignGbert/encoder/layer_11/attention/output/dense/bias/Read/ReadVariableOp:0(2Ebert/encoder/layer_11/attention/output/dense/bias/Initializer/zeros:08

7bert/encoder/layer_11/attention/output/LayerNorm/beta:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/AssignKbert/encoder/layer_11/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Ibert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zeros:08

8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/AssignLbert/encoder/layer_11/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Ibert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/ones:08

1bert/encoder/layer_11/intermediate/dense/kernel:06bert/encoder/layer_11/intermediate/dense/kernel/AssignEbert/encoder/layer_11/intermediate/dense/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_11/intermediate/dense/bias:04bert/encoder/layer_11/intermediate/dense/bias/AssignCbert/encoder/layer_11/intermediate/dense/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros:08
î
+bert/encoder/layer_11/output/dense/kernel:00bert/encoder/layer_11/output/dense/kernel/Assign?bert/encoder/layer_11/output/dense/kernel/Read/ReadVariableOp:0(2Hbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal:08
Ű
)bert/encoder/layer_11/output/dense/bias:0.bert/encoder/layer_11/output/dense/bias/Assign=bert/encoder/layer_11/output/dense/bias/Read/ReadVariableOp:0(2;bert/encoder/layer_11/output/dense/bias/Initializer/zeros:08
ë
-bert/encoder/layer_11/output/LayerNorm/beta:02bert/encoder/layer_11/output/LayerNorm/beta/AssignAbert/encoder/layer_11/output/LayerNorm/beta/Read/ReadVariableOp:0(2?bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zeros:08
î
.bert/encoder/layer_11/output/LayerNorm/gamma:03bert/encoder/layer_11/output/LayerNorm/gamma/AssignBbert/encoder/layer_11/output/LayerNorm/gamma/Read/ReadVariableOp:0(2?bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/ones:08
Ş
bert/pooler/dense/kernel:0bert/pooler/dense/kernel/Assign.bert/pooler/dense/kernel/Read/ReadVariableOp:0(27bert/pooler/dense/kernel/Initializer/truncated_normal:08

bert/pooler/dense/bias:0bert/pooler/dense/bias/Assign,bert/pooler/dense/bias/Read/ReadVariableOp:0(2*bert/pooler/dense/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/Const:08"Ä
	variablesľą
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
Ć
!bert/embeddings/word_embeddings:0&bert/embeddings/word_embeddings/Assign5bert/embeddings/word_embeddings/Read/ReadVariableOp:0(2>bert/embeddings/word_embeddings/Initializer/truncated_normal:08
Ţ
'bert/embeddings/token_type_embeddings:0,bert/embeddings/token_type_embeddings/Assign;bert/embeddings/token_type_embeddings/Read/ReadVariableOp:0(2Dbert/embeddings/token_type_embeddings/Initializer/truncated_normal:08
Ö
%bert/embeddings/position_embeddings:0*bert/embeddings/position_embeddings/Assign9bert/embeddings/position_embeddings/Read/ReadVariableOp:0(2Bbert/embeddings/position_embeddings/Initializer/truncated_normal:08
ˇ
 bert/embeddings/LayerNorm/beta:0%bert/embeddings/LayerNorm/beta/Assign4bert/embeddings/LayerNorm/beta/Read/ReadVariableOp:0(22bert/embeddings/LayerNorm/beta/Initializer/zeros:08
ş
!bert/embeddings/LayerNorm/gamma:0&bert/embeddings/LayerNorm/gamma/Assign5bert/embeddings/LayerNorm/gamma/Read/ReadVariableOp:0(22bert/embeddings/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_0/attention/self/query/kernel:07bert/encoder/layer_0/attention/self/query/kernel/AssignFbert/encoder/layer_0/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_0/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_0/attention/self/query/bias:05bert/encoder/layer_0/attention/self/query/bias/AssignDbert/encoder/layer_0/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_0/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_0/attention/self/key/kernel:05bert/encoder/layer_0/attention/self/key/kernel/AssignDbert/encoder/layer_0/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_0/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_0/attention/self/key/bias:03bert/encoder/layer_0/attention/self/key/bias/AssignBbert/encoder/layer_0/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_0/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_0/attention/self/value/kernel:07bert/encoder/layer_0/attention/self/value/kernel/AssignFbert/encoder/layer_0/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_0/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_0/attention/self/value/bias:05bert/encoder/layer_0/attention/self/value/bias/AssignDbert/encoder/layer_0/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_0/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_0/attention/output/dense/kernel:09bert/encoder/layer_0/attention/output/dense/kernel/AssignHbert/encoder/layer_0/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_0/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_0/attention/output/dense/bias:07bert/encoder/layer_0/attention/output/dense/bias/AssignFbert/encoder/layer_0/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_0/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_0/attention/output/LayerNorm/beta:0;bert/encoder/layer_0/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_0/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_0/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_0/attention/output/LayerNorm/gamma:0<bert/encoder/layer_0/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_0/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_0/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_0/intermediate/dense/kernel:05bert/encoder/layer_0/intermediate/dense/kernel/AssignDbert/encoder/layer_0/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_0/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_0/intermediate/dense/bias:03bert/encoder/layer_0/intermediate/dense/bias/AssignBbert/encoder/layer_0/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_0/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_0/output/dense/kernel:0/bert/encoder/layer_0/output/dense/kernel/Assign>bert/encoder/layer_0/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_0/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_0/output/dense/bias:0-bert/encoder/layer_0/output/dense/bias/Assign<bert/encoder/layer_0/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_0/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_0/output/LayerNorm/beta:01bert/encoder/layer_0/output/LayerNorm/beta/Assign@bert/encoder/layer_0/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_0/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_0/output/LayerNorm/gamma:02bert/encoder/layer_0/output/LayerNorm/gamma/AssignAbert/encoder/layer_0/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_0/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_1/attention/self/query/kernel:07bert/encoder/layer_1/attention/self/query/kernel/AssignFbert/encoder/layer_1/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_1/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_1/attention/self/query/bias:05bert/encoder/layer_1/attention/self/query/bias/AssignDbert/encoder/layer_1/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_1/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_1/attention/self/key/kernel:05bert/encoder/layer_1/attention/self/key/kernel/AssignDbert/encoder/layer_1/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_1/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_1/attention/self/key/bias:03bert/encoder/layer_1/attention/self/key/bias/AssignBbert/encoder/layer_1/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_1/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_1/attention/self/value/kernel:07bert/encoder/layer_1/attention/self/value/kernel/AssignFbert/encoder/layer_1/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_1/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_1/attention/self/value/bias:05bert/encoder/layer_1/attention/self/value/bias/AssignDbert/encoder/layer_1/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_1/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_1/attention/output/dense/kernel:09bert/encoder/layer_1/attention/output/dense/kernel/AssignHbert/encoder/layer_1/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_1/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_1/attention/output/dense/bias:07bert/encoder/layer_1/attention/output/dense/bias/AssignFbert/encoder/layer_1/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_1/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_1/attention/output/LayerNorm/beta:0;bert/encoder/layer_1/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_1/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_1/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_1/attention/output/LayerNorm/gamma:0<bert/encoder/layer_1/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_1/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_1/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_1/intermediate/dense/kernel:05bert/encoder/layer_1/intermediate/dense/kernel/AssignDbert/encoder/layer_1/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_1/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_1/intermediate/dense/bias:03bert/encoder/layer_1/intermediate/dense/bias/AssignBbert/encoder/layer_1/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_1/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_1/output/dense/kernel:0/bert/encoder/layer_1/output/dense/kernel/Assign>bert/encoder/layer_1/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_1/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_1/output/dense/bias:0-bert/encoder/layer_1/output/dense/bias/Assign<bert/encoder/layer_1/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_1/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_1/output/LayerNorm/beta:01bert/encoder/layer_1/output/LayerNorm/beta/Assign@bert/encoder/layer_1/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_1/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_1/output/LayerNorm/gamma:02bert/encoder/layer_1/output/LayerNorm/gamma/AssignAbert/encoder/layer_1/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_1/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_2/attention/self/query/kernel:07bert/encoder/layer_2/attention/self/query/kernel/AssignFbert/encoder/layer_2/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_2/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_2/attention/self/query/bias:05bert/encoder/layer_2/attention/self/query/bias/AssignDbert/encoder/layer_2/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_2/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_2/attention/self/key/kernel:05bert/encoder/layer_2/attention/self/key/kernel/AssignDbert/encoder/layer_2/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_2/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_2/attention/self/key/bias:03bert/encoder/layer_2/attention/self/key/bias/AssignBbert/encoder/layer_2/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_2/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_2/attention/self/value/kernel:07bert/encoder/layer_2/attention/self/value/kernel/AssignFbert/encoder/layer_2/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_2/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_2/attention/self/value/bias:05bert/encoder/layer_2/attention/self/value/bias/AssignDbert/encoder/layer_2/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_2/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_2/attention/output/dense/kernel:09bert/encoder/layer_2/attention/output/dense/kernel/AssignHbert/encoder/layer_2/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_2/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_2/attention/output/dense/bias:07bert/encoder/layer_2/attention/output/dense/bias/AssignFbert/encoder/layer_2/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_2/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_2/attention/output/LayerNorm/beta:0;bert/encoder/layer_2/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_2/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_2/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_2/attention/output/LayerNorm/gamma:0<bert/encoder/layer_2/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_2/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_2/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_2/intermediate/dense/kernel:05bert/encoder/layer_2/intermediate/dense/kernel/AssignDbert/encoder/layer_2/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_2/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_2/intermediate/dense/bias:03bert/encoder/layer_2/intermediate/dense/bias/AssignBbert/encoder/layer_2/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_2/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_2/output/dense/kernel:0/bert/encoder/layer_2/output/dense/kernel/Assign>bert/encoder/layer_2/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_2/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_2/output/dense/bias:0-bert/encoder/layer_2/output/dense/bias/Assign<bert/encoder/layer_2/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_2/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_2/output/LayerNorm/beta:01bert/encoder/layer_2/output/LayerNorm/beta/Assign@bert/encoder/layer_2/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_2/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_2/output/LayerNorm/gamma:02bert/encoder/layer_2/output/LayerNorm/gamma/AssignAbert/encoder/layer_2/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_2/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_3/attention/self/query/kernel:07bert/encoder/layer_3/attention/self/query/kernel/AssignFbert/encoder/layer_3/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_3/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_3/attention/self/query/bias:05bert/encoder/layer_3/attention/self/query/bias/AssignDbert/encoder/layer_3/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_3/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_3/attention/self/key/kernel:05bert/encoder/layer_3/attention/self/key/kernel/AssignDbert/encoder/layer_3/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_3/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_3/attention/self/key/bias:03bert/encoder/layer_3/attention/self/key/bias/AssignBbert/encoder/layer_3/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_3/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_3/attention/self/value/kernel:07bert/encoder/layer_3/attention/self/value/kernel/AssignFbert/encoder/layer_3/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_3/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_3/attention/self/value/bias:05bert/encoder/layer_3/attention/self/value/bias/AssignDbert/encoder/layer_3/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_3/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_3/attention/output/dense/kernel:09bert/encoder/layer_3/attention/output/dense/kernel/AssignHbert/encoder/layer_3/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_3/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_3/attention/output/dense/bias:07bert/encoder/layer_3/attention/output/dense/bias/AssignFbert/encoder/layer_3/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_3/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_3/attention/output/LayerNorm/beta:0;bert/encoder/layer_3/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_3/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_3/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_3/attention/output/LayerNorm/gamma:0<bert/encoder/layer_3/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_3/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_3/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_3/intermediate/dense/kernel:05bert/encoder/layer_3/intermediate/dense/kernel/AssignDbert/encoder/layer_3/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_3/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_3/intermediate/dense/bias:03bert/encoder/layer_3/intermediate/dense/bias/AssignBbert/encoder/layer_3/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_3/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_3/output/dense/kernel:0/bert/encoder/layer_3/output/dense/kernel/Assign>bert/encoder/layer_3/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_3/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_3/output/dense/bias:0-bert/encoder/layer_3/output/dense/bias/Assign<bert/encoder/layer_3/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_3/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_3/output/LayerNorm/beta:01bert/encoder/layer_3/output/LayerNorm/beta/Assign@bert/encoder/layer_3/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_3/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_3/output/LayerNorm/gamma:02bert/encoder/layer_3/output/LayerNorm/gamma/AssignAbert/encoder/layer_3/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_3/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_4/attention/self/query/kernel:07bert/encoder/layer_4/attention/self/query/kernel/AssignFbert/encoder/layer_4/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_4/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_4/attention/self/query/bias:05bert/encoder/layer_4/attention/self/query/bias/AssignDbert/encoder/layer_4/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_4/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_4/attention/self/key/kernel:05bert/encoder/layer_4/attention/self/key/kernel/AssignDbert/encoder/layer_4/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_4/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_4/attention/self/key/bias:03bert/encoder/layer_4/attention/self/key/bias/AssignBbert/encoder/layer_4/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_4/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_4/attention/self/value/kernel:07bert/encoder/layer_4/attention/self/value/kernel/AssignFbert/encoder/layer_4/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_4/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_4/attention/self/value/bias:05bert/encoder/layer_4/attention/self/value/bias/AssignDbert/encoder/layer_4/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_4/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_4/attention/output/dense/kernel:09bert/encoder/layer_4/attention/output/dense/kernel/AssignHbert/encoder/layer_4/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_4/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_4/attention/output/dense/bias:07bert/encoder/layer_4/attention/output/dense/bias/AssignFbert/encoder/layer_4/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_4/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_4/attention/output/LayerNorm/beta:0;bert/encoder/layer_4/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_4/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_4/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_4/attention/output/LayerNorm/gamma:0<bert/encoder/layer_4/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_4/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_4/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_4/intermediate/dense/kernel:05bert/encoder/layer_4/intermediate/dense/kernel/AssignDbert/encoder/layer_4/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_4/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_4/intermediate/dense/bias:03bert/encoder/layer_4/intermediate/dense/bias/AssignBbert/encoder/layer_4/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_4/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_4/output/dense/kernel:0/bert/encoder/layer_4/output/dense/kernel/Assign>bert/encoder/layer_4/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_4/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_4/output/dense/bias:0-bert/encoder/layer_4/output/dense/bias/Assign<bert/encoder/layer_4/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_4/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_4/output/LayerNorm/beta:01bert/encoder/layer_4/output/LayerNorm/beta/Assign@bert/encoder/layer_4/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_4/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_4/output/LayerNorm/gamma:02bert/encoder/layer_4/output/LayerNorm/gamma/AssignAbert/encoder/layer_4/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_4/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_5/attention/self/query/kernel:07bert/encoder/layer_5/attention/self/query/kernel/AssignFbert/encoder/layer_5/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_5/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_5/attention/self/query/bias:05bert/encoder/layer_5/attention/self/query/bias/AssignDbert/encoder/layer_5/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_5/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_5/attention/self/key/kernel:05bert/encoder/layer_5/attention/self/key/kernel/AssignDbert/encoder/layer_5/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_5/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_5/attention/self/key/bias:03bert/encoder/layer_5/attention/self/key/bias/AssignBbert/encoder/layer_5/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_5/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_5/attention/self/value/kernel:07bert/encoder/layer_5/attention/self/value/kernel/AssignFbert/encoder/layer_5/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_5/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_5/attention/self/value/bias:05bert/encoder/layer_5/attention/self/value/bias/AssignDbert/encoder/layer_5/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_5/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_5/attention/output/dense/kernel:09bert/encoder/layer_5/attention/output/dense/kernel/AssignHbert/encoder/layer_5/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_5/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_5/attention/output/dense/bias:07bert/encoder/layer_5/attention/output/dense/bias/AssignFbert/encoder/layer_5/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_5/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_5/attention/output/LayerNorm/beta:0;bert/encoder/layer_5/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_5/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_5/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_5/attention/output/LayerNorm/gamma:0<bert/encoder/layer_5/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_5/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_5/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_5/intermediate/dense/kernel:05bert/encoder/layer_5/intermediate/dense/kernel/AssignDbert/encoder/layer_5/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_5/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_5/intermediate/dense/bias:03bert/encoder/layer_5/intermediate/dense/bias/AssignBbert/encoder/layer_5/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_5/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_5/output/dense/kernel:0/bert/encoder/layer_5/output/dense/kernel/Assign>bert/encoder/layer_5/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_5/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_5/output/dense/bias:0-bert/encoder/layer_5/output/dense/bias/Assign<bert/encoder/layer_5/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_5/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_5/output/LayerNorm/beta:01bert/encoder/layer_5/output/LayerNorm/beta/Assign@bert/encoder/layer_5/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_5/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_5/output/LayerNorm/gamma:02bert/encoder/layer_5/output/LayerNorm/gamma/AssignAbert/encoder/layer_5/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_5/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_6/attention/self/query/kernel:07bert/encoder/layer_6/attention/self/query/kernel/AssignFbert/encoder/layer_6/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_6/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_6/attention/self/query/bias:05bert/encoder/layer_6/attention/self/query/bias/AssignDbert/encoder/layer_6/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_6/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_6/attention/self/key/kernel:05bert/encoder/layer_6/attention/self/key/kernel/AssignDbert/encoder/layer_6/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_6/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_6/attention/self/key/bias:03bert/encoder/layer_6/attention/self/key/bias/AssignBbert/encoder/layer_6/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_6/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_6/attention/self/value/kernel:07bert/encoder/layer_6/attention/self/value/kernel/AssignFbert/encoder/layer_6/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_6/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_6/attention/self/value/bias:05bert/encoder/layer_6/attention/self/value/bias/AssignDbert/encoder/layer_6/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_6/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_6/attention/output/dense/kernel:09bert/encoder/layer_6/attention/output/dense/kernel/AssignHbert/encoder/layer_6/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_6/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_6/attention/output/dense/bias:07bert/encoder/layer_6/attention/output/dense/bias/AssignFbert/encoder/layer_6/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_6/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_6/attention/output/LayerNorm/beta:0;bert/encoder/layer_6/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_6/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_6/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_6/attention/output/LayerNorm/gamma:0<bert/encoder/layer_6/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_6/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_6/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_6/intermediate/dense/kernel:05bert/encoder/layer_6/intermediate/dense/kernel/AssignDbert/encoder/layer_6/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_6/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_6/intermediate/dense/bias:03bert/encoder/layer_6/intermediate/dense/bias/AssignBbert/encoder/layer_6/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_6/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_6/output/dense/kernel:0/bert/encoder/layer_6/output/dense/kernel/Assign>bert/encoder/layer_6/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_6/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_6/output/dense/bias:0-bert/encoder/layer_6/output/dense/bias/Assign<bert/encoder/layer_6/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_6/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_6/output/LayerNorm/beta:01bert/encoder/layer_6/output/LayerNorm/beta/Assign@bert/encoder/layer_6/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_6/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_6/output/LayerNorm/gamma:02bert/encoder/layer_6/output/LayerNorm/gamma/AssignAbert/encoder/layer_6/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_6/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_7/attention/self/query/kernel:07bert/encoder/layer_7/attention/self/query/kernel/AssignFbert/encoder/layer_7/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_7/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_7/attention/self/query/bias:05bert/encoder/layer_7/attention/self/query/bias/AssignDbert/encoder/layer_7/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_7/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_7/attention/self/key/kernel:05bert/encoder/layer_7/attention/self/key/kernel/AssignDbert/encoder/layer_7/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_7/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_7/attention/self/key/bias:03bert/encoder/layer_7/attention/self/key/bias/AssignBbert/encoder/layer_7/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_7/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_7/attention/self/value/kernel:07bert/encoder/layer_7/attention/self/value/kernel/AssignFbert/encoder/layer_7/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_7/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_7/attention/self/value/bias:05bert/encoder/layer_7/attention/self/value/bias/AssignDbert/encoder/layer_7/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_7/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_7/attention/output/dense/kernel:09bert/encoder/layer_7/attention/output/dense/kernel/AssignHbert/encoder/layer_7/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_7/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_7/attention/output/dense/bias:07bert/encoder/layer_7/attention/output/dense/bias/AssignFbert/encoder/layer_7/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_7/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_7/attention/output/LayerNorm/beta:0;bert/encoder/layer_7/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_7/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_7/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_7/attention/output/LayerNorm/gamma:0<bert/encoder/layer_7/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_7/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_7/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_7/intermediate/dense/kernel:05bert/encoder/layer_7/intermediate/dense/kernel/AssignDbert/encoder/layer_7/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_7/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_7/intermediate/dense/bias:03bert/encoder/layer_7/intermediate/dense/bias/AssignBbert/encoder/layer_7/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_7/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_7/output/dense/kernel:0/bert/encoder/layer_7/output/dense/kernel/Assign>bert/encoder/layer_7/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_7/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_7/output/dense/bias:0-bert/encoder/layer_7/output/dense/bias/Assign<bert/encoder/layer_7/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_7/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_7/output/LayerNorm/beta:01bert/encoder/layer_7/output/LayerNorm/beta/Assign@bert/encoder/layer_7/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_7/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_7/output/LayerNorm/gamma:02bert/encoder/layer_7/output/LayerNorm/gamma/AssignAbert/encoder/layer_7/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_7/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_8/attention/self/query/kernel:07bert/encoder/layer_8/attention/self/query/kernel/AssignFbert/encoder/layer_8/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_8/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_8/attention/self/query/bias:05bert/encoder/layer_8/attention/self/query/bias/AssignDbert/encoder/layer_8/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_8/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_8/attention/self/key/kernel:05bert/encoder/layer_8/attention/self/key/kernel/AssignDbert/encoder/layer_8/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_8/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_8/attention/self/key/bias:03bert/encoder/layer_8/attention/self/key/bias/AssignBbert/encoder/layer_8/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_8/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_8/attention/self/value/kernel:07bert/encoder/layer_8/attention/self/value/kernel/AssignFbert/encoder/layer_8/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_8/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_8/attention/self/value/bias:05bert/encoder/layer_8/attention/self/value/bias/AssignDbert/encoder/layer_8/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_8/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_8/attention/output/dense/kernel:09bert/encoder/layer_8/attention/output/dense/kernel/AssignHbert/encoder/layer_8/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_8/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_8/attention/output/dense/bias:07bert/encoder/layer_8/attention/output/dense/bias/AssignFbert/encoder/layer_8/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_8/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_8/attention/output/LayerNorm/beta:0;bert/encoder/layer_8/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_8/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_8/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_8/attention/output/LayerNorm/gamma:0<bert/encoder/layer_8/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_8/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_8/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_8/intermediate/dense/kernel:05bert/encoder/layer_8/intermediate/dense/kernel/AssignDbert/encoder/layer_8/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_8/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_8/intermediate/dense/bias:03bert/encoder/layer_8/intermediate/dense/bias/AssignBbert/encoder/layer_8/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_8/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_8/output/dense/kernel:0/bert/encoder/layer_8/output/dense/kernel/Assign>bert/encoder/layer_8/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_8/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_8/output/dense/bias:0-bert/encoder/layer_8/output/dense/bias/Assign<bert/encoder/layer_8/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_8/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_8/output/LayerNorm/beta:01bert/encoder/layer_8/output/LayerNorm/beta/Assign@bert/encoder/layer_8/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_8/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_8/output/LayerNorm/gamma:02bert/encoder/layer_8/output/LayerNorm/gamma/AssignAbert/encoder/layer_8/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_8/output/LayerNorm/gamma/Initializer/ones:08

2bert/encoder/layer_9/attention/self/query/kernel:07bert/encoder/layer_9/attention/self/query/kernel/AssignFbert/encoder/layer_9/attention/self/query/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_9/attention/self/query/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_9/attention/self/query/bias:05bert/encoder/layer_9/attention/self/query/bias/AssignDbert/encoder/layer_9/attention/self/query/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_9/attention/self/query/bias/Initializer/zeros:08

0bert/encoder/layer_9/attention/self/key/kernel:05bert/encoder/layer_9/attention/self/key/kernel/AssignDbert/encoder/layer_9/attention/self/key/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_9/attention/self/key/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_9/attention/self/key/bias:03bert/encoder/layer_9/attention/self/key/bias/AssignBbert/encoder/layer_9/attention/self/key/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_9/attention/self/key/bias/Initializer/zeros:08

2bert/encoder/layer_9/attention/self/value/kernel:07bert/encoder/layer_9/attention/self/value/kernel/AssignFbert/encoder/layer_9/attention/self/value/kernel/Read/ReadVariableOp:0(2Obert/encoder/layer_9/attention/self/value/kernel/Initializer/truncated_normal:08
÷
0bert/encoder/layer_9/attention/self/value/bias:05bert/encoder/layer_9/attention/self/value/bias/AssignDbert/encoder/layer_9/attention/self/value/bias/Read/ReadVariableOp:0(2Bbert/encoder/layer_9/attention/self/value/bias/Initializer/zeros:08

4bert/encoder/layer_9/attention/output/dense/kernel:09bert/encoder/layer_9/attention/output/dense/kernel/AssignHbert/encoder/layer_9/attention/output/dense/kernel/Read/ReadVariableOp:0(2Qbert/encoder/layer_9/attention/output/dense/kernel/Initializer/truncated_normal:08
˙
2bert/encoder/layer_9/attention/output/dense/bias:07bert/encoder/layer_9/attention/output/dense/bias/AssignFbert/encoder/layer_9/attention/output/dense/bias/Read/ReadVariableOp:0(2Dbert/encoder/layer_9/attention/output/dense/bias/Initializer/zeros:08

6bert/encoder/layer_9/attention/output/LayerNorm/beta:0;bert/encoder/layer_9/attention/output/LayerNorm/beta/AssignJbert/encoder/layer_9/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Hbert/encoder/layer_9/attention/output/LayerNorm/beta/Initializer/zeros:08

7bert/encoder/layer_9/attention/output/LayerNorm/gamma:0<bert/encoder/layer_9/attention/output/LayerNorm/gamma/AssignKbert/encoder/layer_9/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Hbert/encoder/layer_9/attention/output/LayerNorm/gamma/Initializer/ones:08

0bert/encoder/layer_9/intermediate/dense/kernel:05bert/encoder/layer_9/intermediate/dense/kernel/AssignDbert/encoder/layer_9/intermediate/dense/kernel/Read/ReadVariableOp:0(2Mbert/encoder/layer_9/intermediate/dense/kernel/Initializer/truncated_normal:08
ď
.bert/encoder/layer_9/intermediate/dense/bias:03bert/encoder/layer_9/intermediate/dense/bias/AssignBbert/encoder/layer_9/intermediate/dense/bias/Read/ReadVariableOp:0(2@bert/encoder/layer_9/intermediate/dense/bias/Initializer/zeros:08
ę
*bert/encoder/layer_9/output/dense/kernel:0/bert/encoder/layer_9/output/dense/kernel/Assign>bert/encoder/layer_9/output/dense/kernel/Read/ReadVariableOp:0(2Gbert/encoder/layer_9/output/dense/kernel/Initializer/truncated_normal:08
×
(bert/encoder/layer_9/output/dense/bias:0-bert/encoder/layer_9/output/dense/bias/Assign<bert/encoder/layer_9/output/dense/bias/Read/ReadVariableOp:0(2:bert/encoder/layer_9/output/dense/bias/Initializer/zeros:08
ç
,bert/encoder/layer_9/output/LayerNorm/beta:01bert/encoder/layer_9/output/LayerNorm/beta/Assign@bert/encoder/layer_9/output/LayerNorm/beta/Read/ReadVariableOp:0(2>bert/encoder/layer_9/output/LayerNorm/beta/Initializer/zeros:08
ę
-bert/encoder/layer_9/output/LayerNorm/gamma:02bert/encoder/layer_9/output/LayerNorm/gamma/AssignAbert/encoder/layer_9/output/LayerNorm/gamma/Read/ReadVariableOp:0(2>bert/encoder/layer_9/output/LayerNorm/gamma/Initializer/ones:08

3bert/encoder/layer_10/attention/self/query/kernel:08bert/encoder/layer_10/attention/self/query/kernel/AssignGbert/encoder/layer_10/attention/self/query/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_10/attention/self/query/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_10/attention/self/query/bias:06bert/encoder/layer_10/attention/self/query/bias/AssignEbert/encoder/layer_10/attention/self/query/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_10/attention/self/query/bias/Initializer/zeros:08

1bert/encoder/layer_10/attention/self/key/kernel:06bert/encoder/layer_10/attention/self/key/kernel/AssignEbert/encoder/layer_10/attention/self/key/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_10/attention/self/key/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_10/attention/self/key/bias:04bert/encoder/layer_10/attention/self/key/bias/AssignCbert/encoder/layer_10/attention/self/key/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_10/attention/self/key/bias/Initializer/zeros:08

3bert/encoder/layer_10/attention/self/value/kernel:08bert/encoder/layer_10/attention/self/value/kernel/AssignGbert/encoder/layer_10/attention/self/value/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_10/attention/self/value/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_10/attention/self/value/bias:06bert/encoder/layer_10/attention/self/value/bias/AssignEbert/encoder/layer_10/attention/self/value/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_10/attention/self/value/bias/Initializer/zeros:08

5bert/encoder/layer_10/attention/output/dense/kernel:0:bert/encoder/layer_10/attention/output/dense/kernel/AssignIbert/encoder/layer_10/attention/output/dense/kernel/Read/ReadVariableOp:0(2Rbert/encoder/layer_10/attention/output/dense/kernel/Initializer/truncated_normal:08

3bert/encoder/layer_10/attention/output/dense/bias:08bert/encoder/layer_10/attention/output/dense/bias/AssignGbert/encoder/layer_10/attention/output/dense/bias/Read/ReadVariableOp:0(2Ebert/encoder/layer_10/attention/output/dense/bias/Initializer/zeros:08

7bert/encoder/layer_10/attention/output/LayerNorm/beta:0<bert/encoder/layer_10/attention/output/LayerNorm/beta/AssignKbert/encoder/layer_10/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Ibert/encoder/layer_10/attention/output/LayerNorm/beta/Initializer/zeros:08

8bert/encoder/layer_10/attention/output/LayerNorm/gamma:0=bert/encoder/layer_10/attention/output/LayerNorm/gamma/AssignLbert/encoder/layer_10/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Ibert/encoder/layer_10/attention/output/LayerNorm/gamma/Initializer/ones:08

1bert/encoder/layer_10/intermediate/dense/kernel:06bert/encoder/layer_10/intermediate/dense/kernel/AssignEbert/encoder/layer_10/intermediate/dense/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_10/intermediate/dense/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_10/intermediate/dense/bias:04bert/encoder/layer_10/intermediate/dense/bias/AssignCbert/encoder/layer_10/intermediate/dense/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_10/intermediate/dense/bias/Initializer/zeros:08
î
+bert/encoder/layer_10/output/dense/kernel:00bert/encoder/layer_10/output/dense/kernel/Assign?bert/encoder/layer_10/output/dense/kernel/Read/ReadVariableOp:0(2Hbert/encoder/layer_10/output/dense/kernel/Initializer/truncated_normal:08
Ű
)bert/encoder/layer_10/output/dense/bias:0.bert/encoder/layer_10/output/dense/bias/Assign=bert/encoder/layer_10/output/dense/bias/Read/ReadVariableOp:0(2;bert/encoder/layer_10/output/dense/bias/Initializer/zeros:08
ë
-bert/encoder/layer_10/output/LayerNorm/beta:02bert/encoder/layer_10/output/LayerNorm/beta/AssignAbert/encoder/layer_10/output/LayerNorm/beta/Read/ReadVariableOp:0(2?bert/encoder/layer_10/output/LayerNorm/beta/Initializer/zeros:08
î
.bert/encoder/layer_10/output/LayerNorm/gamma:03bert/encoder/layer_10/output/LayerNorm/gamma/AssignBbert/encoder/layer_10/output/LayerNorm/gamma/Read/ReadVariableOp:0(2?bert/encoder/layer_10/output/LayerNorm/gamma/Initializer/ones:08

3bert/encoder/layer_11/attention/self/query/kernel:08bert/encoder/layer_11/attention/self/query/kernel/AssignGbert/encoder/layer_11/attention/self/query/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_11/attention/self/query/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_11/attention/self/query/bias:06bert/encoder/layer_11/attention/self/query/bias/AssignEbert/encoder/layer_11/attention/self/query/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_11/attention/self/query/bias/Initializer/zeros:08

1bert/encoder/layer_11/attention/self/key/kernel:06bert/encoder/layer_11/attention/self/key/kernel/AssignEbert/encoder/layer_11/attention/self/key/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_11/attention/self/key/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_11/attention/self/key/bias:04bert/encoder/layer_11/attention/self/key/bias/AssignCbert/encoder/layer_11/attention/self/key/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_11/attention/self/key/bias/Initializer/zeros:08

3bert/encoder/layer_11/attention/self/value/kernel:08bert/encoder/layer_11/attention/self/value/kernel/AssignGbert/encoder/layer_11/attention/self/value/kernel/Read/ReadVariableOp:0(2Pbert/encoder/layer_11/attention/self/value/kernel/Initializer/truncated_normal:08
ű
1bert/encoder/layer_11/attention/self/value/bias:06bert/encoder/layer_11/attention/self/value/bias/AssignEbert/encoder/layer_11/attention/self/value/bias/Read/ReadVariableOp:0(2Cbert/encoder/layer_11/attention/self/value/bias/Initializer/zeros:08

5bert/encoder/layer_11/attention/output/dense/kernel:0:bert/encoder/layer_11/attention/output/dense/kernel/AssignIbert/encoder/layer_11/attention/output/dense/kernel/Read/ReadVariableOp:0(2Rbert/encoder/layer_11/attention/output/dense/kernel/Initializer/truncated_normal:08

3bert/encoder/layer_11/attention/output/dense/bias:08bert/encoder/layer_11/attention/output/dense/bias/AssignGbert/encoder/layer_11/attention/output/dense/bias/Read/ReadVariableOp:0(2Ebert/encoder/layer_11/attention/output/dense/bias/Initializer/zeros:08

7bert/encoder/layer_11/attention/output/LayerNorm/beta:0<bert/encoder/layer_11/attention/output/LayerNorm/beta/AssignKbert/encoder/layer_11/attention/output/LayerNorm/beta/Read/ReadVariableOp:0(2Ibert/encoder/layer_11/attention/output/LayerNorm/beta/Initializer/zeros:08

8bert/encoder/layer_11/attention/output/LayerNorm/gamma:0=bert/encoder/layer_11/attention/output/LayerNorm/gamma/AssignLbert/encoder/layer_11/attention/output/LayerNorm/gamma/Read/ReadVariableOp:0(2Ibert/encoder/layer_11/attention/output/LayerNorm/gamma/Initializer/ones:08

1bert/encoder/layer_11/intermediate/dense/kernel:06bert/encoder/layer_11/intermediate/dense/kernel/AssignEbert/encoder/layer_11/intermediate/dense/kernel/Read/ReadVariableOp:0(2Nbert/encoder/layer_11/intermediate/dense/kernel/Initializer/truncated_normal:08
ó
/bert/encoder/layer_11/intermediate/dense/bias:04bert/encoder/layer_11/intermediate/dense/bias/AssignCbert/encoder/layer_11/intermediate/dense/bias/Read/ReadVariableOp:0(2Abert/encoder/layer_11/intermediate/dense/bias/Initializer/zeros:08
î
+bert/encoder/layer_11/output/dense/kernel:00bert/encoder/layer_11/output/dense/kernel/Assign?bert/encoder/layer_11/output/dense/kernel/Read/ReadVariableOp:0(2Hbert/encoder/layer_11/output/dense/kernel/Initializer/truncated_normal:08
Ű
)bert/encoder/layer_11/output/dense/bias:0.bert/encoder/layer_11/output/dense/bias/Assign=bert/encoder/layer_11/output/dense/bias/Read/ReadVariableOp:0(2;bert/encoder/layer_11/output/dense/bias/Initializer/zeros:08
ë
-bert/encoder/layer_11/output/LayerNorm/beta:02bert/encoder/layer_11/output/LayerNorm/beta/AssignAbert/encoder/layer_11/output/LayerNorm/beta/Read/ReadVariableOp:0(2?bert/encoder/layer_11/output/LayerNorm/beta/Initializer/zeros:08
î
.bert/encoder/layer_11/output/LayerNorm/gamma:03bert/encoder/layer_11/output/LayerNorm/gamma/AssignBbert/encoder/layer_11/output/LayerNorm/gamma/Read/ReadVariableOp:0(2?bert/encoder/layer_11/output/LayerNorm/gamma/Initializer/ones:08
Ş
bert/pooler/dense/kernel:0bert/pooler/dense/kernel/Assign.bert/pooler/dense/kernel/Read/ReadVariableOp:0(27bert/pooler/dense/kernel/Initializer/truncated_normal:08

bert/pooler/dense/bias:0bert/pooler/dense/bias/Assign,bert/pooler/dense/bias/Read/ReadVariableOp:0(2*bert/pooler/dense/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/Const:08*
serving_defaultě
2
	input_ids%
Placeholder:0	˙˙˙˙˙˙˙˙˙
5

input_mask'
Placeholder_1:0	˙˙˙˙˙˙˙˙˙
6
segment_ids'
Placeholder_2:0	˙˙˙˙˙˙˙˙˙+
predictions
	Squeeze:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict