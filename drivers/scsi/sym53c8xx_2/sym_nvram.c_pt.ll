; ModuleID = '/llk/IR_all_yes/drivers/scsi/sym53c8xx_2/sym_nvram.c_pt.bc'
source_filename = "../drivers/scsi/sym53c8xx_2/sym_nvram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sym_nvram = type { i32, %union.anon.83 }
%union.anon.83 = type { %struct.Symbios_nvram }
%struct.Symbios_nvram = type { i16, i16, i16, i8, i8, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, [4 x %struct.Symbios_host], [16 x %struct.Symbios_target], [4 x %struct.Symbios_scam], [120 x i8], [6 x i8] }
%struct.Symbios_host = type { i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.Symbios_target = type { i8, i8, i8, i8, i16, i16 }
%struct.Symbios_scam = type { i16, i16, i16, i8, i8 }
%struct.sym_hcb = type { %struct.sym_ccbh, %struct.sym_tcbh, %struct.sym_lcbh, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, %struct.sym_actscr, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x %struct.sym_tcb], ptr, i32, ptr, %struct.sym_shcb, i32, i32, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, %struct.sym_fwa_ba, %struct.sym_fwb_ba, %struct.sym_fwz_ba, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i16, i16, i16, ptr, i32, [8 x i8], [8 x i8], i32, i32, i8, i8, i8, ptr, %struct.sym_quehead, %struct.sym_quehead, %struct.sym_quehead, [4 x i8], %struct.sym_tblmove, %struct.sym_tblsel, i8, i8 }
%struct.sym_ccbh = type { %struct.sym_actscr, i32, i32, [4 x i8] }
%struct.sym_tcbh = type { i32, i32, i8, i8, i8, i8 }
%struct.sym_lcbh = type { i32, i32, i32 }
%struct.sym_actscr = type { i32, i32 }
%struct.sym_tcb = type { %struct.sym_tcbh, ptr, i32, ptr, ptr, %struct.sym_trans, %struct.sym_trans, ptr, i8, i8, i8, i8, i16, ptr }
%struct.sym_trans = type { i8, i8, i8, i8 }
%struct.sym_shcb = type { i32, [16 x i8], [8 x i8], ptr, ptr, ptr, %struct.timer_list, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sym_fwa_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwb_ba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sym_fwz_ba = type { i32, i32 }
%struct.sym_quehead = type { ptr, ptr }
%struct.sym_tblmove = type { i32, i32 }
%struct.sym_tblsel = type { i8, i8, i8, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.Tekram_target = type { i8, i8, i16 }
%struct.Tekram_nvram = type { [16 x %struct.Tekram_target], i8, i8, i8, i8, i16, [29 x i16] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.sym_device = type { ptr, i32, i32, %struct.anon.85, %struct.sym_chip, ptr, i8 }
%struct.anon.85 = type { ptr, ptr }
%struct.sym_chip = type { i16, i16, ptr, i8, i8, i8, i8, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Symbios NVRAM\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tekram NVRAM\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PA-RISC Firmware\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No NVRAM\00", [23 x i8] zeroinitializer }, align 32
@Tekram_sync = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\19\1F%+2>K}\0C\0F\12\15\06\07\09\0A", [16 x i8] zeroinitializer }, align 32
@sym_read_Symbios_nvram.Symbios_trailer = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FE\FE\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.sym_nvram_type = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 16, i64 11, i64 12, i64 13, i64 15]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 759, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 761, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 763, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 765, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"Tekram_sync\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 98, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"Symbios_trailer\00", align 1
@___asan_gen_.22 = private constant [40 x i8] c"../drivers/scsi/sym53c8xx_2/sym_nvram.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 499, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"switch.table.sym_nvram_type\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @Tekram_sync, ptr @sym_read_Symbios_nvram.Symbios_trailer, ptr @switch.table.sym_nvram_type], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Tekram_sync to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym_read_Symbios_nvram.Symbios_trailer to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sym_nvram_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sym_nvram_setup_host(ptr nocapture noundef %shost, ptr nocapture noundef %np, ptr nocapture noundef readonly %nvram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvram, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb31
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.sym_nvram, ptr %nvram, i32 0, i32 1, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 4
  %5 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %rv_scntl0 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 27
  %6 = ptrtoint ptr %rv_scntl0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rv_scntl0, align 4
  %8 = and i8 %7, -11
  store i8 %8, ptr %rv_scntl0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %host_id = getelementptr inbounds %struct.sym_nvram, ptr %nvram, i32 0, i32 1, i32 0, i32 10
  %9 = ptrtoint ptr %host_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %host_id, align 4
  %11 = and i8 %10, 15
  %myaddr = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 61
  %12 = ptrtoint ptr %myaddr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %myaddr, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 4
  %15 = and i16 %14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool12.not = icmp eq i16 %15, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %verbose = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 87
  %16 = ptrtoint ptr %verbose to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %verbose, align 2
  %add = add i8 %17, 1
  store i8 %add, ptr %verbose, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %flags1 = getelementptr inbounds %struct.sym_nvram, ptr %nvram, i32 0, i32 1, i32 0, i32 7
  %18 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags1, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool20.not = icmp eq i16 %20, 0
  br i1 %tobool20.not, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %reverse_ordering = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %21 = ptrtoint ptr %reverse_ordering to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %reverse_ordering, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %reverse_ordering, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  %flags2 = getelementptr inbounds %struct.sym_nvram, ptr %nvram, i32 0, i32 1, i32 0, i32 15
  %22 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags2, align 1
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %if.end22.sw.epilog_crit_edge, label %if.then27

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %usrflags = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 85
  %25 = ptrtoint ptr %usrflags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %usrflags, align 4
  %27 = or i8 %26, 1
  store i8 %27, ptr %usrflags, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %host_id33 = getelementptr inbounds %struct.sym_nvram, ptr %nvram, i32 0, i32 1, i32 0, i32 16, i32 2, i32 6
  %28 = ptrtoint ptr %host_id33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %host_id33, align 4
  %30 = and i8 %29, 15
  %myaddr37 = getelementptr inbounds %struct.sym_hcb, ptr %np, i32 0, i32 61
  %31 = ptrtoint ptr %myaddr37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %myaddr37, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %if.then27, %if.end22.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sym_nvram_setup_target(ptr nocapture noundef %tp, i32 noundef %target, ptr nocapture noundef readonly %nvp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvp, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.sym_nvram, ptr %nvp, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.Symbios_nvram, ptr %data, i32 0, i32 17, i32 %target
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 2
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %usrtags.i = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 12
  %6 = ptrtoint ptr %usrtags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %usrtags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %usrflags.i = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 9
  %10 = ptrtoint ptr %usrflags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %usrflags.i, align 1
  %12 = and i8 %11, -2
  store i8 %12, ptr %usrflags.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 2
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not.i = icmp eq i8 %15, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end10.i.if.end19.i_crit_edge

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %usrflags16.i = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 9
  %16 = ptrtoint ptr %usrflags16.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %usrflags16.i, align 1
  %18 = or i8 %17, 4
  store i8 %18, ptr %usrflags16.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end10.i.if.end19.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 2
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not.i = icmp eq i8 %21, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end19.i.sym_Symbios_setup_target.exit_crit_edge

if.end19.i.sym_Symbios_setup_target.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sym_Symbios_setup_target.exit

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %usrflags25.i = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 9
  %22 = ptrtoint ptr %usrflags25.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %usrflags25.i, align 1
  %24 = or i8 %23, 8
  store i8 %24, ptr %usrflags25.i, align 1
  br label %sym_Symbios_setup_target.exit

sym_Symbios_setup_target.exit:                    ; preds = %if.then24.i, %if.end19.i.sym_Symbios_setup_target.exit_crit_edge
  %sync_period.i = getelementptr %struct.Symbios_nvram, ptr %data, i32 0, i32 17, i32 %target, i32 4
  %25 = ptrtoint ptr %sync_period.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sync_period.i, align 2
  %conv30.i = zext i16 %26 to i32
  %add.i = add nuw nsw i32 %conv30.i, 3
  %div45.i = lshr i32 %add.i, 2
  %conv31.i = trunc i32 %div45.i to i8
  %usr_period.i = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 10
  %27 = ptrtoint ptr %usr_period.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv31.i, ptr %usr_period.i, align 2
  %bus_width.i = getelementptr %struct.Symbios_nvram, ptr %data, i32 0, i32 17, i32 %target, i32 2
  %28 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bus_width.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp.i = icmp ne i8 %29, 8
  %conv34.i = zext i1 %cmp.i to i8
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.sym_nvram, ptr %nvp, i32 0, i32 1
  %arrayidx.i7 = getelementptr [16 x %struct.Tekram_target], ptr %data2, i32 0, i32 %target
  %30 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i7, align 2
  %32 = and i8 %31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i8 = icmp eq i8 %32, 0
  br i1 %tobool.not.i8, label %sw.bb1.if.end.i11_crit_edge, label %if.then.i10

sw.bb1.if.end.i11_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i11

if.then.i10:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %max_tags_index.i = getelementptr inbounds %struct.Tekram_nvram, ptr %data2, i32 0, i32 4
  %33 = ptrtoint ptr %max_tags_index.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_tags_index.i, align 1
  %conv2.i = zext i8 %34 to i32
  %shl.i = shl i32 2, %conv2.i
  %conv3.i = trunc i32 %shl.i to i16
  %usrtags.i9 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 12
  %35 = ptrtoint ptr %usrtags.i9 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv3.i, ptr %usrtags.i9, align 4
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i10, %sw.bb1.if.end.i11_crit_edge
  %36 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i7, align 2
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not.i = icmp eq i8 %38, 0
  br i1 %tobool7.not.i, label %if.end.i11.if.end11.i_crit_edge, label %if.then8.i

if.end.i11.if.end11.i_crit_edge:                  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  %usrflags.i12 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 9
  %39 = ptrtoint ptr %usrflags.i12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %usrflags.i12, align 1
  %41 = or i8 %40, 1
  store i8 %41, ptr %usrflags.i12, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i11.if.end11.i_crit_edge
  %42 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i7, align 2
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool15.not.i = icmp eq i8 %44, 0
  br i1 %tobool15.not.i, label %if.end11.i.sym_Tekram_setup_target.exit_crit_edge, label %if.then16.i

if.end11.i.sym_Tekram_setup_target.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sym_Tekram_setup_target.exit

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %sync_index.i = getelementptr [16 x %struct.Tekram_target], ptr %data2, i32 0, i32 %target, i32 1
  %45 = ptrtoint ptr %sync_index.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sync_index.i, align 1
  %47 = and i8 %46, 15
  %and18.i = zext i8 %47 to i32
  %arrayidx19.i = getelementptr [16 x i8], ptr @Tekram_sync, i32 0, i32 %and18.i
  %48 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx19.i, align 1
  %usr_period.i13 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 10
  %50 = ptrtoint ptr %usr_period.i13 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %usr_period.i13, align 2
  br label %sym_Tekram_setup_target.exit

sym_Tekram_setup_target.exit:                     ; preds = %if.then16.i, %if.end11.i.sym_Tekram_setup_target.exit_crit_edge
  %51 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i7, align 2
  %53 = lshr i8 %52, 5
  %.lobit.i = and i8 %53, 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sym_Tekram_setup_target.exit, %sym_Symbios_setup_target.exit
  %.lobit.i.sink = phi i8 [ %.lobit.i, %sym_Tekram_setup_target.exit ], [ %conv34.i, %sym_Symbios_setup_target.exit ]
  %usr_width.i14 = getelementptr inbounds %struct.sym_tcb, ptr %tp, i32 0, i32 11
  %54 = ptrtoint ptr %usr_width.i14 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.lobit.i.sink, ptr %usr_width.i14, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sym_read_nvram(ptr noundef readonly %np, ptr nocapture noundef %nvp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sym_nvram, ptr %nvp, i32 0, i32 1
  %call.i = tail call fastcc i32 @sym_read_S24C16_nvram(ptr noundef %np, i32 noundef 256, ptr noundef %data, i32 noundef 368) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i = icmp eq i16 %1, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false.i:                                  ; preds = %if.end.i
  %trailer.i = getelementptr inbounds %struct.sym_nvram, ptr %nvp, i32 0, i32 1, i32 0, i32 20
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %trailer.i, ptr noundef nonnull dereferenceable(6) @sym_read_Symbios_nvram.Symbios_trailer, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %byte_count.i = getelementptr inbounds %struct.sym_nvram, ptr %nvp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %byte_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 356, i16 %3)
  %cmp6.not.i = icmp eq i16 %3, 356
  br i1 %cmp6.not.i, label %lor.lhs.false4.i.for.body.i_crit_edge, label %lor.lhs.false4.i.if.else_crit_edge

lor.lhs.false4.i.if.else_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

lor.lhs.false4.i.for.body.i_crit_edge:            ; preds = %lor.lhs.false4.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false4.i.for.body.i_crit_edge
  %x.036.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 6, %lor.lhs.false4.i.for.body.i_crit_edge ]
  %csum.035.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false4.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %x.036.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %csum.035.i, %conv13.i
  %inc.i = add nuw nsw i32 %x.036.i, 1
  %phi.cast.i = and i32 %add.i, 65535
  %exitcond.not.i = icmp eq i32 %inc.i, 362
  br i1 %exitcond.not.i, label %sym_read_Symbios_nvram.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sym_read_Symbios_nvram.exit:                      ; preds = %for.body.i
  %checksum.i = getelementptr inbounds %struct.sym_nvram, ptr %nvp, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %checksum.i, align 4
  %8 = trunc i32 %add.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp18.not.i.not = icmp eq i16 %7, %8
  br i1 %cmp18.not.i.not, label %sym_read_Symbios_nvram.exit.if.end12_crit_edge, label %sym_read_Symbios_nvram.exit.if.else_crit_edge

sym_read_Symbios_nvram.exit.if.else_crit_edge:    ; preds = %sym_read_Symbios_nvram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

sym_read_Symbios_nvram.exit.if.end12_crit_edge:   ; preds = %sym_read_Symbios_nvram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %sym_read_Symbios_nvram.exit.if.else_crit_edge, %lor.lhs.false4.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %entry.if.else_crit_edge
  %9 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device.i, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %12, label %if.else.sw.default.i_crit_edge [
    i16 13, label %if.else.sw.bb.i_crit_edge
    i16 12, label %if.else.sw.bb.i_crit_edge45
    i16 11, label %if.else.sw.bb.i_crit_edge46
    i16 15, label %sw.bb1.i
  ]

if.else.sw.bb.i_crit_edge46:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge45:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.sw.default.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge45, %if.else.sw.bb.i_crit_edge46
  %call.i26 = tail call fastcc i32 @sym_read_S24C16_nvram(ptr noundef %np, i32 noundef 64, ptr noundef %data, i32 noundef 128) #6
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.else
  %call2.i = tail call fastcc i32 @sym_read_S24C16_nvram(ptr noundef %np, i32 noundef 64, ptr noundef %data, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i27 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i27, label %sw.bb1.i.for.body.i31.preheader_crit_edge, label %sw.bb1.i.sw.default.i_crit_edge

sw.bb1.i.sw.default.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb1.i.for.body.i31.preheader_crit_edge:        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i31.preheader

sw.default.i:                                     ; preds = %sw.bb1.i.sw.default.i_crit_edge, %if.else.sw.default.i_crit_edge
  %s.i.i = getelementptr inbounds %struct.sym_device, ptr %np, i32 0, i32 3
  %14 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 7
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %17 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %18, i32 71
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %20 = and i8 %16, -23
  %21 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %22, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %20) #6, !srcloc !24
  %23 = and i8 %19, -32
  %24 = or i8 %23, 9
  %25 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %26, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i.i, i8 %24) #6, !srcloc !24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %T93C46_Read_Word.exit.i.i.i.for.body.i.i.i_crit_edge, %sw.default.i
  %gpreg.0.i.i = phi i8 [ %20, %sw.default.i ], [ %storemerge.i.i.i.i.i, %T93C46_Read_Word.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %x.010.i.i.i = phi i32 [ 0, %sw.default.i ], [ %inc.i.i.i, %T93C46_Read_Word.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %conv.i.i.i = and i32 %x.010.i.i.i, 65151
  %conv.i.i.i.i = or i32 %conv.i.i.i, 384
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i.i
  %gpreg.1.i.i = phi i8 [ %gpreg.0.i.i, %for.body.i.i.i ], [ %30, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %x.05.i.i.i.i = phi i32 [ 0, %for.body.i.i.i ], [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub nuw nsw i32 8, %x.05.i.i.i.i
  %shr.i.i.i.i = lshr i32 %conv.i.i.i.i, %sub.i.i.i.i
  %conv1.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %27 = and i8 %gpreg.1.i.i, -19
  %28 = shl i8 %conv1.i.i.i.i, 1
  %29 = and i8 %28, 2
  %storemerge.i.i.i.i.i = or i8 %29, %27
  %30 = or i8 %storemerge.i.i.i.i.i, 16
  %31 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %32, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i, i8 %30) #6, !srcloc !24
  %33 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s.i.i, align 4
  %add.ptr11.i.i.i.i.i = getelementptr i8, ptr %34, i32 23
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i.i.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 429496) #6
  %37 = or i8 %storemerge.i.i.i.i.i, 20
  %38 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %39, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i.i, i8 %37) #6, !srcloc !24
  %40 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s.i.i, align 4
  %add.ptr4.i.i.i.i.i.i = getelementptr i8, ptr %41, i32 23
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i.i.i.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 429496) #6
  %44 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s.i.i, align 4
  %add.ptr7.i.i.i.i.i.i = getelementptr i8, ptr %45, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i.i.i.i.i, i8 %30) #6, !srcloc !24
  %inc.i.i.i.i = add nuw nsw i32 %x.05.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 9
  br i1 %exitcond.not.i.i.i.i, label %T93C46_Send_Command.exit.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

