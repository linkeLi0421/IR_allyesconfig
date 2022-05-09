; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/atags_to_fdt.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/atags_to_fdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.tag_header = type { i32, i32 }
%struct.tag = type { %struct.tag_header, %union.anon }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"serial-number\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @atags_to_fdt(ptr noundef %atag_list, ptr noundef %fdt, i32 noundef %total_space) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i.i149 = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %mem_reg_property = alloca [64 x i32], align 4
  %serno = alloca [18 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mem_reg_property) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %mem_reg_property, i8 -1, i32 256, i1 false), !annotation !9
  %0 = ptrtoint ptr %atag_list to i32
  %and = and i32 %0, 3
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %atag_list, align 4
  %cmp = icmp eq i32 %1, -804389139
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %tag = getelementptr inbounds %struct.tag_header, ptr %atag_list, i32 0, i32 1
  %2 = load i32, ptr %tag, align 4
  %cmp3.not = icmp eq i32 %2, 1413545985
  br i1 %cmp3.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  switch i32 %1, label %cleanup [
    i32 5, label %if.end10
    i32 2, label %if.end10
  ]

if.end10:                                         ; preds = %lor.lhs.false, %lor.lhs.false
  %call = tail call i32 @fdt_open_into(ptr noundef %fdt, ptr noundef %fdt, i32 noundef %total_space) #5
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  %3 = load i32, ptr %atag_list, align 4
  %tobool16.not248 = icmp eq i32 %3, 0
  br i1 %tobool16.not248, label %if.end90, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 1
  %5 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 2
  %6 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 3
  %7 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 4
  %8 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 5
  %9 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 6
  %10 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 7
  %11 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 8
  %12 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 9
  %13 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 10
  %14 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 11
  %15 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 12
  %16 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 13
  %17 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 14
  %18 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 15
  %19 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 16
  %20 = getelementptr inbounds [18 x i8], ptr %serno, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %atag.0253 = phi ptr [ %atag_list, %for.body.lr.ph ], [ %add.ptr84, %for.inc ]
  %memcount.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %memcount.1, %for.inc ]
  %memsize.0249 = phi i32 [ -1, %for.body.lr.ph ], [ %memsize.1, %for.inc ]
  %tag18 = getelementptr inbounds %struct.tag_header, ptr %atag.0253, i32 0, i32 1
  %21 = load i32, ptr %tag18, align 4
  switch i32 %21, label %for.inc [
    i32 1413545993, label %if.then20
    i32 1413545986, label %if.then25
    i32 1413611525, label %if.then59
    i32 1413545990, label %if.then71
  ]

if.then20:                                        ; preds = %for.body
  %u = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1
  %call.i.i = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str) #5
  %cmp.i.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %node_offset.exit.i

if.then.i.i:                                      ; preds = %if.then20
  %call1.i.i = call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str, i32 0, i32 1)) #5
  br label %node_offset.exit.i

node_offset.exit.i:                               ; preds = %if.then.i.i, %if.then20
  %offset.0.i.i = phi i32 [ %call1.i.i, %if.then.i.i ], [ %call.i.i, %if.then20 ]
  %cmp.i = icmp slt i32 %offset.0.i.i, 0
  br i1 %cmp.i, label %for.inc, label %if.end.i

if.end.i:                                         ; preds = %node_offset.exit.i
  %call1.i = call i32 @strlen(ptr noundef %u) #5
  %add.i = add i32 %call1.i, 1
  %call2.i = call i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %offset.0.i.i, ptr noundef nonnull @.str.1, ptr noundef %u, i32 noundef %add.i) #5
  br label %for.inc

if.then25:                                        ; preds = %for.body
  %cmp26 = icmp ugt i32 %memcount.0250, 63
  br i1 %cmp26, label %for.inc, label %if.end28

if.end28:                                         ; preds = %if.then25
  %u29 = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1
  %22 = load i32, ptr %u29, align 4
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %for.inc, label %if.end33

