; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rts5227.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rts5227.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtsx_pcr = type { ptr, i32, %struct.rtsx_cr_option, %struct.rtsx_hw_param, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i16, i32, ptr, i8, i8, i8, i8 }
%struct.rtsx_cr_option = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.rtsx_hw_param = type { i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@rts5227_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts5227_extra_init_hw, ptr @rts5227_optimize_phy, ptr @rts5227_turn_on_led, ptr @rts5227_turn_off_led, ptr @rts5227_enable_auto_blink, ptr @rts5227_disable_auto_blink, ptr @rts5227_card_power_on, ptr @rts5227_card_power_off, ptr @rts5227_switch_output_voltage, ptr null, ptr null, ptr @rts5227_fetch_vendor_settings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rts5227_sd_pull_ctl_enable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43974486, i32 -43908887, i32 0], [20 x i8] zeroinitializer }, align 32
@rts5227_sd_pull_ctl_disable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43974571, i32 -43908907, i32 0], [20 x i8] zeroinitializer }, align 32
@rts5227_ms_pull_ctl_enable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43777963, i32 -43712491, i32 0], [20 x i8] zeroinitializer }, align 32
@rts5227_ms_pull_ctl_disable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43777963, i32 -43712491, i32 0], [20 x i8] zeroinitializer }, align 32
@rts522a_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts522a_extra_init_hw, ptr @rts522a_optimize_phy, ptr @rts5227_turn_on_led, ptr @rts5227_turn_off_led, ptr @rts5227_enable_auto_blink, ptr @rts5227_disable_auto_blink, ptr @rts5227_card_power_on, ptr @rts5227_card_power_off, ptr @rts522a_switch_output_voltage, ptr null, ptr null, ptr @rts5227_fetch_vendor_settings, ptr null, ptr null, ptr null, ptr @rts522a_set_l1off_cfg_sub_d0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__const.rts5227_fill_driving.driving_3v3 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\13\13\13", [3 x i8] c"\96\96\96", [3 x i8] c"\7F\7F\7F", [3 x i8] c"\96\96\96"], align 1
@__const.rts5227_fill_driving.driving_1v8 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\99\99\99", [3 x i8] c"\AA\AA\AA", [3 x i8] c"\FE\FE\FE", [3 x i8] c"\B3\B3\B3"], align 1
@rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rts5227_fetch_vendor_settings\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rts5227.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"rts5227_pcr_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 289, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"rts5227_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 311, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [32 x i8] c"rts5227_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 324, i32 18 }
@___asan_gen_.14 = private unnamed_addr constant [31 x i8] c"rts5227_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 334, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [32 x i8] c"rts5227_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 344, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"rts522a_pcr_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 465, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [37 x i8] c"../drivers/misc/cardreader/rts5227.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 63, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @rts5227_pcr_ops, ptr @rts5227_sd_pull_ctl_enable_tbl, ptr @rts5227_sd_pull_ctl_disable_tbl, ptr @rts5227_ms_pull_ctl_enable_tbl, ptr @rts5227_ms_pull_ctl_disable_tbl, ptr @rts522a_pcr_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5227_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5227_sd_pull_ctl_enable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5227_sd_pull_ctl_disable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5227_ms_pull_ctl_enable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5227_ms_pull_ctl_disable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts522a_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts5227_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps, align 4
  %num_slots = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5227_pcr_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %card_drive_sel, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sd30_drive_sel_3v3, align 2
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %7 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %aspm_en, align 4
  %aspm_mode = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %8 = ptrtoint ptr %aspm_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aspm_mode, align 4
  %tx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 989979, ptr %tx_initial_phase, align 4
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 460574, ptr %rx_initial_phase, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i, align 1, !annotation !29
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i) #4
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  %14 = and i8 %13, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5227_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5227_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %ms_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5227_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl, align 4
  %ms_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rts5227_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl, align 4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %20 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -186, ptr %reg_pm_ctrl3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts522a_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %extra_caps.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps.i, align 4
  %num_slots.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots.i, align 4
  %ops.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5227_pcr_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags.i, align 4
  %card_drive_sel.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %card_drive_sel.i, align 1
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8.i, align 1
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sd30_drive_sel_3v3.i, align 2
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %7 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %aspm_en.i, align 4
  %aspm_mode.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %8 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aspm_mode.i, align 4
  %tx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 989979, ptr %tx_initial_phase.i, align 4
  %rx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 460574, ptr %rx_initial_phase.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #4
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i.i, align 1, !annotation !29
  %call.i.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i.i) #4
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i.i, align 1
  %14 = and i8 %13, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #4
  %ic_version.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version.i, align 4
  %sd_pull_ctl_enable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5227_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl.i, align 4
  %sd_pull_ctl_disable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5227_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl.i, align 4
  %ms_pull_ctl_enable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5227_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl.i, align 4
  %ms_pull_ctl_disable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rts5227_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl.i, align 4
  %reg_pm_ctrl3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rts522a_pcr_ops, ptr %ops.i, align 4
  %21 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %aspm_mode.i, align 4
  %22 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 726036, ptr %tx_initial_phase.i, align 4
  %23 = ptrtoint ptr %reg_pm_ctrl3.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -130, ptr %reg_pm_ctrl3.i, align 4
  %24 = ptrtoint ptr %option1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %option1, align 4
  %ltr_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %ltr_en to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ltr_en, align 1
  %ltr_active_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %ltr_active_latency to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 34876, ptr %ltr_active_latency, align 4
  %ltr_idle_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %ltr_idle_latency to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 35116, ptr %ltr_idle_latency, align 4
  %ltr_l1off_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %ltr_l1off_latency to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 36867, ptr %ltr_l1off_latency, align 4
  %l1_snooze_delay = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %l1_snooze_delay to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %l1_snooze_delay, align 4
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 127, ptr %ltr_l1off_sspwrgate, align 4
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %31 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 120, ptr %ltr_l1off_snooze_sspwrgate, align 1
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %ocp_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ocp_en, align 2
  %hw_param = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3
  %33 = ptrtoint ptr %hw_param to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_param, align 4
  %or = or i32 %34, 4194304
  store i32 %or, ptr %hw_param, align 4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %ocp_glitch, align 4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %36 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %sd_800mA_ocp_thd, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  %lval.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #4
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cap, align 2, !annotation !29
  %1 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval.i) #4
  %3 = ptrtoint ptr %lval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lval.i, align 4, !annotation !29
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %2, i32 noundef 30) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.rts5227_init_from_cfg.exit_crit_edge, label %if.end.i