T93C46_Send_Command.exit.i.i.i:                   ; preds = %for.body.i.i.i.i
  %46 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %47, i32 7
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %T93C46_Send_Command.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge

T93C46_Send_Command.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge: ; preds = %T93C46_Send_Command.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sym_read_T93C46_nvram.exit.i

if.end.i.i.i:                                     ; preds = %T93C46_Send_Command.exit.i.i.i
  %arrayidx.i.i.i = getelementptr i16, ptr %data, i32 %x.010.i.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %arrayidx.i.i.i, align 2
  br label %for.body.i7.i.i.i

for.body.i7.i.i.i:                                ; preds = %for.body.i7.i.i.i.for.body.i7.i.i.i_crit_edge, %if.end.i.i.i
  %x.013.i.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ %inc.i5.i.i.i, %for.body.i7.i.i.i.for.body.i7.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 429496) #6
  %52 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i.i1.i.i.i = getelementptr i8, ptr %53, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i1.i.i.i, i8 %37) #6, !srcloc !24
  %54 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s.i.i, align 4
  %add.ptr4.i.i.i2.i.i.i = getelementptr i8, ptr %55, i32 23
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i.i.i2.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 429496) #6
  %58 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s.i.i, align 4
  %add.ptr7.i.i.i3.i.i.i = getelementptr i8, ptr %59, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i.i3.i.i.i, i8 %30) #6, !srcloc !24
  %60 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i4.i.i.i = getelementptr i8, ptr %61, i32 7
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i4.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i.i.i = icmp eq i8 %63, 0
  %sub3.i.i.i.i = sub nuw nsw i32 15, %x.013.i.i.i.i
  %shl4.i.i.i.i = shl nuw nsw i32 1, %sub3.i.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.i.i, align 2
  %66 = trunc i32 %shl4.i.i.i.i to i16
  %67 = xor i16 %66, -1
  %conv7.i.i.i.i = and i16 %65, %67
  %conv2.i.i.i.i = or i16 %65, %66
  %storemerge.i.i.i.i = select i1 %tobool.not.i.i.i.i, i16 %conv7.i.i.i.i, i16 %conv2.i.i.i.i
  store i16 %storemerge.i.i.i.i, ptr %arrayidx.i.i.i, align 2
  %inc.i5.i.i.i = add nuw nsw i32 %x.013.i.i.i.i, 1
  %exitcond.not.i6.i.i.i = icmp eq i32 %inc.i5.i.i.i, 16
  br i1 %exitcond.not.i6.i.i.i, label %T93C46_Read_Word.exit.i.i.i, label %for.body.i7.i.i.i.for.body.i7.i.i.i_crit_edge