if.end33:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #4
  store i32 -1, ptr %len.i, align 4, !annotation !9
  %call.i.i137 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str.4) #5
  %cmp.i.i138 = icmp eq i32 %call.i.i137, -1
  br i1 %cmp.i.i138, label %get_cell_size.exit.thread, label %getprop.exit.i

getprop.exit.i:                                   ; preds = %if.end33
  %call1.i.i139 = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %call.i.i137, ptr noundef nonnull @.str.8, ptr noundef nonnull %len.i) #5
  %tobool.not.i = icmp eq ptr %call1.i.i139, null
  br i1 %tobool.not.i, label %get_cell_size.exit.thread, label %get_cell_size.exit

get_cell_size.exit.thread:                        ; preds = %getprop.exit.i, %if.end33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  br label %if.else44

get_cell_size.exit:                               ; preds = %getprop.exit.i
  %23 = load i32, ptr %call1.i.i139, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  %cmp35 = icmp eq i32 %23, 2
  br i1 %cmp35, label %if.then36, label %if.else44

if.then36:                                        ; preds = %get_cell_size.exit
  %start = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1, i32 0, i32 2
  %24 = load i32, ptr %start, align 4
  %conv = zext i32 %24 to i64
  %inc = add nuw nsw i32 %memcount.0250, 1
  %arrayidx = getelementptr i64, ptr %mem_reg_property, i32 %memcount.0250
  store i64 %conv, ptr %arrayidx, align 8
  %25 = load i32, ptr %u29, align 4
  %conv41 = zext i32 %25 to i64
  %inc42 = add nuw nsw i32 %memcount.0250, 2
  %arrayidx43 = getelementptr i64, ptr %mem_reg_property, i32 %inc
  store i64 %conv41, ptr %arrayidx43, align 8
  br label %for.inc

if.else44:                                        ; preds = %get_cell_size.exit, %get_cell_size.exit.thread
  %cell_size.0.i247 = phi i32 [ 1, %get_cell_size.exit.thread ], [ %23, %get_cell_size.exit ]
  %start46 = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %start46, align 4
  %inc47 = add nuw nsw i32 %memcount.0250, 1
  %arrayidx48 = getelementptr [64 x i32], ptr %mem_reg_property, i32 0, i32 %memcount.0250
  store i32 %26, ptr %arrayidx48, align 4
  %27 = load i32, ptr %u29, align 4
  %inc51 = add nuw nsw i32 %memcount.0250, 2
  %arrayidx52 = getelementptr [64 x i32], ptr %mem_reg_property, i32 0, i32 %inc47
  store i32 %27, ptr %arrayidx52, align 4
  br label %for.inc

if.then59:                                        ; preds = %for.body
  %u60 = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1
  %28 = load i32, ptr %u60, align 4
  %size63 = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1, i32 0, i32 2
  %29 = load i32, ptr %size63, align 4
  %call.i.i141 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str) #5
  %cmp.i.i142 = icmp eq i32 %call.i.i141, -1
  br i1 %cmp.i.i142, label %if.then.i.i144, label %node_offset.exit.i147

if.then.i.i144:                                   ; preds = %if.then59
  %call1.i.i143 = call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str, i32 0, i32 1)) #5
  br label %node_offset.exit.i147

node_offset.exit.i147:                            ; preds = %if.then.i.i144, %if.then59
  %offset.0.i.i145 = phi i32 [ %call1.i.i143, %if.then.i.i144 ], [ %call.i.i141, %if.then59 ]
  %cmp.i146 = icmp slt i32 %offset.0.i.i145, 0
  br i1 %cmp.i146, label %setprop_cell.exit, label %if.end.i148

if.end.i148:                                      ; preds = %node_offset.exit.i147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  store i32 %28, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %offset.0.i.i145, ptr noundef nonnull @.str.2, ptr noundef nonnull %tmp.i.i.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #4
  br label %setprop_cell.exit

