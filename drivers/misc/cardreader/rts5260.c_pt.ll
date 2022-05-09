; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rts5260.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rts5260.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@rts5260_sd_pull_ctl_enable_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -44040090, i32 -43974486, i32 -43908887, i32 -43843414, i32 0], [44 x i8] zeroinitializer }, align 32
@rts5260_sd_pull_ctl_disable_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -44040090, i32 -43974571, i32 -43908907, i32 -43843499, i32 0], [44 x i8] zeroinitializer }, align 32
@rts5260_ms_pull_ctl_enable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rts5260_ms_pull_ctl_disable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rts5260_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts5260_extra_init_hw, ptr null, ptr @rts5260_turn_on_led, ptr @rts5260_turn_off_led, ptr @rtsx_base_enable_auto_blink, ptr @rtsx_base_disable_auto_blink, ptr @rts5260_card_power_on, ptr @rts5260_card_power_off, ptr @rts5260_switch_output_voltage, ptr null, ptr null, ptr @rtsx_base_fetch_vendor_settings, ptr null, ptr @rts5260_stop_cmd, ptr null, ptr @rts5260_set_l1off_cfg_sub_d0, ptr @rts5260_enable_ocp, ptr @rts5260_disable_ocp, ptr @rts5260_init_ocp, ptr @rts5260_process_ocp, ptr @rts5260_get_ocpstat, ptr @rts5260_clear_ocpstat }, [32 x i8] zeroinitializer }, align 32
@rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rts5260_pwr_saving_setting\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rts5260.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set parameters for L1.2.\00", [39 x i8] zeroinitializer }, align 32
@rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set parameters for L1.1.\00", [39 x i8] zeroinitializer }, align 32
@rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set parameters for L1.\00", [41 x i8] zeroinitializer }, align 32
@__const.rts5260_fill_driving.driving_3v3 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\11\11\11", [3 x i8] c"\22\22\22", [3 x i8] c"UUU", [3 x i8] c"333"], align 1
@__const.rts5260_fill_driving.driving_1v8 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"533", [3 x i8] c"\8A\88\88", [3 x i8] c"\BD\BB\BB", [3 x i8] c"\9B\99\99"], align 1
@rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtsx_base_fetch_vendor_settings\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"skip fetch vendor setting\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [31 x i8] c"rts5260_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 119, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant [32 x i8] c"rts5260_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 134, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"rts5260_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 146, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [32 x i8] c"rts5260_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 157, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"rts5260_pcr_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 598, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 427, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 439, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 445, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 67, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [37 x i8] c"../drivers/misc/cardreader/rts5260.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 70, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @rts5260_sd_pull_ctl_enable_tbl, ptr @rts5260_sd_pull_ctl_disable_tbl, ptr @rts5260_ms_pull_ctl_enable_tbl, ptr @rts5260_ms_pull_ctl_disable_tbl, ptr @rts5260_pcr_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5260_sd_pull_ctl_enable_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5260_sd_pull_ctl_disable_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5260_ms_pull_ctl_enable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5260_ms_pull_ctl_disable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5260_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts5260_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps, align 4
  %num_slots = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots, align 4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %3 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 65, ptr %card_drive_sel, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %4 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %5 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_3v3, align 2
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %6 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %aspm_en, align 4
  %aspm_mode = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %7 = ptrtoint ptr %aspm_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %aspm_mode, align 4
  %tx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %8 = ptrtoint ptr %tx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 728347, ptr %tx_initial_phase, align 4
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %9 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 329240, ptr %rx_initial_phase, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #3
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i, align 1, !annotation !40
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i) #3
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i, align 1
  %13 = and i8 %12, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #3
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %14 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ic_version, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %15 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rts5260_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %16 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5260_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %ms_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %17 = ptrtoint ptr %ms_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5260_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl, align 4
  %ms_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %18 = ptrtoint ptr %ms_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5260_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl, align 4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %19 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -130, ptr %reg_pm_ctrl3, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rts5260_pcr_ops, ptr %ops, align 4
  %21 = ptrtoint ptr %option1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 80, ptr %option1, align 4
  %ltr_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %ltr_en to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %ltr_en, align 1
  %ltr_active_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %ltr_active_latency to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 34876, ptr %ltr_active_latency, align 4
  %ltr_idle_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %ltr_idle_latency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 35116, ptr %ltr_idle_latency, align 4
  %ltr_l1off_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %ltr_l1off_latency to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 36867, ptr %ltr_l1off_latency, align 4
  %l1_snooze_delay = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %26 = ptrtoint ptr %l1_snooze_delay to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %l1_snooze_delay, align 4
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %27 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %ltr_l1off_sspwrgate, align 4
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -8, ptr %ltr_l1off_snooze_sspwrgate, align 1
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %29 = ptrtoint ptr %ocp_en to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %ocp_en, align 2
  %hw_param2 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3
  %30 = ptrtoint ptr %hw_param2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_param2, align 4
  %or = or i32 %31, 4194304
  store i32 %or, ptr %hw_param2, align 4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 82, ptr %ocp_glitch, align 4
  %sd_400mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 12
  %33 = ptrtoint ptr %sd_400mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %sd_400mA_ocp_thd, align 1
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %34 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 80, ptr %sd_800mA_ocp_thd, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  %lval.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1021, i8 noundef zeroext 127, i8 noundef zeroext 7) #3
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1009, i8 noundef zeroext -1, i8 noundef zeroext 93) #3
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval.i) #3
  %2 = ptrtoint ptr %lval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lval.i, align 4, !annotation !40
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 30) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.rts5260_init_from_cfg.exit_crit_edge, label %if.end.i