for.body.i7.i.i.i.for.body.i7.i.i.i_crit_edge:    ; preds = %for.body.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i7.i.i.i

T93C46_Read_Word.exit.i.i.i:                      ; preds = %for.body.i7.i.i.i
  %68 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %69, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i.i.i, i8 %storemerge.i.i.i.i.i) #6, !srcloc !24
  %70 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s.i.i, align 4
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %71, i32 23
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 429496) #6
  %74 = or i8 %storemerge.i.i.i.i.i, 4
  %75 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s.i.i, align 4
  %add.ptr.i.i9.i.i.i = getelementptr i8, ptr %76, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i9.i.i.i, i8 %74) #6, !srcloc !24
  %77 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s.i.i, align 4
  %add.ptr4.i.i.i.i.i = getelementptr i8, ptr %78, i32 23
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4.i.i.i.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 429496) #6
  %81 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s.i.i, align 4
  %add.ptr7.i.i.i.i.i = getelementptr i8, ptr %82, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i.i.i.i, i8 %storemerge.i.i.i.i.i) #6, !srcloc !24
  %inc.i.i.i = add nuw nsw i32 %x.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %T93C46_Read_Word.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge, label %T93C46_Read_Word.exit.i.i.i.for.body.i.i.i_crit_edge

T93C46_Read_Word.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %T93C46_Read_Word.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