setprop_cell.exit:                                ; preds = %if.end.i148, %node_offset.exit.i147
  %add = add i32 %29, %28
  %call.i.i150 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str) #5
  %cmp.i.i151 = icmp eq i32 %call.i.i150, -1
  br i1 %cmp.i.i151, label %if.then.i.i153, label %node_offset.exit.i156

if.then.i.i153:                                   ; preds = %setprop_cell.exit
  %call1.i.i152 = call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str, i32 0, i32 1)) #5
  br label %node_offset.exit.i156

node_offset.exit.i156:                            ; preds = %if.then.i.i153, %setprop_cell.exit
  %offset.0.i.i154 = phi i32 [ %call1.i.i152, %if.then.i.i153 ], [ %call.i.i150, %setprop_cell.exit ]
  %cmp.i155 = icmp slt i32 %offset.0.i.i154, 0
  br i1 %cmp.i155, label %for.inc, label %if.end.i158

if.end.i158:                                      ; preds = %node_offset.exit.i156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i149) #4
  store i32 %add, ptr %tmp.i.i.i149, align 4
  %call.i.i.i157 = call i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %offset.0.i.i154, ptr noundef nonnull @.str.3, ptr noundef nonnull %tmp.i.i.i149, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i149) #4
  br label %for.inc