entry.rts5227_init_from_cfg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rts5227_init_from_cfg.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %lval.i) #4
  %4 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcr, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21034, i16 %7)
  %cmp.i = icmp eq i16 %7, 21034
  br i1 %cmp.i, label %if.then6.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lval.i, align 4
  %and.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_enable_oobs_polling(ptr noundef %pcr) #4
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_disable_oobs_polling(ptr noundef %pcr) #4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %10 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lval.i, align 4
  %12 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %option1.i, align 4
  %and19.i = and i32 %13, -16
  %and12.i = lshr i32 %11, 3
  %and12.lobit.i = and i32 %and12.i, 1
  %storemerge.i = or i32 %and19.i, %and12.lobit.i
  %trunc.i = trunc i32 %11 to i4
  %rev.i = call i4 @llvm.bitreverse.i4(i4 %trunc.i) #4
  %mask.i = and i4 %rev.i, -2
  %storemerge102.i = zext i4 %mask.i to i32
  %storemerge103.i = or i32 %storemerge.i, %storemerge102.i
  %14 = ptrtoint ptr %option1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge103.i, ptr %option1.i, align 4
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ltr_en.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool54.not.i = icmp eq i8 %16, 0
  br i1 %tobool54.not.i, label %if.end11.i.if.end66.i_crit_edge, label %if.then55.i

if.end11.i.if.end66.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i

if.then55.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #4
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val.i, align 2, !annotation !29
  %18 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcr, align 4
  %call57.i = call i32 @pcie_capability_read_word(ptr noundef %19, i32 noundef 40, ptr noundef nonnull %val.i) #4
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val.i, align 2
  %22 = and i16 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool60.not.i = icmp eq i16 %22, 0
  %ltr_enabled64.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 3
  br i1 %tobool60.not.i, label %if.else63.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %ltr_enabled64.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ltr_enabled64.i, align 2
  %ltr_active.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %ltr_active.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ltr_active.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ltr_active_latency.i, align 4
  %call62.i = call i32 @rtsx_set_ltr_latency(ptr noundef %pcr, i32 noundef %26) #4
  br label %if.end65.i

