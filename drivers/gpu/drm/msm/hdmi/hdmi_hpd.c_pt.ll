; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_hpd.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdmi_bridge = type { %struct.drm_bridge, ptr, %struct.work_struct }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hdmi_platform_config = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, [6 x %struct.hdmi_gpio_data] }
%struct.hdmi_gpio_data = type { ptr, i8, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to enable hpd regulators: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* pinctrl state chg failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@msm_hdmi_hpd_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 212, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to unconfigure GPIOs: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_hdmi_hpd_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/hdmi/hdmi_hpd.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_hdmi_hpd_disable._entry_ptr = internal global ptr @msm_hdmi_hpd_disable._entry, section ".printk_index", align 4
@msm_hdmi_hpd_disable._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 216, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pinctrl state chg failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@msm_hdmi_hpd_disable._entry_ptr.11 = internal global ptr @msm_hdmi_hpd_disable._entry.9, section ".printk_index", align 4
@msm_hdmi_hpd_disable._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 220, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to disable hpd regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@msm_hdmi_hpd_disable._entry_ptr.14 = internal global ptr @msm_hdmi_hpd_disable._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"status=%04x, ctrl=%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_HPD_INT_STATUS tells us: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hpd gpio tells us: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio on\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio off\0A\00", [22 x i8] zeroinitializer }, align 32
@enable_hpd_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set clk %s (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable_hpd_clocks\00", [46 x i8] zeroinitializer }, align 32
@enable_hpd_clocks._entry_ptr = internal global ptr @enable_hpd_clocks._entry, section ".printk_index", align 4
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to enable hpd clk: %s (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 147, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 153, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 212, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 216, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 220, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 241, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 312, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 313, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 84, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 99, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 117, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [39 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 124, i32 5 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @enable_hpd_clocks._entry, ptr @enable_hpd_clocks._entry_ptr, ptr @msm_hdmi_hpd_disable._entry, ptr @msm_hdmi_hpd_disable._entry.12, ptr @msm_hdmi_hpd_disable._entry.9, ptr @msm_hdmi_hpd_disable._entry_ptr, ptr @msm_hdmi_hpd_disable._entry_ptr.11, ptr @msm_hdmi_hpd_disable._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hpd_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hpd_disable._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hpd_disable._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_hpd_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_hpd_enable(ptr nocapture noundef readonly %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %config2 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config2, align 4
  %pdev = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %hpd_reg_cnt = getelementptr inbounds %struct.hdmi_platform_config, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %hpd_reg_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpd_reg_cnt, align 4
  %hpd_regs = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %hpd_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hpd_regs, align 4
  %call = tail call i32 @regulator_bulk_enable(i32 noundef %7, ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %call4) #3
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @gpio_config(ptr noundef %1, i1 noundef zeroext true)
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev3, i32 noundef 4) #3
  tail call fastcc void @enable_hpd_clocks(ptr noundef %1, i1 noundef zeroext true)
  tail call void @msm_hdmi_set_mode(ptr noundef %1, i1 noundef zeroext false) #3
  %mmio.i.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 724
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #3
  %and1.i = and i32 %call.i.i, -5
  %and.i = lshr i32 %call.i.i, 1
  %12 = and i32 %and.i, 4
  %13 = or i32 %12, %and1.i
  %or.sink.i = xor i32 %13, 4
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %15, i32 724
  tail call void @msm_writel(i32 noundef %or.sink.i, ptr noundef %add.ptr.i45.i) #3
  %and5.i = and i32 %call.i.i, -2
  %and2.lobit.i = and i32 %and.i, 1
  %16 = or i32 %and2.lobit.i, %and5.i
  %or7.sink.i = xor i32 %16, 1
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %18, i32 724
  tail call void @msm_writel(i32 noundef %or7.sink.i, ptr noundef %add.ptr.i49.i) #3
  tail call void @msleep(i32 noundef 100) #3
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %20, i32 724
  tail call void @msm_writel(i32 noundef %13, ptr noundef %add.ptr.i53.i) #3
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %22, i32 724
  tail call void @msm_writel(i32 noundef %16, ptr noundef %add.ptr.i57.i) #3
  tail call void @msm_hdmi_set_mode(ptr noundef %1, i1 noundef zeroext true) #3
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 520
  tail call void @msm_writel(i32 noundef 65563, ptr noundef %add.ptr.i) #3
  %25 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %26, i32 596
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr.i56) #3
  %reg_lock = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 24
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #3
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %28, i32 600
  %call.i59 = tail call i32 @msm_readl(ptr noundef %add.ptr.i58) #3
  %or = and i32 %call.i59, -268443648
  %and = or i32 %or, 8191
  %29 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %30, i32 600
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i61) #3
  %or21 = or i32 %call.i59, 268443647
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %32, i32 600
  tail call void @msm_writel(i32 noundef %or21, ptr noundef %add.ptr.i63) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call16) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %if.then ], [ %call4, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_config(ptr nocapture noundef readonly %hdmi, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 3
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %arrayidx = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %gpio.sroa.0.0.copyload45 = load ptr, ptr %arrayidx, align 4
  %gpio.sroa.947.0.arrayidx.sroa_idx = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 0, i32 2
  %3 = ptrtoint ptr %gpio.sroa.947.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %gpio.sroa.947.0.copyload48 = load i32, ptr %gpio.sroa.947.0.arrayidx.sroa_idx, align 4
  %tobool2.not = icmp eq ptr %gpio.sroa.0.0.copyload45, null
  br i1 %on, label %for.body.preheader, label %for.body15.preheader

for.body15.preheader:                             ; preds = %entry
  br i1 %tobool2.not, label %for.body15.preheader.cleanup_crit_edge, label %if.end22

for.body15.preheader.cleanup_crit_edge:           ; preds = %for.body15.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  br i1 %tobool2.not, label %for.body.preheader.if.end11_crit_edge, label %if.then3

for.body.preheader.if.end11_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then3:                                         ; preds = %for.body.preheader
  %gpio.sroa.8.0.arrayidx.sroa_idx = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 0, i32 1
  %4 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %gpio.sroa.8.0.copyload46 = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx, align 4
  %5 = and i8 %gpio.sroa.8.0.copyload46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @gpiod_direction_output(ptr noundef nonnull %gpio.sroa.0.0.copyload45, i32 noundef %gpio.sroa.947.0.copyload48) #3
  br label %if.end11

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %gpio.sroa.0.0.copyload45) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45, i32 noundef %gpio.sroa.947.0.copyload48) #3
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5, %for.body.preheader.if.end11_crit_edge
  %arrayidx.1 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %gpio.sroa.0.0.copyload45.1 = load ptr, ptr %arrayidx.1, align 4
  %gpio.sroa.947.0.arrayidx.sroa_idx.1 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 1, i32 2
  %7 = ptrtoint ptr %gpio.sroa.947.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %gpio.sroa.947.0.copyload48.1 = load i32, ptr %gpio.sroa.947.0.arrayidx.sroa_idx.1, align 4
  %tobool2.not.1 = icmp eq ptr %gpio.sroa.0.0.copyload45.1, null
  br i1 %tobool2.not.1, label %if.end11.if.end11.1_crit_edge, label %if.then3.1