if.then71:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %serno) #4
  store i8 -1, ptr %20, align 1, !annotation !9
  %u73 = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1
  %high = getelementptr inbounds %struct.tag, ptr %atag.0253, i32 0, i32 1, i32 0, i32 2
  %30 = load i32, ptr %high, align 4
  %shr.i = lshr i32 %30, 28
  %shl.i = shl i32 %30, 4
  %cmp1.i = icmp ult i32 %30, -1610612736
  %add.i160 = or i32 %shr.i, 48
  %add2.i = add nuw nsw i32 %shr.i, 55
  %digit.0.i = select i1 %cmp1.i, i32 %add.i160, i32 %add2.i
  %conv.i = trunc i32 %digit.0.i to i8
  store i8 %conv.i, ptr %serno, align 1
  %shr.1.i = lshr i32 %shl.i, 28
  %shl.1.i = shl i32 %30, 8
  %cmp1.1.i = icmp ult i32 %shl.i, -1610612736
  %add.1.i = or i32 %shr.1.i, 48
  %add2.1.i = add nuw nsw i32 %shr.1.i, 55
  %digit.0.1.i = select i1 %cmp1.1.i, i32 %add.1.i, i32 %add2.1.i
  %conv.1.i = trunc i32 %digit.0.1.i to i8
  store i8 %conv.1.i, ptr %4, align 1
  %shr.2.i = lshr i32 %shl.1.i, 28
  %shl.2.i = shl i32 %30, 12
  %cmp1.2.i = icmp ult i32 %shl.1.i, -1610612736
  %add.2.i = or i32 %shr.2.i, 48
  %add2.2.i = add nuw nsw i32 %shr.2.i, 55
  %digit.0.2.i = select i1 %cmp1.2.i, i32 %add.2.i, i32 %add2.2.i
  %conv.2.i = trunc i32 %digit.0.2.i to i8
  store i8 %conv.2.i, ptr %5, align 1
  %shr.3.i = lshr i32 %shl.2.i, 28
  %shl.3.i = shl i32 %30, 16
  %cmp1.3.i = icmp ult i32 %shl.2.i, -1610612736
  %add.3.i = or i32 %shr.3.i, 48
  %add2.3.i = add nuw nsw i32 %shr.3.i, 55
  %digit.0.3.i = select i1 %cmp1.3.i, i32 %add.3.i, i32 %add2.3.i
  %conv.3.i = trunc i32 %digit.0.3.i to i8
  store i8 %conv.3.i, ptr %6, align 1
  %shr.4.i = lshr i32 %shl.3.i, 28
  %shl.4.i = shl i32 %30, 20
  %cmp1.4.i = icmp ult i32 %shl.3.i, -1610612736
  %add.4.i = or i32 %shr.4.i, 48
  %add2.4.i = add nuw nsw i32 %shr.4.i, 55
  %digit.0.4.i = select i1 %cmp1.4.i, i32 %add.4.i, i32 %add2.4.i
  %conv.4.i = trunc i32 %digit.0.4.i to i8
  store i8 %conv.4.i, ptr %7, align 1
  %shr.5.i = lshr i32 %shl.4.i, 28
  %shl.5.i = shl i32 %30, 24
  %cmp1.5.i = icmp ult i32 %shl.4.i, -1610612736
  %add.5.i = or i32 %shr.5.i, 48
  %add2.5.i = add nuw nsw i32 %shr.5.i, 55
  %digit.0.5.i = select i1 %cmp1.5.i, i32 %add.5.i, i32 %add2.5.i
  %conv.5.i = trunc i32 %digit.0.5.i to i8
  store i8 %conv.5.i, ptr %8, align 1
  %shr.6.i = lshr i32 %shl.5.i, 28
  %shl.6.i = shl i32 %30, 28
  %cmp1.6.i = icmp ult i32 %shl.5.i, -1610612736
  %add.6.i = or i32 %shr.6.i, 48
  %add2.6.i = add nuw nsw i32 %shr.6.i, 55
  %digit.0.6.i = select i1 %cmp1.6.i, i32 %add.6.i, i32 %add2.6.i
  %conv.6.i = trunc i32 %digit.0.6.i to i8
  store i8 %conv.6.i, ptr %9, align 1
  %shr.7.i = and i32 %30, 15
  %cmp1.7.i = icmp ult i32 %shl.6.i, -1610612736
  %add.7.i = or i32 %shr.7.i, 48
  %add2.7.i = add nuw nsw i32 %shr.7.i, 55
  %digit.0.7.i = select i1 %cmp1.7.i, i32 %add.7.i, i32 %add2.7.i
  %conv.7.i = trunc i32 %digit.0.7.i to i8
  store i8 %conv.7.i, ptr %10, align 1
  %31 = load i32, ptr %u73, align 4
  %shr.i161 = lshr i32 %31, 28
  %shl.i162 = shl i32 %31, 4
  %cmp1.i163 = icmp ult i32 %31, -1610612736
  %add.i164 = or i32 %shr.i161, 48
  %add2.i165 = add nuw nsw i32 %shr.i161, 55
  %digit.0.i166 = select i1 %cmp1.i163, i32 %add.i164, i32 %add2.i165
  %conv.i167 = trunc i32 %digit.0.i166 to i8
  store i8 %conv.i167, ptr %11, align 1
  %shr.1.i169 = lshr i32 %shl.i162, 28
  %shl.1.i170 = shl i32 %31, 8
  %cmp1.1.i171 = icmp ult i32 %shl.i162, -1610612736
  %add.1.i172 = or i32 %shr.1.i169, 48
  %add2.1.i173 = add nuw nsw i32 %shr.1.i169, 55
  %digit.0.1.i174 = select i1 %cmp1.1.i171, i32 %add.1.i172, i32 %add2.1.i173
  %conv.1.i175 = trunc i32 %digit.0.1.i174 to i8
  store i8 %conv.1.i175, ptr %12, align 1
  %shr.2.i177 = lshr i32 %shl.1.i170, 28
  %shl.2.i178 = shl i32 %31, 12
  %cmp1.2.i179 = icmp ult i32 %shl.1.i170, -1610612736
  %add.2.i180 = or i32 %shr.2.i177, 48
  %add2.2.i181 = add nuw nsw i32 %shr.2.i177, 55
  %digit.0.2.i182 = select i1 %cmp1.2.i179, i32 %add.2.i180, i32 %add2.2.i181
  %conv.2.i183 = trunc i32 %digit.0.2.i182 to i8
  store i8 %conv.2.i183, ptr %13, align 1
  %shr.3.i185 = lshr i32 %shl.2.i178, 28
  %shl.3.i186 = shl i32 %31, 16
  %cmp1.3.i187 = icmp ult i32 %shl.2.i178, -1610612736
  %add.3.i188 = or i32 %shr.3.i185, 48
  %add2.3.i189 = add nuw nsw i32 %shr.3.i185, 55
  %digit.0.3.i190 = select i1 %cmp1.3.i187, i32 %add.3.i188, i32 %add2.3.i189
  %conv.3.i191 = trunc i32 %digit.0.3.i190 to i8
  store i8 %conv.3.i191, ptr %14, align 1
  %shr.4.i193 = lshr i32 %shl.3.i186, 28
  %shl.4.i194 = shl i32 %31, 20
  %cmp1.4.i195 = icmp ult i32 %shl.3.i186, -1610612736
  %add.4.i196 = or i32 %shr.4.i193, 48
  %add2.4.i197 = add nuw nsw i32 %shr.4.i193, 55
  %digit.0.4.i198 = select i1 %cmp1.4.i195, i32 %add.4.i196, i32 %add2.4.i197
  %conv.4.i199 = trunc i32 %digit.0.4.i198 to i8
  store i8 %conv.4.i199, ptr %15, align 1
  %shr.5.i201 = lshr i32 %shl.4.i194, 28
  %shl.5.i202 = shl i32 %31, 24
  %cmp1.5.i203 = icmp ult i32 %shl.4.i194, -1610612736
  %add.5.i204 = or i32 %shr.5.i201, 48
  %add2.5.i205 = add nuw nsw i32 %shr.5.i201, 55
  %digit.0.5.i206 = select i1 %cmp1.5.i203, i32 %add.5.i204, i32 %add2.5.i205
  %conv.5.i207 = trunc i32 %digit.0.5.i206 to i8
  store i8 %conv.5.i207, ptr %16, align 1
  %shr.6.i209 = lshr i32 %shl.5.i202, 28
  %shl.6.i210 = shl i32 %31, 28
  %cmp1.6.i211 = icmp ult i32 %shl.5.i202, -1610612736
  %add.6.i212 = or i32 %shr.6.i209, 48
  %add2.6.i213 = add nuw nsw i32 %shr.6.i209, 55
  %digit.0.6.i214 = select i1 %cmp1.6.i211, i32 %add.6.i212, i32 %add2.6.i213
  %conv.6.i215 = trunc i32 %digit.0.6.i214 to i8
  store i8 %conv.6.i215, ptr %17, align 1
  %shr.7.i217 = and i32 %31, 15
  %cmp1.7.i218 = icmp ult i32 %shl.6.i210, -1610612736
  %add.7.i219 = or i32 %shr.7.i217, 48
  %add2.7.i220 = add nuw nsw i32 %shr.7.i217, 55
  %digit.0.7.i221 = select i1 %cmp1.7.i218, i32 %add.7.i219, i32 %add2.7.i220
  %conv.7.i222 = trunc i32 %digit.0.7.i221 to i8
  store i8 %conv.7.i222, ptr %18, align 1
  store i8 0, ptr %19, align 1
  %call.i.i224 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str.4) #5
  %cmp.i.i225 = icmp eq i32 %call.i.i224, -1
  br i1 %cmp.i.i225, label %if.then.i.i227, label %node_offset.exit.i230