T93C46_Read_Word.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge: ; preds = %T93C46_Read_Word.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sym_read_T93C46_nvram.exit.i

sym_read_T93C46_nvram.exit.i:                     ; preds = %T93C46_Read_Word.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge, %T93C46_Send_Command.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge
  %retval.2.i.i.i = phi i32 [ 0, %T93C46_Read_Word.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge ], [ 1, %T93C46_Send_Command.exit.i.i.i.sym_read_T93C46_nvram.exit.i_crit_edge ]
  %83 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %84, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i, i8 %19) #6, !srcloc !24
  %85 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %86, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i.i, i8 %16) #6, !srcloc !24
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sym_read_T93C46_nvram.exit.i, %sw.bb.i
  %x.0.i = phi i32 [ %retval.2.i.i.i, %sym_read_T93C46_nvram.exit.i ], [ %call.i26, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0.i)
  %tobool4.not.i = icmp eq i32 %x.0.i, 0
  br i1 %tobool4.not.i, label %sw.epilog.i.for.body.i31.preheader_crit_edge, label %sw.epilog.i.if.else8_crit_edge

sw.epilog.i.if.else8_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8

sw.epilog.i.for.body.i31.preheader_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i31.preheader

for.body.i31.preheader:                           ; preds = %sw.epilog.i.for.body.i31.preheader_crit_edge, %sw.bb1.i.for.body.i31.preheader_crit_edge
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %for.body.i31.preheader
  %x.141.i = phi i32 [ %add15.i, %for.body.i31.for.body.i31_crit_edge ], [ 0, %for.body.i31.preheader ]
  %csum.040.i = phi i32 [ %phi.cast.i30, %for.body.i31.for.body.i31_crit_edge ], [ 0, %for.body.i31.preheader ]
  %arrayidx.i28 = getelementptr i8, ptr %data, i32 %x.141.i
  %87 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i28, align 1
  %conv8.i = zext i8 %88 to i32
  %add.i29 = or i32 %x.141.i, 1
  %arrayidx9.i = getelementptr i8, ptr %data, i32 %add.i29
  %89 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %90 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %add11.i = or i32 %shl.i, %conv8.i
  %add13.i = add nuw nsw i32 %add11.i, %csum.040.i
  %add15.i = add nuw nsw i32 %x.141.i, 2
  %phi.cast.i30 = and i32 %add13.i, 65535
  %cmp.i = icmp ult i32 %x.141.i, 125
  br i1 %cmp.i, label %for.body.i31.for.body.i31_crit_edge, label %sym_read_Tekram_nvram.exit

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i31

