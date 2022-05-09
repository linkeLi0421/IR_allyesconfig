; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_si_mem_io.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_si_mem_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}

@ipmi_si_mem_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid register size: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipmi_si_mem_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/ipmi/ipmi_si_mem_io.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipmi_si_mem_setup._entry_ptr = internal global ptr @ipmi_si_mem_setup._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [38 x i8] c"../drivers/char/ipmi/ipmi_si_mem_io.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 120, i32 7 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @ipmi_si_mem_setup._entry, ptr @ipmi_si_mem_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_mem_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmi_si_mem_setup(ptr nocapture noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_data = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 7
  %0 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %regsize = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 4
  %2 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regsize, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 4, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %3) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %if.end.sw.epilog_crit_edge
  %intf_mem_inl.sink = phi ptr [ @intf_mem_inl, %sw.bb4 ], [ @intf_mem_inw, %sw.bb1 ], [ @intf_mem_inb, %if.end.sw.epilog_crit_edge ]
  %intf_mem_outl.sink = phi ptr [ @intf_mem_outl, %sw.bb4 ], [ @intf_mem_outw, %sw.bb1 ], [ @intf_mem_outb, %if.end.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %intf_mem_inl.sink, ptr %io, align 4
  %outputb6 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 1
  %8 = ptrtoint ptr %outputb6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %intf_mem_outl.sink, ptr %outputb6, align 4
  %io_size = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 12
  %9 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp71.not = icmp eq i32 %10, 0
  br i1 %cmp71.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %12, %idx.072
  %add = add i32 %mul, %1
  %13 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regsize, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %add, i32 noundef %14, ptr noundef nonnull @.str.5, i32 noundef 0) #4
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %15 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.072)
  %cmp5.i = icmp sgt i32 %idx.072, 0
  br i1 %cmp5.i, label %if.then10.for.body.i_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %idx.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then10.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regspacing, align 4
  %mul.i = mul i32 %18, %idx.06.i
  %add.i = add i32 %mul.i, %16
  %19 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regsize, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %add.i, i32 noundef %20) #4
  %inc.i = add nuw nsw i32 %idx.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.072
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.072, 1
  %21 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_size, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %22, %for.inc.for.end_crit_edge ]
  %regspacing13 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %23 = ptrtoint ptr %regspacing13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regspacing13, align 4
  %mul14 = mul i32 %24, %.lcssa
  %25 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regsize, align 4
  %sub.neg = sub i32 %26, %24
  %sub17 = add i32 %sub.neg, %mul14
  %call18 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %sub17) #4
  %addr19 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %27 = ptrtoint ptr %addr19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call18, ptr %addr19, align 4
  %cmp21 = icmp eq ptr %call18, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %28 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_size, align 4
  %30 = ptrtoint ptr %addr_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5.i56 = icmp sgt i32 %29, 0
  br i1 %cmp5.i56, label %if.then22.for.body.i65_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22.for.body.i65_crit_edge:                 ; preds = %if.then22
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %if.then22.for.body.i65_crit_edge
  %idx.06.i60 = phi i32 [ %inc.i63, %for.body.i65.for.body.i65_crit_edge ], [ 0, %if.then22.for.body.i65_crit_edge ]
  %32 = ptrtoint ptr %regspacing13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regspacing13, align 4
  %mul.i61 = mul i32 %33, %idx.06.i60
  %add.i62 = add i32 %mul.i61, %31
  %34 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regsize, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %add.i62, i32 noundef %35) #4
  %inc.i63 = add nuw nsw i32 %idx.06.i60, 1
  %exitcond.not.i64 = icmp eq i32 %inc.i63, %29
  br i1 %exitcond.not.i64, label %for.body.i65.cleanup_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i65

for.body.i65.cleanup_crit_edge:                   ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %io_cleanup = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 11
  %36 = ptrtoint ptr %io_cleanup to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mem_cleanup, ptr %io_cleanup, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %for.body.i65.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end24 ], [ -19, %entry.cleanup_crit_edge ], [ -5, %if.then10.cleanup_crit_edge ], [ -5, %if.then22.cleanup_crit_edge ], [ -5, %for.body.i65.cleanup_crit_edge ], [ -5, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @intf_mem_inb(ptr nocapture noundef readonly %io, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %3, %offset
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intf_mem_outb(ptr nocapture noundef readonly %io, i32 noundef %offset, i8 noundef zeroext %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %3, %offset
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %b) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @intf_mem_inw(ptr nocapture noundef readonly %io, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %3, %offset
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !23
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %conv = zext i16 %5 to i32
  %regshift = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %6 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regshift, align 4
  %shr = lshr i32 %conv, %7
  %conv2 = trunc i32 %shr to i8
  ret i8 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intf_mem_outw(ptr nocapture noundef readonly %io, i32 noundef %offset, i8 noundef zeroext %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %conv = zext i8 %b to i32
  %regshift = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %0 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regshift, align 4
  %shl = shl i32 %conv, %1
  %conv1 = trunc i32 %shl to i8
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %4 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %5, %offset
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv1) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @intf_mem_inl(ptr nocapture noundef readonly %io, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %3, %offset
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !26
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %regshift = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %6 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regshift, align 4
  %shr = lshr i32 %5, %7
  %conv = trunc i32 %shr to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intf_mem_outl(ptr nocapture noundef readonly %io, i32 noundef %offset, i8 noundef zeroext %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %conv = zext i8 %b to i32
  %regshift = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %0 = ptrtoint ptr %regshift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regshift, align 4
  %shl = shl i32 %conv, %1
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr, align 4
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %5 = ptrtoint ptr %regspacing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regspacing, align 4
  %mul = mul i32 %6, %offset
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !29
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mem_cleanup(ptr nocapture noundef readonly %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @iounmap(ptr noundef nonnull %1) #4
  %io_size = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 12
  %2 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_size, align 4
  %addr_data.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 7
  %4 = ptrtoint ptr %addr_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.i = icmp sgt i32 %3, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %regspacing.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %regsize.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %regspacing.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regspacing.i, align 4
  %mul.i = mul i32 %7, %idx.06.i
  %add.i = add i32 %mul.i, %5
  %8 = ptrtoint ptr %regsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regsize.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %add.i, i32 noundef %9) #4
  %inc.i = add nuw nsw i32 %idx.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_si_mem_io.c", i32 108, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipmi_si_mem_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipmi_si_mem_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_si_mem_io.c", i32 120, i32 7}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 686758}
!20 = !{i64 2154354383}
!21 = !{i64 2154354614}
!22 = !{i64 686363}
!23 = !{i64 686140}
!24 = !{i64 2154355246}
!25 = !{i64 2154355493}
!26 = !{i64 686978}
!27 = !{i64 2154356141}
!28 = !{i64 2154356388}
!29 = !{i64 686560}