if.end11.if.end11.1_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.1

if.then3.1:                                       ; preds = %if.end11
  %gpio.sroa.8.0.arrayidx.sroa_idx.1 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 1, i32 1
  %8 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %gpio.sroa.8.0.copyload46.1 = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx.1, align 4
  %9 = and i8 %gpio.sroa.8.0.copyload46.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.1 = icmp eq i8 %9, 0
  br i1 %tobool4.not.1, label %if.else.1, label %if.then5.1

if.then5.1:                                       ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #5
  %call.1 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %gpio.sroa.0.0.copyload45.1, i32 noundef %gpio.sroa.947.0.copyload48.1) #3
  br label %if.end11.1

if.else.1:                                        ; preds = %if.then3.1
  call void @__sanitizer_cov_trace_pc() #5
  %call8.1 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %gpio.sroa.0.0.copyload45.1) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45.1, i32 noundef %gpio.sroa.947.0.copyload48.1) #3
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.else.1, %if.then5.1, %if.end11.if.end11.1_crit_edge
  %arrayidx.2 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %gpio.sroa.0.0.copyload45.2 = load ptr, ptr %arrayidx.2, align 4
  %gpio.sroa.947.0.arrayidx.sroa_idx.2 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 2, i32 2
  %11 = ptrtoint ptr %gpio.sroa.947.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %gpio.sroa.947.0.copyload48.2 = load i32, ptr %gpio.sroa.947.0.arrayidx.sroa_idx.2, align 4
  %tobool2.not.2 = icmp eq ptr %gpio.sroa.0.0.copyload45.2, null
  br i1 %tobool2.not.2, label %if.end11.1.if.end11.2_crit_edge, label %if.then3.2

