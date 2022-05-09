; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rts5209.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rts5209.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@rts5209_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts5209_extra_init_hw, ptr @rts5209_optimize_phy, ptr @rts5209_turn_on_led, ptr @rts5209_turn_off_led, ptr @rts5209_enable_auto_blink, ptr @rts5209_disable_auto_blink, ptr @rts5209_card_power_on, ptr @rts5209_card_power_off, ptr @rts5209_switch_output_voltage, ptr null, ptr null, ptr @rts5209_fetch_vendor_settings, ptr @rts5209_force_power_down, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rts5209_sd_pull_ctl_enable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -44040022, i32 -43974486, i32 -43908887, i32 0], [16 x i8] zeroinitializer }, align 32
@rts5209_sd_pull_ctl_disable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -44040107, i32 -43974571, i32 -43908907, i32 0], [16 x i8] zeroinitializer }, align 32
@rts5209_ms_pull_ctl_enable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rts5209_ms_pull_ctl_disable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rts5209_fetch_vendor_settings\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rts5209.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"rts5209_pcr_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 180, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [31 x i8] c"rts5209_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 203, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [32 x i8] c"rts5209_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 217, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"rts5209_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 228, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [32 x i8] c"rts5209_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 239, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [37 x i8] c"../drivers/misc/cardreader/rts5209.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 30, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @rts5209_pcr_ops, ptr @rts5209_sd_pull_ctl_enable_tbl, ptr @rts5209_sd_pull_ctl_disable_tbl, ptr @rts5209_ms_pull_ctl_enable_tbl, ptr @rts5209_ms_pull_ctl_disable_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5209_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5209_sd_pull_ctl_enable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5209_sd_pull_ctl_disable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5209_ms_pull_ctl_enable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5209_ms_pull_ctl_disable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts5209_init_params(ptr nocapture noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 35, ptr %extra_caps, align 4
  %num_slots = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5209_pcr_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 85, ptr %card_drive_sel, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %sd30_drive_sel_3v3, align 2
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
  store i32 1055515, ptr %tx_initial_phase, align 4
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 329240, ptr %rx_initial_phase, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %11 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 28
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  %14 = and i8 %13, 15
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5209_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5209_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %ms_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5209_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl, align 4
  %ms_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rts5209_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -680, i8 noundef zeroext -1, i8 noundef zeroext 3) #3
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -425, i8 noundef zeroext 63, i8 noundef zeroext 0) #3
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -253, i8 noundef zeroext 8, i8 noundef zeroext 8) #3
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -681, i8 noundef zeroext -1, i8 noundef zeroext 3) #3
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %1 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sd30_drive_sel_3v3, align 2
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %2) #3
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 0, i16 noundef zeroext -18074) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -680, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -680, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -682, i8 noundef zeroext -1, i8 noundef zeroext 13) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -682, i8 noundef zeroext 8, i8 noundef zeroext 0) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %card)
  %cmp = icmp eq i32 %card, 1
  %or.cond = and i1 %cmp, %tobool.not
  %pwr_mask.0 = select i1 %or.cond, i8 12, i8 3
  %partial_pwr_on.0 = select i1 %or.cond, i8 4, i8 1
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext %pwr_mask.0, i8 noundef zeroext %partial_pwr_on.0) #3
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 4) #3
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 32212200) #3
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext %pwr_mask.0, i8 noundef zeroext 0) #3
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 0) #3
  %call5 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %card)
  %cmp = icmp eq i32 %card, 1
  %or.cond = and i1 %cmp, %tobool.not
  %pwr_off.0 = select i1 %or.cond, i8 12, i8 3
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  %3 = or i8 %pwr_off.0, 16
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext %3, i8 noundef zeroext %pwr_off.0) #3
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 6) #3
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5209_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %voltage, label %entry.cleanup_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %1 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sd30_drive_sel_3v3, align 2
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 20452) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then13:                                        ; preds = %entry
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %3 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sd30_drive_sel_1v8, align 1
  %call14 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then13.cleanup_crit_edge, label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %call19 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 19556) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end26:                                         ; preds = %if.end18.if.end26_crit_edge, %if.end.if.end26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end18.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5209_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5209_fetch_vendor_settings, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 1828, i32 noundef %6) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %and7 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6.if.end10_crit_edge
  %11 = trunc i32 %8 to i8
  %12 = lshr i8 %11, 5
  %conv = and i8 %12, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %13 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %aspm_en, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %do.end.if.end12_crit_edge
  %call13 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %reg) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5209_fetch_vendor_settings, %if.then26)) #3
          to label %do.end31 [label %if.then26], !srcloc !30

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcr, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev28, ptr noundef nonnull @.str.3, i32 noundef 2068, i32 noundef %17) #3
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.end12
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %and32 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.end31.if.end42_crit_edge, label %if.then34

do.end31.if.end42_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 3
  %conv37 = and i8 %21, 7
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %22 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv37, ptr %sd30_drive_sel_1v8, align 1
  %conv39 = and i8 %20, 7
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %23 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv39, ptr %sd30_drive_sel_3v3, align 2
  %shr40 = lshr i32 %19, 8
  %conv41 = trunc i32 %shr40 to i8
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %24 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv41, ptr %card_drive_sel, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %do.end31.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5209_force_power_down(ptr noundef %pcr, i8 noundef zeroext %pm_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1024, i8 noundef zeroext 7, i8 noundef zeroext 7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @rts5209_pcr_ops, !1, !"rts5209_pcr_ops", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rts5209.c", i32 180, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rts5209.c", i32 30, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !3, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!8 = !{ptr @rts5209_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !9, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rts5209.c", i32 39, i32 2}
!10 = !{ptr @rts5209_sd_pull_ctl_enable_tbl, !11, !"rts5209_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!11 = !{!"../drivers/misc/cardreader/rts5209.c", i32 203, i32 18}
!12 = !{ptr @rts5209_sd_pull_ctl_disable_tbl, !13, !"rts5209_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!13 = !{!"../drivers/misc/cardreader/rts5209.c", i32 217, i32 18}
!14 = !{ptr @rts5209_ms_pull_ctl_enable_tbl, !15, !"rts5209_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!15 = !{!"../drivers/misc/cardreader/rts5209.c", i32 228, i32 18}
!16 = !{ptr @rts5209_ms_pull_ctl_disable_tbl, !17, !"rts5209_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!17 = !{!"../drivers/misc/cardreader/rts5209.c", i32 239, i32 18}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 5034020}
!28 = !{i64 2152573365}
!29 = !{!"auto-init"}
!30 = !{i64 2148958786, i64 2148958791, i64 2148958804, i64 2148958848, i64 2148958882, i64 2148958903}
