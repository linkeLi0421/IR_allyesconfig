; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_pil_info.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_pil_info.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcom_pil_info_store\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_pil_info_store\09\09\09\09"
module asm "\09.long\09__crc_qcom_pil_info_store\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_pil_info_store:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_pil_info_store\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_pil_info_store:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@pil_reloc_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pil_reloc_lock, i64 52), ptr getelementptr (i8, ptr @pil_reloc_lock, i64 52) }, ptr @pil_reloc_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@_reloc.0 = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@_reloc.1 = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@qcom_pil_info_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014insufficient PIL info slots\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_pil_info_store\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/qcom_pil_info.c\00", [61 x i8] zeroinitializer }, align 32
@qcom_pil_info_store._entry_ptr = internal global ptr @qcom_pil_info_store._entry, section ".printk_index", align 4
@__kstrtab_qcom_pil_info_store = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_pil_info_store = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_pil_info_store = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_pil_info_store to i32), ptr @__kstrtab_qcom_pil_info_store, ptr @__kstrtabns_qcom_pil_info_store }, section "___ksymtab_gpl+qcom_pil_info_store", align 4
@__exitcall_pil_reloc_exit = internal global ptr @pil_reloc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description114 = internal constant [55 x i8] c"qcom_pil_info.description=Qualcomm PIL relocation info\00", section ".modinfo", align 1
@__UNIQUE_ID_file115 = internal constant [52 x i8] c"qcom_pil_info.file=drivers/remoteproc/qcom_pil_info\00", section ".modinfo", align 1
@__UNIQUE_ID_license116 = internal constant [29 x i8] c"qcom_pil_info.license=GPL v2\00", section ".modinfo", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pil_reloc_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pil_reloc_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,pil-reloc-info\00", [44 x i8] zeroinitializer }, align 32
@qcom_pil_info_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to map PIL relocation info region\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_pil_info_init\00", [45 x i8] zeroinitializer }, align 32
@qcom_pil_info_init._entry_ptr = internal global ptr @qcom_pil_info_init._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"pil_reloc_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 102, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 28, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 41, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [38 x i8] c"../drivers/remoteproc/qcom_pil_info.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 52, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_description114, ptr @__UNIQUE_ID_file115, ptr @__UNIQUE_ID_license116, ptr @__exitcall_pil_reloc_exit, ptr @__ksymtab_qcom_pil_info_store, ptr @pil_reloc_exit, ptr @qcom_pil_info_init._entry, ptr @qcom_pil_info_init._entry_ptr, ptr @qcom_pil_info_store._entry, ptr @qcom_pil_info_store._entry_ptr, ptr @pil_reloc_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pil_reloc_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pil_info_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pil_info_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_pil_info_store(ptr noundef %image, i32 noundef %base, i32 noundef %size) #0 align 64 {
entry:
  %imem.i = alloca %struct.resource, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %buf, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pil_reloc_lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imem.i) #7
  %1 = getelementptr inbounds %struct.resource, ptr %imem.i, i32 0, i32 1
  %2 = call ptr @memset(ptr %imem.i, i32 255, i32 32)
  %3 = load ptr, ptr @_reloc.0, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %qcom_pil_info_init.exitthread-pre-split

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.then_crit_edge, label %if.end3.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @of_address_to_resource(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %imem.i) #7
  call void @of_node_put(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end3.i.if.then_crit_edge, label %if.end6.i

if.end3.i.if.then_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end6.i:                                        ; preds = %if.end3.i
  %4 = ptrtoint ptr %imem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imem.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sub.i.i = sub i32 1, %5
  %add.i.i = add i32 %sub.i.i, %7
  %call8.i = call ptr @ioremap(i32 noundef %5, i32 noundef %add.i.i) #7
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %if.then

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %imem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imem.i, align 4
  %sub.i24.i = add i32 %9, 1
  %add.i25.i = sub i32 %sub.i24.i, %11
  call void @mmioset(ptr noundef nonnull %call8.i, i32 noundef 0, i32 noundef %add.i25.i) #7
  store ptr %call8.i, ptr @_reloc.0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = ptrtoint ptr %imem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imem.i, align 4
  %sub.i27.i = add i32 %13, 1
  %add.i28.i = sub i32 %sub.i27.i, %15
  %div.i = udiv i32 %add.i28.i, 20
  store i32 %div.i, ptr @_reloc.1, align 4
  br label %qcom_pil_info_init.exit

qcom_pil_info_init.exitthread-pre-split:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pr = load i32, ptr @_reloc.1, align 4
  br label %qcom_pil_info_init.exit

qcom_pil_info_init.exit:                          ; preds = %qcom_pil_info_init.exitthread-pre-split, %if.end12.i
  %16 = phi i32 [ %.pr, %qcom_pil_info_init.exitthread-pre-split ], [ %div.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp247.not = icmp eq i32 %16, 0
  br i1 %cmp247.not, label %qcom_pil_info_init.exit.do.end_crit_edge, label %qcom_pil_info_init.exit.for.body_crit_edge

qcom_pil_info_init.exit.for.body_crit_edge:       ; preds = %qcom_pil_info_init.exit
  br label %for.body

qcom_pil_info_init.exit.do.end_crit_edge:         ; preds = %qcom_pil_info_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %do.end.i, %if.end3.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end3.i.if.then_crit_edge ], [ -2, %if.end.i.if.then_crit_edge ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imem.i) #7
  br label %cleanup

for.cond:                                         ; preds = %if.end4
  %inc = add nuw i32 %i.048, 1
  %17 = load i32, ptr @_reloc.1, align 4
  %cmp2 = icmp ult i32 %inc, %17
  br i1 %cmp2, label %for.cond.for.body_crit_edge, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %qcom_pil_info_init.exit.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %qcom_pil_info_init.exit.for.body_crit_edge ]
  %18 = load ptr, ptr @_reloc.0, align 4
  %mul = mul i32 %i.048, 20
  %add.ptr = getelementptr i8, ptr %18, i32 %mul
  call void @mmiocpy(ptr noundef nonnull %buf, ptr noundef %add.ptr, i32 noundef 8) #7
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %found_unused, label %if.end4