if.end11.1.if.end11.2_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.2

if.then3.2:                                       ; preds = %if.end11.1
  %gpio.sroa.8.0.arrayidx.sroa_idx.2 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 2, i32 1
  %12 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %gpio.sroa.8.0.copyload46.2 = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx.2, align 4
  %13 = and i8 %gpio.sroa.8.0.copyload46.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not.2 = icmp eq i8 %13, 0
  br i1 %tobool4.not.2, label %if.else.2, label %if.then5.2

if.then5.2:                                       ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #5
  %call.2 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %gpio.sroa.0.0.copyload45.2, i32 noundef %gpio.sroa.947.0.copyload48.2) #3
  br label %if.end11.2

if.else.2:                                        ; preds = %if.then3.2
  call void @__sanitizer_cov_trace_pc() #5
  %call8.2 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %gpio.sroa.0.0.copyload45.2) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45.2, i32 noundef %gpio.sroa.947.0.copyload48.2) #3
  br label %if.end11.2

if.end11.2:                                       ; preds = %if.else.2, %if.then5.2, %if.end11.1.if.end11.2_crit_edge
  %arrayidx.3 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %gpio.sroa.0.0.copyload45.3 = load ptr, ptr %arrayidx.3, align 4
  %gpio.sroa.947.0.arrayidx.sroa_idx.3 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 3, i32 2
  %15 = ptrtoint ptr %gpio.sroa.947.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %gpio.sroa.947.0.copyload48.3 = load i32, ptr %gpio.sroa.947.0.arrayidx.sroa_idx.3, align 4
  %tobool2.not.3 = icmp eq ptr %gpio.sroa.0.0.copyload45.3, null
  br i1 %tobool2.not.3, label %if.end11.2.if.end11.3_crit_edge, label %if.then3.3

if.end11.2.if.end11.3_crit_edge:                  ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.3

if.then3.3:                                       ; preds = %if.end11.2
  %gpio.sroa.8.0.arrayidx.sroa_idx.3 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 3, i32 1
  %16 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %gpio.sroa.8.0.copyload46.3 = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx.3, align 4
  %17 = and i8 %gpio.sroa.8.0.copyload46.3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.3 = icmp eq i8 %17, 0
  br i1 %tobool4.not.3, label %if.else.3, label %if.then5.3

if.then5.3:                                       ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #5
  %call.3 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %gpio.sroa.0.0.copyload45.3, i32 noundef %gpio.sroa.947.0.copyload48.3) #3
  br label %if.end11.3

if.else.3:                                        ; preds = %if.then3.3
  call void @__sanitizer_cov_trace_pc() #5
  %call8.3 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %gpio.sroa.0.0.copyload45.3) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45.3, i32 noundef %gpio.sroa.947.0.copyload48.3) #3
  br label %if.end11.3

if.end11.3:                                       ; preds = %if.else.3, %if.then5.3, %if.end11.2.if.end11.3_crit_edge
  %arrayidx.4 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %gpio.sroa.0.0.copyload45.4 = load ptr, ptr %arrayidx.4, align 4
  %gpio.sroa.947.0.arrayidx.sroa_idx.4 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 4, i32 2
  %19 = ptrtoint ptr %gpio.sroa.947.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %gpio.sroa.947.0.copyload48.4 = load i32, ptr %gpio.sroa.947.0.arrayidx.sroa_idx.4, align 4
  %tobool2.not.4 = icmp eq ptr %gpio.sroa.0.0.copyload45.4, null
  br i1 %tobool2.not.4, label %if.end11.3.if.end11.4_crit_edge, label %if.then3.4

if.end11.3.if.end11.4_crit_edge:                  ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.4

if.then3.4:                                       ; preds = %if.end11.3
  %gpio.sroa.8.0.arrayidx.sroa_idx.4 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 4, i32 1
  %20 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %gpio.sroa.8.0.copyload46.4 = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx.4, align 4
  %21 = and i8 %gpio.sroa.8.0.copyload46.4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.4 = icmp eq i8 %21, 0
  br i1 %tobool4.not.4, label %if.else.4, label %if.then5.4

