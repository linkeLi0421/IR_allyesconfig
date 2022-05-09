; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
%struct.brcms_hardware = type { i8, ptr, [6 x ptr], i32, i16, i16, i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i16, i8, i16, i16, i16, i16, i8, i32, i32, i16, [6 x ptr], ptr, i32, i8, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.antsel_info = type { ptr, ptr, i8, i8, i8, %struct.brcms_antselcfg, %struct.brcms_antselcfg }
%struct.brcms_antselcfg = type { [4 x i8], i8 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.131, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.131 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.132, %struct.anon.133, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.132 = type { i8, i8, i8, i8 }
%struct.anon.133 = type { %struct.anon.134, %struct.anon.135 }
%struct.anon.134 = type { i8, i8, i8, i8, i8 }
%struct.anon.135 = type { i8, i8, i8, i8, i8 }
%struct.brcms_pub = type { ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [6 x i8], i32, i16, i8, [4 x i8], i32, i32, i8, ptr, ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"antsel_attach: 2o3 board cfg invalid\0A\00", [58 x i8] zeroinitializer }, align 32
@mimo_2x4_div_antselid_tbl = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\02\03\00\00\00\01\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mimo_2x3_div_antselpat_tbl = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 16, i16 0, i16 1, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 2, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16], [32 x i8] zeroinitializer }, align 32
@mimo_2x4_div_antselpat_tbl = internal constant { <{ [8 x i16], [8 x i16] }>, [32 x i8] } { <{ [8 x i16], [8 x i16] }> <{ [8 x i16] [i16 0, i16 0, i16 9, i16 10, i16 0, i16 0, i16 5, i16 6], [8 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@mimo_2x3_div_antselid_tbl = internal constant { <{ i8, i8, i8, [13 x i8] }>, [16 x i8] } { <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 1, i8 2, [13 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 141, i32 5 }
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"mimo_2x4_div_antselid_tbl\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 60, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"mimo_2x3_div_antselpat_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 65, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"mimo_2x4_div_antselpat_tbl\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 53, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"mimo_2x3_div_antselid_tbl\00", align 1
@___asan_gen_.22 = private constant [61 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 72, i32 17 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @mimo_2x4_div_antselid_tbl, ptr @mimo_2x3_div_antselpat_tbl, ptr @mimo_2x4_div_antselpat_tbl, ptr @mimo_2x3_div_antselid_tbl], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mimo_2x4_div_antselid_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mimo_2x3_div_antselpat_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mimo_2x4_div_antselpat_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mimo_2x3_div_antselid_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @brcms_c_antsel_attach(ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d11core, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wlc, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wlc, align 4
  %pub3 = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %pub3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pub3, align 4
  %antsel_type = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %antsel_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %antsel_type, align 8
  %antsel_avail = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %antsel_avail to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %antsel_avail, align 2
  %antswitch = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 95
  %13 = ptrtoint ptr %antswitch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %antswitch, align 4
  %antsel_antswitch = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %antsel_antswitch to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %antsel_antswitch, align 1
  %sromrev = getelementptr inbounds %struct.brcms_pub, ptr %9, i32 0, i32 20
  %16 = ptrtoint ptr %sromrev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sromrev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp = icmp ult i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp8.not = icmp eq i8 %14, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.else39, label %if.then10

if.then10:                                        ; preds = %if.end
  %.off = add i8 %14, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %sw.bb, label %if.then10.if.end66_crit_edge

if.then10.if.end66_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

sw.bb:                                            ; preds = %if.then10
  %18 = ptrtoint ptr %antsel_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %antsel_type, align 8
  %ant_available_bg = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 21
  %19 = ptrtoint ptr %ant_available_bg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ant_available_bg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp15 = icmp eq i8 %20, 7
  br i1 %cmp15, label %sw.bb.if.then20_crit_edge, label %lor.lhs.false

sw.bb.if.then20_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

lor.lhs.false:                                    ; preds = %sw.bb
  %ant_available_a = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 20
  %21 = ptrtoint ptr %ant_available_a to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ant_available_a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp18 = icmp eq i8 %22, 7
  br i1 %cmp18, label %lor.lhs.false.if.then20_crit_edge, label %if.else

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %sw.bb.if.then20_crit_edge
  %23 = ptrtoint ptr %antsel_avail to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %antsel_avail, align 2
  br label %if.end66

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp24 = icmp eq i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp29 = icmp eq i8 %22, 3
  %or.cond104 = select i1 %cmp24, i1 true, i1 %cmp29
  br i1 %or.cond104, label %if.else.if.end66_crit_edge, label %if.else33

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %d11core36 = getelementptr inbounds %struct.brcms_hardware, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %d11core36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d11core36, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %27, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str) #5
  br label %if.end66

if.else39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp43 = icmp eq i8 %17, 4
  br i1 %cmp43, label %land.lhs.true45, label %if.else39.if.else58_crit_edge

if.else39.if.else58_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else58

land.lhs.true45:                                  ; preds = %if.else39
  %ant_available_bg46 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 21
  %28 = ptrtoint ptr %ant_available_bg46 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ant_available_bg46, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp48 = icmp eq i8 %29, 7
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true45.if.else58_crit_edge

land.lhs.true45.if.else58_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else58

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %ant_available_a51 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 18, i32 20
  %30 = ptrtoint ptr %ant_available_a51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ant_available_a51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp53 = icmp eq i8 %31, 0
  br i1 %cmp53, label %if.end66.thread, label %land.lhs.true50.if.else58_crit_edge

land.lhs.true50.if.else58_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else58

if.end66.thread:                                  ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %antsel_type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %antsel_type, align 8
  %33 = ptrtoint ptr %antsel_avail to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %antsel_avail, align 2
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  tail call void @brcms_b_antsel_type_set(ptr noundef %35, i8 noundef zeroext 2) #5
  %antcfg_11n116 = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 5
  br label %if.then.i

if.else58:                                        ; preds = %land.lhs.true50.if.else58_crit_edge, %land.lhs.true45.if.else58_crit_edge, %if.else39.if.else58_crit_edge
  %boardflags2 = getelementptr inbounds %struct.brcms_pub, ptr %9, i32 0, i32 23
  %36 = ptrtoint ptr %boardflags2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %boardflags2, align 4
  %and = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.else58.if.end66_crit_edge, label %if.end66.thread118

if.else58.if.end66_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end66.thread118:                               ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %antsel_type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %antsel_type, align 8
  %39 = ptrtoint ptr %antsel_avail to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %antsel_avail, align 2
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  tail call void @brcms_b_antsel_type_set(ptr noundef %41, i8 noundef zeroext 1) #5
  %antcfg_11n119 = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 5
  br label %if.then16.i

if.end66:                                         ; preds = %if.else58.if.end66_crit_edge, %if.else33, %if.else.if.end66_crit_edge, %if.then20, %if.then10.if.end66_crit_edge
  %42 = ptrtoint ptr %antsel_type to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %antsel_type, align 8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  tail call void @brcms_b_antsel_type_set(ptr noundef %44, i8 noundef zeroext %.pr) #5
  %antcfg_11n = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 5
  %45 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr, label %if.else26.i [
    i8 2, label %if.end66.if.then.i_crit_edge
    i8 1, label %if.end66.if.then16.i_crit_edge
  ]

if.end66.if.then16.i_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

if.end66.if.then.i_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.end66.if.then.i_crit_edge, %if.end66.thread
  %antcfg_11n117 = phi ptr [ %antcfg_11n116, %if.end66.thread ], [ %antcfg_11n, %if.end66.if.then.i_crit_edge ]
  %46 = ptrtoint ptr %antsel_avail to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %antsel_avail, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  %spec.select.i = select i1 %tobool.not.i, i8 1, i8 -127
  %num_antcfg.i = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %48 = zext i8 %spec.select.i to i32
  %49 = call ptr @memset(ptr %antcfg_11n117, i32 %48, i32 4)
  %50 = ptrtoint ptr %num_antcfg.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %num_antcfg.i, align 1
  br label %brcms_c_antsel_init_cfg.exit

if.then16.i:                                      ; preds = %if.end66.if.then16.i_crit_edge, %if.end66.thread118
  %antcfg_11n120 = phi ptr [ %antcfg_11n119, %if.end66.thread118 ], [ %antcfg_11n, %if.end66.if.then16.i_crit_edge ]
  %num_antcfg25.i = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %antcfg_11n120 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 33686018, ptr %antcfg_11n120, align 1
  %52 = ptrtoint ptr %num_antcfg25.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %num_antcfg25.i, align 1
  br label %brcms_c_antsel_init_cfg.exit

if.else26.i:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %num_antcfg35.i = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %antcfg_11n to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 16843009, ptr %antcfg_11n, align 1
  %54 = ptrtoint ptr %num_antcfg35.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %num_antcfg35.i, align 1
  br label %brcms_c_antsel_init_cfg.exit

brcms_c_antsel_init_cfg.exit:                     ; preds = %if.else26.i, %if.then16.i, %if.then.i
  %antcfg_cur = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %antsel_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %antsel_type, align 8
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %56, label %if.else26.i114 [
    i8 2, label %if.then.i110
    i8 1, label %if.then16.i112
  ]

if.then.i110:                                     ; preds = %brcms_c_antsel_init_cfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %antsel_avail to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %antsel_avail, align 2, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i107 = icmp eq i8 %59, 0
  %spec.select.i108 = select i1 %tobool.not.i107, i8 1, i8 -127
  %num_antcfg.i109 = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  %60 = zext i8 %spec.select.i108 to i32
  %61 = call ptr @memset(ptr %antcfg_cur, i32 %60, i32 4)
  %62 = ptrtoint ptr %num_antcfg.i109 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %num_antcfg.i109, align 4
  br label %cleanup

if.then16.i112:                                   ; preds = %brcms_c_antsel_init_cfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %num_antcfg25.i111 = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %antcfg_cur to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 33686018, ptr %antcfg_cur, align 8
  %64 = ptrtoint ptr %num_antcfg25.i111 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %num_antcfg25.i111, align 4
  br label %cleanup

if.else26.i114:                                   ; preds = %brcms_c_antsel_init_cfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %num_antcfg35.i113 = getelementptr inbounds %struct.antsel_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %antcfg_cur to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 16843009, ptr %antcfg_cur, align 8
  %66 = ptrtoint ptr %num_antcfg35.i113 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %num_antcfg35.i113, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else26.i114, %if.then16.i112, %if.then.i110, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_antsel_type_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_antsel_detach(ptr noundef %asi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %asi) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_antsel_init(ptr nocapture noundef %asi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %antsel_type = getelementptr inbounds %struct.antsel_info, ptr %asi, i32 0, i32 2
  %0 = ptrtoint ptr %antsel_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %antsel_type, align 4
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %asi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asi, align 4
  %arrayidx.i = getelementptr %struct.antsel_info, ptr %asi, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 12
  %and6.i.i = and i8 %5, 3
  %add.i.i = or i8 %7, %and6.i.i
  %8 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %1, label %if.then.brcms_c_antsel_antcfg2antsel.exit.i_crit_edge [
    i8 1, label %if.then.cleanup.sink.split.i.i_crit_edge
    i8 2, label %if.then17.i.i
  ]

if.then.cleanup.sink.split.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.then.brcms_c_antsel_antcfg2antsel.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_antsel_antcfg2antsel.exit.i

if.then17.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then17.i.i, %if.then.cleanup.sink.split.i.i_crit_edge
  %mimo_2x3_div_antselpat_tbl.sink.i.i = phi ptr [ @mimo_2x3_div_antselpat_tbl, %if.then17.i.i ], [ @mimo_2x4_div_antselpat_tbl, %if.then.cleanup.sink.split.i.i_crit_edge ]
  %idxprom18.i.i = zext i8 %add.i.i to i32
  %arrayidx19.i.i = getelementptr [16 x i16], ptr %mimo_2x3_div_antselpat_tbl.sink.i.i, i32 0, i32 %idxprom18.i.i
  %9 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx19.i.i, align 2
  %11 = and i16 %10, 15
  br label %brcms_c_antsel_antcfg2antsel.exit.i

brcms_c_antsel_antcfg2antsel.exit.i:              ; preds = %cleanup.sink.split.i.i, %if.then.brcms_c_antsel_antcfg2antsel.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 0, %if.then.brcms_c_antsel_antcfg2antsel.exit.i_crit_edge ], [ %11, %cleanup.sink.split.i.i ]
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  tail call void @brcms_b_write_shm(ptr noundef %13, i32 noundef 200, i16 noundef zeroext %retval.0.i.i) #5
  %arrayidx3.i = getelementptr %struct.antsel_info, ptr %asi, i32 0, i32 6, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %arrayidx3.i, align 2
  %arrayidx5.i = getelementptr %struct.antsel_info, ptr %asi, i32 0, i32 5, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5.i, align 1
  %17 = lshr i8 %16, 2
  %18 = and i8 %17, 12
  %and6.i1.i = and i8 %16, 3
  %add.i2.i = or i8 %18, %and6.i1.i
  %19 = ptrtoint ptr %antsel_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %antsel_type, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %20, label %brcms_c_antsel_antcfg2antsel.exit.i.brcms_c_antsel_cfgupd.exit_crit_edge [
    i8 1, label %brcms_c_antsel_antcfg2antsel.exit.i.cleanup.sink.split.i8.i_crit_edge
    i8 2, label %if.then17.i4.i
  ]

brcms_c_antsel_antcfg2antsel.exit.i.cleanup.sink.split.i8.i_crit_edge: ; preds = %brcms_c_antsel_antcfg2antsel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i8.i

brcms_c_antsel_antcfg2antsel.exit.i.brcms_c_antsel_cfgupd.exit_crit_edge: ; preds = %brcms_c_antsel_antcfg2antsel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_antsel_cfgupd.exit

if.then17.i4.i:                                   ; preds = %brcms_c_antsel_antcfg2antsel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i8.i

cleanup.sink.split.i8.i:                          ; preds = %if.then17.i4.i, %brcms_c_antsel_antcfg2antsel.exit.i.cleanup.sink.split.i8.i_crit_edge
  %mimo_2x3_div_antselpat_tbl.sink.i5.i = phi ptr [ @mimo_2x3_div_antselpat_tbl, %if.then17.i4.i ], [ @mimo_2x4_div_antselpat_tbl, %brcms_c_antsel_antcfg2antsel.exit.i.cleanup.sink.split.i8.i_crit_edge ]
  %idxprom18.i6.i = zext i8 %add.i2.i to i32
  %arrayidx19.i7.i = getelementptr [16 x i16], ptr %mimo_2x3_div_antselpat_tbl.sink.i5.i, i32 0, i32 %idxprom18.i6.i
  %22 = ptrtoint ptr %arrayidx19.i7.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx19.i7.i, align 2
  %24 = and i16 %23, 15
  br label %brcms_c_antsel_cfgupd.exit

brcms_c_antsel_cfgupd.exit:                       ; preds = %cleanup.sink.split.i8.i, %brcms_c_antsel_antcfg2antsel.exit.i.brcms_c_antsel_cfgupd.exit_crit_edge
  %retval.0.i9.i = phi i16 [ 0, %brcms_c_antsel_antcfg2antsel.exit.i.brcms_c_antsel_cfgupd.exit_crit_edge ], [ %24, %cleanup.sink.split.i8.i ]
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  tail call void @brcms_b_write_shm(ptr noundef %26, i32 noundef 198, i16 noundef zeroext %retval.0.i9.i) #5
  %arrayidx10.i = getelementptr %struct.antsel_info, ptr %asi, i32 0, i32 6, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %16, ptr %arrayidx10.i, align 1
  br label %if.end

if.end:                                           ; preds = %brcms_c_antsel_cfgupd.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcms_c_antsel_antcfg_get(ptr nocapture noundef readonly %asi, i1 noundef zeroext %usedef, i1 noundef zeroext %sel, i8 noundef zeroext %antselid, i8 noundef zeroext %fbantselid, ptr nocapture noundef writeonly %antcfg, ptr nocapture noundef writeonly %fbantcfg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %usedef, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.antsel_info, ptr %asi, i32 0, i32 5, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %antcfg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %antcfg, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %antcfg_11n7 = getelementptr inbounds %struct.antsel_info, ptr %asi, i32 0, i32 5
  %3 = ptrtoint ptr %antcfg_11n7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %antcfg_11n7, align 1
  br i1 %sel, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %antcfg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %antcfg, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp slt i8 %4, 0
  br i1 %cmp, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  %antsel_type.i = getelementptr inbounds %struct.antsel_info, ptr %asi, i32 0, i32 2
  %6 = ptrtoint ptr %antsel_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %antsel_type.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %7, label %if.then11.brcms_c_antsel_id2antcfg.exit_crit_edge [
    i8 1, label %if.then.i
    i8 2, label %if.then10.i
  ]

if.then11.brcms_c_antsel_id2antcfg.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcms_c_antsel_id2antcfg.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = shl i8 %antselid, 3
  %shl.i = and i8 %and.i, 16
  %and4.i = and i8 %antselid, 1
  %add.i = or i8 %and4.i, %shl.i
  %or.i = or i8 %add.i, 2
  br label %brcms_c_antsel_id2antcfg.exit

if.then10.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = shl i8 %antselid, 4
  %shl13.i = and i8 %and12.i, 32
  %and15.i = and i8 %antselid, 1
  %add16.i = add nuw nsw i8 %and15.i, 1
  %or17.i = or i8 %shl13.i, %add16.i
  br label %brcms_c_antsel_id2antcfg.exit

brcms_c_antsel_id2antcfg.exit:                    ; preds = %if.then10.i, %if.then.i, %if.then11.brcms_c_antsel_id2antcfg.exit_crit_edge
  %retval.0.i = phi i8 [ %or.i, %if.then.i ], [ %or17.i, %if.then10.i ], [ 1, %if.then11.brcms_c_antsel_id2antcfg.exit_crit_edge ]
  %9 = ptrtoint ptr %antcfg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %retval.0.i, ptr %antcfg, align 1
  %10 = ptrtoint ptr %antsel_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %antsel_type.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %11, label %brcms_c_antsel_id2antcfg.exit.cleanup_crit_edge [
    i8 1, label %if.then.i39
    i8 2, label %if.then10.i45
  ]

brcms_c_antsel_id2antcfg.exit.cleanup_crit_edge:  ; preds = %brcms_c_antsel_id2antcfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i39:                                      ; preds = %brcms_c_antsel_id2antcfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and.i34 = shl i8 %fbantselid, 3
  %shl.i35 = and i8 %and.i34, 16
  %and4.i36 = and i8 %fbantselid, 1
  %add.i37 = or i8 %and4.i36, %shl.i35
  %or.i38 = or i8 %add.i37, 2
  br label %cleanup

if.then10.i45:                                    ; preds = %brcms_c_antsel_id2antcfg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i40 = shl i8 %fbantselid, 4
  %shl13.i41 = and i8 %and12.i40, 32
  %and15.i42 = and i8 %fbantselid, 1
  %add16.i43 = add nuw nsw i8 %and15.i42, 1
  %or17.i44 = or i8 %shl13.i41, %add16.i43
  br label %cleanup

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %antcfg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %4, ptr %antcfg, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then10.i45, %if.then.i39, %brcms_c_antsel_id2antcfg.exit.cleanup_crit_edge, %if.then3, %if.then
  %.sink = phi i8 [ %4, %if.then3 ], [ %4, %if.else13 ], [ %1, %if.then ], [ %or.i38, %if.then.i39 ], [ %or17.i44, %if.then10.i45 ], [ 1, %brcms_c_antsel_id2antcfg.exit.cleanup_crit_edge ]
  %14 = ptrtoint ptr %fbantcfg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %fbantcfg, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @brcms_c_antsel_antsel2id(ptr nocapture noundef readonly %asi, i16 noundef zeroext %antsel) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %antsel_type = getelementptr inbounds %struct.antsel_info, ptr %asi, i32 0, i32 2
  %0 = ptrtoint ptr %antsel_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %antsel_type, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 1, label %entry.cleanup.sink.split_crit_edge
    i8 2, label %if.then7
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %entry.cleanup.sink.split_crit_edge
  %mimo_2x3_div_antselid_tbl.sink = phi ptr [ @mimo_2x3_div_antselid_tbl, %if.then7 ], [ @mimo_2x4_div_antselid_tbl, %entry.cleanup.sink.split_crit_edge ]
  %3 = and i16 %antsel, 15
  %and9 = zext i16 %3 to i32
  %arrayidx10 = getelementptr [16 x i8], ptr %mimo_2x3_div_antselid_tbl.sink, i32 0, i32 %and9
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ %5, %cleanup.sink.split ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_write_shm(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c", i32 141, i32 5}
!2 = !{ptr @mimo_2x4_div_antselpat_tbl, !3, !"mimo_2x4_div_antselpat_tbl", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c", i32 53, i32 18}
!4 = !{ptr @mimo_2x3_div_antselpat_tbl, !5, !"mimo_2x3_div_antselpat_tbl", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c", i32 65, i32 18}
!6 = !{ptr @mimo_2x4_div_antselid_tbl, !7, !"mimo_2x4_div_antselid_tbl", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c", i32 60, i32 17}
!8 = !{ptr @mimo_2x3_div_antselid_tbl, !9, !"mimo_2x3_div_antselid_tbl", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/antsel.c", i32 72, i32 17}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