if.then.i.i227:                                   ; preds = %if.then71
  %call1.i.i226 = call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef 0, ptr noundef getelementptr inbounds ([2 x i8], ptr @.str.4, i32 0, i32 1)) #5
  br label %node_offset.exit.i230

node_offset.exit.i230:                            ; preds = %if.then.i.i227, %if.then71
  %offset.0.i.i228 = phi i32 [ %call1.i.i226, %if.then.i.i227 ], [ %call.i.i224, %if.then71 ]
  %cmp.i229 = icmp slt i32 %offset.0.i.i228, 0
  br i1 %cmp.i229, label %setprop_string.exit235, label %if.end.i234

if.end.i234:                                      ; preds = %node_offset.exit.i230
  %call1.i231 = call i32 @strlen(ptr noundef nonnull %serno) #5
  %add.i232 = add i32 %call1.i231, 1
  %call2.i233 = call i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %offset.0.i.i228, ptr noundef nonnull @.str.5, ptr noundef nonnull %serno, i32 noundef %add.i232) #5
  br label %setprop_string.exit235

setprop_string.exit235:                           ; preds = %if.end.i234, %node_offset.exit.i230
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %serno) #4
  br label %for.inc

for.inc:                                          ; preds = %setprop_string.exit235, %if.end.i158, %node_offset.exit.i156, %if.else44, %if.then36, %if.end28, %if.then25, %if.end.i, %node_offset.exit.i, %for.body
  %memsize.1 = phi i32 [ %memsize.0249, %if.then25 ], [ 2, %if.then36 ], [ %cell_size.0.i247, %if.else44 ], [ %memsize.0249, %if.end28 ], [ %memsize.0249, %setprop_string.exit235 ], [ %memsize.0249, %for.body ], [ %memsize.0249, %node_offset.exit.i ], [ %memsize.0249, %if.end.i ], [ %memsize.0249, %node_offset.exit.i156 ], [ %memsize.0249, %if.end.i158 ]
  %memcount.1 = phi i32 [ %memcount.0250, %if.then25 ], [ %inc42, %if.then36 ], [ %inc51, %if.else44 ], [ %memcount.0250, %if.end28 ], [ %memcount.0250, %setprop_string.exit235 ], [ %memcount.0250, %for.body ], [ %memcount.0250, %node_offset.exit.i ], [ %memcount.0250, %if.end.i ], [ %memcount.0250, %node_offset.exit.i156 ], [ %memcount.0250, %if.end.i158 ]
  %32 = load i32, ptr %atag.0253, align 4
  %add.ptr84 = getelementptr i32, ptr %atag.0253, i32 %32
  %33 = load i32, ptr %add.ptr84, align 4
  %tobool16.not = icmp eq i32 %33, 0
  br i1 %tobool16.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool85.not = icmp eq i32 %memcount.1, 0
  br i1 %tobool85.not, label %if.end90, label %if.then86

