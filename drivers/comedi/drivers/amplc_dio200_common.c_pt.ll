; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/amplc_dio200_common.c_pt.bc'
source_filename = "../drivers/comedi/drivers/amplc_dio200_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+amplc_dio200_set_enhance\22, \22a\22\09"
module asm "\09.weak\09__crc_amplc_dio200_set_enhance\09\09\09\09"
module asm "\09.long\09__crc_amplc_dio200_set_enhance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amplc_dio200_set_enhance:\09\09\09\09\09"
module asm "\09.asciz \09\22amplc_dio200_set_enhance\22\09\09\09\09\09"
module asm "__kstrtabns_amplc_dio200_set_enhance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+amplc_dio200_common_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_amplc_dio200_common_attach\09\09\09\09"
module asm "\09.long\09__crc_amplc_dio200_common_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amplc_dio200_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22amplc_dio200_common_attach\22\09\09\09\09\09"
module asm "__kstrtabns_amplc_dio200_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dio200_board = type { ptr, i8, i16, [8 x i8], [8 x i8], i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }
%struct.dio200_subdev_intr = type { %struct.spinlock, i32, i32, i32, i8 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__kstrtab_amplc_dio200_set_enhance = external dso_local constant [0 x i8], align 1
@__kstrtabns_amplc_dio200_set_enhance = external dso_local constant [0 x i8], align 1
@__ksymtab_amplc_dio200_set_enhance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amplc_dio200_set_enhance to i32), ptr @__kstrtab_amplc_dio200_set_enhance, ptr @__kstrtabns_amplc_dio200_set_enhance }, section "___ksymtab_gpl+amplc_dio200_set_enhance", align 4
@amplc_dio200_common_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 836, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"warning! irq %u unavailable!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amplc_dio200_common_attach\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/comedi/drivers/amplc_dio200_common.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amplc_dio200_common_attach._entry_ptr = internal global ptr @amplc_dio200_common_attach._entry, section ".printk_index", align 4
@__kstrtab_amplc_dio200_common_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_amplc_dio200_common_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_amplc_dio200_common_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amplc_dio200_common_attach to i32), ptr @__kstrtab_amplc_dio200_common_attach, ptr @__kstrtabns_amplc_dio200_common_attach }, section "___ksymtab_gpl+amplc_dio200_common_attach", align 4
@__initcall__kmod_amplc_dio200_common__234_848_amplc_dio200_common_init6 = internal global ptr @amplc_dio200_common_init, section ".initcall6.init", align 4
@__exitcall_amplc_dio200_common_exit = internal global ptr @amplc_dio200_common_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [57 x i8] c"amplc_dio200_common.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [84 x i8] c"amplc_dio200_common.description=Comedi helper for amplc_dio200 and amplc_dio200_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [68 x i8] c"amplc_dio200_common.file=drivers/comedi/drivers/amplc_dio200_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [32 x i8] c"amplc_dio200_common.license=GPL\00", section ".modinfo", align 1
@clock_period = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 0, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@dio200_subdev_intr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&subpriv->spinlock\00", [45 x i8] zeroinitializer }, align 32
@ts_clock_period = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1000, i32 1000000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 34, i64 2003, i64 2004]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 2001, i64 2002, i64 2003, i64 2004]
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 835, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"clock_period\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 51, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 431, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"ts_clock_period\00", align 1
@___asan_gen_.37 = private constant [48 x i8] c"../drivers/comedi/drivers/amplc_dio200_common.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 71, i32 27 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_amplc_dio200_common_exit, ptr @__initcall__kmod_amplc_dio200_common__234_848_amplc_dio200_common_init6, ptr @__ksymtab_amplc_dio200_common_attach, ptr @__ksymtab_amplc_dio200_set_enhance, ptr @amplc_dio200_common_attach._entry, ptr @amplc_dio200_common_attach._entry_ptr, ptr @amplc_dio200_common_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @clock_period, ptr @dio200_subdev_intr_init.__key, ptr @.str.6, ptr @ts_clock_period], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_dio200_common_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_period to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dio200_subdev_intr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_clock_period to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amplc_dio200_set_enhance(ptr nocapture noundef readonly %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i = getelementptr inbounds %struct.dio200_board, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_pcie.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %is_pcie.i, align 4
  %3 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select.i = select i1 %tobool.not.i, i32 32, i32 256
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i, label %do.body4.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %spec.select.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %val) #7, !srcloc !39
  br label %dio200_write8.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %9, %spec.select.i
  %and.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %val) #7, !srcloc !39
  br label %dio200_write8.exit

dio200_write8.exit:                               ; preds = %do.body4.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amplc_dio200_common_attach(ptr noundef %dev, i32 noundef %irq, i32 noundef %req_irq_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %n_subdevs = getelementptr inbounds %struct.dio200_board, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_subdevs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %n_subdevs, align 2
  %conv = zext i16 %3 to i32
  %call = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp136.not = icmp eq i32 %5, 0
  br i1 %cmp136.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool21.not = icmp eq i32 %irq, 0
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137
  %arrayidx2 = getelementptr %struct.dio200_board, ptr %1, i32 0, i32 3, i32 %n.0137
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default [
    i8 3, label %sw.bb
    i8 2, label %sw.bb11
    i8 1, label %sw.bb20
    i8 4, label %sw.bb34
  ]

sw.bb:                                            ; preds = %for.body
  %arrayidx4 = getelementptr %struct.dio200_board, ptr %1, i32 0, i32 4, i32 %n.0137
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %12 to i32
  %13 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board_ptr, align 4
  %is_pcie.i = getelementptr inbounds %struct.dio200_board, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %is_pcie.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %is_pcie.i, align 4
  %16 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %shl.i = shl nuw nsw i32 %conv5, 3
  %offset.addr.0.i = select i1 %tobool.not.i, i32 %conv5, i32 %shl.i
  %regshift.0.i = select i1 %tobool.not.i, i32 0, i32 3
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.else4.i, label %if.then2.i

if.then2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %18, i32 %offset.addr.0.i
  %call.i = tail call ptr @comedi_8254_mm_init(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1, i32 noundef %regshift.0.i) #7
  br label %if.end6.i

if.else4.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i.i, align 4
  %add.i = add i32 %20, %offset.addr.0.i
  %call5.i = tail call ptr @comedi_8254_init(i32 noundef %add.i, i32 noundef 0, i32 noundef 1, i32 noundef %regshift.0.i) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else4.i, %if.then2.i
  %i8254.0.i = phi ptr [ %call.i, %if.then2.i ], [ %call5.i, %if.else4.i ]
  %tobool7.not.i = icmp eq ptr %i8254.0.i, null
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end9.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end6.i
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx, ptr noundef nonnull %i8254.0.i) #7
  %insn_config.i = getelementptr inbounds %struct.comedi_8254, ptr %i8254.0.i, i32 0, i32 14
  %21 = ptrtoint ptr %insn_config.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dio200_subdev_8254_config, ptr %insn_config.i, align 4
  tail call void @comedi_set_spriv_auto_free(ptr noundef %arrayidx) #7
  %22 = ptrtoint ptr %is_pcie.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load10.i = load i8, ptr %is_pcie.i, align 4
  %23 = and i8 %bf.load10.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not.i = icmp eq i8 %23, 0
  br i1 %tobool14.not.i, label %if.end9.i.for.inc_crit_edge, label %for.cond.preheader.i

if.end9.i.for.inc_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.end9.i
  %private.i.i.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %dio200_subdev_8254_set_clock_src.exit.i.for.body.i_crit_edge, %for.cond.preheader.i
  %chan.071.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %dio200_subdev_8254_set_clock_src.exit.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %board_ptr, align 4
  %26 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i.i.i, align 4
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mmio1.i.i.i = getelementptr inbounds %struct.comedi_8254, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio1.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %dio200_subdev_8254_offset.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %27, align 4
  %34 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase.i.i, align 4
  %sub.i.i.i = sub i32 %33, %35
  br label %dio200_subdev_8254_offset.exit.i.i

dio200_subdev_8254_offset.exit.i.i:               ; preds = %if.else.i.i.i, %if.then.i.i.i
  %offset.0.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %if.then.i.i.i ], [ %sub.i.i.i, %if.else.i.i.i ]
  %is_pcie.i.i.i = getelementptr inbounds %struct.dio200_board, ptr %25, i32 0, i32 5
  %36 = ptrtoint ptr %is_pcie.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i.i = load i8, ptr %is_pcie.i.i.i, align 4
  %37 = and i8 %bf.load.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool4.not.i.i.i = icmp eq i8 %37, 0
  %shr.i.i.i = lshr i32 %offset.0.i.i.i, 3
  %spec.select.i.i.i = select i1 %tobool4.not.i.i.i, i32 %offset.0.i.i.i, i32 %shr.i.i.i
  %shr.i.i = lshr i32 %spec.select.i.i.i, 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 27
  %38 = shl i32 %spec.select.i.i.i, 3
  %shl.i.i.i = and i32 %38, 32
  %shl1.i.i.i = shl i32 %chan.071.i, 3
  %or5.i.i.i = or i32 %shl.i.i.i, %shl1.i.i.i
  %conv.i.i.i = trunc i32 %or5.i.i.i to i8
  %shl.i9.i.i = shl i32 %add.i.i, 3
  %spec.select.i10.i.i = select i1 %tobool4.not.i.i.i, i32 %add.i.i, i32 %shl.i9.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %dio200_subdev_8254_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 %spec.select.i10.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv.i.i.i) #7, !srcloc !39
  br label %dio200_subdev_8254_set_gate_src.exit.i