if.else63.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %ltr_enabled64.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ltr_enabled64.i, align 2
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else63.i, %if.then61.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end65.i, %if.end11.i.if.end66.i_crit_edge
  %28 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %option1.i, align 4
  %and69.i = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  %force_clkreq_073.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %..i = zext i1 %tobool70.not.i to i8
  %30 = ptrtoint ptr %force_clkreq_073.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %..i, ptr %force_clkreq_073.i, align 4
  br label %rts5227_init_from_cfg.exit

rts5227_init_from_cfg.exit:                       ; preds = %if.end66.i, %entry.rts5227_init_from_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval.i) #4
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %31 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ci, align 4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -425, i8 noundef zeroext 63, i8 noundef zeroext 0) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -392, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -392, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -994, i8 noundef zeroext 15, i8 noundef zeroext 2) #4
  %32 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcr, align 4
  %call = call i32 @pcie_capability_read_word(ptr noundef %33, i32 noundef 40, ptr noundef nonnull %cap) #4
  %34 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cap, align 2
  %36 = and i16 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not = icmp eq i16 %36, 0
  br i1 %tobool.not, label %rts5227_init_from_cfg.exit.if.end_crit_edge, label %if.then

rts5227_init_from_cfg.exit.if.end_crit_edge:      ; preds = %rts5227_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %rts5227_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -438, i8 noundef zeroext -1, i8 noundef zeroext -93) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %rts5227_init_from_cfg.exit.if.end_crit_edge
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -436, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %37 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %drive_sel.0.i = load i8, ptr %sd30_drive_sel_3v3.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr @__const.rts5227_fill_driving.driving_3v3, i32 %idxprom.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %39) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr @__const.rts5227_fill_driving.driving_3v3, i32 %idxprom.i, i32 1
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %41) #4
  %arrayidx9.i = getelementptr [3 x i8], ptr @__const.rts5227_fill_driving.driving_3v3, i32 %idxprom.i, i32 2
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %43) #4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and2 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool3.not, i8 0, i8 48
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -253, i8 noundef zeroext 48, i8 noundef zeroext %.) #4
  %force_clkreq_0 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %force_clkreq_0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %force_clkreq_0, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool6.not = icmp eq i8 %47, 0
  %.sink30 = select i1 %tobool6.not, i8 0, i8 -128
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -253, i8 noundef zeroext -128, i8 noundef zeroext %.sink30) #4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %48 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %reg_pm_ctrl3, align 4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext %49, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  %call10 = call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #4
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -186, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 0, i16 noundef zeroext -17854) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_enable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 2) #4
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 20) #4
  %3 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 6) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 4) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -683, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call4 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_disable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 19, i8 noundef zeroext 3) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5227_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %voltage, label %entry.cleanup_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 20452) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %entry
  %call9 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 17, i16 noundef zeroext 15362) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %call14 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 19620) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end13.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %2 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5227_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  %3 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5227_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %4 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %6) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %8) #4
  %arrayidx9.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %10) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %call22 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ %call, %if.then.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5227_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5227_fetch_vendor_settings, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 1828, i32 noundef %6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %shr = lshr i32 %8, 28
  %9 = trunc i32 %shr to i8
  %conv = and i8 %9, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %10 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %aspm_en, align 4
  %shr9 = lshr i32 %8, 26
  %11 = trunc i32 %shr9 to i8
  %conv11 = and i8 %11, 3
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %12 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %sd30_drive_sel_1v8, align 1
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %13 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %card_drive_sel, align 1
  %15 = and i8 %14, 63
  %16 = lshr i32 %8, 19
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 64
  %conv19 = or i8 %15, %18
  store i8 %conv19, ptr %card_drive_sel, align 1
  %call20 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5227_fetch_vendor_settings, %if.then33)) #4
          to label %do.end38 [label %if.then33], !srcloc !31