sym_read_Tekram_nvram.exit:                       ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4660, i32 %phi.cast.i30)
  %cmp17.not.i.not = icmp eq i32 %phi.cast.i30, 4660
  br i1 %cmp17.not.i.not, label %sym_read_Tekram_nvram.exit.if.end12_crit_edge, label %sym_read_Tekram_nvram.exit.if.else8_crit_edge

sym_read_Tekram_nvram.exit.if.else8_crit_edge:    ; preds = %sym_read_Tekram_nvram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8

sym_read_Tekram_nvram.exit.if.end12_crit_edge:    ; preds = %sym_read_Tekram_nvram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else8:                                         ; preds = %sym_read_Tekram_nvram.exit.if.else8_crit_edge, %sw.epilog.i.if.else8_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %sym_read_Tekram_nvram.exit.if.end12_crit_edge, %sym_read_Symbios_nvram.exit.if.end12_crit_edge
  %.sink = phi i32 [ 0, %if.else8 ], [ 1, %sym_read_Symbios_nvram.exit.if.end12_crit_edge ], [ 2, %sym_read_Tekram_nvram.exit.if.end12_crit_edge ]
  %91 = ptrtoint ptr %nvp to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink, ptr %nvp, align 4
  ret i32 %.sink
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sym_nvram_type(ptr nocapture noundef readonly %nvp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvp, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.sym_nvram_type, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sym_read_S24C16_nvram(ptr nocapture noundef readonly %np, i32 noundef %offset, ptr nocapture noundef %data, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  %read_bit.i = alloca i8, align 1
  %gpcntl = alloca i8, align 1
  %gpreg = alloca i8, align 1
  %ack_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gpcntl) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gpreg) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ack_data) #6
  %0 = ptrtoint ptr %ack_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ack_data, align 1, !annotation !25
  %s = getelementptr inbounds %struct.sym_device, ptr %np, i32 0, i32 3
  %1 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 7
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 71
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %7 = and i8 %6, 28
  %8 = ptrtoint ptr %gpcntl to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %gpcntl, align 1
  %9 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %3) #6, !srcloc !24
  %11 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %7) #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #6
  %14 = and i8 %3, -3
  %15 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %14) #6, !srcloc !24
  %17 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s, align 4
  %add.ptr16.i = getelementptr i8, ptr %18, i32 23
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #6
  %22 = and i8 %3, -4
  %23 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s, align 4
  %add.ptr.i81 = getelementptr i8, ptr %24, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i81, i8 %22) #6, !srcloc !24
  %25 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s, align 4
  %add.ptr16.i82 = getelementptr i8, ptr %26, i32 23
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i82) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #6
  %30 = or i8 %22, 2
  %31 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %30) #6, !srcloc !24
  %33 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %34, i32 23
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #6
  %or22.i.i = or i8 %3, 3
  %38 = ptrtoint ptr %gpreg to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %or22.i.i, ptr %gpreg, align 1
  %39 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %40, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4.i, i8 %or22.i.i) #6, !srcloc !24
  %41 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s, align 4
  %add.ptr16.i5.i = getelementptr i8, ptr %42, i32 23
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i5.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 1073740) #6
  call fastcc void @S24C16_start(ptr noundef %np, ptr noundef nonnull %gpreg)
  %45 = lshr i32 %offset, 7
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 14
  %conv13 = or i8 %47, -96
  call fastcc void @S24C16_write_byte(ptr noundef %np, ptr noundef nonnull %ack_data, i8 noundef zeroext %conv13, ptr noundef nonnull %gpreg, ptr noundef nonnull %gpcntl)
  %48 = ptrtoint ptr %ack_data to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ack_data, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not = icmp eq i8 %50, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %conv17 = trunc i32 %offset to i8
  call fastcc void @S24C16_write_byte(ptr noundef %np, ptr noundef nonnull %ack_data, i8 noundef zeroext %conv17, ptr noundef nonnull %gpreg, ptr noundef nonnull %gpcntl)
  %51 = ptrtoint ptr %ack_data to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ack_data, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool20.not = icmp eq i8 %53, 0
  br i1 %tobool20.not, label %if.end22, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %if.end
  call fastcc void @S24C16_start(ptr noundef %np, ptr noundef nonnull %gpreg)
  %conv26 = or i8 %47, -95
  call fastcc void @S24C16_write_byte(ptr noundef %np, ptr noundef nonnull %ack_data, i8 noundef zeroext %conv26, ptr noundef nonnull %gpreg, ptr noundef nonnull %gpcntl)
  %54 = ptrtoint ptr %ack_data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ack_data, align 1
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool29.not = icmp eq i8 %56, 0
  br i1 %tobool29.not, label %if.end31, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end31:                                         ; preds = %if.end22
  %57 = or i8 %7, 1
  %58 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s, align 4
  %add.ptr37 = getelementptr i8, ptr %59, i32 71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %57) #6, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp91 = icmp sgt i32 %len, 0
  br i1 %cmp91, label %for.body.lr.ph, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end31
  %sub = add nsw i32 %len, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %x.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %x.092
  call void @__sanitizer_cov_trace_cmp4(i32 %x.092, i32 %sub)
  %cmp39 = icmp eq i32 %x.092, %sub
  %conv41 = zext i1 %cmp39 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read_bit.i) #6
  %60 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %read_bit.i, align 1, !annotation !25
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %62 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %read_bit.i, align 1
  %64 = shl i8 %63, 7
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx, align 1
  %conv2.i = or i8 %66, %64
  store i8 %conv2.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %67 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %read_bit.i, align 1
  %69 = shl i8 %68, 6
  %70 = and i8 %69, 64
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  %conv2.1.i = or i8 %70, %72
  store i8 %conv2.1.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %73 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %read_bit.i, align 1
  %75 = shl i8 %74, 5
  %76 = and i8 %75, 32
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx, align 1
  %conv2.2.i = or i8 %76, %78
  store i8 %conv2.2.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %79 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %read_bit.i, align 1
  %81 = shl i8 %80, 4
  %82 = and i8 %81, 16
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx, align 1
  %conv2.3.i = or i8 %82, %84
  store i8 %conv2.3.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %85 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %read_bit.i, align 1
  %87 = shl i8 %86, 3
  %88 = and i8 %87, 8
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx, align 1
  %conv2.4.i = or i8 %88, %90
  store i8 %conv2.4.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %91 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %read_bit.i, align 1
  %93 = shl i8 %92, 2
  %94 = and i8 %93, 4
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx, align 1
  %conv2.5.i = or i8 %94, %96
  store i8 %conv2.5.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %97 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %read_bit.i, align 1
  %99 = shl i8 %98, 1
  %100 = and i8 %99, 2
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx, align 1
  %conv2.6.i = or i8 %100, %102
  store i8 %conv2.6.i, ptr %arrayidx, align 1
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef nonnull %read_bit.i, i8 noundef zeroext 1, ptr noundef nonnull %gpreg) #6
  %103 = ptrtoint ptr %read_bit.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %read_bit.i, align 1
  %105 = and i8 %104, 1
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx, align 1
  %conv2.7.i = or i8 %107, %105
  store i8 %conv2.7.i, ptr %arrayidx, align 1
  %108 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %109, i32 71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i84, i8 %7) #6, !srcloc !24
  call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv41, ptr noundef nonnull %gpreg) #6
  %110 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %111, i32 71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 %57) #6, !srcloc !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read_bit.i) #6
  %inc = add nuw nsw i32 %x.092, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end31.for.end_crit_edge
  %112 = ptrtoint ptr %gpcntl to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %7, ptr %gpcntl, align 1
  %113 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s, align 4
  %add.ptr47 = getelementptr i8, ptr %114, i32 71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47, i8 %7) #6, !srcloc !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 1073740) #6
  %116 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %gpreg, align 1
  %118 = or i8 %117, 2
  store i8 %118, ptr %gpreg, align 1
  %119 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %120, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i86, i8 %118) #6, !srcloc !24
  %121 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s, align 4
  %add.ptr16.i.i87 = getelementptr i8, ptr %122, i32 23
  %123 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i.i87) #6, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 1073740) #6
  %126 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %gpreg, align 1
  %or22.i.i88 = or i8 %127, 1
  store i8 %or22.i.i88, ptr %gpreg, align 1
  %128 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s, align 4
  %add.ptr.i4.i89 = getelementptr i8, ptr %129, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4.i89, i8 %or22.i.i88) #6, !srcloc !24
  %130 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s, align 4
  %add.ptr16.i5.i90 = getelementptr i8, ptr %131, i32 23
  %132 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i5.i90) #6, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %133(i32 noundef 1073740) #6
  br label %out