do.body4.i.i.i:                                   ; preds = %dio200_subdev_8254_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase.i.i, align 4
  %add.i.i.i = add i32 %42, %spec.select.i10.i.i
  %and.i12.i.i = and i32 %add.i.i.i, 1048575
  %add7.i.i.i = or i32 %and.i12.i.i, -18874368
  %43 = inttoptr i32 %add7.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv.i.i.i) #7, !srcloc !39
  br label %dio200_subdev_8254_set_gate_src.exit.i

dio200_subdev_8254_set_gate_src.exit.i:           ; preds = %do.body4.i.i.i, %do.body.i.i.i
  %44 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %board_ptr, align 4
  %46 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private.i.i.i, align 4
  %48 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i.i, align 4
  %tobool.not.i.i40.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i40.i, label %if.else.i.i48.i, label %if.then.i.i45.i

if.then.i.i45.i:                                  ; preds = %dio200_subdev_8254_set_gate_src.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mmio1.i.i41.i = getelementptr inbounds %struct.comedi_8254, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %mmio1.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio1.i.i41.i, align 4
  %sub.ptr.lhs.cast.i.i42.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i43.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i44.i = sub i32 %sub.ptr.lhs.cast.i.i42.i, %sub.ptr.rhs.cast.i.i43.i
  br label %dio200_subdev_8254_offset.exit.i63.i

if.else.i.i48.i:                                  ; preds = %dio200_subdev_8254_set_gate_src.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %47, align 4
  %54 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase.i.i, align 4
  %sub.i.i47.i = sub i32 %53, %55
  br label %dio200_subdev_8254_offset.exit.i63.i

dio200_subdev_8254_offset.exit.i63.i:             ; preds = %if.else.i.i48.i, %if.then.i.i45.i
  %offset.0.i.i49.i = phi i32 [ %sub.ptr.sub.i.i44.i, %if.then.i.i45.i ], [ %sub.i.i47.i, %if.else.i.i48.i ]
  %is_pcie.i.i50.i = getelementptr inbounds %struct.dio200_board, ptr %45, i32 0, i32 5
  %56 = ptrtoint ptr %is_pcie.i.i50.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i51.i = load i8, ptr %is_pcie.i.i50.i, align 4
  %57 = and i8 %bf.load.i.i51.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool4.not.i.i52.i = icmp eq i8 %57, 0
  %shr.i.i53.i = lshr i32 %offset.0.i.i49.i, 3
  %spec.select.i.i54.i = select i1 %tobool4.not.i.i52.i, i32 %offset.0.i.i49.i, i32 %shr.i.i53.i
  %shr.i55.i = lshr i32 %spec.select.i.i54.i, 3
  %add.i56.i = add nuw nsw i32 %shr.i55.i, 24
  %58 = shl i32 %spec.select.i.i54.i, 3
  %shl.i.i57.i = and i32 %58, 32
  %or5.i.i59.i = or i32 %shl.i.i57.i, %shl1.i.i.i
  %conv.i.i60.i = trunc i32 %or5.i.i59.i to i8
  %shl.i9.i61.i = shl i32 %add.i56.i, 3
  %spec.select.i10.i62.i = select i1 %tobool4.not.i.i52.i, i32 %add.i56.i, i32 %shl.i9.i61.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i40.i, label %do.body4.i.i70.i, label %do.body.i.i65.i

do.body.i.i65.i:                                  ; preds = %dio200_subdev_8254_offset.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %60, i32 %spec.select.i10.i62.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i64.i, i8 %conv.i.i60.i) #7, !srcloc !39
  br label %dio200_subdev_8254_set_clock_src.exit.i

do.body4.i.i70.i:                                 ; preds = %dio200_subdev_8254_offset.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i.i, align 4
  %add.i.i67.i = add i32 %62, %spec.select.i10.i62.i
  %and.i12.i68.i = and i32 %add.i.i67.i, 1048575
  %add7.i.i69.i = or i32 %and.i12.i68.i, -18874368
  %63 = inttoptr i32 %add7.i.i69.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv.i.i60.i) #7, !srcloc !39
  br label %dio200_subdev_8254_set_clock_src.exit.i

dio200_subdev_8254_set_clock_src.exit.i:          ; preds = %do.body4.i.i70.i, %do.body.i.i65.i
  %inc.i = add nuw nsw i32 %chan.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %dio200_subdev_8254_set_clock_src.exit.i.for.inc_crit_edge, label %dio200_subdev_8254_set_clock_src.exit.i.for.body.i_crit_edge

dio200_subdev_8254_set_clock_src.exit.i.for.body.i_crit_edge: ; preds = %dio200_subdev_8254_set_clock_src.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dio200_subdev_8254_set_clock_src.exit.i.for.inc_crit_edge: ; preds = %dio200_subdev_8254_set_clock_src.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  %arrayidx13 = getelementptr %struct.dio200_board, ptr %1, i32 0, i32 4, i32 %n.0137
  %64 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx13, align 1
  %call.i98 = tail call ptr @comedi_alloc_spriv(ptr noundef %arrayidx, i32 noundef 4) #7
  %tobool.not.i99 = icmp eq ptr %call.i98, null
  br i1 %tobool.not.i99, label %sw.bb11.cleanup_crit_edge, label %if.end.i

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb11
  %conv14 = zext i8 %65 to i32
  %66 = ptrtoint ptr %call.i98 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv14, ptr %call.i98, align 4
  %type.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 2
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 5, ptr %type.i, align 4
  %subdev_flags.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 4
  %68 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 196608, ptr %subdev_flags.i, align 4
  %n_chan.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 3
  %69 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 24, ptr %n_chan.i, align 4
  %range_table.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 15
  %70 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @range_unipolar5, ptr %range_table.i, align 4
  %maxdata.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 13
  %71 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %maxdata.i, align 4
  %insn_bits.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 20
  %72 = ptrtoint ptr %insn_bits.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dio200_subdev_8255_bits, ptr %insn_bits.i, align 4
  %insn_config.i100 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 21
  %73 = ptrtoint ptr %insn_config.i100 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dio200_subdev_8255_config, ptr %insn_config.i100, align 4
  %private.i.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 6
  %74 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %private.i.i, align 4
  %io_bits.i.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 12
  %76 = ptrtoint ptr %io_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_bits.i.i, align 4
  %and.i.i = and i32 %77, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 144, i32 128
  %and2.i.i = and i32 %77, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or5.i.i = or i32 %spec.select.i.i, 2
  %config.1.i.i = select i1 %tobool3.not.i.i, i32 %or5.i.i, i32 %spec.select.i.i
  %and8.i.i = and i32 %77, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %or11.i.i = zext i1 %tobool9.not.i.i to i32
  %config.2.i.i = or i32 %config.1.i.i, %or11.i.i
  %and14.i.i = and i32 %77, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %or17.i.i = or i32 %config.2.i.i, 8
  %config.3.i.i = select i1 %tobool15.not.i.i, i32 %or17.i.i, i32 %config.2.i.i
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %75, align 4
  %add.i.i101 = add i32 %79, 3
  %conv.i.i = trunc i32 %config.3.i.i to i8
  %80 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %board_ptr, align 4
  %is_pcie.i.i.i102 = getelementptr inbounds %struct.dio200_board, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %is_pcie.i.i.i102 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i.i.i103 = load i8, ptr %is_pcie.i.i.i102, align 4
  %83 = and i8 %bf.load.i.i.i103, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i.i104 = icmp eq i8 %83, 0
  %shl.i.i.i105 = shl i32 %add.i.i101, 3
  %spec.select.i.i.i106 = select i1 %tobool.not.i.i.i104, i32 %add.i.i101, i32 %shl.i.i.i105
  %84 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %85, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i.i.i, label %do.body4.i.i.i111, label %do.body.i.i.i108

do.body.i.i.i108:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i107 = getelementptr i8, ptr %87, i32 %spec.select.i.i.i106
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i107, i8 %conv.i.i) #7, !srcloc !39
  br label %for.inc

do.body4.i.i.i111:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iobase.i.i, align 4
  %add.i.i.i109 = add i32 %89, %spec.select.i.i.i106
  %and.i.i.i = and i32 %add.i.i.i109, 1048575
  %add7.i.i.i110 = or i32 %and.i.i.i, -18874368
  %90 = inttoptr i32 %add7.i.i.i110 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %conv.i.i) #7, !srcloc !39
  br label %for.inc

sw.bb20:                                          ; preds = %for.body
  br i1 %tobool21.not, label %sw.bb20.if.else_crit_edge, label %land.lhs.true