entry.rts5260_init_from_cfg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rts5260_init_from_cfg.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %lval.i) #3
  %3 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lval.i, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %option1.i, align 4
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %option1.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end13.i_crit_edge, label %if.then9.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %option1.i, align 4
  %or12.i = or i32 %8, 2
  store i32 %or12.i, ptr %option1.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end13.i_crit_edge
  %and14.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end20.i_crit_edge, label %if.then16.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %option1.i, align 4
  %or19.i = or i32 %10, 4
  store i32 %or19.i, ptr %option1.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end20.i_crit_edge
  %and21.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end27.i_crit_edge, label %if.then23.i

if.end20.i.if.end27.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %option1.i, align 4
  %or26.i = or i32 %12, 8
  store i32 %or26.i, ptr %option1.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end27.i_crit_edge
  call fastcc void @rts5260_pwr_saving_setting(ptr noundef %pcr) #3
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ltr_en.i, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not.i = icmp eq i8 %14, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end38.i_crit_edge, label %if.then29.i

if.end27.i.if.end38.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #3
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %val.i, align 2, !annotation !40
  %call30.i = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 40, ptr noundef nonnull %val.i) #3
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %val.i, align 2
  %18 = and i16 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool33.not.i = icmp eq i16 %18, 0
  %ltr_enabled36.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 3
  br i1 %tobool33.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %ltr_enabled36.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ltr_enabled36.i, align 2
  %ltr_active.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %ltr_active.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ltr_active.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ltr_active_latency.i, align 4
  %call35.i = call i32 @rtsx_set_ltr_latency(ptr noundef %pcr, i32 noundef %22) #3
  br label %if.end37.i

if.else.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %ltr_enabled36.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ltr_enabled36.i, align 2
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then34.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #3
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end37.i, %if.end27.i.if.end38.i_crit_edge
  %24 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %option1.i, align 4
  %and41.i = and i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %force_clkreq_045.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %..i = zext i1 %tobool42.not.i to i8
  %26 = ptrtoint ptr %force_clkreq_045.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %..i, ptr %force_clkreq_045.i, align 4
  br label %rts5260_init_from_cfg.exit

rts5260_init_from_cfg.exit:                       ; preds = %if.end38.i, %entry.rts5260_init_from_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval.i) #3
  %call3 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -129, i8 noundef zeroext -1, i8 noundef zeroext -118) #3
  %call4 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 112, i8 noundef zeroext 112) #3
  %call5 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -427, i8 noundef zeroext 32, i8 noundef zeroext 32) #3
  %ci.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %27 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ci.i, align 4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -371, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -369, i8 noundef zeroext -1, i8 noundef zeroext 0) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -424, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -394, i8 noundef zeroext -1, i8 noundef zeroext -1) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -361, i8 noundef zeroext 16, i8 noundef zeroext 16) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -460, i8 noundef zeroext 32, i8 noundef zeroext 0) #3
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i21 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i22 = icmp eq i32 %and.i21, 0
  %..i23 = select i1 %tobool.not.i22, i8 -128, i8 -80
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -253, i8 noundef zeroext -80, i8 noundef zeroext %..i23) #3
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -436, i8 noundef zeroext 3, i8 noundef zeroext 0) #3
  %call.i24 = call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i = icmp slt i32 %call.i24, 0
  br i1 %cmp.i, label %rts5260_init_from_cfg.exit.rts5260_init_hw.exit_crit_edge, label %if.end2.i

rts5260_init_from_cfg.exit.rts5260_init_hw.exit_crit_edge: ; preds = %rts5260_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rts5260_init_hw.exit