if.then5.4:                                       ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #5
  %call.4 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %gpio.sroa.0.0.copyload45.4, i32 noundef %gpio.sroa.947.0.copyload48.4) #3
  br label %if.end11.4

if.else.4:                                        ; preds = %if.then3.4
  call void @__sanitizer_cov_trace_pc() #5
  %call8.4 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %gpio.sroa.0.0.copyload45.4) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45.4, i32 noundef %gpio.sroa.947.0.copyload48.4) #3
  br label %if.end11.4

if.end11.4:                                       ; preds = %if.else.4, %if.then5.4, %if.end11.3.if.end11.4_crit_edge
  %arrayidx.5 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %gpio.sroa.0.0.copyload45.5 = load ptr, ptr %arrayidx.5, align 4
  %gpio.sroa.947.0.arrayidx.sroa_idx.5 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 5, i32 2
  %23 = ptrtoint ptr %gpio.sroa.947.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %gpio.sroa.947.0.copyload48.5 = load i32, ptr %gpio.sroa.947.0.arrayidx.sroa_idx.5, align 4
  %tobool2.not.5 = icmp eq ptr %gpio.sroa.0.0.copyload45.5, null
  br i1 %tobool2.not.5, label %if.end11.4.if.end34_crit_edge, label %if.then3.5

if.end11.4.if.end34_crit_edge:                    ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then3.5:                                       ; preds = %if.end11.4
  %gpio.sroa.8.0.arrayidx.sroa_idx.5 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 5, i32 1
  %24 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %gpio.sroa.8.0.copyload46.5 = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx.5, align 4
  %25 = and i8 %gpio.sroa.8.0.copyload46.5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool4.not.5 = icmp eq i8 %25, 0
  br i1 %tobool4.not.5, label %if.else.5, label %if.then5.5

if.then5.5:                                       ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #5
  %call.5 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %gpio.sroa.0.0.copyload45.5, i32 noundef %gpio.sroa.947.0.copyload48.5) #3
  br label %if.end34

if.else.5:                                        ; preds = %if.then3.5
  call void @__sanitizer_cov_trace_pc() #5
  %call8.5 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %gpio.sroa.0.0.copyload45.5) #3
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45.5, i32 noundef %gpio.sroa.947.0.copyload48.5) #3
  br label %if.end34

if.end22:                                         ; preds = %for.body15.preheader
  %gpio16.sroa.6.0.arrayidx18.sroa_idx = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 0, i32 1
  %26 = ptrtoint ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %gpio16.sroa.6.0.copyload39 = load i8, ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx, align 4
  %27 = and i8 %gpio16.sroa.6.0.copyload39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool24.not = icmp eq i8 %27, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpio.sroa.947.0.copyload48)
  %tobool28.not = icmp eq i32 %gpio.sroa.947.0.copyload48, 0
  %cond = zext i1 %tobool28.not to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio.sroa.0.0.copyload45, i32 noundef %cond) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %for.body15.preheader.cleanup_crit_edge
  %arrayidx18.1 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %gpio16.sroa.0.0.copyload38.1 = load ptr, ptr %arrayidx18.1, align 4
  %gpio16.sroa.740.0.arrayidx18.sroa_idx.1 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 1, i32 2
  %29 = ptrtoint ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %gpio16.sroa.740.0.copyload41.1 = load i32, ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.1, align 4
  %tobool20.not.1 = icmp eq ptr %gpio16.sroa.0.0.copyload38.1, null
  br i1 %tobool20.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end22.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.1

if.end22.1:                                       ; preds = %cleanup
  %gpio16.sroa.6.0.arrayidx18.sroa_idx.1 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 1, i32 1
  %30 = ptrtoint ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %gpio16.sroa.6.0.copyload39.1 = load i8, ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.1, align 4
  %31 = and i8 %gpio16.sroa.6.0.copyload39.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool24.not.1 = icmp eq i8 %31, 0
  br i1 %tobool24.not.1, label %if.end22.1.cleanup.1_crit_edge, label %if.then25.1

if.end22.1.cleanup.1_crit_edge:                   ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.1