sw.bb20.if.else_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb20
  %91 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read_subdev, align 4
  %tobool22.not = icmp eq ptr %92, null
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  %arrayidx25 = getelementptr %struct.dio200_board, ptr %1, i32 0, i32 4, i32 %n.0137
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx25, align 1
  %95 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %board_ptr, align 4
  %call.i114 = tail call ptr @comedi_alloc_spriv(ptr noundef %arrayidx, i32 noundef 60) #7
  %tobool.not.i115 = icmp eq ptr %call.i114, null
  br i1 %tobool.not.i115, label %if.then23.cleanup_crit_edge, label %if.end.i117

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i117:                                      ; preds = %if.then23
  %conv26 = zext i8 %94 to i32
  %ofs.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %call.i114, i32 0, i32 1
  %97 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 30, ptr %ofs.i, align 4
  %valid_isns1.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %call.i114, i32 0, i32 2
  %98 = ptrtoint ptr %valid_isns1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv26, ptr %valid_isns1.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i114, ptr noundef nonnull @.str.6, ptr noundef nonnull @dio200_subdev_intr_init.__key, i16 noundef signext 3) #7
  %has_int_sce.i = getelementptr inbounds %struct.dio200_board, ptr %96, i32 0, i32 5
  %99 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i116 = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i116)
  %tobool3.not.i = icmp sgt i8 %bf.load.i116, -1
  br i1 %tobool3.not.i, label %if.end.i117.if.end31_crit_edge, label %if.then4.i

if.end.i117.if.end31_crit_edge:                   ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then4.i:                                       ; preds = %if.end.i117
  %100 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ofs.i, align 4
  %102 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %board_ptr, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %105 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i.i118 = icmp eq i8 %105, 0
  %shl.i.i = shl i32 %101, 3
  %spec.select.i.i119 = select i1 %tobool.not.i.i118, i32 %101, i32 %shl.i.i
  %106 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %107, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 %spec.select.i.i119
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #7, !srcloc !39
  br label %if.end31

do.body4.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i.i, align 4
  %add.i.i120 = add i32 %111, %spec.select.i.i119
  %and.i.i121 = and i32 %add.i.i120, 1048575
  %add7.i.i = or i32 %and.i.i121, -18874368
  %112 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 0) #7, !srcloc !39
  br label %if.end31

if.end31:                                         ; preds = %do.body4.i.i, %do.body.i.i, %if.end.i117.if.end31_crit_edge
  %type.i122 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 2
  %113 = ptrtoint ptr %type.i122 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 3, ptr %type.i122, align 4
  %subdev_flags.i123 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 4
  %114 = ptrtoint ptr %subdev_flags.i123 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 536969216, ptr %subdev_flags.i123, align 4
  %115 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load8.i = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8.i)
  %tobool11.not.i = icmp sgt i8 %bf.load8.i, -1
  %spec.select.i = select i1 %tobool11.not.i, i32 1, i32 6
  %116 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 3
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.select.i, ptr %116, align 4
  %118 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 5
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.select.i, ptr %118, align 4
  %range_table.i124 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 15
  %120 = ptrtoint ptr %range_table.i124 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @range_unipolar5, ptr %range_table.i124, align 4
  %maxdata.i125 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 13
  %121 = ptrtoint ptr %maxdata.i125 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %maxdata.i125, align 4
  %insn_bits.i126 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 20
  %122 = ptrtoint ptr %insn_bits.i126 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @dio200_subdev_intr_insn_bits, ptr %insn_bits.i126, align 4
  %do_cmdtest.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 23
  %123 = ptrtoint ptr %do_cmdtest.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @dio200_subdev_intr_cmdtest, ptr %do_cmdtest.i, align 4
  %do_cmd.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 22
  %124 = ptrtoint ptr %do_cmd.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @dio200_subdev_intr_cmd, ptr %do_cmd.i, align 4
  %cancel.i = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 25
  %125 = ptrtoint ptr %cancel.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @dio200_subdev_intr_cancel, ptr %cancel.i, align 4
  %126 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %arrayidx, ptr %read_subdev, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb20.if.else_crit_edge
  %type = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 2
  %127 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %type, align 4
  br label %for.inc

sw.bb34:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %type35 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 2
  %128 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 7, ptr %type35, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 4
  %129 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 268500992, ptr %subdev_flags, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 3
  %130 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %n_chan, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 13
  %131 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %maxdata, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 18
  %132 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @dio200_subdev_timer_read, ptr %insn_read, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 21
  %133 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @dio200_subdev_timer_config, ptr %insn_config, align 4
  br label %for.inc

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %type36 = getelementptr %struct.comedi_subdevice, ptr %7, i32 %n.0137, i32 2
  %134 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %type36, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %sw.bb34, %if.else, %if.end31, %do.body4.i.i.i111, %do.body.i.i.i108, %dio200_subdev_8254_set_clock_src.exit.i.for.inc_crit_edge, %if.end9.i.for.inc_crit_edge
  %inc = add nuw i32 %n.0137, 1
  %135 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %n_subdevices, align 4
  %cmp = icmp ult i32 %inc, %136
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool37.not = icmp eq i32 %irq, 0
  br i1 %tobool37.not, label %for.end.cleanup_crit_edge, label %land.lhs.true38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true38:                                  ; preds = %for.end
  %read_subdev39 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %137 = ptrtoint ptr %read_subdev39 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read_subdev39, align 4
  %tobool40.not = icmp eq ptr %138, null
  br i1 %tobool40.not, label %land.lhs.true38.cleanup_crit_edge, label %if.then41

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true38
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %139 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %board_name, align 4
  %call.i129 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @dio200_interrupt, ptr noundef null, i32 noundef %req_irq_flags, ptr noundef %140, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i129)
  %cmp43 = icmp sgt i32 %call.i129, -1
  br i1 %cmp43, label %if.then45, label %do.end

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %irq46 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %141 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %irq, ptr %irq46, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %142 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str, i32 noundef %irq) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then45, %land.lhs.true38.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %do.end ], [ 0, %land.lhs.true38.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ], [ -12, %sw.bb11.cleanup_crit_edge ], [ -12, %if.then23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_timer_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n1 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %dio200_read32.exit.for.body_crit_edge, %for.body.lr.ph
  %n.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dio200_read32.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i = getelementptr inbounds %struct.dio200_board, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %is_pcie.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_pcie.i, align 4
  %5 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1538, i32 12304
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %7, i32 %spec.select.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  br label %dio200_read32.exit

if.end5.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %11, %spec.select.i
  %and.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add7.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #7, !srcloc !40
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  br label %dio200_read32.exit

dio200_read32.exit:                               ; preds = %if.end5.i, %if.then2.i
  %retval.0.i = phi i32 [ %9, %if.then2.i ], [ %14, %if.end5.i ]
  %arrayidx = getelementptr i32, ptr %data, i32 %n.06
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.06, 1
  %16 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n1, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %dio200_read32.exit.for.body_crit_edge, label %dio200_read32.exit.for.end_crit_edge

dio200_read32.exit.for.end_crit_edge:             ; preds = %dio200_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

dio200_read32.exit.for.body_crit_edge:            ; preds = %dio200_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %dio200_read32.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %dio200_read32.exit.for.end_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_timer_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %entry.cond.end_crit_edge [
    i32 34, label %sw.bb
    i32 2003, label %sw.bb1
    i32 2004, label %sw.bb3
  ]

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

sw.bb:                                            ; preds = %entry
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board_ptr.i.i, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %6 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1536, i32 12288
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %if.end5.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %spec.select.i.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !40
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  br label %dio200_read32.exit.i

if.end5.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %12, %spec.select.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add7.i.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #7, !srcloc !40
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  br label %dio200_read32.exit.i

dio200_read32.exit.i:                             ; preds = %if.end5.i.i, %if.then2.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then2.i.i ], [ %15, %if.end5.i.i ]
  %and.i = and i32 %retval.0.i.i, 255
  %or.i = or i32 %and.i, 256
  %16 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board_ptr.i.i, align 4
  %is_pcie.i2.i = getelementptr inbounds %struct.dio200_board, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %is_pcie.i2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i3.i = load i8, ptr %is_pcie.i2.i, align 4
  %19 = and i8 %bf.load.i3.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i4.i = icmp eq i8 %19, 0
  %spec.select.i5.i = select i1 %tobool.not.i4.i, i32 1536, i32 12288
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i7.i = icmp eq ptr %21, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  br i1 %tobool1.not.i7.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %dio200_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %24, i32 %spec.select.i5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %22) #7, !srcloc !43
  br label %dio200_write32.exit.i

do.body4.i.i:                                     ; preds = %dio200_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i9.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %iobase.i9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i9.i, align 4
  %add.i10.i = add i32 %26, %spec.select.i5.i
  %and.i11.i = and i32 %add.i10.i, 1048575
  %add7.i12.i = or i32 %and.i11.i, -18874368
  %27 = inttoptr i32 %add7.i12.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %22) #7, !srcloc !43
  br label %dio200_write32.exit.i