if.then86:                                        ; preds = %for.end
  %mul = shl i32 %memsize.1, 2
  %mul88 = mul i32 %mul, %memcount.1
  %call.i.i236 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str.6) #5
  %cmp.i.i237 = icmp eq i32 %call.i.i236, -1
  br i1 %cmp.i.i237, label %if.then.i.i239, label %node_offset.exit.i242

if.then.i.i239:                                   ; preds = %if.then86
  %call1.i.i238 = call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str.6, i32 0, i32 1)) #5
  br label %node_offset.exit.i242

node_offset.exit.i242:                            ; preds = %if.then.i.i239, %if.then86
  %offset.0.i.i240 = phi i32 [ %call1.i.i238, %if.then.i.i239 ], [ %call.i.i236, %if.then86 ]
  %cmp.i241 = icmp slt i32 %offset.0.i.i240, 0
  br i1 %cmp.i241, label %if.end90, label %if.end.i244

if.end.i244:                                      ; preds = %node_offset.exit.i242
  %call1.i243 = call i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %offset.0.i.i240, ptr noundef nonnull @.str.7, ptr noundef nonnull %mem_reg_property, i32 noundef %mul88) #5
  br label %if.end90

if.end90:                                         ; preds = %if.end.i244, %node_offset.exit.i242, %for.end, %for.cond.preheader
  %call91 = call i32 @fdt_pack(ptr noundef %fdt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end10, %lor.lhs.false, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ %call91, %if.end90 ], [ 1, %entry ], [ 0, %if.end ], [ 1, %lor.lhs.false ], [ 1, %if.end2 ], [ %call, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mem_reg_property) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_add_subnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