if.then25.1:                                      ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpio16.sroa.740.0.copyload41.1)
  %tobool28.not.1 = icmp eq i32 %gpio16.sroa.740.0.copyload41.1, 0
  %cond.1 = zext i1 %tobool28.not.1 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio16.sroa.0.0.copyload38.1, i32 noundef %cond.1) #3
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then25.1, %if.end22.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %arrayidx18.2 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %gpio16.sroa.0.0.copyload38.2 = load ptr, ptr %arrayidx18.2, align 4
  %gpio16.sroa.740.0.arrayidx18.sroa_idx.2 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 2, i32 2
  %33 = ptrtoint ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %gpio16.sroa.740.0.copyload41.2 = load i32, ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.2, align 4
  %tobool20.not.2 = icmp eq ptr %gpio16.sroa.0.0.copyload38.2, null
  br i1 %tobool20.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end22.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.2

if.end22.2:                                       ; preds = %cleanup.1
  %gpio16.sroa.6.0.arrayidx18.sroa_idx.2 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 2, i32 1
  %34 = ptrtoint ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %gpio16.sroa.6.0.copyload39.2 = load i8, ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.2, align 4
  %35 = and i8 %gpio16.sroa.6.0.copyload39.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not.2 = icmp eq i8 %35, 0
  br i1 %tobool24.not.2, label %if.end22.2.cleanup.2_crit_edge, label %if.then25.2

if.end22.2.cleanup.2_crit_edge:                   ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.2

if.then25.2:                                      ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpio16.sroa.740.0.copyload41.2)
  %tobool28.not.2 = icmp eq i32 %gpio16.sroa.740.0.copyload41.2, 0
  %cond.2 = zext i1 %tobool28.not.2 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio16.sroa.0.0.copyload38.2, i32 noundef %cond.2) #3
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then25.2, %if.end22.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %arrayidx18.3 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 3
  %36 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %gpio16.sroa.0.0.copyload38.3 = load ptr, ptr %arrayidx18.3, align 4
  %gpio16.sroa.740.0.arrayidx18.sroa_idx.3 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 3, i32 2
  %37 = ptrtoint ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %gpio16.sroa.740.0.copyload41.3 = load i32, ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.3, align 4
  %tobool20.not.3 = icmp eq ptr %gpio16.sroa.0.0.copyload38.3, null
  br i1 %tobool20.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end22.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.3

if.end22.3:                                       ; preds = %cleanup.2
  %gpio16.sroa.6.0.arrayidx18.sroa_idx.3 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 3, i32 1
  %38 = ptrtoint ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %gpio16.sroa.6.0.copyload39.3 = load i8, ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.3, align 4
  %39 = and i8 %gpio16.sroa.6.0.copyload39.3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool24.not.3 = icmp eq i8 %39, 0
  br i1 %tobool24.not.3, label %if.end22.3.cleanup.3_crit_edge, label %if.then25.3

if.end22.3.cleanup.3_crit_edge:                   ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.3

if.then25.3:                                      ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpio16.sroa.740.0.copyload41.3)
  %tobool28.not.3 = icmp eq i32 %gpio16.sroa.740.0.copyload41.3, 0
  %cond.3 = zext i1 %tobool28.not.3 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio16.sroa.0.0.copyload38.3, i32 noundef %cond.3) #3
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then25.3, %if.end22.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %arrayidx18.4 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 4
  %40 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %gpio16.sroa.0.0.copyload38.4 = load ptr, ptr %arrayidx18.4, align 4
  %gpio16.sroa.740.0.arrayidx18.sroa_idx.4 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 4, i32 2
  %41 = ptrtoint ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %gpio16.sroa.740.0.copyload41.4 = load i32, ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.4, align 4
  %tobool20.not.4 = icmp eq ptr %gpio16.sroa.0.0.copyload38.4, null
  br i1 %tobool20.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end22.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.4

if.end22.4:                                       ; preds = %cleanup.3
  %gpio16.sroa.6.0.arrayidx18.sroa_idx.4 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 4, i32 1
  %42 = ptrtoint ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %gpio16.sroa.6.0.copyload39.4 = load i8, ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.4, align 4
  %43 = and i8 %gpio16.sroa.6.0.copyload39.4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool24.not.4 = icmp eq i8 %43, 0
  br i1 %tobool24.not.4, label %if.end22.4.cleanup.4_crit_edge, label %if.then25.4

if.end22.4.cleanup.4_crit_edge:                   ; preds = %if.end22.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.4