dio200_write32.exit.i:                            ; preds = %do.body4.i.i, %do.body.i.i
  %28 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board_ptr.i.i, align 4
  %is_pcie.i14.i = getelementptr inbounds %struct.dio200_board, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %is_pcie.i14.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i15.i = load i8, ptr %is_pcie.i14.i, align 4
  %31 = and i8 %bf.load.i15.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i16.i = icmp eq i8 %31, 0
  %spec.select.i17.i = select i1 %tobool.not.i16.i, i32 1536, i32 12288
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i19.i = icmp eq ptr %33, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %34 = shl nuw i32 %and.i, 24
  br i1 %tobool1.not.i19.i, label %do.body4.i26.i, label %do.body.i21.i

do.body.i21.i:                                    ; preds = %dio200_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %36, i32 %spec.select.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %34) #7, !srcloc !43
  br label %cond.false

do.body4.i26.i:                                   ; preds = %dio200_write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i22.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %37 = ptrtoint ptr %iobase.i22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i22.i, align 4
  %add.i23.i = add i32 %38, %spec.select.i17.i
  %and.i24.i = and i32 %add.i23.i, 1048575
  %add7.i25.i = or i32 %and.i24.i, -18874368
  %39 = inttoptr i32 %add7.i25.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %34) #7, !srcloc !43
  br label %cond.false

sw.bb1:                                           ; preds = %entry
  %arrayidx2 = getelementptr i32, ptr %data, i32 1
  %40 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i = icmp ugt i32 %41, 2
  br i1 %cmp.i, label %sw.bb1.cond.end_crit_edge, label %if.end.i

sw.bb1.cond.end_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end.i:                                         ; preds = %sw.bb1
  %board_ptr.i.i16 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %42 = ptrtoint ptr %board_ptr.i.i16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board_ptr.i.i16, align 4
  %is_pcie.i.i17 = getelementptr inbounds %struct.dio200_board, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %is_pcie.i.i17 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i.i18 = load i8, ptr %is_pcie.i.i17, align 4
  %45 = and i8 %bf.load.i.i18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i19 = icmp eq i8 %45, 0
  %spec.select.i.i20 = select i1 %tobool.not.i.i19, i32 1536, i32 12288
  %mmio.i.i21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %46 = ptrtoint ptr %mmio.i.i21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i21, align 4
  %tobool1.not.i.i22 = icmp eq ptr %47, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  br i1 %tobool1.not.i.i22, label %do.body4.i.i29, label %do.body.i.i24

do.body.i.i24:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %mmio.i.i21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i.i21, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %50, i32 %spec.select.i.i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %48) #7, !srcloc !43
  br label %cond.false

do.body4.i.i29:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i25 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %51 = ptrtoint ptr %iobase.i.i25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase.i.i25, align 4
  %add.i.i26 = add i32 %52, %spec.select.i.i20
  %and.i.i27 = and i32 %add.i.i26, 1048575
  %add7.i.i28 = or i32 %and.i.i27, -18874368
  %53 = inttoptr i32 %add7.i.i28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %48) #7, !srcloc !43
  br label %cond.false

sw.bb3:                                           ; preds = %entry
  %arrayidx4 = getelementptr i32, ptr %data, i32 1
  %arrayidx5 = getelementptr i32, ptr %data, i32 2
  %board_ptr.i.i30 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %54 = ptrtoint ptr %board_ptr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %board_ptr.i.i30, align 4
  %is_pcie.i.i31 = getelementptr inbounds %struct.dio200_board, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %is_pcie.i.i31 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i.i32 = load i8, ptr %is_pcie.i.i31, align 4
  %57 = and i8 %bf.load.i.i32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i33 = icmp eq i8 %57, 0
  %spec.select.i.i34 = select i1 %tobool.not.i.i33, i32 1536, i32 12288
  %mmio.i.i35 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %58 = ptrtoint ptr %mmio.i.i35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i35, align 4
  %tobool1.not.i.i36 = icmp eq ptr %59, null
  br i1 %tobool1.not.i.i36, label %if.end5.i.i43, label %if.then2.i.i38

if.then2.i.i38:                                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i37 = getelementptr i8, ptr %59, i32 %spec.select.i.i34
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #7, !srcloc !40
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  br label %dio200_read32.exit.i47

if.end5.i.i43:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i39 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %62 = ptrtoint ptr %iobase.i.i39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase.i.i39, align 4
  %add.i.i40 = add i32 %63, %spec.select.i.i34
  %and.i.i41 = and i32 %add.i.i40, 1048575
  %add7.i.i42 = or i32 %and.i.i41, -18874368
  %64 = inttoptr i32 %add7.i.i42 to ptr
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %64) #7, !srcloc !40
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  br label %dio200_read32.exit.i47

dio200_read32.exit.i47:                           ; preds = %if.end5.i.i43, %if.then2.i.i38
  %retval.0.i.i44 = phi i32 [ %61, %if.then2.i.i38 ], [ %66, %if.end5.i.i43 ]
  %and.i45 = and i32 %retval.0.i.i44, 255
  %67 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i45, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i45)
  %cmp.i46 = icmp ult i32 %and.i45, 3
  br i1 %cmp.i46, label %cond.true.i, label %dio200_read32.exit.i47.dio200_subdev_timer_get_clock_src.exit_crit_edge

dio200_read32.exit.i47.dio200_subdev_timer_get_clock_src.exit_crit_edge: ; preds = %dio200_read32.exit.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %dio200_subdev_timer_get_clock_src.exit

cond.true.i:                                      ; preds = %dio200_read32.exit.i47
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [3 x i32], ptr @ts_clock_period, i32 0, i32 %and.i45
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  br label %dio200_subdev_timer_get_clock_src.exit

dio200_subdev_timer_get_clock_src.exit:           ; preds = %cond.true.i, %dio200_read32.exit.i47.dio200_subdev_timer_get_clock_src.exit_crit_edge
  %cond.i = phi i32 [ %69, %cond.true.i ], [ 0, %dio200_read32.exit.i47.dio200_subdev_timer_get_clock_src.exit_crit_edge ]
  %70 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.i, ptr %arrayidx5, align 4
  br label %cond.false

cond.false:                                       ; preds = %dio200_subdev_timer_get_clock_src.exit, %do.body4.i.i29, %do.body.i.i24, %do.body4.i26.i, %do.body.i21.i
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %71 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb1.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %72, %cond.false ], [ -22, %entry.cond.end_crit_edge ], [ -22, %sw.bb1.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_interrupt(i32 noundef %irq, ptr noundef %d) #0 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %1 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_subdev, align 4
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board_ptr.i, align 4
  %private.i = getelementptr inbounds %struct.comedi_subdevice, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %has_int_sce.i = getelementptr inbounds %struct.dio200_board, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %enabled_isns14.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %enabled_isns14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled_isns14.i, align 4
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %ofs.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 1
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %valid_isns.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then.i
  %triggered.0.i = phi i32 [ 0, %if.then.i ], [ %or.i, %while.cond.i.backedge ]
  %cur_enabled.0.i = phi i32 [ %9, %if.then.i ], [ %and11.i, %while.cond.i.backedge ]
  %10 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ofs.i, align 4
  %12 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %15 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  %shl.i.i = shl i32 %11, 3
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %11, i32 %shl.i.i
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %if.end5.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %spec.select.i.i
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %dio200_read8.exit.i

if.end5.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %20, %spec.select.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add7.i.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  br label %dio200_read8.exit.i

dio200_read8.exit.i:                              ; preds = %if.end5.i.i, %if.then2.i.i
  %retval.0.i.i = phi i8 [ %18, %if.then2.i.i ], [ %22, %if.end5.i.i ]
  %conv6.i = zext i8 %retval.0.i.i to i32
  %23 = ptrtoint ptr %valid_isns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %valid_isns.i, align 4
  %and.i = and i32 %24, %conv6.i
  %neg.i = xor i32 %triggered.0.i, -1
  %and7.i = and i32 %and.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %and7.i, 0
  br i1 %cmp8.not.i, label %dio200_read8.exit.i.if.end.i_crit_edge, label %while.body.i

dio200_read8.exit.i.if.end.i_crit_edge:           ; preds = %dio200_read8.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.body.i:                                     ; preds = %dio200_read8.exit.i
  %or.i = or i32 %and.i, %triggered.0.i
  %neg10.i = xor i32 %or.i, -1
  %and11.i = and i32 %cur_enabled.0.i, %neg10.i
  %25 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ofs.i, align 4
  %conv13.i = trunc i32 %and11.i to i8
  %27 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i70.i = getelementptr inbounds %struct.dio200_board, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %is_pcie.i70.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i71.i = load i8, ptr %is_pcie.i70.i, align 4
  %30 = and i8 %bf.load.i71.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i72.i = icmp eq i8 %30, 0
  %shl.i73.i = shl i32 %26, 3
  %spec.select.i74.i = select i1 %tobool.not.i72.i, i32 %26, i32 %shl.i73.i
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i76.i = icmp eq ptr %32, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i76.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %34, i32 %spec.select.i74.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77.i, i8 %conv13.i) #7, !srcloc !39
  br label %while.cond.i.backedge

do.body4.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i, align 4
  %add.i79.i = add i32 %36, %spec.select.i74.i
  %and.i80.i = and i32 %add.i79.i, 1048575
  %add7.i81.i = or i32 %and.i80.i, -18874368
  %37 = inttoptr i32 %add7.i81.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv13.i) #7, !srcloc !39
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body4.i.i, %do.body.i.i
  br label %while.cond.i