out:                                              ; preds = %for.end, %if.end22.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %retv.0 = phi i32 [ 1, %entry.out_crit_edge ], [ 1, %if.end.out_crit_edge ], [ 1, %if.end22.out_crit_edge ], [ 0, %for.end ]
  %134 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %s, align 4
  %add.ptr50 = getelementptr i8, ptr %135, i32 71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 %6) #6, !srcloc !24
  %136 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s, align 4
  %add.ptr53 = getelementptr i8, ptr %137, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 %3) #6, !srcloc !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ack_data) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gpreg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gpcntl) #6
  ret i32 %retv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @S24C16_start(ptr nocapture noundef readonly %np, ptr nocapture noundef %gpreg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 1073740) #6
  %1 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %gpreg, align 1
  %or22.i = or i8 %2, 1
  store i8 %or22.i, ptr %gpreg, align 1
  %s.i = getelementptr inbounds %struct.sym_device, ptr %np, i32 0, i32 3
  %3 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or22.i) #6, !srcloc !24
  %5 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %6, i32 23
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #6
  %10 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpreg, align 1
  %12 = or i8 %11, 2
  store i8 %12, ptr %gpreg, align 1
  %13 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %14, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 %12) #6, !srcloc !24
  %15 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s.i, align 4
  %add.ptr16.i9 = getelementptr i8, ptr %16, i32 23
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i9) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #6
  %20 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gpreg, align 1
  %22 = and i8 %21, -2
  store i8 %22, ptr %gpreg, align 1
  %23 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %24, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 %22) #6, !srcloc !24
  %25 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s.i, align 4
  %add.ptr16.i12 = getelementptr i8, ptr %26, i32 23
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i12) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #6
  %30 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %gpreg, align 1
  %32 = and i8 %31, -3
  store i8 %32, ptr %gpreg, align 1
  %33 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %34, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 %32) #6, !srcloc !24
  %35 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s.i, align 4
  %add.ptr16.i15 = getelementptr i8, ptr %36, i32 23
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i15) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @S24C16_write_byte(ptr nocapture noundef readonly %np, ptr noundef %ack_data, i8 noundef zeroext %write_data, ptr nocapture noundef %gpreg, ptr nocapture noundef readonly %gpcntl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i8 %write_data, 7
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %shr, ptr noundef %gpreg)
  %shr.1 = lshr i8 %write_data, 6
  %conv1.1 = and i8 %shr.1, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.1, ptr noundef %gpreg)
  %shr.2 = lshr i8 %write_data, 5
  %conv1.2 = and i8 %shr.2, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.2, ptr noundef %gpreg)
  %shr.3 = lshr i8 %write_data, 4
  %conv1.3 = and i8 %shr.3, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.3, ptr noundef %gpreg)
  %shr.4 = lshr i8 %write_data, 3
  %conv1.4 = and i8 %shr.4, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.4, ptr noundef %gpreg)
  %shr.5 = lshr i8 %write_data, 2
  %conv1.5 = and i8 %shr.5, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.5, ptr noundef %gpreg)
  %0 = lshr i8 %write_data, 1
  %conv1.6 = and i8 %0, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.6, ptr noundef %gpreg)
  %conv1.7 = and i8 %write_data, 1
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef null, i8 noundef zeroext %conv1.7, ptr noundef %gpreg)
  %1 = ptrtoint ptr %gpcntl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %gpcntl, align 1
  %3 = or i8 %2, 1
  %s.i = getelementptr inbounds %struct.sym_device, ptr %np, i32 0, i32 3
  %4 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %3) #6, !srcloc !24
  tail call fastcc void @S24C16_do_bit(ptr noundef %np, ptr noundef %ack_data, i8 noundef zeroext 1, ptr noundef %gpreg) #6
  %6 = ptrtoint ptr %gpcntl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpcntl, align 1
  %8 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %7) #6, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @S24C16_do_bit(ptr nocapture noundef readonly %np, ptr noundef writeonly %read_bit, i8 noundef zeroext %write_bit, ptr nocapture noundef %gpreg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 1073740) #6
  %1 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %gpreg, align 1
  %or22.i = or i8 %2, %write_bit
  store i8 %or22.i, ptr %gpreg, align 1
  %s.i = getelementptr inbounds %struct.sym_device, ptr %np, i32 0, i32 3
  %3 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or22.i) #6, !srcloc !24
  %5 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %6, i32 23
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #6
  %10 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpreg, align 1
  %12 = or i8 %11, 2
  store i8 %12, ptr %gpreg, align 1
  %13 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10, i8 %12) #6, !srcloc !24
  %15 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s.i, align 4
  %add.ptr16.i11 = getelementptr i8, ptr %16, i32 23
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i11) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #6
  %tobool.not = icmp eq ptr %read_bit, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s.i, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 7
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %22 = ptrtoint ptr %read_bit to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %read_bit, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #6
  %24 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %gpreg, align 1
  %26 = and i8 %25, -3
  store i8 %26, ptr %gpreg, align 1
  %27 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %28, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 %26) #6, !srcloc !24
  %29 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s.i, align 4
  %add.ptr16.i14 = getelementptr i8, ptr %30, i32 23
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i14) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #6
  %34 = ptrtoint ptr %gpreg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %gpreg, align 1
  %36 = and i8 %35, -2
  store i8 %36, ptr %gpreg, align 1
  %37 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %38, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 %36) #6, !srcloc !24
  %39 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s.i, align 4
  %add.ptr16.i17 = getelementptr i8, ptr %40, i32 23
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i17) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 1073740) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sym53c8xx_2/sym_nvram.c", i32 759, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/sym53c8xx_2/sym_nvram.c", i32 761, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/sym53c8xx_2/sym_nvram.c", i32 763, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/sym53c8xx_2/sym_nvram.c", i32 765, i32 10}
!8 = !{ptr @Tekram_sync, !9, !"Tekram_sync", i1 false, i1 false}
!9 = !{!"../drivers/scsi/sym53c8xx_2/sym_nvram.c", i32 98, i32 28}
!10 = !{ptr @sym_read_Symbios_nvram.Symbios_trailer, !11, !"Symbios_trailer", i1 false, i1 false}
!11 = !{!"../drivers/scsi/sym53c8xx_2/sym_nvram.c", i32 499, i32 16}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4230336}
!22 = !{i64 2151769681}
!23 = !{i64 2151771286}
!24 = !{i64 4229941}
!25 = !{!"auto-init"}