if.end2.i:                                        ; preds = %rts5260_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @rtsx_pci_init_ocp(ptr noundef %pcr) #3
  br label %rts5260_init_hw.exit

rts5260_init_hw.exit:                             ; preds = %if.end2.i, %rts5260_init_from_cfg.exit.rts5260_init_hw.exit_crit_edge
  %force_clkreq_0 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %force_clkreq_0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %force_clkreq_0, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %. = select i1 %tobool.not, i8 0, i8 -128
  %call8 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext -128, i8 noundef zeroext %.) #3
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %32 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %reg_pm_ctrl3, align 4
  %call9 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %33, i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -998, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -998, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 8) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 0) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rtsx_pci_enable_ocp(ptr noundef %pcr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 4, i8 noundef zeroext 4) #3
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 112, i8 noundef zeroext 112) #3
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 8, i8 noundef zeroext 8) #3
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 8, i8 noundef zeroext 8) #3
  tail call void @msleep(i32 noundef 20) #3
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %2 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_caps, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 24) #3
  %call1.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  %call2.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #3
  %call3.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext -1, i8 noundef zeroext -128) #3
  %call13 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -601, i8 noundef zeroext -1, i8 noundef zeroext 0) #3
  %call14 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -600, i8 noundef zeroext -1, i8 noundef zeroext 0) #3
  %call15 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #3
  %call16 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -606, i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  %call17 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -584, i8 noundef zeroext 7, i8 noundef zeroext 0) #3
  %call18 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -656, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16) #3, !srcloc !43
  %2 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16) #3, !srcloc !43
  %call.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -321, i8 noundef zeroext -64, i8 noundef zeroext -64) #3
  %call3.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #3
  %call4.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 4, i8 noundef zeroext 4) #3
  %call5.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 112, i8 noundef zeroext 112) #3
  %call6.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -602, i8 noundef zeroext -128, i8 noundef zeroext 0) #3
  %sd30_drive_sel_3v3.i.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %4 = ptrtoint ptr %sd30_drive_sel_3v3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %drive_sel.0.i.i.i = load i8, ptr %sd30_drive_sel_3v3.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %drive_sel.0.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [3 x i8], ptr @__const.rts5260_fill_driving.driving_3v3, i32 %idxprom.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %call.i.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %6) #3
  %arrayidx6.i.i.i = getelementptr [3 x i8], ptr @__const.rts5260_fill_driving.driving_3v3, i32 %idxprom.i.i.i, i32 1
  %7 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i.i.i, align 1
  %call7.i.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %8) #3
  %arrayidx10.i.i.i = getelementptr [3 x i8], ptr @__const.rts5260_fill_driving.driving_3v3, i32 %idxprom.i.i.i, i32 2
  %9 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10.i.i.i, align 1
  %call11.i.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %10) #3
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 8, i8 noundef zeroext 0) #3
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 8, i8 noundef zeroext 0) #3
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ocp_en, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rtsx_pci_disable_ocp(ptr noundef %pcr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %voltage, label %entry.return_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink14 = phi i8 [ 48, %sw.bb3 ], [ 112, %entry.sw.epilog_crit_edge ]
  %.sink = phi i8 [ -128, %sw.bb3 ], [ %voltage, %entry.sw.epilog_crit_edge ]
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 4, i8 noundef zeroext 4) #3
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 112, i8 noundef zeroext %.sink14) #3
  %call6 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -602, i8 noundef zeroext -128, i8 noundef zeroext %.sink) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #3
  %1 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5260_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #3
  %2 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5260_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %3 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %5) #3
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6.i, align 1
  %call7.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %7) #3
  %arrayidx10.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.i, align 1
  %call11.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %9) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #3
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_base_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
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
  store i32 -1, ptr %reg, align 4, !annotation !40
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_fetch_vendor_settings, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 1828, i32 noundef %6) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_fetch_vendor_settings, %if.then19)) #3
          to label %cleanup [label %if.then19], !srcloc !44

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcr, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev21, ptr noundef nonnull @.str.8) #3
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %shr = lshr i32 %8, 28
  %11 = trunc i32 %shr to i8
  %conv = and i8 %11, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %12 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %aspm_en, align 4
  %shr27 = lshr i32 %8, 26
  %13 = trunc i32 %shr27 to i8
  %conv29 = and i8 %13, 3
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %14 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %sd30_drive_sel_1v8, align 1
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %15 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_drive_sel, align 1
  %17 = and i8 %16, 63
  %18 = lshr i32 %8, 19
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 64
  %conv37 = or i8 %17, %20
  store i8 %conv37, ptr %card_drive_sel, align 1
  %call38 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %reg) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_fetch_vendor_settings, %if.then51)) #3
          to label %do.end56 [label %if.then51], !srcloc !44