if.end.i:                                         ; preds = %dio200_read8.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %triggered.1.i = phi i32 [ %9, %if.end.if.end.i_crit_edge ], [ %triggered.0.i, %dio200_read8.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %triggered.1.i)
  %tobool15.i = icmp ne i32 %triggered.1.i, 0
  br i1 %tobool15.i, label %if.then16.i, label %if.end.i.dio200_handle_read_intr.exit_crit_edge

if.end.i.dio200_handle_read_intr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dio200_handle_read_intr.exit

if.then16.i:                                      ; preds = %if.end.i
  %38 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load19.i = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19.i)
  %tobool22.not.i = icmp sgt i8 %bf.load19.i, -1
  br i1 %tobool22.not.i, label %if.then16.i.if.end26.i_crit_edge, label %if.then23.i

if.then16.i.if.end26.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.then16.i
  %39 = ptrtoint ptr %enabled_isns14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %enabled_isns14.i, align 4
  %ofs24.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 1
  %41 = ptrtoint ptr %ofs24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ofs24.i, align 4
  %conv25.i = trunc i32 %40 to i8
  %43 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i83.i = getelementptr inbounds %struct.dio200_board, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %is_pcie.i83.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i84.i = load i8, ptr %is_pcie.i83.i, align 4
  %46 = and i8 %bf.load.i84.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i85.i = icmp eq i8 %46, 0
  %shl.i86.i = shl i32 %42, 3
  %spec.select.i87.i = select i1 %tobool.not.i85.i, i32 %42, i32 %shl.i86.i
  %mmio.i88.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %47 = ptrtoint ptr %mmio.i88.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i88.i, align 4
  %tobool1.not.i89.i = icmp eq ptr %48, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i89.i, label %do.body4.i96.i, label %do.body.i91.i

do.body.i91.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %mmio.i88.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i88.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %50, i32 %spec.select.i87.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i90.i, i8 %conv25.i) #7, !srcloc !39
  br label %if.end26.i

do.body4.i96.i:                                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i92.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %51 = ptrtoint ptr %iobase.i92.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase.i92.i, align 4
  %add.i93.i = add i32 %52, %spec.select.i87.i
  %and.i94.i = and i32 %add.i93.i, 1048575
  %add7.i95.i = or i32 %and.i94.i, -18874368
  %53 = inttoptr i32 %add7.i95.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv25.i) #7, !srcloc !39
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body4.i96.i, %do.body.i91.i, %if.then16.i.if.end26.i_crit_edge
  %active.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 4
  %54 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load27.i = load i8, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27.i)
  %tobool30.not.i = icmp sgt i8 %bf.load27.i, -1
  br i1 %tobool30.not.i, label %if.end26.i.dio200_handle_read_intr.exit_crit_edge, label %if.then31.i

if.end26.i.dio200_handle_read_intr.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dio200_handle_read_intr.exit

if.then31.i:                                      ; preds = %if.end26.i
  %55 = ptrtoint ptr %enabled_isns14.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %enabled_isns14.i, align 4
  %and33.i = and i32 %56, %triggered.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.then31.i.dio200_handle_read_intr.exit_crit_edge, label %if.then35.i

if.then31.i.dio200_handle_read_intr.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dio200_handle_read_intr.exit

if.then35.i:                                      ; preds = %if.then31.i
  %async.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %2, i32 0, i32 7
  %57 = ptrtoint ptr %async.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %async.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #7
  %chanlist_len.i.i = getelementptr inbounds %struct.comedi_async, ptr %58, i32 0, i32 17, i32 13
  %59 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chanlist_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp3.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp3.not.i.i, label %if.then35.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then35.i.for.end.i.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then35.i
  %chanlist.i.i = getelementptr inbounds %struct.comedi_async, ptr %58, i32 0, i32 17, i32 12
  %61 = ptrtoint ptr %chanlist.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chanlist.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %n.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv424.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %conv41.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %62, i32 %n.05.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i, align 4
  %and.i98.i = and i32 %64, 65535
  %shl.i99.i = shl nuw i32 1, %and.i98.i
  %and2.i.i = and i32 %shl.i99.i, %triggered.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i100.i = icmp eq i32 %and2.i.i, 0
  %shl3.i.i = shl nuw i32 1, %n.05.i.i
  %65 = trunc i32 %shl3.i.i to i16
  %conv4.i.i = select i1 %tobool.not.i100.i, i16 0, i16 %65
  %conv41.i.i = or i16 %conv4.i.i, %conv424.i.i
  %inc.i.i = add nuw i32 %n.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %60
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then35.i.for.end.i.i_crit_edge
  %conv42.lcssa.i.i = phi i16 [ 0, %if.then35.i.for.end.i.i_crit_edge ], [ %conv41.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %66 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv42.lcssa.i.i, ptr %val.i.i, align 2
  %call.i.i = call i32 @comedi_buf_write_samples(ptr noundef %2, ptr noundef nonnull %val.i.i, i32 noundef 1) #7
  %stop_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %58, i32 0, i32 17, i32 10
  %67 = ptrtoint ptr %stop_src.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stop_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %68)
  %cmp5.i.i = icmp eq i32 %68, 32
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.end.i.i.dio200_read_scan_intr.exit.i_crit_edge

for.end.i.i.dio200_read_scan_intr.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dio200_read_scan_intr.exit.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %69 = ptrtoint ptr %async.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %async.i.i, align 4
  %scans_done.i.i = getelementptr inbounds %struct.comedi_async, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %scans_done.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %scans_done.i.i, align 4
  %stop_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %58, i32 0, i32 17, i32 11
  %73 = ptrtoint ptr %stop_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stop_arg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp8.not.i.i = icmp ult i32 %72, %74
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.dio200_read_scan_intr.exit.i_crit_edge, label %if.then10.i.i

land.lhs.true.i.i.dio200_read_scan_intr.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dio200_read_scan_intr.exit.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %events.i.i = getelementptr inbounds %struct.comedi_async, ptr %70, i32 0, i32 16
  %75 = ptrtoint ptr %events.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %events.i.i, align 4
  %or12.i.i = or i32 %76, 2
  store i32 %or12.i.i, ptr %events.i.i, align 4
  br label %dio200_read_scan_intr.exit.i

dio200_read_scan_intr.exit.i:                     ; preds = %if.then10.i.i, %land.lhs.true.i.i.dio200_read_scan_intr.exit.i_crit_edge, %for.end.i.i.dio200_read_scan_intr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #7
  br label %dio200_handle_read_intr.exit

dio200_handle_read_intr.exit:                     ; preds = %dio200_read_scan_intr.exit.i, %if.then31.i.dio200_handle_read_intr.exit_crit_edge, %if.end26.i.dio200_handle_read_intr.exit_crit_edge, %if.end.i.dio200_handle_read_intr.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call2.i) #7
  %call40.i = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %2) #7
  %conv42.i = zext i1 %tobool15.i to i32
  br label %cleanup

cleanup:                                          ; preds = %dio200_handle_read_intr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv42.i, %dio200_handle_read_intr.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amplc_dio200_common_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amplc_dio200_common_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_mm_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_8254_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanspec, align 4
  %and = and i32 %5, 65535
  %is_pcie = getelementptr inbounds %struct.dio200_board, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %is_pcie to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_pcie, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 7, i32 31
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 2001, label %sw.bb
    i32 2002, label %sw.bb10
    i32 2003, label %sw.bb14
    i32 2004, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %arrayidx6 = getelementptr i32, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cond)
  %cmp = icmp ugt i32 %13, %cond
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %mmio1.i.i = getelementptr inbounds %struct.comedi_8254, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio1.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %dio200_subdev_8254_offset.exit.i

if.else.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %iobase3.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %20 = ptrtoint ptr %iobase3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase3.i.i, align 4
  %sub.i.i = sub i32 %19, %21
  br label %dio200_subdev_8254_offset.exit.i

dio200_subdev_8254_offset.exit.i:                 ; preds = %if.else.i.i, %if.then.i.i
  %offset.0.i.i = phi i32 [ %sub.ptr.sub.i.i, %if.then.i.i ], [ %sub.i.i, %if.else.i.i ]
  %shr.i.i = lshr i32 %offset.0.i.i, 3
  %spec.select.i.i = select i1 %tobool.not, i32 %offset.0.i.i, i32 %shr.i.i
  %shr.i = lshr i32 %spec.select.i.i, 3
  %add.i = add nuw nsw i32 %shr.i, 27
  %22 = shl i32 %spec.select.i.i, 3
  %shl.i.i = and i32 %22, 32
  %shl1.i.i = shl nuw nsw i32 %and, 3
  %and.i.i = shl i32 %13, 3
  %shl2.i.i = and i32 %and.i.i, 192
  %and4.i.i = and i32 %13, 7
  %or.i.i = or i32 %and4.i.i, %shl1.i.i
  %or3.i.i = or i32 %or.i.i, %shl2.i.i
  %or5.i.i = or i32 %or3.i.i, %shl.i.i
  %conv.i.i = trunc i32 %or5.i.i to i8
  %shl.i9.i = shl i32 %add.i, 3
  %spec.select.i10.i = select i1 %tobool.not, i32 %add.i, i32 %shl.i9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %dio200_subdev_8254_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %spec.select.i10.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i.i) #7, !srcloc !39
  br label %dio200_subdev_8254_set_gate_src.exit