if.then33:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcr, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev35, ptr noundef nonnull @.str.3, i32 noundef 2068, i32 noundef %22) #4
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %if.end7
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %and39 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end38.if.end43_crit_edge, label %if.then41

do.end38.if.end43_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then41:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %25 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %extra_caps, align 4
  %or42 = or i32 %26, 128
  store i32 %or42, ptr %extra_caps, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.end38.if.end43_crit_edge
  %27 = trunc i32 %24 to i8
  %28 = lshr i8 %27, 5
  %conv46 = and i8 %28, 3
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %29 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv46, ptr %sd30_drive_sel_3v3, align 2
  %and47 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end43.cleanup_crit_edge, label %if.then49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %or50 = or i32 %31, 2
  store i32 %or50, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end43.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_oobs_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_oobs_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_ltr_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts522a_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rts5227_extra_init_hw(ptr noundef %pcr)
  %card_exist = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 19
  %0 = ptrtoint ptr %card_exist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1024, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -423, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -427, i8 noundef zeroext 4, i8 noundef zeroext 4) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -399, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -424, i8 noundef zeroext -1, i8 noundef zeroext 17) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts522a_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -130, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21034, i16 %3)
  %cmp1 = icmp eq i16 %3, 21034
  br i1 %cmp1, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %4 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4 = icmp eq i8 %5, 0
  br i1 %cmp4, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 3, i16 noundef zeroext -16046) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 2, i16 noundef zeroext 2591) #4
  %call11 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 26, i16 noundef zeroext 9542) #4
  %call12 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 29, i16 noundef zeroext 4) #4
  %call13 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 30, i16 noundef zeroext 23679) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts522a_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %voltage, label %entry.cleanup_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 22500) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %entry
  %call9 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 17, i16 noundef zeroext 15362) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %call14 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 21668) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end13.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %2 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5227_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  %3 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5227_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %4 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %6) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %8) #4
  %arrayidx9.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %10) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %call22 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ %call, %if.then.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts522a_set_l1off_cfg_sub_d0(ptr noundef %pcr, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %0 = ptrtoint ptr %option1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %option1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ltr_l1off_snooze_sspwrgate, align 1
  br label %if.end11

if.else:                                          ; preds = %entry
  %and5 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool8.not = icmp eq i32 %and5, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ltr_l1off_sspwrgate, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.then7, %if.then.if.end11_crit_edge
  %val.0 = phi i8 [ %3, %if.then7 ], [ 0, %if.then.if.end11_crit_edge ], [ %5, %if.then9 ], [ 0, %if.else.if.end11_crit_edge ]
  %call = tail call i32 @rtsx_set_l1off_sub(ptr noundef %pcr, i8 noundef zeroext %val.0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_l1off_sub(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @rts5227_pcr_ops, !1, !"rts5227_pcr_ops", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rts5227.c", i32 289, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rts5227.c", i32 63, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !3, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!8 = !{ptr @rts5227_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !9, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rts5227.c", i32 74, i32 2}
!10 = !{ptr @rts5227_sd_pull_ctl_enable_tbl, !11, !"rts5227_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!11 = !{!"../drivers/misc/cardreader/rts5227.c", i32 311, i32 18}
!12 = !{ptr @rts5227_sd_pull_ctl_disable_tbl, !13, !"rts5227_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!13 = !{!"../drivers/misc/cardreader/rts5227.c", i32 324, i32 18}
!14 = !{ptr @rts5227_ms_pull_ctl_enable_tbl, !15, !"rts5227_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!15 = !{!"../drivers/misc/cardreader/rts5227.c", i32 334, i32 18}
!16 = !{ptr @rts5227_ms_pull_ctl_disable_tbl, !17, !"rts5227_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!17 = !{!"../drivers/misc/cardreader/rts5227.c", i32 344, i32 18}
!18 = !{ptr @rts522a_pcr_ops, !19, !"rts522a_pcr_ops", i1 false, i1 false}
!19 = !{!"../drivers/misc/cardreader/rts5227.c", i32 465, i32 29}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i8 0, i8 2}
!31 = !{i64 2148965330, i64 2148965335, i64 2148965348, i64 2148965392, i64 2148965426, i64 2148965447}