if.then25.4:                                      ; preds = %if.end22.4
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpio16.sroa.740.0.copyload41.4)
  %tobool28.not.4 = icmp eq i32 %gpio16.sroa.740.0.copyload41.4, 0
  %cond.4 = zext i1 %tobool28.not.4 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio16.sroa.0.0.copyload38.4, i32 noundef %cond.4) #3
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.then25.4, %if.end22.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %arrayidx18.5 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 5
  %44 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %gpio16.sroa.0.0.copyload38.5 = load ptr, ptr %arrayidx18.5, align 4
  %gpio16.sroa.740.0.arrayidx18.sroa_idx.5 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 5, i32 2
  %45 = ptrtoint ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %gpio16.sroa.740.0.copyload41.5 = load i32, ptr %gpio16.sroa.740.0.arrayidx18.sroa_idx.5, align 4
  %tobool20.not.5 = icmp eq ptr %gpio16.sroa.0.0.copyload38.5, null
  br i1 %tobool20.not.5, label %cleanup.4.if.end34_crit_edge, label %if.end22.5

cleanup.4.if.end34_crit_edge:                     ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.end22.5:                                       ; preds = %cleanup.4
  %gpio16.sroa.6.0.arrayidx18.sroa_idx.5 = getelementptr %struct.hdmi_platform_config, ptr %1, i32 0, i32 11, i32 5, i32 1
  %46 = ptrtoint ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %gpio16.sroa.6.0.copyload39.5 = load i8, ptr %gpio16.sroa.6.0.arrayidx18.sroa_idx.5, align 4
  %47 = and i8 %gpio16.sroa.6.0.copyload39.5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool24.not.5 = icmp eq i8 %47, 0
  br i1 %tobool24.not.5, label %if.end22.5.if.end34_crit_edge, label %if.then25.5

if.end22.5.if.end34_crit_edge:                    ; preds = %if.end22.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then25.5:                                      ; preds = %if.end22.5
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpio16.sroa.740.0.copyload41.5)
  %tobool28.not.5 = icmp eq i32 %gpio16.sroa.740.0.copyload41.5, 0
  %cond.5 = zext i1 %tobool28.not.5 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %gpio16.sroa.0.0.copyload38.5, i32 noundef %cond.5) #3
  br label %if.end34

if.end34:                                         ; preds = %if.then25.5, %if.end22.5.if.end34_crit_edge, %cleanup.4.if.end34_crit_edge, %if.else.5, %if.then5.5, %if.end11.4.if.end34_crit_edge
  %.str.20.sink = phi ptr [ @.str.18, %if.else.5 ], [ @.str.18, %if.then5.5 ], [ @.str.18, %if.end11.4.if.end34_crit_edge ], [ @.str.20, %if.then25.5 ], [ @.str.20, %if.end22.5.if.end34_crit_edge ], [ @.str.20, %cleanup.4.if.end34_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %.str.20.sink) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_hpd_clocks(ptr nocapture noundef readonly %hdmi, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 3
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %pdev = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %hpd_clk_cnt = getelementptr inbounds %struct.hdmi_platform_config, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %hpd_clk_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hpd_clk_cnt, align 4
  br i1 %enable, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp63 = icmp sgt i32 %5, 0
  br i1 %cmp63, label %for.body.lr.ph, label %for.cond.preheader.if.end30_crit_edge

for.cond.preheader.if.end30_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hpd_freq = getelementptr inbounds %struct.hdmi_platform_config, ptr %1, i32 0, i32 7
  %hpd_clks = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 12
  %hpd_clk_names = getelementptr inbounds %struct.hdmi_platform_config, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %hpd_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpd_freq, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %for.body.if.end13_crit_edge, label %land.lhs.true

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %7, i32 %i.064
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %if.then6

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then6:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %hpd_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpd_clks, align 4
  %arrayidx7 = getelementptr ptr, ptr %11, i32 %i.064
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then6.if.end13_crit_edge, label %do.end

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %hpd_clk_names to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hpd_clk_names, align 4
  %arrayidx12 = getelementptr ptr, ptr %15, i32 %i.064
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.21, ptr noundef %17, i32 noundef %call) #6
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then6.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %18 = ptrtoint ptr %hpd_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hpd_clks, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %i.064
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.if.then18_crit_edge

if.end13.if.then18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %21) #3
  br label %if.then18