do.body4.i.i:                                     ; preds = %dio200_subdev_8254_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %26, %spec.select.i10.i
  %and.i12.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i12.i, -18874368
  %27 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv.i.i) #7, !srcloc !39
  br label %dio200_subdev_8254_set_gate_src.exit

dio200_subdev_8254_set_gate_src.exit:             ; preds = %do.body4.i.i, %do.body.i.i
  %arrayidx9 = getelementptr %struct.comedi_8254, ptr %3, i32 0, i32 12, i32 %and
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %13, ptr %arrayidx9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr %struct.comedi_8254, ptr %3, i32 0, i32 12, i32 %and
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %data, i32 2
  %31 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %arrayidx15 = getelementptr i32, ptr %data, i32 1
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cond)
  %cmp16 = icmp ugt i32 %33, %cond
  br i1 %cmp16, label %sw.bb14.cleanup_crit_edge, label %if.end18

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %sw.bb14
  %mmio.i.i62 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %34 = ptrtoint ptr %mmio.i.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i62, align 4
  %tobool.not.i.i63 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i63, label %if.else.i.i71, label %if.then.i.i68

if.then.i.i68:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %mmio1.i.i64 = getelementptr inbounds %struct.comedi_8254, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %mmio1.i.i64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio1.i.i64, align 4
  %sub.ptr.lhs.cast.i.i65 = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i66 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i67 = sub i32 %sub.ptr.lhs.cast.i.i65, %sub.ptr.rhs.cast.i.i66
  br label %dio200_subdev_8254_offset.exit.i91

if.else.i.i71:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %iobase3.i.i69 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %40 = ptrtoint ptr %iobase3.i.i69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase3.i.i69, align 4
  %sub.i.i70 = sub i32 %39, %41
  br label %dio200_subdev_8254_offset.exit.i91

dio200_subdev_8254_offset.exit.i91:               ; preds = %if.else.i.i71, %if.then.i.i68
  %offset.0.i.i72 = phi i32 [ %sub.ptr.sub.i.i67, %if.then.i.i68 ], [ %sub.i.i70, %if.else.i.i71 ]
  %shr.i.i76 = lshr i32 %offset.0.i.i72, 3
  %spec.select.i.i77 = select i1 %tobool.not, i32 %offset.0.i.i72, i32 %shr.i.i76
  %shr.i78 = lshr i32 %spec.select.i.i77, 3
  %add.i79 = add nuw nsw i32 %shr.i78, 24
  %42 = shl i32 %spec.select.i.i77, 3
  %shl.i.i80 = and i32 %42, 32
  %shl1.i.i81 = shl nuw nsw i32 %and, 3
  %and.i.i82 = shl i32 %33, 3
  %shl2.i.i83 = and i32 %and.i.i82, 192
  %and4.i.i84 = and i32 %33, 7
  %or.i.i85 = or i32 %and4.i.i84, %shl1.i.i81
  %or3.i.i86 = or i32 %or.i.i85, %shl2.i.i83
  %or5.i.i87 = or i32 %or3.i.i86, %shl.i.i80
  %conv.i.i88 = trunc i32 %or5.i.i87 to i8
  %shl.i9.i89 = shl i32 %add.i79, 3
  %spec.select.i10.i90 = select i1 %tobool.not, i32 %add.i79, i32 %shl.i9.i89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i.i63, label %do.body4.i.i98, label %do.body.i.i93

do.body.i.i93:                                    ; preds = %dio200_subdev_8254_offset.exit.i91
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %mmio.i.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i.i62, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %44, i32 %spec.select.i10.i90
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i92, i8 %conv.i.i88) #7, !srcloc !39
  br label %dio200_subdev_8254_set_clock_src.exit

do.body4.i.i98:                                   ; preds = %dio200_subdev_8254_offset.exit.i91
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i94 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %45 = ptrtoint ptr %iobase.i.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase.i.i94, align 4
  %add.i.i95 = add i32 %46, %spec.select.i10.i90
  %and.i12.i96 = and i32 %add.i.i95, 1048575
  %add7.i.i97 = or i32 %and.i12.i96, -18874368
  %47 = inttoptr i32 %add7.i.i97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv.i.i88) #7, !srcloc !39
  br label %dio200_subdev_8254_set_clock_src.exit

dio200_subdev_8254_set_clock_src.exit:            ; preds = %do.body4.i.i98, %do.body.i.i93
  %arrayidx19 = getelementptr %struct.comedi_8254, ptr %3, i32 0, i32 11, i32 %and
  %48 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %33, ptr %arrayidx19, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr %struct.comedi_8254, ptr %3, i32 0, i32 11, i32 %and
  %49 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr i32, ptr %data, i32 1
  %51 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx23, align 4
  %52 = load i32, ptr %arrayidx22, align 4
  %arrayidx26 = getelementptr [32 x i32], ptr @clock_period, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx26, align 4
  %arrayidx27 = getelementptr i32, ptr %data, i32 2
  %55 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx27, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %dio200_subdev_8254_set_clock_src.exit, %sw.bb10, %dio200_subdev_8254_set_gate_src.exit
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %56 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %57, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_set_spriv_auto_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_8255_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %conv = trunc i32 %5 to i8
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i = getelementptr inbounds %struct.dio200_board, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %is_pcie.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %is_pcie.i, align 4
  %9 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %shl.i = shl i32 %3, 3
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %shl.i
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i, label %do.body4.i, label %do.body.i

do.body.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %spec.select.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #7, !srcloc !39
  br label %if.end

do.body4.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %15, %spec.select.i
  %and.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv) #7, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body4.i, %do.body.i, %if.then.if.end_crit_edge
  %and4 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %add8 = add i32 %18, 1
  %state9 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %19 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state9, align 4
  %shr = lshr i32 %20, 8
  %conv11 = trunc i32 %shr to i8
  %board_ptr.i58 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %21 = ptrtoint ptr %board_ptr.i58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board_ptr.i58, align 4
  %is_pcie.i59 = getelementptr inbounds %struct.dio200_board, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %is_pcie.i59 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i60 = load i8, ptr %is_pcie.i59, align 4
  %24 = and i8 %bf.load.i60, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i61 = icmp eq i8 %24, 0
  %shl.i62 = shl i32 %add8, 3
  %spec.select.i63 = select i1 %tobool.not.i61, i32 %add8, i32 %shl.i62
  %mmio.i64 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %25 = ptrtoint ptr %mmio.i64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i64, align 4
  %tobool1.not.i65 = icmp eq ptr %26, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i65, label %do.body4.i72, label %do.body.i67

do.body.i67:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %mmio.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i64, align 4
  %add.ptr.i66 = getelementptr i8, ptr %28, i32 %spec.select.i63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i66, i8 %conv11) #7, !srcloc !39
  br label %if.end12

do.body4.i72:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i68 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %29 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i68, align 4
  %add.i69 = add i32 %30, %spec.select.i63
  %and.i70 = and i32 %add.i69, 1048575
  %add7.i71 = or i32 %and.i70, -18874368
  %31 = inttoptr i32 %add7.i71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv11) #7, !srcloc !39
  br label %if.end12

if.end12:                                         ; preds = %do.body4.i72, %do.body.i67, %if.end.if.end12_crit_edge
  %and13 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end23_crit_edge, label %if.then15

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then15:                                        ; preds = %if.end12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %add17 = add i32 %33, 2
  %state18 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %34 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state18, align 4
  %shr19 = lshr i32 %35, 16
  %conv21 = trunc i32 %shr19 to i8
  %board_ptr.i74 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %36 = ptrtoint ptr %board_ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board_ptr.i74, align 4
  %is_pcie.i75 = getelementptr inbounds %struct.dio200_board, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %is_pcie.i75 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i76 = load i8, ptr %is_pcie.i75, align 4
  %39 = and i8 %bf.load.i76, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i77 = icmp eq i8 %39, 0
  %shl.i78 = shl i32 %add17, 3
  %spec.select.i79 = select i1 %tobool.not.i77, i32 %add17, i32 %shl.i78
  %mmio.i80 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %40 = ptrtoint ptr %mmio.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i80, align 4
  %tobool1.not.i81 = icmp eq ptr %41, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i81, label %do.body4.i88, label %do.body.i83

do.body.i83:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %mmio.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i80, align 4
  %add.ptr.i82 = getelementptr i8, ptr %43, i32 %spec.select.i79
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i82, i8 %conv21) #7, !srcloc !39
  br label %if.end23

do.body4.i88:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i84 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %44 = ptrtoint ptr %iobase.i84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase.i84, align 4
  %add.i85 = add i32 %45, %spec.select.i79
  %and.i86 = and i32 %add.i85, 1048575
  %add7.i87 = or i32 %and.i86, -18874368
  %46 = inttoptr i32 %add7.i87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %conv21) #7, !srcloc !39
  br label %if.end23