if.then51:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcr, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev53, ptr noundef nonnull @.str.7, i32 noundef 2068, i32 noundef %24) #3
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %if.end25
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %and57 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.end56.if.end61_crit_edge, label %if.then59

do.end56.if.end61_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then59:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #5
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %27 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %extra_caps, align 4
  %or60 = or i32 %28, 128
  store i32 %or60, ptr %extra_caps, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %do.end56.if.end61_crit_edge
  %29 = trunc i32 %26 to i8
  %30 = lshr i8 %29, 5
  %conv64 = and i8 %30, 3
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %31 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv64, ptr %sd30_drive_sel_3v3, align 2
  %and65 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end61.cleanup_crit_edge, label %if.then67

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or68 = or i32 %33, 2
  store i32 %or68, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end61.cleanup_crit_edge, %if.then19, %do.body7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_stop_cmd(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #3, !srcloc !43
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16) #3, !srcloc !43
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -321, i8 noundef zeroext -64, i8 noundef zeroext -64) #3
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_set_l1off_cfg_sub_d0(ptr noundef %pcr, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %3 = ptrtoint ptr %option1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %option1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool8.not = icmp eq i32 %and4, 0
  br i1 %tobool8.not, label %if.then.if.end13_crit_edge, label %if.then9

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %5 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ltr_l1off_snooze_sspwrgate, align 1
  br label %if.then16

if.else:                                          ; preds = %entry
  %and7 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool10.not = icmp eq i32 %and7, 0
  br i1 %tobool10.not, label %if.else.if.end13_crit_edge, label %if.then11

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ltr_l1off_sspwrgate, align 4
  br label %if.then16

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %9 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end13.if.end32_crit_edge, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.then11, %if.then9
  %val.049 = phi i8 [ 0, %if.end13.if.then16_crit_edge ], [ %8, %if.then11 ], [ %6, %if.then9 ]
  %and19 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then16.if.end32_crit_edge, label %if.then21

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then21:                                        ; preds = %if.then16
  %11 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  %12 = and i8 %val.049, 127
  br label %if.end32

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  %13 = or i8 %val.049, -128
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then23, %if.then16.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %val.1 = phi i8 [ %12, %if.then23 ], [ %13, %if.else26 ], [ %val.049, %if.then16.if.end32_crit_edge ], [ 0, %if.end13.if.end32_crit_edge ]
  %call33 = tail call i32 @rtsx_set_l1off_sub(ptr noundef %pcr, i8 noundef zeroext %val.1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_enable_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext -1, i8 noundef zeroext 12) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_disable_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 12, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_init_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %2 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sd_800mA_ocp_thd, align 4
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 112, i8 noundef zeroext %3) #3
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 112, i8 noundef zeroext 96) #3
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ocp_glitch, align 4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -660, i8 noundef zeroext 15, i8 noundef zeroext %5) #3
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext -124, i8 noundef zeroext -124) #3
  tail call void @rtsx_pci_enable_ocp(ptr noundef %pcr) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext -124, i8 noundef zeroext 0) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_process_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.end:                                           ; preds = %entry
  %ocp_stat = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 52
  %call = tail call i32 @rtsx_pci_get_ocpstat(ptr noundef %pcr, ptr noundef %ocp_stat) #3
  %ocp_stat2 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 53
  %call.i = tail call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -630, ptr noundef %ocp_stat2) #3
  %2 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ocp_stat, align 1
  %4 = and i8 %3, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %ocp_stat2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ocp_stat2, align 2
  %7 = and i8 %6, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %call10 = tail call i32 @rtsx_pci_card_power_off(ptr noundef %pcr, i32 noundef 0) #3
  %call11 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 0) #3
  tail call void @rtsx_pci_clear_ocpstat(ptr noundef %pcr) #3
  %8 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ocp_stat, align 1
  %9 = ptrtoint ptr %ocp_stat2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ocp_stat2, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %lor.lhs.false.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5260_get_ocpstat(ptr noundef %pcr, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -658, ptr noundef %val) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5260_clear_ocpstat(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 3) #3
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -631, i8 noundef zeroext 3, i8 noundef zeroext 3) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #3
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 0) #3
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -631, i8 noundef zeroext 3, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rts5260_pwr_saving_setting(ptr noundef %pcr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %option = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %0 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %option, align 4
  %or10 = and i32 %1, 10
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext -1, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool.not = icmp eq i32 %or10, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5260_pwr_saving_setting, %if.then15)) #3
          to label %do.end [label %if.then15], !srcloc !44

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.3) #3
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %call16 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3584, i8 noundef zeroext -1, i8 noundef zeroext 12) #3
  %call17 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext -124, i8 noundef zeroext -124) #3
  br label %if.end63