if.then18:                                        ; preds = %if.then3.i, %if.end13.if.then18_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end13.if.then18_crit_edge ]
  %22 = ptrtoint ptr %hpd_clk_names to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hpd_clk_names, align 4
  %arrayidx20 = getelementptr ptr, ptr %23, i32 %i.064
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx20, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, ptr noundef %25, i32 noundef %retval.0.i.ph) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %26 = ptrtoint ptr %hpd_clk_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hpd_clk_cnt, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end30_crit_edge

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.else:                                          ; preds = %entry
  %i.160 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.160)
  %cmp2461 = icmp sgt i32 %i.160, -1
  br i1 %cmp2461, label %for.body25.lr.ph, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

for.body25.lr.ph:                                 ; preds = %if.else
  %hpd_clks26 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 12
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.lr.ph
  %i.162 = phi i32 [ %i.160, %for.body25.lr.ph ], [ %i.1, %for.body25.for.body25_crit_edge ]
  %28 = ptrtoint ptr %hpd_clks26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hpd_clks26, align 4
  %arrayidx27 = getelementptr ptr, ptr %29, i32 %i.162
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx27, align 4
  tail call void @clk_disable(ptr noundef %31) #3
  tail call void @clk_unprepare(ptr noundef %31) #3
  %i.1 = add nsw i32 %i.162, -1
  %cmp24 = icmp sgt i32 %i.162, 0
  br i1 %cmp24, label %for.body25.for.body25_crit_edge, label %for.body25.if.end30_crit_edge

for.body25.if.end30_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body25

if.end30:                                         ; preds = %for.body25.if.end30_crit_edge, %if.else.if.end30_crit_edge, %for.inc.if.end30_crit_edge, %for.cond.preheader.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_set_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hpd_disable(ptr nocapture noundef readonly %hdmi_bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %hdmi_bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %config2 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config2, align 4
  %pdev = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 596
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #3
  tail call void @msm_hdmi_set_mode(ptr noundef %1, i1 noundef zeroext false) #3
  %8 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config2, align 4
  %hpd_clk_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %hpd_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hpd_clk_cnt.i, align 4
  %i.160.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.160.i)
  %cmp2461.i = icmp sgt i32 %i.160.i, -1
  br i1 %cmp2461.i, label %for.body25.lr.ph.i, label %entry.enable_hpd_clocks.exit_crit_edge

entry.enable_hpd_clocks.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %enable_hpd_clocks.exit

for.body25.lr.ph.i:                               ; preds = %entry
  %hpd_clks26.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 12
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.162.i = phi i32 [ %i.160.i, %for.body25.lr.ph.i ], [ %i.1.i, %for.body25.i.for.body25.i_crit_edge ]
  %12 = ptrtoint ptr %hpd_clks26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hpd_clks26.i, align 4
  %arrayidx27.i = getelementptr ptr, ptr %13, i32 %i.162.i
  %14 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @clk_disable(ptr noundef %15) #3
  tail call void @clk_unprepare(ptr noundef %15) #3
  %i.1.i = add nsw i32 %i.162.i, -1
  %cmp24.i.not = icmp eq i32 %i.162.i, 0
  br i1 %cmp24.i.not, label %for.body25.i.enable_hpd_clocks.exit_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body25.i

for.body25.i.enable_hpd_clocks.exit_crit_edge:    ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %enable_hpd_clocks.exit

enable_hpd_clocks.exit:                           ; preds = %for.body25.i.enable_hpd_clocks.exit_crit_edge, %entry.enable_hpd_clocks.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev3, i32 noundef 5) #3
  tail call fastcc void @gpio_config(ptr noundef %1, i1 noundef zeroext false)
  %call5 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %enable_hpd_clocks.exit.if.end11_crit_edge, label %do.end10

enable_hpd_clocks.exit.if.end11_crit_edge:        ; preds = %enable_hpd_clocks.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