if.end23:                                         ; preds = %do.body4.i88, %do.body.i83, %if.end12.if.end23_crit_edge, %entry.if.end23_crit_edge
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  %board_ptr.i90 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %49 = ptrtoint ptr %board_ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %board_ptr.i90, align 4
  %is_pcie.i91 = getelementptr inbounds %struct.dio200_board, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %is_pcie.i91 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i92 = load i8, ptr %is_pcie.i91, align 4
  %52 = and i8 %bf.load.i92, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i93 = icmp eq i8 %52, 0
  %shl.i94 = shl i32 %48, 3
  %spec.select.i95 = select i1 %tobool.not.i93, i32 %48, i32 %shl.i94
  %mmio.i96 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %53 = ptrtoint ptr %mmio.i96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i96, align 4
  %tobool1.not.i97 = icmp eq ptr %54, null
  br i1 %tobool1.not.i97, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i98 = getelementptr i8, ptr %54, i32 %spec.select.i95
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i98) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %dio200_read8.exit

if.end5.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i99 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %56 = ptrtoint ptr %iobase.i99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i99, align 4
  %add.i100 = add i32 %57, %spec.select.i95
  %and.i101 = and i32 %add.i100, 1048575
  %add7.i102 = or i32 %and.i101, -18874368
  %58 = inttoptr i32 %add7.i102 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  br label %dio200_read8.exit

dio200_read8.exit:                                ; preds = %if.end5.i, %if.then2.i
  %retval.0.i = phi i8 [ %55, %if.then2.i ], [ %59, %if.end5.i ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %1, align 4
  %add29 = add i32 %61, 1
  %62 = ptrtoint ptr %board_ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %board_ptr.i90, align 4
  %is_pcie.i104 = getelementptr inbounds %struct.dio200_board, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %is_pcie.i104 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i105 = load i8, ptr %is_pcie.i104, align 4
  %65 = and i8 %bf.load.i105, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i106 = icmp eq i8 %65, 0
  %shl.i107 = shl i32 %add29, 3
  %spec.select.i108 = select i1 %tobool.not.i106, i32 %add29, i32 %shl.i107
  %66 = ptrtoint ptr %mmio.i96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i96, align 4
  %tobool1.not.i110 = icmp eq ptr %67, null
  br i1 %tobool1.not.i110, label %if.end5.i117, label %if.then2.i112

if.then2.i112:                                    ; preds = %dio200_read8.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i111 = getelementptr i8, ptr %67, i32 %spec.select.i108
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i111) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %dio200_read8.exit119

if.end5.i117:                                     ; preds = %dio200_read8.exit
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i113 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %69 = ptrtoint ptr %iobase.i113 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iobase.i113, align 4
  %add.i114 = add i32 %70, %spec.select.i108
  %and.i115 = and i32 %add.i114, 1048575
  %add7.i116 = or i32 %and.i115, -18874368
  %71 = inttoptr i32 %add7.i116 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  br label %dio200_read8.exit119

dio200_read8.exit119:                             ; preds = %if.end5.i117, %if.then2.i112
  %retval.0.i118 = phi i8 [ %68, %if.then2.i112 ], [ %72, %if.end5.i117 ]
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %1, align 4
  %add33 = add i32 %74, 2
  %75 = ptrtoint ptr %board_ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %board_ptr.i90, align 4
  %is_pcie.i121 = getelementptr inbounds %struct.dio200_board, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %is_pcie.i121 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i122 = load i8, ptr %is_pcie.i121, align 4
  %78 = and i8 %bf.load.i122, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i123 = icmp eq i8 %78, 0
  %shl.i124 = shl i32 %add33, 3
  %spec.select.i125 = select i1 %tobool.not.i123, i32 %add33, i32 %shl.i124
  %79 = ptrtoint ptr %mmio.i96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i96, align 4
  %tobool1.not.i127 = icmp eq ptr %80, null
  br i1 %tobool1.not.i127, label %if.end5.i134, label %if.then2.i129

if.then2.i129:                                    ; preds = %dio200_read8.exit119
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i128 = getelementptr i8, ptr %80, i32 %spec.select.i125
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i128) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %dio200_read8.exit136

if.end5.i134:                                     ; preds = %dio200_read8.exit119
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i130 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %82 = ptrtoint ptr %iobase.i130 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iobase.i130, align 4
  %add.i131 = add i32 %83, %spec.select.i125
  %and.i132 = and i32 %add.i131, 1048575
  %add7.i133 = or i32 %and.i132, -18874368
  %84 = inttoptr i32 %add7.i133 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  br label %dio200_read8.exit136

dio200_read8.exit136:                             ; preds = %if.end5.i134, %if.then2.i129
  %retval.0.i135 = phi i8 [ %81, %if.then2.i129 ], [ %85, %if.end5.i134 ]
  %conv31 = zext i8 %retval.0.i118 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %conv27 = zext i8 %retval.0.i to i32
  %or = or i32 %shl, %conv27
  %conv35 = zext i8 %retval.0.i135 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %or37 = or i32 %shl36, %or
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or37, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %87 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n, align 4
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_8255_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp ult i32 %and, 8
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp1 = icmp ult i32 %and, 16
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and)
  %cmp4 = icmp ult i32 %and, 20
  %. = select i1 %cmp4, i32 983040, i32 15728640
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 255, %entry.if.end8_crit_edge ], [ 65280, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %private.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %io_bits.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits.i, align 4
  %and.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 144, i32 128
  %and2.i = and i32 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %config.1.i = select i1 %tobool3.not.i, i32 %or5.i, i32 %spec.select.i
  %and8.i = and i32 %5, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or11.i = zext i1 %tobool9.not.i to i32
  %config.2.i = or i32 %config.1.i, %or11.i
  %and14.i = and i32 %5, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or17.i = or i32 %config.2.i, 8
  %config.3.i = select i1 %tobool15.not.i, i32 %or17.i, i32 %config.2.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.i = add i32 %7, 3
  %conv.i = trunc i32 %config.3.i to i8
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board_ptr.i.i, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %11 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  %shl.i.i = shl i32 %add.i, 3
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %add.i, i32 %shl.i.i
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %spec.select.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !39
  br label %dio200_subdev_8255_set_dir.exit

do.body4.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %17, %spec.select.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv.i) #7, !srcloc !39
  br label %dio200_subdev_8255_set_dir.exit

dio200_subdev_8255_set_dir.exit:                  ; preds = %do.body4.i.i, %do.body.i.i
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %dio200_subdev_8255_set_dir.exit, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %dio200_subdev_8255_set_dir.exit ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_intr_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %has_int_sce = getelementptr inbounds %struct.dio200_board, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_int_sce to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_int_sce, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %ofs = getelementptr inbounds %struct.dio200_subdev_intr, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ofs, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %shl.i = shl i32 %6, 3
  %spec.select.i = select i1 %tobool.not.i, i32 %6, i32 %shl.i
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %9, i32 %spec.select.i
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %dio200_read8.exit

if.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %12, %spec.select.i
  %and.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add7.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  br label %dio200_read8.exit

dio200_read8.exit:                                ; preds = %if.end5.i, %if.then2.i
  %retval.0.i = phi i8 [ %10, %if.then2.i ], [ %14, %if.end5.i ]
  %conv = zext i8 %retval.0.i to i32
  %valid_isns = getelementptr inbounds %struct.dio200_subdev_intr, ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %valid_isns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %valid_isns, align 4
  %and = and i32 %16, %conv
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %dio200_read8.exit
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dio200_subdev_intr_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i66 = and i32 %3, 64
  store i32 %and.i66, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %cmp.i67 = icmp ne i32 %and.i66, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i66, i32 %3)
  %cmp1.not.i68 = icmp eq i32 %and.i66, %3
  %or.cond.i69 = and i1 %cmp.i67, %cmp1.not.i68
  %4 = select i1 %or.cond.i, i1 %or.cond.i69, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i71 = and i32 %6, 2
  store i32 %and.i71, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %cmp.i72 = icmp ne i32 %and.i71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i71, i32 %6)
  %cmp1.not.i73 = icmp eq i32 %and.i71, %6
  %or.cond.i74 = and i1 %cmp.i72, %cmp1.not.i73
  %7 = select i1 %4, i1 %or.cond.i74, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i76 = and i32 %9, 32
  store i32 %and.i76, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.i77 = icmp ne i32 %and.i76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %9)
  %cmp1.not.i78 = icmp eq i32 %and.i76, %9
  %or.cond.i79 = and i1 %cmp.i77, %cmp1.not.i78
  %10 = select i1 %7, i1 %or.cond.i79, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i81 = and i32 %12, 33
  store i32 %and.i81, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %cmp.i82 = icmp ne i32 %and.i81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i81, i32 %12)
  %cmp1.not.i83 = icmp eq i32 %and.i81, %12
  %or.cond.i84 = and i1 %cmp.i82, %cmp1.not.i83
  %13 = select i1 %10, i1 %or.cond.i84, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i86 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i86, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i88 = icmp eq i32 %18, 0
  br i1 %cmp.not.i88, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i89 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i90 = icmp eq i32 %21, 0
  br i1 %cmp.not.i90, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge, label %if.then.i91

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit93

if.then.i91:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit93