if.else:                                          ; preds = %entry
  %or = and i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool19.not = icmp eq i32 %or, 0
  br i1 %tobool19.not, label %do.body42, label %do.body21

do.body21:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5260_pwr_saving_setting, %if.then33)) #3
          to label %do.end38 [label %if.then33], !srcloc !44

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcr, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug240, ptr noundef %dev35, ptr noundef nonnull @.str.4) #3
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %call39 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3584, i8 noundef zeroext -1, i8 noundef zeroext 10) #3
  br label %if.end63

do.body42:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5260_pwr_saving_setting, %if.then54)) #3
          to label %do.end59 [label %if.then54], !srcloc !44

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcr, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug241, ptr noundef %dev56, ptr noundef nonnull @.str.5) #3
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %call60 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3584, i8 noundef zeroext -1, i8 noundef zeroext 9) #3
  br label %if.end63

if.end63:                                         ; preds = %do.end59, %do.end38, %do.end
  %.sink = phi i8 [ 10, %do.end38 ], [ 9, %do.end59 ], [ 12, %do.end ]
  %call40 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3583, i8 noundef zeroext -1, i8 noundef zeroext %.sink) #3
  %call64 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3570, i8 noundef zeroext -1, i8 noundef zeroext 27) #3
  %call65 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3572, i8 noundef zeroext -1, i8 noundef zeroext 27) #3
  %call66 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3564, i8 noundef zeroext -1, i8 noundef zeroext 27) #3
  %call67 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3562, i8 noundef zeroext -1, i8 noundef zeroext 27) #3
  %call68 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3568, i8 noundef zeroext -1, i8 noundef zeroext 27) #3
  %call69 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3580, i8 noundef zeroext -1, i8 noundef zeroext -65) #3
  %call70 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3579, i8 noundef zeroext -1, i8 noundef zeroext -1) #3
  %call71 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3578, i8 noundef zeroext -1, i8 noundef zeroext 1) #3
  %call72 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3577, i8 noundef zeroext -1, i8 noundef zeroext 0) #3
  %call73 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3501, i8 noundef zeroext -1, i8 noundef zeroext 3) #3
  %call74 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3559, i8 noundef zeroext -1, i8 noundef zeroext 24) #3
  %call75 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -3566, i8 noundef zeroext -1, i8 noundef zeroext 12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_ltr_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_init_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_l1off_sub(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_get_ocpstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_power_off(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_clear_ocpstat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @rts5260_sd_pull_ctl_enable_tbl, !1, !"rts5260_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rts5260.c", i32 119, i32 18}
!2 = !{ptr @rts5260_sd_pull_ctl_disable_tbl, !3, !"rts5260_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rts5260.c", i32 134, i32 18}
!4 = !{ptr @rts5260_ms_pull_ctl_enable_tbl, !5, !"rts5260_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!5 = !{!"../drivers/misc/cardreader/rts5260.c", i32 146, i32 18}
!6 = !{ptr @rts5260_ms_pull_ctl_disable_tbl, !7, !"rts5260_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!7 = !{!"../drivers/misc/cardreader/rts5260.c", i32 157, i32 18}
!8 = !{ptr @rts5260_pcr_ops, !9, !"rts5260_pcr_ops", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rts5260.c", i32 598, i32 29}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/cardreader/rts5260.c", i32 427, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug239, !11, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/cardreader/rts5260.c", i32 439, i32 3}
!18 = !{ptr @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug240, !17, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/cardreader/rts5260.c", i32 445, i32 3}
!21 = !{ptr @rts5260_pwr_saving_setting.__UNIQUE_ID_ddebug241, !20, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/cardreader/rts5260.c", i32 67, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !23, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/cardreader/rts5260.c", i32 70, i32 3}
!28 = !{ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !27, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!29 = !{ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238, !30, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!30 = !{!"../drivers/misc/cardreader/rts5260.c", i32 80, i32 2}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{i8 0, i8 2}
!42 = !{i64 2152587381}
!43 = !{i64 5045259}
!44 = !{i64 2148970223, i64 2148970228, i64 2148970241, i64 2148970285, i64 2148970319, i64 2148970340}
!45 = !{i64 5045677}
!46 = !{i64 2152586026}