do.end10:                                         ; preds = %enable_hpd_clocks.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.10, i32 noundef %call5) #6
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %enable_hpd_clocks.exit.if.end11_crit_edge
  %hpd_reg_cnt = getelementptr inbounds %struct.hdmi_platform_config, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %hpd_reg_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hpd_reg_cnt, align 4
  %hpd_regs = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %hpd_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hpd_regs, align 4
  %call12 = tail call i32 @regulator_bulk_disable(i32 noundef %17, ptr noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %do.end17

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.13, i32 noundef %call12) #6
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end11.if.end18_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hpd_irq(ptr noundef %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 592
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #3
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %5, i32 596
  %call.i24 = tail call i32 @msm_readl(ptr noundef %add.ptr.i23) #3
  %and = and i32 %call.i24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and5 = and i32 %call.i, 2
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 596
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i26) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %call.i, i32 noundef %call.i24) #3
  %8 = xor i32 %and5, 6
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %10, i32 596
  tail call void @msm_writel(i32 noundef %8, ptr noundef %add.ptr.i28) #3
  %workq = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workq, align 4
  %hpd_work = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 2
  %call.i29 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %hpd_work) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_bridge_detect(ptr nocapture noundef readonly %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %config2 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config2, align 4
  %arrayidx = getelementptr %struct.hdmi_platform_config, ptr %3, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %hpd_gpio.sroa.0.0.copyload24 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %hpd_gpio.sroa.0.0.copyload24, null
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @detect_reg(ptr noundef %1)
  br label %cleanup

do.body:                                          ; preds = %while.body.preheader.do.body_crit_edge, %entry.do.body_crit_edge
  %retry.0 = phi i32 [ %dec8, %while.body.preheader.do.body_crit_edge ], [ 20, %entry.do.body_crit_edge ]
  %5 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config2, align 4
  %arrayidx.i = getelementptr %struct.hdmi_platform_config, ptr %6, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %hpd_gpio.sroa.0.0.copyload2.i = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @gpiod_get_value(ptr noundef %hpd_gpio.sroa.0.0.copyload2.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call4 = tail call fastcc i32 @detect_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %call4)
  %cmp = icmp eq i32 %cond.i, %call4
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %while.body.preheader

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.preheader:                             ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #3
  %dec8 = add nsw i32 %retry.0, -1
  %tobool9.not = icmp eq i32 %dec8, 0
  br i1 %tobool9.not, label %if.then11, label %while.body.preheader.do.body_crit_edge

while.body.preheader.do.body_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then11:                                        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %call4) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %cond.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %cond.i, %if.then11 ], [ %cond.i, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @detect_reg(ptr nocapture noundef readonly %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #3
  tail call fastcc void @enable_hpd_clocks(ptr noundef %hdmi, i1 noundef zeroext true)
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 592
  %call.i9 = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #3
  %config1.i = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 3
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i, align 4
  %hpd_clk_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %hpd_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpd_clk_cnt.i, align 4
  %i.160.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.160.i)
  %cmp2461.i = icmp sgt i32 %i.160.i, -1
  br i1 %cmp2461.i, label %for.body25.lr.ph.i, label %entry.enable_hpd_clocks.exit_crit_edge

entry.enable_hpd_clocks.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %enable_hpd_clocks.exit

for.body25.lr.ph.i:                               ; preds = %entry
  %hpd_clks26.i = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 12
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.162.i = phi i32 [ %i.160.i, %for.body25.lr.ph.i ], [ %i.1.i, %for.body25.i.for.body25.i_crit_edge ]
  %8 = ptrtoint ptr %hpd_clks26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hpd_clks26.i, align 4
  %arrayidx27.i = getelementptr ptr, ptr %9, i32 %i.162.i
  %10 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @clk_disable(ptr noundef %11) #3
  tail call void @clk_unprepare(ptr noundef %11) #3
  %i.1.i = add nsw i32 %i.162.i, -1
  %cmp24.i.not = icmp eq i32 %i.162.i, 0
  br i1 %cmp24.i.not, label %for.body25.i.enable_hpd_clocks.exit_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body25.i

for.body25.i.enable_hpd_clocks.exit_crit_edge:    ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %enable_hpd_clocks.exit

enable_hpd_clocks.exit:                           ; preds = %for.body25.i.enable_hpd_clocks.exit_crit_edge, %entry.enable_hpd_clocks.exit_crit_edge
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i10 = tail call i32 @__pm_runtime_idle(ptr noundef %dev3, i32 noundef 5) #3
  %and = and i32 %call.i9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 153, i32 3}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 159, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 212, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @msm_hdmi_hpd_disable._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @msm_hdmi_hpd_disable._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 216, i32 3}
!17 = !{ptr @msm_hdmi_hpd_disable._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @msm_hdmi_hpd_disable._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 220, i32 3}
!21 = !{ptr @msm_hdmi_hpd_disable._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @msm_hdmi_hpd_disable._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 241, i32 3}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 312, i32 3}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 313, i32 3}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 84, i32 3}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 99, i32 3}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 117, i32 6}
!35 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @enable_hpd_clocks._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @enable_hpd_clocks._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hpd.c", i32 124, i32 5}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