comedi_check_trigger_arg_is.exit93:               ; preds = %if.then.i91, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge
  %retval.0.i92 = phi i32 [ -22, %if.then.i91 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge ]
  %or21 = or i32 %retval.0.i92, %retval.0.i89
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i94 = icmp eq i32 %24, 0
  br i1 %cmp.not.i94, label %comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge, label %if.then.i95

comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit97

if.then.i95:                                      ; preds = %comedi_check_trigger_arg_is.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit97

comedi_check_trigger_arg_is.exit97:               ; preds = %if.then.i95, %comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge
  %retval.0.i96 = phi i32 [ -22, %if.then.i95 ], [ 0, %comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge ]
  %or23 = or i32 %or21, %retval.0.i96
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chanlist_len, align 4
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i98 = icmp eq i32 %29, %27
  br i1 %cmp.not.i98, label %comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge, label %if.then.i99

comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit101

if.then.i99:                                      ; preds = %comedi_check_trigger_arg_is.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit101

comedi_check_trigger_arg_is.exit101:              ; preds = %if.then.i99, %comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge
  %retval.0.i100 = phi i32 [ -22, %if.then.i99 ], [ 0, %comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge ]
  %or25 = or i32 %or23, %retval.0.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i102 = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %comedi_check_trigger_arg_is.exit101
  br i1 %cmp.i102, label %if.then27.if.end33.sink.split_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27.if.end33.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit101
  br i1 %cmp.i102, label %if.else.if.end33_crit_edge, label %if.else.if.end33.sink.split_crit_edge

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.sink.split

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %if.then27.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then27.if.end33.sink.split_crit_edge ], [ 0, %if.else.if.end33.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %if.then27.if.end33_crit_edge
  %call28.pn = phi i32 [ 0, %if.then27.if.end33_crit_edge ], [ 0, %if.else.if.end33_crit_edge ], [ -22, %if.end33.sink.split ]
  %err.0 = or i32 %or25, %call28.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool34.not = icmp eq i32 %err.0, 0
  %. = select i1 %tobool34.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_intr_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %active = getelementptr inbounds %struct.dio200_subdev_intr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp6 = icmp eq i32 %6, 128
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dio200_inttrig_start_intr, ptr %inttrig, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_ptr.i, align 4
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %14 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %async, align 4
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %15, i32 0, i32 17, i32 12
  %16 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chanlist.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %for.cond.preheader.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.cond.preheader.i:                             ; preds = %if.else
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %15, i32 0, i32 17, i32 13
  %18 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18.not.i = icmp eq i32 %19, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %isn_bits.020.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %17, i32 %n.019.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %21, 65535
  %shl.i = shl nuw i32 1, %and.i
  %or.i = or i32 %shl.i, %isn_bits.020.i
  %inc.i = add nuw i32 %n.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %isn_bits.1.i = phi i32 [ 0, %if.else.if.end.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end.i_crit_edge ], [ %or.i, %for.body.i.if.end.i_crit_edge ]
  %valid_isns.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %13, i32 0, i32 2
  %22 = ptrtoint ptr %valid_isns.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valid_isns.i, align 4
  %and3.i = and i32 %23, %isn_bits.1.i
  %enabled_isns.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %enabled_isns.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and3.i, ptr %enabled_isns.i, align 4
  %has_int_sce.i = getelementptr inbounds %struct.dio200_board, ptr %11, i32 0, i32 5
  %25 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %if.then5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5.i:                                       ; preds = %if.end.i
  %ofs.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %13, i32 0, i32 1
  %26 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ofs.i, align 4
  %conv.i = trunc i32 %and3.i to i8
  %28 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %31 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  %shl.i.i = shl i32 %27, 3
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %27, i32 %shl.i.i
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %33, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %spec.select.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !39
  br label %if.end

do.body4.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %36 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %37, %spec.select.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i.i, -18874368
  %38 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv.i) #7, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body4.i.i, %do.body.i.i, %if.end.i.if.end_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_subdev_intr_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %active = getelementptr inbounds %struct.dio200_subdev_intr, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %3 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board_ptr.i, align 4
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %active.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %active.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %active.i, align 4
  %enabled_isns.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %enabled_isns.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %enabled_isns.i, align 4
  %has_int_sce.i = getelementptr inbounds %struct.dio200_board, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load1.i = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool.not.i = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %ofs.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ofs.i, align 4
  %12 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %15 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  %shl.i.i = shl i32 %11, 3
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %11, i32 %shl.i.i
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %spec.select.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #7, !srcloc !39
  br label %if.end

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %21, %spec.select.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i.i, -18874368
  %22 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #7, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body4.i.i, %do.body.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dio200_inttrig_start_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trig_num)
  %cmp.not = icmp eq i32 %5, %trig_num
  br i1 %cmp.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inttrig, align 4
  %active = getelementptr inbounds %struct.dio200_subdev_intr, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body2.if.end9_crit_edge, label %if.then8

do.body2.if.end9_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %do.body2
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_ptr.i, align 4
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %14 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %async, align 4
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %15, i32 0, i32 17, i32 12
  %16 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chanlist.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then8.if.end.i_crit_edge, label %for.cond.preheader.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.cond.preheader.i:                             ; preds = %if.then8
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %15, i32 0, i32 17, i32 13
  %18 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18.not.i = icmp eq i32 %19, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %isn_bits.020.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %17, i32 %n.019.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %21, 65535
  %shl.i = shl nuw i32 1, %and.i
  %or.i = or i32 %shl.i, %isn_bits.020.i
  %inc.i = add nuw i32 %n.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge, %if.then8.if.end.i_crit_edge
  %isn_bits.1.i = phi i32 [ 0, %if.then8.if.end.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end.i_crit_edge ], [ %or.i, %for.body.i.if.end.i_crit_edge ]
  %valid_isns.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %13, i32 0, i32 2
  %22 = ptrtoint ptr %valid_isns.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valid_isns.i, align 4
  %and3.i = and i32 %23, %isn_bits.1.i
  %enabled_isns.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %enabled_isns.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and3.i, ptr %enabled_isns.i, align 4
  %has_int_sce.i = getelementptr inbounds %struct.dio200_board, ptr %11, i32 0, i32 5
  %25 = ptrtoint ptr %has_int_sce.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %has_int_sce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %if.end.i.if.end9_crit_edge, label %if.then5.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5.i:                                       ; preds = %if.end.i
  %ofs.i = getelementptr inbounds %struct.dio200_subdev_intr, ptr %13, i32 0, i32 1
  %26 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ofs.i, align 4
  %conv.i = trunc i32 %and3.i to i8
  %28 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board_ptr.i, align 4
  %is_pcie.i.i = getelementptr inbounds %struct.dio200_board, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %is_pcie.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i = load i8, ptr %is_pcie.i.i, align 4
  %31 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  %shl.i.i = shl i32 %27, 3
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %27, i32 %shl.i.i
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %33, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool1.not.i.i, label %do.body4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %spec.select.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #7, !srcloc !39
  br label %if.end9

do.body4.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %36 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %37, %spec.select.i.i
  %and.i.i = and i32 %add.i.i, 1048575
  %add7.i.i = or i32 %and.i.i, -18874368
  %38 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv.i) #7, !srcloc !39
  br label %if.end9

if.end9:                                          ; preds = %do.body4.i.i, %do.body.i.i, %if.end.i.if.end9_crit_edge, %do.body2.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_amplc_dio200_set_enhance, !1, !"__ksymtab_amplc_dio200_set_enhance", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 772, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 835, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amplc_dio200_common_attach._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @amplc_dio200_common_attach._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_amplc_dio200_common_attach, !11, !"__ksymtab_amplc_dio200_common_attach", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 842, i32 1}
!12 = !{ptr @__initcall__kmod_amplc_dio200_common__234_848_amplc_dio200_common_init6, !13, !"__initcall__kmod_amplc_dio200_common__234_848_amplc_dio200_common_init6", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 848, i32 1}
!14 = !{ptr @__exitcall_amplc_dio200_common_exit, !15, !"__exitcall_amplc_dio200_common_exit", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 853, i32 1}
!16 = !{ptr @__UNIQUE_ID_author235, !17, !"__UNIQUE_ID_author235", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 855, i32 1}
!18 = !{ptr @__UNIQUE_ID_description236, !19, !"__UNIQUE_ID_description236", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 856, i32 1}
!20 = !{ptr @__UNIQUE_ID_file237, !21, !"__UNIQUE_ID_file237", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 857, i32 1}
!22 = !{ptr @__UNIQUE_ID_license238, !21, !"__UNIQUE_ID_license238", i1 false, i1 false}
!23 = !{ptr @clock_period, !24, !"clock_period", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 51, i32 27}
!25 = !{ptr @dio200_subdev_intr_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 431, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ts_clock_period, !29, !"ts_clock_period", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/amplc_dio200_common.c", i32 71, i32 27}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 4635926}
!40 = !{i64 4636541}
!41 = !{i64 2154213353}
!42 = !{i64 2154214043}
!43 = !{i64 4636123}
!44 = !{i64 4636321}
!45 = !{i64 2154211943}
!46 = !{i64 2154212244}
!47 = !{i32 0, i32 33}