if.end4:                                          ; preds = %for.body
  %call6 = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef %image, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.do.body12_crit_edge, label %for.cond

if.end4.do.body12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %qcom_pil_info_init.exit.do.end_crit_edge
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

found_unused:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @strnlen(ptr noundef %image, i32 noundef 8) #11
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %image, i32 noundef %call11) #7
  br label %do.body12

do.body12:                                        ; preds = %found_unused, %if.end4.do.body12_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @arm_heavy_mb() #7
  %21 = call i32 @llvm.bswap.i32(i32 %base)
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %21) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @arm_heavy_mb() #7
  %add.ptr21 = getelementptr i8, ptr %add.ptr15, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %22 = call i32 @llvm.bswap.i32(i32 %size)
  %add.ptr26 = getelementptr i8, ptr %add.ptr15, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %22) #7, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %do.body12 ], [ -12, %do.end ]
  call void @mutex_unlock(ptr noundef nonnull @pil_reloc_lock) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pil_reloc_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @pil_reloc_lock, i32 noundef 0) #7
  %0 = load ptr, ptr @_reloc.0, align 4
  tail call void @iounmap(ptr noundef %0) #7
  store ptr null, ptr @_reloc.0, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pil_reloc_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 102, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qcom_pil_info_store._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qcom_pil_info_store._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_qcom_pil_info_store, !7, !"__ksymtab_qcom_pil_info_store", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 117, i32 1}
!8 = !{ptr @__exitcall_pil_reloc_exit, !9, !"__exitcall_pil_reloc_exit", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 126, i32 1}
!10 = !{ptr @__UNIQUE_ID_description114, !11, !"__UNIQUE_ID_description114", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 128, i32 1}
!12 = !{ptr @__UNIQUE_ID_file115, !13, !"__UNIQUE_ID_file115", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 129, i32 1}
!14 = !{ptr @__UNIQUE_ID_license116, !13, !"__UNIQUE_ID_license116", i1 false, i1 false}
!15 = distinct !{null, !16, !"_reloc", i1 false, i1 false}
!16 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 27, i32 25}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 28, i32 8}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pil_reloc_lock, !18, !"pil_reloc_lock", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 41, i32 43}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/remoteproc/qcom_pil_info.c", i32 52, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qcom_pil_info_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_pil_info_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2151739602}
!38 = !{i64 4174915}
!39 = !{i64 2151739996}
!40 = !{i64 2151740429}
