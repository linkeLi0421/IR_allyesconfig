; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/dsi_host.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi_host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_dsi_host = type { %struct.mipi_dsi_host, ptr, ptr, i32, ptr, i32, [8 x %struct.regulator_bulk_data], i32, [4 x %struct.clk_bulk_data], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.completion, %struct.completion, %struct.mutex, %struct.mutex, %struct.spinlock, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.msm_dsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.100, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.100 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.msm_dsi_cfg_handler = type { i32, i32, ptr, ptr }
%struct.msm_dsi_config = type { i32, %struct.dsi_reg_config, ptr, i32, [2 x i32], i32 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_host_cfg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.msm_dsi_phy_clk_request = type { i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@dsi_clk_init_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: can't find src clock. ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsi_clk_init_v2\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/msm/dsi/dsi_host.c\00", [61 x i8] zeroinitializer }, align 32
@dsi_clk_init_v2._entry_ptr = internal global ptr @dsi_clk_init_v2._entry, section ".printk_index", align 4
@dsi_clk_init_v2._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: can't get esc clock parent. ret=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@dsi_clk_init_v2._entry_ptr.6 = internal global ptr @dsi_clk_init_v2._entry.4, section ".printk_index", align 4
@dsi_clk_init_v2._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: can't get src clock parent. ret=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@dsi_clk_init_v2._entry_ptr.9 = internal global ptr @dsi_clk_init_v2._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"byte_intf\00", [22 x i8] zeroinitializer }, align 32
@dsi_clk_init_6g_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: can't find byte_intf clock. ret=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsi_clk_init_6g_v2\00", [45 x i8] zeroinitializer }, align 32
@dsi_clk_init_6g_v2._entry_ptr = internal global ptr @dsi_clk_init_6g_v2._entry, section ".printk_index", align 4
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Set clk rates: pclk=%d, byteclk=%lu\0A\00", [59 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_6g._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: dev_pm_opp_set_rate failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi_link_clk_set_rate_6g\00", [39 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_6g._entry_ptr = internal global ptr @dsi_link_clk_set_rate_6g._entry, section ".printk_index", align 4
@dsi_link_clk_set_rate_6g._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Failed to set rate pixel clk, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_6g._entry_ptr.18 = internal global ptr @dsi_link_clk_set_rate_6g._entry.16, section ".printk_index", align 4
@dsi_link_clk_set_rate_6g._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to set rate byte intf clk, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_6g._entry_ptr.21 = internal global ptr @dsi_link_clk_set_rate_6g._entry.19, section ".printk_index", align 4
@dsi_link_clk_enable_6g._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to enable dsi esc clk\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsi_link_clk_enable_6g\00", [41 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_6g._entry_ptr = internal global ptr @dsi_link_clk_enable_6g._entry, section ".printk_index", align 4
@dsi_link_clk_enable_6g._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to enable dsi byte clk\0A\00", [59 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_6g._entry_ptr.26 = internal global ptr @dsi_link_clk_enable_6g._entry.24, section ".printk_index", align 4
@dsi_link_clk_enable_6g._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to enable dsi pixel clk\0A\00", [58 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_6g._entry_ptr.29 = internal global ptr @dsi_link_clk_enable_6g._entry.27, section ".printk_index", align 4
@dsi_link_clk_enable_6g._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.3, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to enable byte intf clk\0A\00", [58 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_6g._entry_ptr.32 = internal global ptr @dsi_link_clk_enable_6g._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Set clk rates: pclk=%d, byteclk=%lu, esc_clk=%lu, dsi_src_clk=%lu\0A\00", [61 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to set rate byte clk, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi_link_clk_set_rate_v2\00", [39 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_v2._entry_ptr = internal global ptr @dsi_link_clk_set_rate_v2._entry, section ".printk_index", align 4
@dsi_link_clk_set_rate_v2._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to set rate esc clk, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_v2._entry_ptr.38 = internal global ptr @dsi_link_clk_set_rate_v2._entry.36, section ".printk_index", align 4
@dsi_link_clk_set_rate_v2._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to set rate src clk, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_v2._entry_ptr.41 = internal global ptr @dsi_link_clk_set_rate_v2._entry.39, section ".printk_index", align 4
@dsi_link_clk_set_rate_v2._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.35, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsi_link_clk_set_rate_v2._entry_ptr.43 = internal global ptr @dsi_link_clk_set_rate_v2._entry.42, section ".printk_index", align 4
@dsi_link_clk_enable_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.44, ptr @.str.3, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsi_link_clk_enable_v2\00", [41 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_v2._entry_ptr = internal global ptr @dsi_link_clk_enable_v2._entry, section ".printk_index", align 4
@dsi_link_clk_enable_v2._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.44, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_v2._entry_ptr.46 = internal global ptr @dsi_link_clk_enable_v2._entry.45, section ".printk_index", align 4
@dsi_link_clk_enable_v2._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.3, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to enable dsi src clk\0A\00", [60 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_v2._entry_ptr.49 = internal global ptr @dsi_link_clk_enable_v2._entry.47, section ".printk_index", align 4
@dsi_link_clk_enable_v2._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.44, ptr @.str.3, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsi_link_clk_enable_v2._entry_ptr.51 = internal global ptr @dsi_link_clk_enable_v2._entry.50, section ".printk_index", align 4
@dsi_calc_clk_rate_6g._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: mode not set\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dsi_calc_clk_rate_6g\00", [43 x i8] zeroinitializer }, align 32
@dsi_calc_clk_rate_6g._entry_ptr = internal global ptr @dsi_calc_clk_rate_6g._entry, section ".printk_index", align 4
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esc=%lu, src=%lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_gem\00", [25 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to parse dt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_dsi_host_init\00", [46 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr = internal global ptr @msm_dsi_host_init._entry, section ".printk_index", align 4
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DSI CTRL\00", [23 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.3, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: unable to map Dsi ctrl base\0A\00", [61 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.62 = internal global ptr @msm_dsi_host_init._entry.60, section ".printk_index", align 4
@msm_dsi_host_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.3, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: get config failed\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.65 = internal global ptr @msm_dsi_host_init._entry.63, section ".printk_index", align 4
@msm_dsi_host_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.3, i32 1835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: unable to identify DSI host index\0A\00", [55 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.68 = internal global ptr @msm_dsi_host_init._entry.66, section ".printk_index", align 4
@msm_dsi_host_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.3, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: regulator init failed\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.71 = internal global ptr @msm_dsi_host_init._entry.69, section ".printk_index", align 4
@msm_dsi_host_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.57, ptr @.str.3, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: unable to initialize dsi clks\0A\00", [59 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.74 = internal global ptr @msm_dsi_host_init._entry.72, section ".printk_index", align 4
@msm_dsi_host_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.57, ptr @.str.3, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: alloc rx temp buf failed\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.77 = internal global ptr @msm_dsi_host_init._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"byte\00", [27 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.57, ptr @.str.3, i32 1867, ptr @.str.81, ptr @.str.82 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid OPP table in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.83 = internal global ptr @msm_dsi_host_init._entry.79, section ".printk_index", align 4
@msm_dsi_host_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.57, ptr @.str.3, i32 1874, ptr @.str.81, ptr @.str.82 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.86 = internal global ptr @msm_dsi_host_init._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_isr\00", [24 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.57, ptr @.str.3, i32 1884, ptr @.str.81, ptr @.str.82 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request IRQ%u: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_dsi_host_init._entry_ptr.90 = internal global ptr @msm_dsi_host_init._entry.88, section ".printk_index", align 4
@msm_dsi_host_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&msm_host->dev_mutex\00", [43 x i8] zeroinitializer }, align 32
@msm_dsi_host_init.__key.92 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&msm_host->cmd_mutex\00", [43 x i8] zeroinitializer }, align 32
@msm_dsi_host_init.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&msm_host->intr_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi_drm_work\00", [19 x i8] zeroinitializer }, align 32
@msm_dsi_host_init.__key.97 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&msm_host->err_work)\00", [57 x i8] zeroinitializer }, align 32
@msm_dsi_host_init.__key.99 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&msm_host->hpd_work)\00", [57 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dsi Host %d initialized\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@msm_dsi_host_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: alloc tx gem obj failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"msm_dsi_host_modeset_init\00", [38 x i8] zeroinitializer }, align 32
@msm_dsi_host_modeset_init._entry_ptr = internal global ptr @msm_dsi_host_modeset_init._entry, section ".printk_index", align 4
@dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @dsi_host_attach, ptr @dsi_host_detach, ptr @dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rlen=%d pkt_size=%d rx_byte=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_dsi_host_cmd_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 2076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Set max pkt size failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msm_dsi_host_cmd_rx\00", [44 x i8] zeroinitializer }, align 32
@msm_dsi_host_cmd_rx._entry_ptr = internal global ptr @msm_dsi_host_cmd_rx._entry, section ".printk_index", align 4
@msm_dsi_host_cmd_rx._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.3, i32 2092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Read cmd Tx failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@msm_dsi_host_cmd_rx._entry_ptr.110 = internal global ptr @msm_dsi_host_cmd_rx._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"buf=%p dlen=%d diff=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_dsi_host_cmd_rx._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.107, ptr @.str.3, i32 2146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: rx ACK_ERR_PACLAGE\0A\00", [38 x i8] zeroinitializer }, align 32
@msm_dsi_host_cmd_rx._entry_ptr.114 = internal global ptr @msm_dsi_host_cmd_rx._entry.112, section ".printk_index", align 4
@msm_dsi_host_cmd_rx._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.107, ptr @.str.3, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s:Invalid response cmd\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_dsi_host_cmd_rx._entry_ptr.117 = internal global ptr @msm_dsi_host_cmd_rx._entry.115, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@msm_dsi_host_get_phy_clk_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 2213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: unable to calc clk rate, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"msm_dsi_host_get_phy_clk_req\00", [35 x i8] zeroinitializer }, align 32
@msm_dsi_host_get_phy_clk_req._entry_ptr = internal global ptr @msm_dsi_host_get_phy_clk_req._entry, section ".printk_index", align 4
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dsi host already on\0A\00", [43 x i8] zeroinitializer }, align 32
@msm_dsi_host_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 2312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:Failed to enable vregs.ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msm_dsi_host_power_on\00", [42 x i8] zeroinitializer }, align 32
@msm_dsi_host_power_on._entry_ptr = internal global ptr @msm_dsi_host_power_on._entry, section ".printk_index", align 4
@msm_dsi_host_power_on._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to enable link clocks. ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@msm_dsi_host_power_on._entry_ptr.125 = internal global ptr @msm_dsi_host_power_on._entry.123, section ".printk_index", align 4
@msm_dsi_host_power_on._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.3, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to set pinctrl default state, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@msm_dsi_host_power_on._entry_ptr.128 = internal global ptr @msm_dsi_host_power_on._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsi host already off\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-\0A\00", [29 x i8] zeroinitializer }, align 32
@msm_dsi_host_set_display_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 2401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: cannot duplicate mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msm_dsi_host_set_display_mode\00", [34 x i8] zeroinitializer }, align 32
@msm_dsi_host_set_display_mode._entry_ptr = internal global ptr @msm_dsi_host_set_display_mode._entry, section ".printk_index", align 4
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsi%d_ctrl\00", [21 x i8] zeroinitializer }, align 32
@dsi_calc_pclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: forcing mdss_dsi lanes to 1\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi_calc_pclk\00", [18 x i8] zeroinitializer }, align 32
@dsi_calc_pclk._entry_ptr = internal global ptr @dsi_calc_pclk._entry, section ".printk_index", align 4
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pclk=%lu, bclk=%lu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: no endpoint\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.dsi_host_parse_dt = private unnamed_addr constant [18 x i8] c"dsi_host_parse_dt\00", align 1
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* %s: invalid lane configuration %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: no valid device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syscon-sfpb\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* %s: failed to get sfpb regmap\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to find data lane mapping, using default\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* bad number of data lanes\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to read lane data\0A\00", [62 x i8] zeroinitializer }, align 32
@supported_data_lane_swaps = internal constant { [8 x [4 x i32]], [32 x i8] } { [8 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 3, i32 0, i32 1, i32 2], [4 x i32] [i32 2, i32 3, i32 0, i32 1], [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 1, i32 0, i32 3, i32 2], [4 x i32] [i32 2, i32 1, i32 0, i32 3], [4 x i32] [i32 3, i32 2, i32 1, i32 0]], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* bad physical lane entry %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@dsi_get_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: cannot get interface clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi_get_config\00", [17 x i8] zeroinitializer }, align 32
@dsi_get_config._entry_ptr = internal global ptr @dsi_get_config._entry, section ".printk_index", align 4
@dsi_get_config._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: unable to enable ahb_clk\0A\00", [32 x i8] zeroinitializer }, align 32
@dsi_get_config._entry_ptr.152 = internal global ptr @dsi_get_config._entry.150, section ".printk_index", align 4
@dsi_get_config._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Invalid version\0A\00", [41 x i8] zeroinitializer }, align 32
@dsi_get_config._entry_ptr.155 = internal global ptr @dsi_get_config._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Version %x:%x\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@dsi_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.3, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to init regulator, ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsi_regulator_init\00", [45 x i8] zeroinitializer }, align 32
@dsi_regulator_init._entry_ptr = internal global ptr @dsi_regulator_init._entry, section ".printk_index", align 4
@dsi_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 384, ptr @.str.81, ptr @.str.82 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get clocks, ret = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi_clk_init\00", [19 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry_ptr = internal global ptr @dsi_clk_init._entry, section ".printk_index", align 4
@dsi_clk_init._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.3, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: can't find dsi_byte clock. ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry_ptr.163 = internal global ptr @dsi_clk_init._entry.161, section ".printk_index", align 4
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.160, ptr @.str.3, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: can't find dsi_pixel clock. ret=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry_ptr.167 = internal global ptr @dsi_clk_init._entry.165, section ".printk_index", align 4
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.160, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: can't find dsi_esc clock. ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry_ptr.171 = internal global ptr @dsi_clk_init._entry.169, section ".printk_index", align 4
@dsi_clk_init._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.160, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: can't find byte_clk clock. ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry_ptr.174 = internal global ptr @dsi_clk_init._entry.172, section ".printk_index", align 4
@dsi_clk_init._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.160, ptr @.str.3, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: can't find pixel_clk clock. ret=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@dsi_clk_init._entry_ptr.177 = internal global ptr @dsi_clk_init._entry.175, section ".printk_index", align 4
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isr=0x%x, id=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dsi_err_worker._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.180, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dsi_err_worker = private unnamed_addr constant [15 x i8] c"dsi_err_worker\00", align 1
@dsi_err_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @__func__.dsi_err_worker, ptr @.str.3, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: status=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@dsi_err_worker._entry_ptr = internal global ptr @dsi_err_worker._entry, section ".printk_index", align 4
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"id=%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disp-enable\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot get disp-enable-gpios %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disp-te\00", [24 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot get disp-te-gpios %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intr=%x enable=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@dsi_cmds2buf_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.3, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to add cmd type = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsi_cmds2buf_tx\00", [16 x i8] zeroinitializer }, align 32
@dsi_cmds2buf_tx._entry_ptr = internal global ptr @dsi_cmds2buf_tx._entry, section ".printk_index", align 4
@dsi_cmds2buf_tx._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: cmd cannot fit into BLLP period, len=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@dsi_cmds2buf_tx._entry_ptr.192 = internal global ptr @dsi_cmds2buf_tx._entry.190, section ".printk_index", align 4
@dsi_cmds2buf_tx._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.189, ptr @.str.3, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: cmd dma tx failed, type=0x%x, data0=0x%x, len=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@dsi_cmds2buf_tx._entry_ptr.195 = internal global ptr @dsi_cmds2buf_tx._entry.193, section ".printk_index", align 4
@dsi_cmd_dma_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.3, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: create packet failed, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsi_cmd_dma_add\00", [16 x i8] zeroinitializer }, align 32
@dsi_cmd_dma_add._entry_ptr = internal global ptr @dsi_cmd_dma_add._entry, section ".printk_index", align 4
@dsi_cmd_dma_add._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.197, ptr @.str.3, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: packet size is too big\0A\00", [34 x i8] zeroinitializer }, align 32
@dsi_cmd_dma_add._entry_ptr.200 = internal global ptr @dsi_cmd_dma_add._entry.198, section ".printk_index", align 4
@dsi_cmd_dma_add._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.197, ptr @.str.3, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: get vaddr failed, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dsi_cmd_dma_add._entry_ptr.203 = internal global ptr @dsi_cmd_dma_add._entry.201, section ".printk_index", align 4
@dsi_cmd_dma_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.3, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failed to get iova: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi_cmd_dma_tx\00", [17 x i8] zeroinitializer }, align 32
@dsi_cmd_dma_tx._entry_ptr = internal global ptr @dsi_cmd_dma_tx._entry, section ".printk_index", align 4
@.str.206 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ret=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* wait for video done timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"data = 0x%x and ntohl(data) = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@dsi_short_read1_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.3, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: read data does not match with rx_buf len %zu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dsi_short_read1_resp\00", [43 x i8] zeroinitializer }, align 32
@dsi_short_read1_resp._entry_ptr = internal global ptr @dsi_short_read1_resp._entry, section ".printk_index", align 4
@dsi_short_read2_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.211, ptr @.str.3, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dsi_short_read2_resp\00", [43 x i8] zeroinitializer }, align 32
@dsi_short_read2_resp._entry_ptr = internal global ptr @dsi_short_read2_resp._entry, section ".printk_index", align 4
@dsi_host_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013regulator %d set op mode failed, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsi_host_regulator_enable\00", [38 x i8] zeroinitializer }, align 32
@dsi_host_regulator_enable._entry_ptr = internal global ptr @dsi_host_regulator_enable._entry, section ".printk_index", align 4
@dsi_host_regulator_enable._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013regulator enable failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dsi_host_regulator_enable._entry_ptr.216 = internal global ptr @dsi_host_regulator_enable._entry.214, section ".printk_index", align 4
@.str.217 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lane number=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Video test pattern setup done\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cmd test pattern setup done\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@switch.table.dsi_ctrl_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 7, i32 6], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.220 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 17, i64 18, i64 26, i64 28, i64 33, i64 34]
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 327, i32 40 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 331, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 340, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 348, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 360, i32 46 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 363, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 469, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 475, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 481, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 494, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 510, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 516, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 522, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 528, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 549, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 555, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 561, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 567, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 573, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 586, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 592, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 598, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 604, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 686, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 737, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1070, i32 48 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1812, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1816, i32 47 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1816, i32 59 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1818, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1828, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1835, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1844, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1850, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1857, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1861, i32 44 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1867, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1874, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1881, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1883, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1890, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1891, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1892, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1895, i32 24 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1896, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1897, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1901, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1912, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1935, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [13 x i8] c"dsi_host_ops\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1632, i32 39 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2070, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2075, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2092, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2128, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2146, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2162, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2213, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2303, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2311, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2321, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2328, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2362, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2380, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2401, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2432, i32 25 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 665, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 678, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1736, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1742, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1751, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1758, i32 32 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1762, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1663, i32 30 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1665, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1675, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1684, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant [26 x i8] c"supported_data_lane_swaps\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1644, i32 18 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1705, i32 5 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 215, i32 40 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 217, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 225, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 231, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 237, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 314, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 384, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 392, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 398, i32 42 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 401, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 407, i32 40 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 410, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 419, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 426, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1534, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.720, i32 87, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1411, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1593, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1552, i32 9 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1555, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1560, i32 60 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1563, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 756, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1341, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1356, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1363, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1146, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1152, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1159, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1259, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1272, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1037, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1323, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1197, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 1214, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 281, i32 5 }
@___asan_gen_.836 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 290, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 884, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2455, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.849 = private constant [38 x i8] c"../drivers/gpu/drm/msm/dsi/dsi_host.c\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.849, i32 2474, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [29 x i8] c"switch.table.dsi_ctrl_config\00", align 1
@llvm.compiler.used = appending global [274 x ptr] [ptr @dsi_calc_clk_rate_6g._entry, ptr @dsi_calc_clk_rate_6g._entry_ptr, ptr @dsi_calc_pclk._entry, ptr @dsi_calc_pclk._entry_ptr, ptr @dsi_clk_init._entry, ptr @dsi_clk_init._entry.161, ptr @dsi_clk_init._entry.165, ptr @dsi_clk_init._entry.169, ptr @dsi_clk_init._entry.172, ptr @dsi_clk_init._entry.175, ptr @dsi_clk_init._entry_ptr, ptr @dsi_clk_init._entry_ptr.163, ptr @dsi_clk_init._entry_ptr.167, ptr @dsi_clk_init._entry_ptr.171, ptr @dsi_clk_init._entry_ptr.174, ptr @dsi_clk_init._entry_ptr.177, ptr @dsi_clk_init_6g_v2._entry, ptr @dsi_clk_init_6g_v2._entry_ptr, ptr @dsi_clk_init_v2._entry, ptr @dsi_clk_init_v2._entry.4, ptr @dsi_clk_init_v2._entry.7, ptr @dsi_clk_init_v2._entry_ptr, ptr @dsi_clk_init_v2._entry_ptr.6, ptr @dsi_clk_init_v2._entry_ptr.9, ptr @dsi_cmd_dma_add._entry, ptr @dsi_cmd_dma_add._entry.198, ptr @dsi_cmd_dma_add._entry.201, ptr @dsi_cmd_dma_add._entry_ptr, ptr @dsi_cmd_dma_add._entry_ptr.200, ptr @dsi_cmd_dma_add._entry_ptr.203, ptr @dsi_cmd_dma_tx._entry, ptr @dsi_cmd_dma_tx._entry_ptr, ptr @dsi_cmds2buf_tx._entry, ptr @dsi_cmds2buf_tx._entry.190, ptr @dsi_cmds2buf_tx._entry.193, ptr @dsi_cmds2buf_tx._entry_ptr, ptr @dsi_cmds2buf_tx._entry_ptr.192, ptr @dsi_cmds2buf_tx._entry_ptr.195, ptr @dsi_err_worker._entry, ptr @dsi_err_worker._entry_ptr, ptr @dsi_get_config._entry, ptr @dsi_get_config._entry.150, ptr @dsi_get_config._entry.153, ptr @dsi_get_config._entry_ptr, ptr @dsi_get_config._entry_ptr.152, ptr @dsi_get_config._entry_ptr.155, ptr @dsi_host_regulator_enable._entry, ptr @dsi_host_regulator_enable._entry.214, ptr @dsi_host_regulator_enable._entry_ptr, ptr @dsi_host_regulator_enable._entry_ptr.216, ptr @dsi_link_clk_enable_6g._entry, ptr @dsi_link_clk_enable_6g._entry.24, ptr @dsi_link_clk_enable_6g._entry.27, ptr @dsi_link_clk_enable_6g._entry.30, ptr @dsi_link_clk_enable_6g._entry_ptr, ptr @dsi_link_clk_enable_6g._entry_ptr.26, ptr @dsi_link_clk_enable_6g._entry_ptr.29, ptr @dsi_link_clk_enable_6g._entry_ptr.32, ptr @dsi_link_clk_enable_v2._entry, ptr @dsi_link_clk_enable_v2._entry.45, ptr @dsi_link_clk_enable_v2._entry.47, ptr @dsi_link_clk_enable_v2._entry.50, ptr @dsi_link_clk_enable_v2._entry_ptr, ptr @dsi_link_clk_enable_v2._entry_ptr.46, ptr @dsi_link_clk_enable_v2._entry_ptr.49, ptr @dsi_link_clk_enable_v2._entry_ptr.51, ptr @dsi_link_clk_set_rate_6g._entry, ptr @dsi_link_clk_set_rate_6g._entry.16, ptr @dsi_link_clk_set_rate_6g._entry.19, ptr @dsi_link_clk_set_rate_6g._entry_ptr, ptr @dsi_link_clk_set_rate_6g._entry_ptr.18, ptr @dsi_link_clk_set_rate_6g._entry_ptr.21, ptr @dsi_link_clk_set_rate_v2._entry, ptr @dsi_link_clk_set_rate_v2._entry.36, ptr @dsi_link_clk_set_rate_v2._entry.39, ptr @dsi_link_clk_set_rate_v2._entry.42, ptr @dsi_link_clk_set_rate_v2._entry_ptr, ptr @dsi_link_clk_set_rate_v2._entry_ptr.38, ptr @dsi_link_clk_set_rate_v2._entry_ptr.41, ptr @dsi_link_clk_set_rate_v2._entry_ptr.43, ptr @dsi_regulator_init._entry, ptr @dsi_regulator_init._entry_ptr, ptr @dsi_short_read1_resp._entry, ptr @dsi_short_read1_resp._entry_ptr, ptr @dsi_short_read2_resp._entry, ptr @dsi_short_read2_resp._entry_ptr, ptr @msm_dsi_host_cmd_rx._entry, ptr @msm_dsi_host_cmd_rx._entry.108, ptr @msm_dsi_host_cmd_rx._entry.112, ptr @msm_dsi_host_cmd_rx._entry.115, ptr @msm_dsi_host_cmd_rx._entry_ptr, ptr @msm_dsi_host_cmd_rx._entry_ptr.110, ptr @msm_dsi_host_cmd_rx._entry_ptr.114, ptr @msm_dsi_host_cmd_rx._entry_ptr.117, ptr @msm_dsi_host_get_phy_clk_req._entry, ptr @msm_dsi_host_get_phy_clk_req._entry_ptr, ptr @msm_dsi_host_init._entry, ptr @msm_dsi_host_init._entry.60, ptr @msm_dsi_host_init._entry.63, ptr @msm_dsi_host_init._entry.66, ptr @msm_dsi_host_init._entry.69, ptr @msm_dsi_host_init._entry.72, ptr @msm_dsi_host_init._entry.75, ptr @msm_dsi_host_init._entry.79, ptr @msm_dsi_host_init._entry.84, ptr @msm_dsi_host_init._entry.88, ptr @msm_dsi_host_init._entry_ptr, ptr @msm_dsi_host_init._entry_ptr.62, ptr @msm_dsi_host_init._entry_ptr.65, ptr @msm_dsi_host_init._entry_ptr.68, ptr @msm_dsi_host_init._entry_ptr.71, ptr @msm_dsi_host_init._entry_ptr.74, ptr @msm_dsi_host_init._entry_ptr.77, ptr @msm_dsi_host_init._entry_ptr.83, ptr @msm_dsi_host_init._entry_ptr.86, ptr @msm_dsi_host_init._entry_ptr.90, ptr @msm_dsi_host_modeset_init._entry, ptr @msm_dsi_host_modeset_init._entry_ptr, ptr @msm_dsi_host_power_on._entry, ptr @msm_dsi_host_power_on._entry.123, ptr @msm_dsi_host_power_on._entry.126, ptr @msm_dsi_host_power_on._entry_ptr, ptr @msm_dsi_host_power_on._entry_ptr.125, ptr @msm_dsi_host_power_on._entry_ptr.128, ptr @msm_dsi_host_set_display_mode._entry, ptr @msm_dsi_host_set_display_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.44, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @msm_dsi_host_init.__key, ptr @.str.91, ptr @msm_dsi_host_init.__key.92, ptr @.str.93, ptr @msm_dsi_host_init.__key.94, ptr @.str.95, ptr @.str.96, ptr @msm_dsi_host_init.__key.97, ptr @.str.98, ptr @msm_dsi_host_init.__key.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @dsi_host_ops, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @supported_data_lane_swaps, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @init_completion.__key, ptr @.str.179, ptr @dsi_err_worker._rs, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.191, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.202, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @switch.table.dsi_ctrl_config], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init_v2._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init_v2._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init_6g_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_6g._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_6g._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_6g._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_6g._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_6g._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_6g._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_6g._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_v2._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_v2._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_set_rate_v2._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_v2._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_v2._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_link_clk_enable_v2._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_calc_clk_rate_6g._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init.__key.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init.__key.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_init.__key.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_cmd_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_cmd_rx._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_cmd_rx._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_cmd_rx._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_get_phy_clk_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_power_on._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_power_on._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dsi_host_set_display_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_calc_pclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_data_lane_swaps to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_get_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_get_config._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_get_config._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_clk_init._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_err_worker._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_err_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmds2buf_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmds2buf_tx._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmds2buf_tx._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmd_dma_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmd_dma_add._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmd_dma_add._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_cmd_dma_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_short_read1_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_short_read2_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_host_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_host_regulator_enable._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dsi_ctrl_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_clk_init_v2(ptr nocapture noundef %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %call = tail call ptr @msm_clk_get(ptr noundef %1, ptr noundef nonnull @.str) #8
  %src_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 18
  %2 = ptrtoint ptr %src_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %src_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %3) #11
  %4 = ptrtoint ptr %src_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %src_clk, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %5 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esc_clk, align 4
  %call8 = tail call ptr @clk_get_parent(ptr noundef %6) #8
  %esc_clk_src = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 19
  %7 = ptrtoint ptr %esc_clk_src to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %esc_clk_src, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef -19) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %8 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_clk, align 4
  %call18 = tail call ptr @clk_get_parent(ptr noundef %9) #8
  %dsi_clk_src = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 20
  %10 = ptrtoint ptr %dsi_clk_src to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %dsi_clk_src, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.then21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef -19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end16.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -19, %if.then10 ], [ 0, %if.end16.cleanup_crit_edge ], [ -19, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_clk_init_6g_v2(ptr nocapture noundef %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %call = tail call ptr @msm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %byte_intf_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 14
  %2 = ptrtoint ptr %byte_intf_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %byte_intf_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_runtime_suspend(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host1 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %cfg_hnd = getelementptr inbounds %struct.msm_dsi_host, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %cfg_hnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_hnd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_bus_clks = getelementptr inbounds %struct.msm_dsi_host, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %num_bus_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bus_clks, align 4
  %bus_clks = getelementptr inbounds %struct.msm_dsi_host, ptr %3, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %bus_clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %bus_clks) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_runtime_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host1 = getelementptr inbounds %struct.msm_dsi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %cfg_hnd = getelementptr inbounds %struct.msm_dsi_host, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %cfg_hnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_hnd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_bus_clks = getelementptr inbounds %struct.msm_dsi_host, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %num_bus_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_bus_clks, align 4
  %bus_clks = getelementptr inbounds %struct.msm_dsi_host, ptr %3, i32 0, i32 8
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %7, ptr noundef %bus_clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %7, ptr noundef %bus_clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %bus_clks) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_set_rate_6g(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 40
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %byte_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 15
  %4 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_clk_rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %5) #8
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %byte_clk_rate, align 4
  %call = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 11
  %10 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pixel_clk, align 4
  %pixel_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 16
  %12 = ptrtoint ptr %pixel_clk_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixel_clk_rate, align 4
  %call3 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call3) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %byte_intf_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 14
  %14 = ptrtoint ptr %byte_intf_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %byte_intf_clk, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 48
  %16 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cphy_mode, align 4, !range !402
  %18 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_clk_rate, align 4
  %20 = xor i8 %17, 1
  %21 = zext i8 %20 to i32
  %byte_intf_rate.0 = lshr i32 %19, %21
  %call20 = tail call i32 @clk_set_rate(ptr noundef nonnull %15, i32 noundef %byte_intf_rate.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then13.cleanup_crit_edge, label %do.end25

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i32 noundef %call20) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.then13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ %call20, %do.end25 ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_enable_6g(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %0 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esc_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %byte_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 9
  %2 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %byte_clk, align 4
  %call.i42 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end.i46, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.end.i46:                                       ; preds = %if.end
  %call1.i44 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool2.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool2.not.i45, label %if.end10, label %if.then3.i47

if.then3.i47:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i47, %if.end.do.end7_crit_edge
  %retval.0.i48.ph = phi i32 [ %call1.i44, %if.then3.i47 ], [ %call.i42, %if.end.do.end7_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #11
  br label %byte_clk_err

if.end10:                                         ; preds = %if.end.i46
  %pixel_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 11
  %4 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pixel_clk, align 4
  %call.i50 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i54, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.i54:                                       ; preds = %if.end10
  %call1.i52 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool2.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool2.not.i53, label %if.end19, label %if.then3.i55

if.then3.i55:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i55, %if.end10.do.end16_crit_edge
  %retval.0.i56.ph = phi i32 [ %call1.i52, %if.then3.i55 ], [ %call.i50, %if.end10.do.end16_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #11
  br label %pixel_clk_err

if.end19:                                         ; preds = %if.end.i54
  %byte_intf_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 14
  %6 = ptrtoint ptr %byte_intf_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %byte_intf_clk, align 4
  %call.i58 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end.i62, label %if.end19.do.end25_crit_edge

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end.i62:                                       ; preds = %if.end19
  %call1.i60 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool2.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool2.not.i61, label %if.end.i62.cleanup_crit_edge, label %if.then3.i63

if.end.i62.cleanup_crit_edge:                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i63:                                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i63, %if.end19.do.end25_crit_edge
  %retval.0.i64.ph = phi i32 [ %call1.i60, %if.then3.i63 ], [ %call.i58, %if.end19.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23) #11
  %8 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pixel_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %pixel_clk_err

pixel_clk_err:                                    ; preds = %do.end25, %do.end16
  %ret.0 = phi i32 [ %retval.0.i56.ph, %do.end16 ], [ %retval.0.i64.ph, %do.end25 ]
  %10 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %byte_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %byte_clk_err

byte_clk_err:                                     ; preds = %pixel_clk_err, %do.end7
  %ret.1 = phi i32 [ %retval.0.i48.ph, %do.end7 ], [ %ret.0, %pixel_clk_err ]
  %12 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %esc_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %byte_clk_err, %if.end.i62.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %byte_clk_err ], [ 0, %if.end.i62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_set_rate_v2(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 40
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %byte_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 15
  %4 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_clk_rate, align 4
  %esc_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 17
  %6 = ptrtoint ptr %esc_clk_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %esc_clk_rate, align 4
  %src_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 21
  %8 = ptrtoint ptr %src_clk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_clk_rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  %byte_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 9
  %10 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %byte_clk, align 4
  %12 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %byte_clk_rate, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %14 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esc_clk, align 4
  %16 = ptrtoint ptr %esc_clk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %esc_clk_rate, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %call4) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %src_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 18
  %18 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src_clk, align 4
  %20 = ptrtoint ptr %src_clk_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_clk_rate, align 4
  %call14 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35, i32 noundef %call14) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %pixel_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 11
  %22 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pixel_clk, align 4
  %pixel_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 16
  %24 = ptrtoint ptr %pixel_clk_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixel_clk_rate, align 4
  %call23 = tail call i32 @clk_set_rate(ptr noundef %23, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %do.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.35, i32 noundef %call23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end22.cleanup_crit_edge, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call14, %do.end19 ], [ %call23, %do.end28 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_link_clk_enable_v2(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 9
  %0 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %byte_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %2 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esc_clk, align 4
  %call.i42 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end.i46, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.end.i46:                                       ; preds = %if.end
  %call1.i44 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool2.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool2.not.i45, label %if.end10, label %if.then3.i47

if.then3.i47:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i47, %if.end.do.end7_crit_edge
  %retval.0.i48.ph = phi i32 [ %call1.i44, %if.then3.i47 ], [ %call.i42, %if.end.do.end7_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.44) #11
  br label %esc_clk_err

if.end10:                                         ; preds = %if.end.i46
  %src_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 18
  %4 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_clk, align 4
  %call.i50 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i54, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.i54:                                       ; preds = %if.end10
  %call1.i52 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool2.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool2.not.i53, label %if.end19, label %if.then3.i55

if.then3.i55:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i55, %if.end10.do.end16_crit_edge
  %retval.0.i56.ph = phi i32 [ %call1.i52, %if.then3.i55 ], [ %call.i50, %if.end10.do.end16_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.44) #11
  br label %src_clk_err

if.end19:                                         ; preds = %if.end.i54
  %pixel_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 11
  %6 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pixel_clk, align 4
  %call.i58 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end.i62, label %if.end19.do.end25_crit_edge

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end.i62:                                       ; preds = %if.end19
  %call1.i60 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool2.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool2.not.i61, label %if.end.i62.cleanup_crit_edge, label %if.then3.i63

if.end.i62.cleanup_crit_edge:                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i63:                                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i63, %if.end19.do.end25_crit_edge
  %retval.0.i64.ph = phi i32 [ %call1.i60, %if.then3.i63 ], [ %call.i58, %if.end19.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.44) #11
  %8 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %src_clk_err

src_clk_err:                                      ; preds = %do.end25, %do.end16
  %ret.0 = phi i32 [ %retval.0.i56.ph, %do.end16 ], [ %retval.0.i64.ph, %do.end25 ]
  %10 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %esc_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %esc_clk_err

esc_clk_err:                                      ; preds = %src_clk_err, %do.end7
  %ret.1 = phi i32 [ %retval.0.i48.ph, %do.end7 ], [ %ret.0, %src_clk_err ]
  %12 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %byte_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %esc_clk_err, %if.end.i62.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %esc_clk_err ], [ 0, %if.end.i62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsi_link_clk_disable_6g(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef 0) #8
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %2 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esc_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %pixel_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 11
  %4 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pixel_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %byte_intf_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 14
  %6 = ptrtoint ptr %byte_intf_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %byte_intf_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %byte_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 9
  %8 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %byte_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsi_link_clk_disable_v2(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 11
  %0 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixel_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %src_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 18
  %2 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %4 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esc_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %byte_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 9
  %6 = ptrtoint ptr %byte_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %byte_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_calc_clk_rate_6g(ptr nocapture noundef %msm_host, i1 noundef zeroext %is_bonded_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 40
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dsi_calc_pclk(ptr noundef %msm_host, i1 noundef zeroext %is_bonded_dsi)
  %esc_clk = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 10
  %2 = ptrtoint ptr %esc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esc_clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %esc_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 17
  %4 = ptrtoint ptr %esc_clk_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %esc_clk_rate, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_calc_pclk(ptr nocapture noundef %msm_host, i1 noundef zeroext %is_bonded_dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 43
  %0 = ptrtoint ptr %lanes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes1, align 4
  %format = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 44
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 18, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.selectcmp3.i = icmp eq i32 %3, 3
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 16, i32 %switch.select.i
  %mode1.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 40
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %mul.i = mul i32 %7, 1000
  %div3.i = zext i1 %is_bonded_dsi to i32
  %spec.select.i = lshr exact i32 %mul.i, %div3.i
  %conv3 = zext i32 %spec.select.i to i64
  %conv4 = zext i32 %switch.select4.i to i64
  %mul = mul nuw nsw i64 %conv3, %conv4
  %conv5 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lanes.0 = phi i32 [ 1, %do.end ], [ %1, %entry.if.end_crit_edge ]
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 48
  %8 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cphy_mode, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  %conv202 = and i32 %lanes.0, 255
  br i1 %tobool8.not, label %if.else200, label %if.then9

if.then9:                                         ; preds = %if.end
  %mul11 = shl nuw nsw i32 %conv202, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp184 = icmp ult i64 %mul, 4294967296
  br i1 %cmp184, label %if.then188, label %if.else194, !prof !403

if.then188:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %conv189 = trunc i64 %mul to i32
  %div192 = udiv i32 %conv189, %mul11
  br label %if.end424

if.else194:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11, i64 %mul) #12, !srcloc !404
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t676 = trunc i64 %asmresult1.i to i32
  br label %if.end424

if.else200:                                       ; preds = %if.end
  %mul203 = shl nuw nsw i32 %conv202, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp404 = icmp ult i64 %mul, 4294967296
  br i1 %cmp404, label %if.then412, label %if.else418, !prof !403

if.then412:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #10
  %conv413 = trunc i64 %mul to i32
  %div416 = udiv i32 %conv413, %mul203
  br label %if.end424

if.else418:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul203, i64 %mul) #12, !srcloc !404
  %asmresult1.i623 = extractvalue { i64, i64 } %11, 1
  %extract.t672 = trunc i64 %asmresult1.i623 to i32
  br label %if.end424

if.end424:                                        ; preds = %if.else418, %if.then412, %if.else194, %if.then188
  %pclk_bpp.0.off0 = phi i32 [ %div416, %if.then412 ], [ %extract.t672, %if.else418 ], [ %div192, %if.then188 ], [ %extract.t676, %if.else194 ]
  %pixel_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 16
  %12 = ptrtoint ptr %pixel_clk_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %pixel_clk_rate, align 4
  %byte_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 15
  %13 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pclk_bpp.0.off0, ptr %byte_clk_rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef %spec.select.i, i32 noundef %pclk_bpp.0.off0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_calc_clk_rate_v2(ptr nocapture noundef %msm_host, i1 noundef zeroext %is_bonded_dsi) local_unnamed_addr #0 align 64 {
if.end186:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 44
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 18, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch.selectcmp3.i = icmp eq i32 %1, 3
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 16, i32 %switch.select.i
  tail call fastcc void @dsi_calc_pclk(ptr noundef %msm_host, i1 noundef zeroext %is_bonded_dsi)
  %mode1.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 40
  %2 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mul.i = mul i32 %5, 1000
  %div3.i = zext i1 %is_bonded_dsi to i32
  %spec.select.i = lshr exact i32 %mul.i, %div3.i
  %conv = zext i32 %spec.select.i to i64
  %conv3 = zext i32 %switch.select4.i to i64
  %mul = mul nuw nsw i64 %conv, %conv3
  %shr = lshr exact i64 %mul, 3
  %extract.t = trunc i64 %shr to i32
  %src_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 21
  %6 = ptrtoint ptr %src_clk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %extract.t, ptr %src_clk_rate, align 4
  %byte_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 15
  %7 = ptrtoint ptr %byte_clk_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %byte_clk_rate, align 4
  %9 = add i32 %8, -1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %9)
  %10 = icmp ult i32 %9, 320000000
  br i1 %10, label %if.end205, label %if.end186.cleanup_crit_edge

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end205:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %div189 = udiv i32 %8, 1000000
  %11 = trunc i32 %div189 to i16
  %div194.lhs.trunc = add nuw nsw i16 %11, 19
  %div194316 = udiv i16 %div194.lhs.trunc, 20
  %div194.zext = zext i16 %div194316 to i32
  %div207 = udiv i32 %8, %div194.zext
  %esc_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 17
  %12 = ptrtoint ptr %esc_clk_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div207, ptr %esc_clk_rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %div207, i32 noundef %extract.t) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.end186.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end205 ], [ -22, %if.end186.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_tx_buf_alloc_6g(ptr noundef %msm_host, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %iova = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova) #8
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %iova, align 8, !annotation !405
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kms, align 4
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aspace, align 4
  %tx_gem_obj = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 34
  %call = call ptr @msm_gem_kernel_new(ptr noundef %1, i32 noundef %size, i32 noundef 131072, ptr noundef %8, ptr noundef %tx_gem_obj, ptr noundef nonnull %iova) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %tx_gem_obj to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tx_gem_obj, align 4
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tx_gem_obj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_gem_obj, align 4
  call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %12, ptr noundef nonnull @.str.55) #8
  %13 = ptrtoint ptr %tx_gem_obj to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_gem_obj, align 4
  %size7 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size7, align 8
  %tx_size = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 37
  %17 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_tx_buf_alloc_v2(ptr noundef %msm_host, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %tx_buf_paddr = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 36
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %tx_buf_paddr, i32 noundef 3264, i32 noundef 0) #8
  %tx_buf = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 35
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_size = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 37
  %5 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %tx_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dsi_tx_buf_get_6g(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_gem_obj = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 34
  %0 = ptrtoint ptr %tx_gem_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_gem_obj, align 4
  %call = tail call ptr @msm_gem_get_vaddr(ptr noundef %1) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dsi_tx_buf_get_v2(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 35
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsi_tx_buf_put_6g(ptr nocapture noundef readonly %msm_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_gem_obj = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 34
  %0 = ptrtoint ptr %tx_gem_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_gem_obj, align 4
  tail call void @msm_gem_put_vaddr(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsi_dma_base_get_6g(ptr nocapture noundef readonly %msm_host, ptr noundef %dma_base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dma_base, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %tx_gem_obj = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 34
  %4 = ptrtoint ptr %tx_gem_obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_gem_obj, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms, align 4
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aspace, align 4
  %call = tail call i32 @msm_gem_get_and_pin_iova(ptr noundef %5, ptr noundef %9, ptr noundef nonnull %dma_base) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dsi_dma_base_get_v2(ptr nocapture noundef readonly %msm_host, ptr noundef writeonly %dma_base) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dma_base, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_buf_paddr = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 36
  %0 = ptrtoint ptr %tx_buf_paddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_buf_paddr, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %dma_base to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %dma_base, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_init(ptr nocapture noundef %msm_dsi) local_unnamed_addr #0 align 64 {
entry:
  %lane_map.i.i = alloca [4 x i32], align 4
  %len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 740, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdev2, align 4
  %host = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 4
  %3 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %host, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i216 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %5, i32 noundef 1, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i216, null
  br i1 %tobool.not.i, label %dsi_host_parse_dt.exit.thread, label %if.end.i

dsi_host_parse_dt.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @__func__.dsi_host_parse_dt) #8
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev2, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lane_map.i.i) #8
  %8 = call ptr @memset(ptr %lane_map.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #8
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %len.i.i, align 4, !annotation !405
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %call.i216, ptr noundef nonnull @.str.142, ptr noundef nonnull %len.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 1, ptr noundef nonnull @.str.143) #8
  %num_data_lanes.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 47
  %10 = ptrtoint ptr %num_data_lanes.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %num_data_lanes.i.i, align 4
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %div65.i.i = lshr i32 %12, 2
  %13 = add i32 %12, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %13)
  %14 = icmp ult i32 %13, -16
  br i1 %14, label %if.end.i.i.if.then4.sink.split.i_crit_edge, label %if.end4.i.i

if.end.i.i.if.then4.sink.split.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.sink.split.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_data_lanes5.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 47
  %15 = ptrtoint ptr %num_data_lanes5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div65.i.i, ptr %num_data_lanes5.i.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i216, ptr noundef nonnull @.str.142, ptr noundef nonnull %lane_map.i.i, i32 noundef %div65.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool7.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool7.not.i.i, label %for.cond.preheader.i.i, label %if.end4.i.i.if.then4.sink.split.i_crit_edge

if.end4.i.i.if.then4.sink.split.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.sink.split.i

for.cond.preheader.i.i:                           ; preds = %if.end4.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div65.i.i, i32 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %exitcond.not.i.i = icmp ult i32 %12, 8
  %arrayidx15.i.i.1 = getelementptr inbounds [4 x i32], ptr %lane_map.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umax.i.i, 2
  %arrayidx15.i.i.2 = getelementptr inbounds [4 x i32], ptr %lane_map.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umax.i.i, 3
  %arrayidx15.i.i.3 = getelementptr inbounds [4 x i32], ptr %lane_map.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc32.critedge.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.070.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc33.i.i, %for.inc32.critedge.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x [4 x i32]], ptr @supported_data_lane_swaps, i32 0, i32 %i.070.i.i
  %16 = ptrtoint ptr %lane_map.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lane_map.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp19.i.i = icmp ugt i32 %17, 3
  br i1 %cmp19.i.i, label %if.then20.i.i, label %for.body.i.i.if.end22.i.i_crit_edge

for.body.i.i.if.end22.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.then20.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.146, i32 noundef %17) #8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then20.i.i, %for.body.i.i.if.end22.i.i_crit_edge
  %18 = ptrtoint ptr %lane_map.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lane_map.i.i, align 4
  %arrayidx24.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %19
  %20 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25.not.i.i = icmp eq i32 %21, 0
  %cmp25.not.i.i.not = xor i1 %cmp25.not.i.i, true
  %brmerge = select i1 %cmp25.not.i.i.not, i1 true, i1 %exitcond.not.i.i
  %.mux = select i1 %cmp25.not.i.i.not, i32 0, i32 %umax.i.i
  br i1 %brmerge, label %if.end22.i.i.for.end.i.i_crit_edge, label %for.body14.i.i.1

if.end22.i.i.for.end.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body14.i.i.1:                                 ; preds = %if.end22.i.i
  %22 = ptrtoint ptr %arrayidx15.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp19.i.i.1 = icmp ugt i32 %23, 3
  br i1 %cmp19.i.i.1, label %if.then20.i.i.1, label %for.body14.i.i.1.if.end22.i.i.1_crit_edge

for.body14.i.i.1.if.end22.i.i.1_crit_edge:        ; preds = %for.body14.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.1

if.then20.i.i.1:                                  ; preds = %for.body14.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.146, i32 noundef %23) #8
  br label %if.end22.i.i.1

if.end22.i.i.1:                                   ; preds = %if.then20.i.i.1, %for.body14.i.i.1.if.end22.i.i.1_crit_edge
  %24 = ptrtoint ptr %arrayidx15.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15.i.i.1, align 4
  %arrayidx24.i.i.1 = getelementptr i32, ptr %arrayidx.i.i, i32 %25
  %26 = ptrtoint ptr %arrayidx24.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp25.not.i.i.1 = icmp eq i32 %27, 1
  %cmp25.not.i.i.1.not = xor i1 %cmp25.not.i.i.1, true
  %brmerge293 = select i1 %cmp25.not.i.i.1.not, i1 true, i1 %exitcond.not.i.i.1
  %.mux294 = select i1 %cmp25.not.i.i.1.not, i32 1, i32 %umax.i.i
  br i1 %brmerge293, label %if.end22.i.i.1.for.end.i.i_crit_edge, label %for.body14.i.i.2

if.end22.i.i.1.for.end.i.i_crit_edge:             ; preds = %if.end22.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body14.i.i.2:                                 ; preds = %if.end22.i.i.1
  %28 = ptrtoint ptr %arrayidx15.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp19.i.i.2 = icmp ugt i32 %29, 3
  br i1 %cmp19.i.i.2, label %if.then20.i.i.2, label %for.body14.i.i.2.if.end22.i.i.2_crit_edge

for.body14.i.i.2.if.end22.i.i.2_crit_edge:        ; preds = %for.body14.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.2

if.then20.i.i.2:                                  ; preds = %for.body14.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.146, i32 noundef %29) #8
  br label %if.end22.i.i.2

if.end22.i.i.2:                                   ; preds = %if.then20.i.i.2, %for.body14.i.i.2.if.end22.i.i.2_crit_edge
  %30 = ptrtoint ptr %arrayidx15.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15.i.i.2, align 4
  %arrayidx24.i.i.2 = getelementptr i32, ptr %arrayidx.i.i, i32 %31
  %32 = ptrtoint ptr %arrayidx24.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx24.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp25.not.i.i.2 = icmp eq i32 %33, 2
  %cmp25.not.i.i.2.not = xor i1 %cmp25.not.i.i.2, true
  %brmerge295 = select i1 %cmp25.not.i.i.2.not, i1 true, i1 %exitcond.not.i.i.2
  %.mux296 = select i1 %cmp25.not.i.i.2.not, i32 2, i32 %umax.i.i
  br i1 %brmerge295, label %if.end22.i.i.2.for.end.i.i_crit_edge, label %for.body14.i.i.3

if.end22.i.i.2.for.end.i.i_crit_edge:             ; preds = %if.end22.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body14.i.i.3:                                 ; preds = %if.end22.i.i.2
  %34 = ptrtoint ptr %arrayidx15.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp19.i.i.3 = icmp ugt i32 %35, 3
  br i1 %cmp19.i.i.3, label %if.then20.i.i.3, label %for.body14.i.i.3.if.end22.i.i.3_crit_edge

for.body14.i.i.3.if.end22.i.i.3_crit_edge:        ; preds = %for.body14.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.3

if.then20.i.i.3:                                  ; preds = %for.body14.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.146, i32 noundef %35) #8
  br label %if.end22.i.i.3

if.end22.i.i.3:                                   ; preds = %if.then20.i.i.3, %for.body14.i.i.3.if.end22.i.i.3_crit_edge
  %36 = ptrtoint ptr %arrayidx15.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i.i.3, align 4
  %arrayidx24.i.i.3 = getelementptr i32, ptr %arrayidx.i.i, i32 %37
  %38 = ptrtoint ptr %arrayidx24.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx24.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp25.not.i.i.3 = icmp eq i32 %39, 3
  %spec.select = select i1 %cmp25.not.i.i.3, i32 %umax.i.i, i32 3
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end22.i.i.3, %if.end22.i.i.2.for.end.i.i_crit_edge, %if.end22.i.i.1.for.end.i.i_crit_edge, %if.end22.i.i.for.end.i.i_crit_edge
  %j.0.lcssa.ph.i.i = phi i32 [ %.mux, %if.end22.i.i.for.end.i.i_crit_edge ], [ %.mux294, %if.end22.i.i.1.for.end.i.i_crit_edge ], [ %.mux296, %if.end22.i.i.2.for.end.i.i_crit_edge ], [ %spec.select, %if.end22.i.i.3 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.ph.i.i, i32 %div65.i.i)
  %cmp28.i.i = icmp eq i32 %j.0.lcssa.ph.i.i, %div65.i.i
  br i1 %cmp28.i.i, label %if.then29.i.i, label %for.inc32.critedge.i.i

if.then29.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dlane_swap.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 46
  %40 = ptrtoint ptr %dlane_swap.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.070.i.i, ptr %dlane_swap.i.i, align 4
  br label %if.end5.i

for.inc32.critedge.i.i:                           ; preds = %for.end.i.i
  %inc33.i.i = add nuw nsw i32 %i.070.i.i, 1
  %exitcond72.not.i.i = icmp eq i32 %inc33.i.i, 8
  br i1 %exitcond72.not.i.i, label %for.inc32.critedge.i.i.if.then4.i_crit_edge, label %for.inc32.critedge.i.i.for.body.i.i_crit_edge

for.inc32.critedge.i.i.for.body.i.i_crit_edge:    ; preds = %for.inc32.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc32.critedge.i.i.if.then4.i_crit_edge:      ; preds = %for.inc32.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.sink.split.i:                            ; preds = %if.end4.i.i.if.then4.sink.split.i_crit_edge, %if.end.i.i.if.then4.sink.split.i_crit_edge
  %.str.144.sink.i = phi ptr [ @.str.144, %if.end.i.i.if.then4.sink.split.i_crit_edge ], [ @.str.145, %if.end4.i.i.if.then4.sink.split.i_crit_edge ]
  %retval.2.i.ph.ph.i = phi i32 [ -22, %if.end.i.i.if.then4.sink.split.i_crit_edge ], [ %call.i.i.i, %if.end4.i.i.if.then4.sink.split.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull %.str.144.sink.i) #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then4.sink.split.i, %for.inc32.critedge.i.i.if.then4.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ %retval.2.i.ph.ph.i, %if.then4.sink.split.i ], [ -22, %for.inc32.critedge.i.i.if.then4.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lane_map.i.i) #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.dsi_host_parse_dt, i32 noundef %retval.2.i.ph.i) #8
  br label %dsi_host_parse_dt.exit.thread260

if.end5.i:                                        ; preds = %if.then29.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lane_map.i.i) #8
  %call6.i = call ptr @of_graph_get_remote_node(ptr noundef %5, i32 noundef 1, i32 noundef 0) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.dsi_host_parse_dt) #8
  br label %dsi_host_parse_dt.exit.thread260

if.end9.i:                                        ; preds = %if.end5.i
  %device_node10.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 41
  %41 = ptrtoint ptr %device_node10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call6.i, ptr %device_node10.i, align 4
  %call.i43.i = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.140, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool.i.not.i, label %if.end9.i.dsi_host_parse_dt.exit_crit_edge, label %if.then12.i

if.end9.i.dsi_host_parse_dt.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_parse_dt.exit

if.then12.i:                                      ; preds = %if.end9.i
  %call13.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.140) #8
  %sfpb.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 39
  %42 = ptrtoint ptr %sfpb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call13.i, ptr %sfpb.i, align 4
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then16.i, label %if.then12.i.dsi_host_parse_dt.exit_crit_edge

if.then12.i.dsi_host_parse_dt.exit_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_parse_dt.exit

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.141, ptr noundef nonnull @__func__.dsi_host_parse_dt) #8
  %43 = ptrtoint ptr %sfpb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sfpb.i, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %dsi_host_parse_dt.exit

dsi_host_parse_dt.exit.thread260:                 ; preds = %if.then8.i, %if.then4.i
  %ret.1.i.ph = phi i32 [ -19, %if.then8.i ], [ -22, %if.then4.i ]
  call void @of_node_put(ptr noundef nonnull %call.i216) #8
  br label %do.end

dsi_host_parse_dt.exit:                           ; preds = %if.then16.i, %if.then12.i.dsi_host_parse_dt.exit_crit_edge, %if.end9.i.dsi_host_parse_dt.exit_crit_edge
  %ret.0.i = phi i32 [ %45, %if.then16.i ], [ 0, %if.then12.i.dsi_host_parse_dt.exit_crit_edge ], [ 0, %if.end9.i.dsi_host_parse_dt.exit_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call6.i) #8
  call void @of_node_put(ptr noundef nonnull %call.i216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool4.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool4.not, label %dsi_host_parse_dt.exit.if.end7_crit_edge, label %dsi_host_parse_dt.exit.do.end_crit_edge

dsi_host_parse_dt.exit.do.end_crit_edge:          ; preds = %dsi_host_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

dsi_host_parse_dt.exit.if.end7_crit_edge:         ; preds = %dsi_host_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %dsi_host_parse_dt.exit.do.end_crit_edge, %dsi_host_parse_dt.exit.thread260
  %ret.1.i263 = phi i32 [ %ret.1.i.ph, %dsi_host_parse_dt.exit.thread260 ], [ %ret.0.i, %dsi_host_parse_dt.exit.do.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end7:                                          ; preds = %dsi_host_parse_dt.exit.if.end7_crit_edge, %dsi_host_parse_dt.exit.thread
  %ctrl_size = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 5
  %call8 = call ptr @msm_ioremap_size(ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %ctrl_size) #8
  %ctrl_base = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8, ptr %ctrl_base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end19

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.57) #11
  %47 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_base, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %50 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev2, align 4
  %dev1.i218 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %call.i219 = call ptr @msm_clk_get(ptr noundef %51, ptr noundef nonnull @.str.147) #8
  %cmp.i.i220 = icmp ugt ptr %call.i219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i220, label %dsi_get_config.exit.thread, label %if.end.i223

dsi_get_config.exit.thread:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149) #11
  br label %if.then24.sink.split

if.end.i223:                                      ; preds = %if.end19
  %call.i.i221 = call i32 @__pm_runtime_resume(ptr noundef %dev1.i218, i32 noundef 4) #8
  %call.i31.i = call i32 @clk_prepare(ptr noundef %call.i219) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i.i222 = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i.i222, label %if.end.i.i224, label %if.end.i223.dsi_get_config.exit.thread267_crit_edge

if.end.i223.dsi_get_config.exit.thread267_crit_edge: ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_get_config.exit.thread267

if.end.i.i224:                                    ; preds = %if.end.i223
  %call1.i.i = call i32 @clk_enable(ptr noundef %call.i219) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end13.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call.i219) #8
  br label %dsi_get_config.exit.thread267

dsi_get_config.exit.thread267:                    ; preds = %if.then3.i.i, %if.end.i223.dsi_get_config.exit.thread267_crit_edge
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.149) #11
  %call.i38.i269 = call i32 @__pm_runtime_idle(ptr noundef %dev1.i218, i32 noundef 4) #8
  br label %if.then24.sink.split

if.end13.i:                                       ; preds = %if.end.i.i224
  %52 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 496
  %call.i32.i = call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool2.not.i33.i, label %if.else5.i.i, label %if.then3.i36.i

if.then3.i36.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %call.i32.i)
  %cmp.i35.i = icmp ult i32 %call.i32.i, 50331648
  br i1 %cmp.i35.i, label %if.then4.i.i, label %if.then3.i36.i.do.end19.i_crit_edge

if.then3.i36.i.do.end19.i_crit_edge:              ; preds = %if.then3.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

if.then4.i.i:                                     ; preds = %if.then3.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %call.i32.i, 24
  br label %if.end22.i

if.else5.i.i:                                     ; preds = %if.end13.i
  %add.ptr7.i.i = getelementptr i8, ptr %53, i32 500
  %call8.i.i = call i32 @msm_readl(ptr noundef %add.ptr7.i.i) #8
  %shr10.mask.i.i = and i32 %call8.i.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %shr10.mask.i.i)
  %cmp11.i.i = icmp eq i32 %shr10.mask.i.i, 50331648
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.else5.i.i.do.end19.i_crit_edge

if.else5.i.i.do.end19.i_crit_edge:                ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

if.then12.i.i:                                    ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i.i = call i32 @msm_readl(ptr noundef %53) #8
  br label %if.end22.i

do.end19.i:                                       ; preds = %if.else5.i.i.do.end19.i_crit_edge, %if.then3.i36.i.do.end19.i_crit_edge
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.149) #11
  br label %dsi_get_config.exit

if.end22.i:                                       ; preds = %if.then12.i.i, %if.then4.i.i
  %major.1.ph.i = phi i32 [ %shr.i.i, %if.then4.i.i ], [ 3, %if.then12.i.i ]
  %minor.0.ph.i = phi i32 [ 0, %if.then4.i.i ], [ %call14.i.i, %if.then12.i.i ]
  %call23.i = call ptr @msm_dsi_cfg_get(i32 noundef %major.1.ph.i, i32 noundef %minor.0.ph.i) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.149, i32 noundef %major.1.ph.i, i32 noundef %minor.0.ph.i) #8
  br label %dsi_get_config.exit

dsi_get_config.exit:                              ; preds = %if.end22.i, %do.end19.i
  %cfg_hnd.0.i = phi ptr [ null, %do.end19.i ], [ %call23.i, %if.end22.i ]
  call void @clk_disable(ptr noundef %call.i219) #8
  call void @clk_unprepare(ptr noundef %call.i219) #8
  %call.i38.i = call i32 @__pm_runtime_idle(ptr noundef %dev1.i218, i32 noundef 4) #8
  %cfg_hnd = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 24
  %54 = ptrtoint ptr %cfg_hnd to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cfg_hnd.0.i, ptr %cfg_hnd, align 4
  %tobool23.not = icmp eq ptr %cfg_hnd.0.i, null
  br i1 %tobool23.not, label %dsi_get_config.exit.if.then24_crit_edge, label %if.end30

dsi_get_config.exit.if.then24_crit_edge:          ; preds = %dsi_get_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24.sink.split:                             ; preds = %dsi_get_config.exit.thread267, %dsi_get_config.exit.thread
  %cfg_hnd270 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 24
  %55 = ptrtoint ptr %cfg_hnd270 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %cfg_hnd270, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.then24.sink.split, %dsi_get_config.exit.if.then24_crit_edge
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end30:                                         ; preds = %dsi_get_config.exit
  %56 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev2, align 4
  %cfg2.i = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %cfg_hnd.0.i, i32 0, i32 2
  %58 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg2.i, align 4
  %call.i225 = call ptr @platform_get_resource_byname(ptr noundef %57, i32 noundef 512, ptr noundef nonnull @.str.58) #8
  %tobool.not.i226 = icmp eq ptr %call.i225, null
  br i1 %tobool.not.i226, label %if.end30.if.then33_crit_edge, label %for.cond.preheader.i

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

for.cond.preheader.i:                             ; preds = %if.end30
  %num_dsi.i = getelementptr inbounds %struct.msm_dsi_config, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %num_dsi.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_dsi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp15.i = icmp sgt i32 %61, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.then33_crit_edge

for.cond.preheader.i.if.then33_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %62 = ptrtoint ptr %call.i225 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call.i225, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_dsi_config, ptr %59, i32 0, i32 4, i32 %i.016.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %63)
  %cmp3.i = icmp eq i32 %65, %63
  br i1 %cmp3.i, label %if.end40, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %61
  br i1 %exitcond.not.i, label %for.inc.i.if.then33_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then33_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %for.inc.i.if.then33_crit_edge, %for.cond.preheader.i.if.then33_crit_edge, %if.end30.if.then33_crit_edge
  %id273 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 3
  %66 = ptrtoint ptr %id273 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -22, ptr %id273, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end40:                                         ; preds = %for.body.i
  %id = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %i.016.i, ptr %id, align 4
  %68 = ptrtoint ptr %cfg_hnd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg_hnd, align 4
  %cfg = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctrl_base, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 %73
  store ptr %add.ptr, ptr %ctrl_base, align 4
  %supplies.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 6
  %76 = load ptr, ptr %cfg, align 4
  %reg_cfg.i = getelementptr inbounds %struct.msm_dsi_config, ptr %76, i32 0, i32 1
  %regs1.i = getelementptr inbounds %struct.msm_dsi_config, ptr %76, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %reg_cfg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp25.i = icmp sgt i32 %78, 0
  br i1 %cmp25.i, label %if.end40.for.body.i232_crit_edge, label %if.end40.for.end.i_crit_edge

if.end40.for.end.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end40.for.body.i232_crit_edge:                 ; preds = %if.end40
  br label %for.body.i232

for.body.i232:                                    ; preds = %for.body.i232.for.body.i232_crit_edge, %if.end40.for.body.i232_crit_edge
  %i.026.i = phi i32 [ %inc.i230, %for.body.i232.for.body.i232_crit_edge ], [ 0, %if.end40.for.body.i232_crit_edge ]
  %arrayidx.i229 = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.026.i
  %arrayidx8.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.026.i
  %79 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx.i229, ptr %arrayidx8.i, align 4
  %inc.i230 = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i231 = icmp eq i32 %inc.i230, %78
  br i1 %exitcond.not.i231, label %for.body.i232.for.end.i_crit_edge, label %for.body.i232.for.body.i232_crit_edge

for.body.i232.for.body.i232_crit_edge:            ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i232

for.body.i232.for.end.i_crit_edge:                ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i232.for.end.i_crit_edge, %if.end40.for.end.i_crit_edge
  %80 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev2, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  %call.i234 = call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef %78, ptr noundef %supplies.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp9.i = icmp slt i32 %call.i234, 0
  br i1 %cmp9.i, label %do.end48, label %if.end51

do.end48:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef %call.i234) #11
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end51:                                         ; preds = %for.end.i
  %82 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev2, align 4
  %84 = ptrtoint ptr %cfg_hnd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfg_hnd, align 4
  %cfg3.i = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %cfg3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg3.i, align 4
  %num_bus_clks.i = getelementptr inbounds %struct.msm_dsi_config, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %num_bus_clks.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_bus_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp129.i = icmp sgt i32 %89, 0
  br i1 %cmp129.i, label %for.body.lr.ph.i238, label %if.end51.for.end.i246_crit_edge

if.end51.for.end.i246_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i246

for.body.lr.ph.i238:                              ; preds = %if.end51
  %bus_clk_names.i = getelementptr inbounds %struct.msm_dsi_config, ptr %87, i32 0, i32 2
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.body.i242.for.body.i242_crit_edge, %for.body.lr.ph.i238
  %i.0130.i = phi i32 [ 0, %for.body.lr.ph.i238 ], [ %inc.i240, %for.body.i242.for.body.i242_crit_edge ]
  %90 = ptrtoint ptr %bus_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus_clk_names.i, align 4
  %arrayidx.i239 = getelementptr ptr, ptr %91, i32 %i.0130.i
  %92 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i239, align 4
  %arrayidx4.i = getelementptr %struct.msm_dsi_host, ptr %call.i, i32 0, i32 8, i32 %i.0130.i
  %94 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %arrayidx4.i, align 4
  %inc.i240 = add nuw nsw i32 %i.0130.i, 1
  %95 = ptrtoint ptr %num_bus_clks.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_bus_clks.i, align 4
  %cmp.i241 = icmp slt i32 %inc.i240, %96
  br i1 %cmp.i241, label %for.body.i242.for.body.i242_crit_edge, label %for.body.i242.for.end.i246_crit_edge

for.body.i242.for.end.i246_crit_edge:             ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i246

for.body.i242.for.body.i242_crit_edge:            ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i242

for.end.i246:                                     ; preds = %for.body.i242.for.end.i246_crit_edge, %if.end51.for.end.i246_crit_edge
  %.lcssa.i = phi i32 [ %89, %if.end51.for.end.i246_crit_edge ], [ %96, %for.body.i242.for.end.i246_crit_edge ]
  %num_bus_clks6.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 7
  %97 = ptrtoint ptr %num_bus_clks6.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.lcssa.i, ptr %num_bus_clks6.i, align 4
  %dev.i243 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  %bus_clks8.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 8
  %call.i244 = call i32 @devm_clk_bulk_get(ptr noundef %dev.i243, i32 noundef %.lcssa.i, ptr noundef %bus_clks8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp9.i245 = icmp slt i32 %call.i244, 0
  br i1 %cmp9.i245, label %dsi_clk_init.exit.thread, label %if.end.i249

dsi_clk_init.exit.thread:                         ; preds = %for.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i243, ptr noundef nonnull @.str.159, i32 noundef %call.i244) #11
  br label %do.end57

if.end.i249:                                      ; preds = %for.end.i246
  %call11.i = call ptr @msm_clk_get(ptr noundef %83, ptr noundef nonnull @.str.78) #8
  %byte_clk.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 9
  %98 = ptrtoint ptr %byte_clk.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call11.i, ptr %byte_clk.i, align 4
  %cmp.i.i248 = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i248, label %if.then14.i, label %if.end22.i251

if.then14.i:                                      ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %call11.i to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.160, i32 noundef %99) #11
  %100 = ptrtoint ptr %byte_clk.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %byte_clk.i, align 4
  br label %dsi_clk_init.exit

if.end22.i251:                                    ; preds = %if.end.i249
  %call23.i250 = call ptr @msm_clk_get(ptr noundef %83, ptr noundef nonnull @.str.164) #8
  %pixel_clk.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 11
  %101 = ptrtoint ptr %pixel_clk.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call23.i250, ptr %pixel_clk.i, align 4
  %cmp.i125.i = icmp ugt ptr %call23.i250, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %if.then26.i, label %if.end35.i

if.then26.i:                                      ; preds = %if.end22.i251
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %call23.i250 to i32
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.160, i32 noundef %102) #11
  %103 = ptrtoint ptr %pixel_clk.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %pixel_clk.i, align 4
  br label %dsi_clk_init.exit

if.end35.i:                                       ; preds = %if.end22.i251
  %call36.i = call ptr @msm_clk_get(ptr noundef %83, ptr noundef nonnull @.str.168) #8
  %esc_clk.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 10
  %104 = ptrtoint ptr %esc_clk.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call36.i, ptr %esc_clk.i, align 4
  %cmp.i126.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %if.then39.i, label %if.end48.i

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %call36.i to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.160, i32 noundef %105) #11
  %106 = ptrtoint ptr %esc_clk.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %esc_clk.i, align 4
  br label %dsi_clk_init.exit

if.end48.i:                                       ; preds = %if.end35.i
  %107 = ptrtoint ptr %byte_clk.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %byte_clk.i, align 4
  %call50.i = call ptr @clk_get_parent(ptr noundef %108) #8
  %byte_clk_src.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 12
  %109 = ptrtoint ptr %byte_clk_src.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call50.i, ptr %byte_clk_src.i, align 4
  %cmp.i127.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %if.then53.i, label %if.end61.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %call50.i to i32
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.160, i32 noundef %110) #11
  br label %dsi_clk_init.exit

if.end61.i:                                       ; preds = %if.end48.i
  %111 = ptrtoint ptr %pixel_clk.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pixel_clk.i, align 4
  %call63.i = call ptr @clk_get_parent(ptr noundef %112) #8
  %pixel_clk_src.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 13
  %113 = ptrtoint ptr %pixel_clk_src.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call63.i, ptr %pixel_clk_src.i, align 4
  %cmp.i128.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %if.then66.i, label %if.end74.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %call63.i to i32
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.160, i32 noundef %114) #11
  br label %dsi_clk_init.exit

if.end74.i:                                       ; preds = %if.end61.i
  %ops.i = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %85, i32 0, i32 3
  %115 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i, align 4
  %clk_init_ver.i = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %clk_init_ver.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk_init_ver.i, align 4
  %tobool.not.i252 = icmp eq ptr %118, null
  br i1 %tobool.not.i252, label %if.end74.i.dsi_clk_init.exit_crit_edge, label %if.then75.i

if.end74.i.dsi_clk_init.exit_crit_edge:           ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_clk_init.exit

if.then75.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  %call78.i = call i32 %118(ptr noundef %call.i) #8
  br label %dsi_clk_init.exit

dsi_clk_init.exit:                                ; preds = %if.then75.i, %if.end74.i.dsi_clk_init.exit_crit_edge, %if.then66.i, %if.then53.i, %if.then39.i, %if.then26.i, %if.then14.i
  %ret.0.i253 = phi i32 [ %99, %if.then14.i ], [ %102, %if.then26.i ], [ %105, %if.then39.i ], [ %110, %if.then53.i ], [ %114, %if.then66.i ], [ %call78.i, %if.then75.i ], [ %call.i244, %if.end74.i.dsi_clk_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i253)
  %tobool53.not = icmp eq i32 %ret.0.i253, 0
  br i1 %tobool53.not, label %if.end60, label %dsi_clk_init.exit.do.end57_crit_edge

dsi_clk_init.exit.do.end57_crit_edge:             ; preds = %dsi_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

do.end57:                                         ; preds = %dsi_clk_init.exit.do.end57_crit_edge, %dsi_clk_init.exit.thread
  %ret.0.i253280 = phi i32 [ %call.i244, %dsi_clk_init.exit.thread ], [ %ret.0.i253, %dsi_clk_init.exit.do.end57_crit_edge ]
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end60:                                         ; preds = %dsi_clk_init.exit
  %call.i254 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4096, i32 noundef 3520) #8
  %rx_buf = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 38
  %119 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i254, ptr %rx_buf, align 4
  %tobool64.not = icmp eq ptr %call.i254, null
  br i1 %tobool64.not, label %if.then65, label %if.end71

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end71:                                         ; preds = %if.end60
  %call73 = call i32 @devm_pm_opp_set_clkname(ptr noundef %dev, ptr noundef nonnull @.str.78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %call78 = call i32 @devm_pm_opp_of_add_table(ptr noundef %dev) #8
  %120 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call78, label %do.end84 [
    i32 0, label %if.end76.if.end86_crit_edge
    i32 -19, label %if.end76.if.end86_crit_edge297
  ]

if.end76.if.end86_crit_edge297:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end76.if.end86_crit_edge, %if.end76.if.end86_crit_edge297
  %121 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %of_node.i, align 8
  %call88 = call i32 @irq_of_parse_and_map(ptr noundef %122, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 53
  %123 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call88, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp90 = icmp slt i32 %call88, 0
  br i1 %cmp90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %call88) #11
  br label %cleanup

if.end97:                                         ; preds = %if.end86
  %call.i255 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call88, ptr noundef nonnull @dsi_host_irq, ptr noundef null, i32 noundef 532484, ptr noundef nonnull @.str.87, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp101 = icmp slt i32 %call.i255, 0
  br i1 %cmp101, label %do.end105, label %if.end108

do.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %125, i32 noundef %call.i255) #11
  br label %cleanup

if.end108:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %dma_comp = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 25
  %126 = ptrtoint ptr %dma_comp to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %dma_comp, align 4
  %wait.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 25, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.179, ptr noundef nonnull @init_completion.__key) #8
  %video_comp = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 26
  %127 = ptrtoint ptr %video_comp to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %video_comp, align 4
  %wait.i256 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 26, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i256, ptr noundef nonnull @.str.179, ptr noundef nonnull @init_completion.__key) #8
  %dev_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 27
  call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.91, ptr noundef nonnull @msm_dsi_host_init.__key) #8
  %cmd_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 28
  call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str.93, ptr noundef nonnull @msm_dsi_host_init.__key.92) #8
  %intr_lock = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 29
  call void @__raw_spin_lock_init(ptr noundef %intr_lock, ptr noundef nonnull @.str.95, ptr noundef nonnull @msm_dsi_host_init.__key.94, i16 noundef signext 3) #8
  %call119 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.96, i32 noundef 655362, i32 noundef 1) #8
  %workqueue = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 33
  %128 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call119, ptr %workqueue, align 4
  %err_work = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 31
  call void @__init_work(ptr noundef %err_work, i32 noundef 0) #8
  %129 = ptrtoint ptr %err_work to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -64, ptr %err_work, align 4
  %lockdep_map = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 31, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.98, ptr noundef nonnull @msm_dsi_host_init.__key.97, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry124 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 31, i32 1
  %130 = ptrtoint ptr %entry124 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %entry124, ptr %entry124, align 4
  %prev.i = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 31, i32 1, i32 1
  %131 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %entry124, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 31, i32 2
  %132 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @dsi_err_worker, ptr %func, align 4
  %hpd_work = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 32
  call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #8
  %133 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -64, ptr %hpd_work, align 4
  %lockdep_map134 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 32, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map134, ptr noundef nonnull @.str.100, ptr noundef nonnull @msm_dsi_host_init.__key.99, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry136 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 32, i32 1
  %134 = ptrtoint ptr %entry136 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %entry136, ptr %entry136, align 4
  %prev.i257 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 32, i32 1, i32 1
  %135 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %entry136, ptr %prev.i257, align 4
  %func138 = getelementptr inbounds %struct.msm_dsi_host, ptr %call.i, i32 0, i32 32, i32 2
  %136 = ptrtoint ptr %func138 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @dsi_hpd_worker, ptr %func138, align 4
  %137 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %id, align 4
  %id142 = getelementptr inbounds %struct.msm_dsi, ptr %msm_dsi, i32 0, i32 11
  %139 = ptrtoint ptr %id142 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %id142, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.101, i32 noundef %138) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %do.end105, %if.then91, %do.end84, %if.end71.cleanup_crit_edge, %if.then65, %do.end57, %do.end48, %if.then33, %if.then24, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %do.end84 ], [ %call88, %if.then91 ], [ %call.i255, %do.end105 ], [ 0, %if.end108 ], [ %call73, %if.end71.cleanup_crit_edge ], [ %ret.1.i263, %do.end ], [ %49, %do.end14 ], [ -22, %if.then33 ], [ %call.i234, %do.end48 ], [ %ret.0.i253280, %do.end57 ], [ -12, %if.then65 ], [ -22, %if.then24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_host_irq(i32 noundef %irq, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %intr_lock = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock) #8
  %2 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 268
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #8
  %4 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 268
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %add.ptr.i33) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock, i32 noundef %call2) #8
  %id = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.178, i32 noundef %call.i, i32 noundef %7) #8
  %and = and i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body1.if.end9_crit_edge, label %if.then8

do.body1.if.end9_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %do.body1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock) #8
  %8 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 268
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #8
  %and.i.i = and i32 %call.i.i.i, -33554433
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %and.i.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %11, i32 268
  tail call void @msm_writel(i32 noundef %and.i.i, ptr noundef %add.ptr.i16.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock, i32 noundef %call2.i.i) #8
  %12 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %13, i32 284
  %call.i.i11.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i10.i) #8
  %and.i12.i = and i32 %call.i.i11.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool.not.i.i, label %if.then8.dsi_clk_status.exit.i_crit_edge, label %if.then.i.i

if.then8.dsi_clk_status.exit.i_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_clk_status.exit.i

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %15, i32 284
  tail call void @msm_writel(i32 noundef %call.i.i11.i, ptr noundef %add.ptr.i5.i.i) #8
  %err_work_state.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 30
  %16 = ptrtoint ptr %err_work_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err_work_state.i.i, align 4
  %or.i13.i = or i32 %17, 32
  store i32 %or.i13.i, ptr %err_work_state.i.i, align 4
  br label %dsi_clk_status.exit.i

dsi_clk_status.exit.i:                            ; preds = %if.then.i.i, %if.then8.dsi_clk_status.exit.i_crit_edge
  %18 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %19, i32 8
  %call.i.i16.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i15.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call.i.i16.i, 0
  br i1 %tobool.not.i17.i, label %dsi_clk_status.exit.i.dsi_fifo_status.exit.i_crit_edge, label %if.then.i21.i

dsi_clk_status.exit.i.dsi_fifo_status.exit.i_crit_edge: ; preds = %dsi_clk_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_fifo_status.exit.i

if.then.i21.i:                                    ; preds = %dsi_clk_status.exit.i
  %20 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %21, i32 8
  tail call void @msm_writel(i32 noundef %call.i.i16.i, ptr noundef %add.ptr.i12.i.i) #8
  %err_work_state.i18.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 30
  %22 = ptrtoint ptr %err_work_state.i18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err_work_state.i18.i, align 4
  %or.i19.i = or i32 %23, 4
  store i32 %or.i19.i, ptr %err_work_state.i18.i, align 4
  %and.i20.i = and i32 %call.i.i16.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool1.not.i.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i21.i.dsi_fifo_status.exit.i_crit_edge, label %if.then2.i.i

if.then.i21.i.dsi_fifo_status.exit.i_crit_edge:   ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_fifo_status.exit.i

if.then2.i.i:                                     ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %or4.i.i = or i32 %23, 12
  %24 = ptrtoint ptr %err_work_state.i18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or4.i.i, ptr %err_work_state.i18.i, align 4
  br label %dsi_fifo_status.exit.i

dsi_fifo_status.exit.i:                           ; preds = %if.then2.i.i, %if.then.i21.i.dsi_fifo_status.exit.i_crit_edge, %dsi_clk_status.exit.i.dsi_fifo_status.exit.i_crit_edge
  %25 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %26, i32 100
  %call.i.i24.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %tobool.not.i25.i, label %dsi_fifo_status.exit.i.dsi_ack_err_status.exit.i_crit_edge, label %if.then.i26.i

dsi_fifo_status.exit.i.dsi_ack_err_status.exit.i_crit_edge: ; preds = %dsi_fifo_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_ack_err_status.exit.i

if.then.i26.i:                                    ; preds = %dsi_fifo_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %28, i32 100
  tail call void @msm_writel(i32 noundef %call.i.i24.i, ptr noundef %add.ptr.i6.i.i) #8
  %29 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %30, i32 100
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i8.i.i) #8
  br label %dsi_ack_err_status.exit.i

dsi_ack_err_status.exit.i:                        ; preds = %if.then.i26.i, %dsi_fifo_status.exit.i.dsi_ack_err_status.exit.i_crit_edge
  %31 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %32, i32 188
  %call.i.i29.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i28.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i.i29.i, 0
  br i1 %tobool.not.i30.i, label %dsi_ack_err_status.exit.i.dsi_timeout_status.exit.i_crit_edge, label %if.then.i34.i

dsi_ack_err_status.exit.i.dsi_timeout_status.exit.i_crit_edge: ; preds = %dsi_ack_err_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_timeout_status.exit.i

if.then.i34.i:                                    ; preds = %dsi_ack_err_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i5.i31.i = getelementptr i8, ptr %34, i32 188
  tail call void @msm_writel(i32 noundef %call.i.i29.i, ptr noundef %add.ptr.i5.i31.i) #8
  %err_work_state.i32.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 30
  %35 = ptrtoint ptr %err_work_state.i32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err_work_state.i32.i, align 4
  %or.i33.i = or i32 %36, 1
  store i32 %or.i33.i, ptr %err_work_state.i32.i, align 4
  br label %dsi_timeout_status.exit.i

dsi_timeout_status.exit.i:                        ; preds = %if.then.i34.i, %dsi_ack_err_status.exit.i.dsi_timeout_status.exit.i_crit_edge
  %37 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %38, i32 4
  %call.i.i37.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i36.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i37.i)
  %tobool.not.i38.i = icmp sgt i32 %call.i.i37.i, -1
  br i1 %tobool.not.i38.i, label %dsi_timeout_status.exit.i.dsi_status.exit.i_crit_edge, label %if.then.i42.i

dsi_timeout_status.exit.i.dsi_status.exit.i_crit_edge: ; preds = %dsi_timeout_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_status.exit.i

if.then.i42.i:                                    ; preds = %dsi_timeout_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i5.i39.i = getelementptr i8, ptr %40, i32 4
  tail call void @msm_writel(i32 noundef %call.i.i37.i, ptr noundef %add.ptr.i5.i39.i) #8
  %err_work_state.i40.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 30
  %41 = ptrtoint ptr %err_work_state.i40.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err_work_state.i40.i, align 4
  %or.i41.i = or i32 %42, 16
  store i32 %or.i41.i, ptr %err_work_state.i40.i, align 4
  br label %dsi_status.exit.i

dsi_status.exit.i:                                ; preds = %if.then.i42.i, %dsi_timeout_status.exit.i.dsi_status.exit.i_crit_edge
  %43 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %44, i32 176
  %call.i.i45.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i44.i) #8
  %and.i46.i = and i32 %call.i.i45.i, 69905
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i)
  %tobool.not.i47.i = icmp eq i32 %and.i46.i, 0
  br i1 %tobool.not.i47.i, label %dsi_status.exit.i.dsi_error.exit_crit_edge, label %if.then.i51.i

dsi_status.exit.i.dsi_error.exit_crit_edge:       ; preds = %dsi_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_error.exit

if.then.i51.i:                                    ; preds = %dsi_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_base, align 4
  %add.ptr.i5.i48.i = getelementptr i8, ptr %46, i32 176
  tail call void @msm_writel(i32 noundef %call.i.i45.i, ptr noundef %add.ptr.i5.i48.i) #8
  %err_work_state.i49.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 30
  %47 = ptrtoint ptr %err_work_state.i49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %err_work_state.i49.i, align 4
  %or.i50.i = or i32 %48, 2
  store i32 %or.i50.i, ptr %err_work_state.i49.i, align 4
  br label %dsi_error.exit

dsi_error.exit:                                   ; preds = %if.then.i51.i, %dsi_status.exit.i.dsi_error.exit_crit_edge
  %workqueue.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 33
  %49 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %workqueue.i, align 4
  %err_work.i = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %err_work.i) #8
  br label %if.end9

if.end9:                                          ; preds = %dsi_error.exit, %do.body1.if.end9_crit_edge
  %and10 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %video_comp = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 26
  tail call void @complete(ptr noundef %video_comp) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %and14 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dma_comp = getelementptr inbounds %struct.msm_dsi_host, ptr %ptr, i32 0, i32 25
  tail call void @complete(ptr noundef %dma_comp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_err_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %err_work_state = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %err_work_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err_work_state, align 4
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @dsi_err_worker._rs, ptr noundef nonnull @__func__.dsi_err_worker) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @__func__.dsi_err_worker, i32 noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_base.i.i = getelementptr i8, ptr %work, i32 -548
  %2 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i.i, align 4
  %call.i.i = tail call i32 @msm_readl(ptr noundef %3) #8
  %and.i = and i32 %call.i.i, -2
  %4 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i.i, align 4
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %add.ptr.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !407
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %9, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i20.i) #8
  tail call void @msleep(i32 noundef 20) #8
  %10 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i22.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_base.i.i, align 4
  tail call void @msm_writel(i32 noundef %call.i.i, ptr noundef %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @arm_heavy_mb() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %err_work_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %err_work_state, align 4
  %intr_lock.i = getelementptr i8, ptr %work, i32 -48
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i) #8
  %ctrl_base.i.i11 = getelementptr i8, ptr %work, i32 -548
  %15 = ptrtoint ptr %ctrl_base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_base.i.i11, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %16, i32 268
  %call.i.i13 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i12) #8
  %or.i = or i32 %call.i.i13, 33554432
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %or.i, i32 noundef 1) #8
  %17 = ptrtoint ptr %ctrl_base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_base.i.i11, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %18, i32 268
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i16.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_hpd_worker(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -600
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_destroy(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  %dev1.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dsi_tx_buf_free.exit_crit_edge, label %if.end.i

entry.dsi_tx_buf_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_tx_buf_free.exit

if.end.i:                                         ; preds = %entry
  %tx_gem_obj.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 34
  %2 = ptrtoint ptr %tx_gem_obj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_gem_obj.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %aspace.i = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aspace.i, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %3, ptr noundef %9) #8
  %10 = ptrtoint ptr %tx_gem_obj.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_gem_obj.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then3.i.drm_gem_object_put.exit.i_crit_edge, label %if.then.i.i

if.then3.i.drm_gem_object_put.exit.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit.i

if.then.i.i:                                      ; preds = %if.then3.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !410
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #8, !srcloc !411
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !403

if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #8
  br label %drm_gem_object_put.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !412
  tail call void @drm_gem_object_free(ptr noundef nonnull %11) #8
  br label %drm_gem_object_put.exit.i

drm_gem_object_put.exit.i:                        ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.drm_gem_object_put.exit.i_crit_edge, %if.then3.i.drm_gem_object_put.exit.i_crit_edge
  %13 = ptrtoint ptr %tx_gem_obj.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tx_gem_obj.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %drm_gem_object_put.exit.i, %if.end.i.if.end7.i_crit_edge
  %tx_buf.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 35
  %14 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %15, null
  br i1 %tobool8.not.i, label %if.end7.i.dsi_tx_buf_free.exit_crit_edge, label %if.then9.i

if.end7.i.dsi_tx_buf_free.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_tx_buf_free.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10.i, align 4
  %tx_size.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 37
  %18 = ptrtoint ptr %tx_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_size.i, align 4
  %tx_buf_paddr.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 36
  %20 = ptrtoint ptr %tx_buf_paddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_buf_paddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #8
  br label %dsi_tx_buf_free.exit

dsi_tx_buf_free.exit:                             ; preds = %if.then9.i, %if.end7.i.dsi_tx_buf_free.exit_crit_edge, %entry.dsi_tx_buf_free.exit_crit_edge
  %workqueue = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 33
  %22 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %workqueue, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %dsi_tx_buf_free.exit.if.end_crit_edge, label %if.then

dsi_tx_buf_free.exit.if.end_crit_edge:            ; preds = %dsi_tx_buf_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %dsi_tx_buf_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @destroy_workqueue(ptr noundef nonnull %23) #8
  %24 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %workqueue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dsi_tx_buf_free.exit.if.end_crit_edge
  %cmd_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 28
  tail call void @mutex_destroy(ptr noundef %cmd_mutex) #8
  %dev_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 27
  tail call void @mutex_destroy(ptr noundef %dev_mutex) #8
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_modeset_init(ptr noundef %host, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %dev2 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %ops = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %tx_buf_alloc = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %tx_buf_alloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_buf_alloc, align 4
  %call3 = tail call i32 %6(ptr noundef %host, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_register(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 50
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %host, align 4
  %ops = getelementptr inbounds %struct.mipi_dsi_host, ptr %host, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dsi_host_ops, ptr %ops, align 4
  %call2 = tail call i32 @mipi_dsi_host_register(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %registered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_unregister(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 50
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #8
  %2 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %host, align 4
  %ops = getelementptr inbounds %struct.mipi_dsi_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ops, align 4
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %registered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_xfer_prepare(ptr noundef %host, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %ops = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 %7(ptr noundef %host) #8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %link_clk_enable = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %link_clk_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_clk_enable, align 4
  %call5 = tail call i32 %11(ptr noundef %host) #8
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_base.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 56
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %and.i = and i32 %call.i.i, -67108865
  %17 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %18, i32 56
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %add.ptr.i5.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl_base.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_base.i, align 4
  %call.i19 = tail call i32 @msm_readl(ptr noundef %20) #8
  %dma_cmd_ctrl_restore = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 49
  %21 = ptrtoint ptr %dma_cmd_ctrl_restore to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i19, ptr %dma_cmd_ctrl_restore, align 4
  %or8 = or i32 %call.i19, 5
  %22 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_base.i, align 4
  tail call void @msm_writel(i32 noundef %or8, ptr noundef %23) #8
  %intr_lock.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 29
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i) #8
  %24 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %25, i32 268
  %call.i.i23 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i22) #8
  %or.i = or i32 %call.i.i23, 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %or.i, i32 noundef 1) #8
  %26 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %27, i32 268
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i16.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_xfer_restore(ptr noundef %host, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %intr_lock.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 29
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i) #8
  %ctrl_base.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 268
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %and.i = and i32 %call.i.i, -3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %and.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %5, i32 268
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %add.ptr.i16.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i, i32 noundef %call2.i) #8
  %dma_cmd_ctrl_restore = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 49
  %6 = ptrtoint ptr %dma_cmd_ctrl_restore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_cmd_ctrl_restore, align 4
  %8 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base.i.i, align 4
  tail call void @msm_writel(i32 noundef %7, ptr noundef %9) #8
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %14, i32 56
  %call.i.i11 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i10) #8
  %data.0.i = or i32 %call.i.i11, 67108864
  %15 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %16, i32 56
  tail call void @msm_writel(i32 noundef %data.0.i, ptr noundef %add.ptr.i5.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %link_clk_disable = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %link_clk_disable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link_clk_disable, align 4
  tail call void %20(ptr noundef %host) #8
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_cmd_tx(ptr noundef %host, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @dsi_cmds2buf_tx(ptr noundef %host, ptr noundef %msg)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsi_cmds2buf_tx(ptr noundef %msm_host, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  %dma_base.i = alloca i64, align 8
  %packet.i = alloca %struct.mipi_dsi_packet, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 40
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %format = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 44
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.selectcmp.i = icmp eq i32 %5, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 18, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %switch.selectcmp3.i = icmp eq i32 %5, 3
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 16, i32 %switch.select.i
  %mul = mul nuw nsw i32 %switch.select4.i, %conv
  %div41 = lshr i32 %mul, 3
  %cfg_hnd1.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 24
  %6 = ptrtoint ptr %cfg_hnd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_hnd1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet.i) #8
  %8 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet.i, i32 0, i32 1, i32 1
  %10 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet.i, i32 0, i32 1, i32 2
  %11 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet.i, i32 0, i32 3
  %13 = call ptr @memset(ptr %packet.i, i32 255, i32 16)
  %call.i = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %packet.i, ptr noundef %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.197, i32 noundef %call.i) #11
  br label %dsi_cmd_dma_add.exit.thread

if.end.i:                                         ; preds = %entry
  %14 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %packet.i, align 4
  %add.i = add i32 %15, 3
  %and.i = and i32 %add.i, -4
  %tx_size.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 37
  %16 = ptrtoint ptr %tx_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %17)
  %cmp.i = icmp sgt i32 %and.i, %17
  br i1 %cmp.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.197) #11
  br label %dsi_cmd_dma_add.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %tx_buf_get.i = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %tx_buf_get.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_buf_get.i, align 4
  %call10.i = call ptr %21(ptr noundef %msm_host) #8
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then12.i, label %if.end19.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call10.i to i32
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.197, i32 noundef %22) #11
  br label %dsi_cmd_dma_add.exit

if.end19.i:                                       ; preds = %if.end9.i
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %9, align 1
  %25 = ptrtoint ptr %call10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %call10.i, align 1
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %10, align 2
  %arrayidx23.i = getelementptr i8, ptr %call10.i, i32 1
  %28 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx23.i, align 1
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %8, align 4
  %arrayidx26.i = getelementptr i8, ptr %call10.i, i32 2
  %31 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx26.i, align 1
  %arrayidx27.i = getelementptr i8, ptr %call10.i, i32 3
  %32 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -128, ptr %arrayidx27.i, align 1
  %type.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type.i, align 1
  %call28.i = call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %34) #8
  br i1 %call28.i, label %if.then29.i, label %if.end19.i.if.end32.i_crit_edge

if.end19.i.if.end32.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx27.i, align 1
  %37 = or i8 %36, 64
  store i8 %37, ptr %arrayidx27.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end19.i.if.end32.i_crit_edge
  %rx_buf.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %38 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf.i, align 4
  %tobool33.not.i = icmp eq ptr %39, null
  br i1 %tobool33.not.i, label %if.end32.i.if.end40.i_crit_edge, label %land.lhs.true.i

if.end32.i.if.end40.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %if.end32.i
  %rx_len.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %40 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool34.not.i = icmp eq i32 %41, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.if.end40.i_crit_edge, label %if.then35.i

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx27.i, align 1
  %44 = or i8 %43, 32
  store i8 %44, ptr %arrayidx27.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %land.lhs.true.i.if.end40.i_crit_edge, %if.end32.i.if.end40.i_crit_edge
  %45 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %12, align 4
  %tobool41.not.i = icmp eq ptr %46, null
  br i1 %tobool41.not.i, label %if.end40.i.if.end47.i_crit_edge, label %land.lhs.true42.i

if.end40.i.if.end47.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

land.lhs.true42.i:                                ; preds = %if.end40.i
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool43.not.i = icmp eq i32 %48, 0
  br i1 %tobool43.not.i, label %land.lhs.true42.i.if.end47.i_crit_edge, label %if.then44.i

land.lhs.true42.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %call10.i, i32 4
  %49 = call ptr @memcpy(ptr %add.ptr.i, ptr %46, i32 %48)
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %land.lhs.true42.i.if.end47.i_crit_edge, %if.end40.i.if.end47.i_crit_edge
  %50 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %packet.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %51)
  %cmp49.i = icmp ugt i32 %and.i, %51
  br i1 %cmp49.i, label %if.then51.i, label %if.end47.i.if.end55.i_crit_edge

if.end47.i.if.end55.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr53.i = getelementptr i8, ptr %call10.i, i32 %51
  %sub.i = sub i32 %and.i, %51
  %52 = call ptr @memset(ptr %add.ptr53.i, i32 255, i32 %sub.i)
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then51.i, %if.end47.i.if.end55.i_crit_edge
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %tx_buf_put.i = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %tx_buf_put.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_buf_put.i, align 4
  %tobool57.not.i = icmp eq ptr %56, null
  br i1 %tobool57.not.i, label %if.end55.i.dsi_cmd_dma_add.exit_crit_edge, label %if.then58.i

if.end55.i.dsi_cmd_dma_add.exit_crit_edge:        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_cmd_dma_add.exit

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %56(ptr noundef %msm_host) #8
  br label %dsi_cmd_dma_add.exit

dsi_cmd_dma_add.exit.thread:                      ; preds = %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end6.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet.i) #8
  br label %if.end

dsi_cmd_dma_add.exit:                             ; preds = %if.then58.i, %if.end55.i.dsi_cmd_dma_add.exit_crit_edge, %if.then12.i
  %retval.0.i = phi i32 [ %22, %if.then12.i ], [ %and.i, %if.then58.i ], [ %and.i, %if.end55.i.dsi_cmd_dma_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %do.end, label %dsi_cmd_dma_add.exit.if.end_crit_edge

dsi_cmd_dma_add.exit.if.end_crit_edge:            ; preds = %dsi_cmd_dma_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %dsi_cmd_dma_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type, align 1
  %conv2 = zext i8 %58 to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189, i32 noundef %conv2) #11
  br label %cleanup

if.end:                                           ; preds = %dsi_cmd_dma_add.exit.if.end_crit_edge, %dsi_cmd_dma_add.exit.thread
  %retval.0.i54 = phi i32 [ %retval.0.i.ph, %dsi_cmd_dma_add.exit.thread ], [ %retval.0.i, %dsi_cmd_dma_add.exit.if.end_crit_edge ]
  %mode_flags = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 45
  %59 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode_flags, align 4
  %and = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i54, i32 %div41)
  %cmp = icmp sgt i32 %retval.0.i54, %div41
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.189, i32 noundef %retval.0.i54) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %61 = ptrtoint ptr %cfg_hnd1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg_hnd1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_base.i) #8
  %63 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %dma_base.i, align 8, !annotation !405
  %ops.i43 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %62, i32 0, i32 3
  %64 = ptrtoint ptr %ops.i43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i43, align 4
  %dma_base_get.i = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %dma_base_get.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_base_get.i, align 4
  %call.i44 = call i32 %67(ptr noundef %msm_host, ptr noundef nonnull %dma_base.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %do.end.i47

do.end.i47:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef %call.i44) #11
  br label %dsi_cmd_dma_tx.exit

if.end.i48:                                       ; preds = %if.end12
  %dma_comp.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 25
  %68 = ptrtoint ptr %dma_comp.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %dma_comp.i, align 4
  %69 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode_flags, align 4
  %and.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i48.dsi_wait4video_eng_busy.exit.i_crit_edge, label %if.end.i.i

if.end.i48.dsi_wait4video_eng_busy.exit.i_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_wait4video_eng_busy.exit.i

if.end.i.i:                                       ; preds = %if.end.i48
  %power_on.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 51
  %71 = ptrtoint ptr %power_on.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %power_on.i.i, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.dsi_wait4video_eng_busy.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.dsi_wait4video_eng_busy.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_wait4video_eng_busy.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %enabled.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 52
  %73 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %enabled.i.i, align 2, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool2.not.i.i = icmp eq i8 %74, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.dsi_wait4video_eng_busy.exit.i_crit_edge, label %if.then3.i.i

land.lhs.true.i.i.dsi_wait4video_eng_busy.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_wait4video_eng_busy.exit.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %pdev.i.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 1
  %75 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i.i.i, align 4
  %intr_lock.i.i.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 29
  %call2.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i.i.i.i) #8
  %ctrl_base.i.i.i.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 4
  %77 = ptrtoint ptr %ctrl_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctrl_base.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %78, i32 268
  %call.i.i.i.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i.i.i.i.i) #8
  %or.i.i.i.i = or i32 %call.i.i.i.i.i, 131072
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %or.i.i.i.i, i32 noundef 1) #8
  %79 = ptrtoint ptr %ctrl_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl_base.i.i.i.i.i, align 4
  %add.ptr.i16.i.i.i.i = getelementptr i8, ptr %80, i32 268
  call void @msm_writel(i32 noundef %or.i.i.i.i, ptr noundef %add.ptr.i16.i.i.i.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i.i.i.i, i32 noundef %call2.i.i.i.i) #8
  %video_comp.i.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 26
  %81 = ptrtoint ptr %video_comp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %video_comp.i.i.i, align 4
  %call3.i.i.i = call i32 @wait_for_completion_timeout(ptr noundef %video_comp.i.i.i, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then3.i.i.dsi_wait4video_done.exit.i.i_crit_edge

if.then3.i.i.dsi_wait4video_done.exit.i.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_wait4video_done.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.207) #8
  br label %dsi_wait4video_done.exit.i.i

dsi_wait4video_done.exit.i.i:                     ; preds = %if.then.i.i.i, %if.then3.i.i.dsi_wait4video_done.exit.i.i_crit_edge
  %call2.i9.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i.i.i.i) #8
  %82 = ptrtoint ptr %ctrl_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctrl_base.i.i.i.i.i, align 4
  %add.ptr.i.i11.i.i.i = getelementptr i8, ptr %83, i32 268
  %call.i.i12.i.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i.i11.i.i.i) #8
  %and.i14.i.i.i = and i32 %call.i.i12.i.i.i, -131073
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %and.i14.i.i.i, i32 noundef 0) #8
  %84 = ptrtoint ptr %ctrl_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctrl_base.i.i.i.i.i, align 4
  %add.ptr.i16.i15.i.i.i = getelementptr i8, ptr %85, i32 268
  call void @msm_writel(i32 noundef %and.i14.i.i.i, ptr noundef %add.ptr.i16.i15.i.i.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i.i.i.i, i32 noundef %call2.i9.i.i.i) #8
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  br label %dsi_wait4video_eng_busy.exit.i

dsi_wait4video_eng_busy.exit.i:                   ; preds = %dsi_wait4video_done.exit.i.i, %land.lhs.true.i.i.dsi_wait4video_eng_busy.exit.i_crit_edge, %if.end.i.i.dsi_wait4video_eng_busy.exit.i_crit_edge, %if.end.i48.dsi_wait4video_eng_busy.exit.i_crit_edge
  %id.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 3
  %86 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id.i, align 4
  %88 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %dma_base.i, align 8
  %conv.i = trunc i64 %89 to i32
  %call3.i = call zeroext i1 @msm_dsi_manager_cmd_xfer_trigger(i32 noundef %87, i32 noundef %conv.i, i32 noundef %retval.0.i54) #8
  br i1 %call3.i, label %if.then5.i, label %dsi_cmd_dma_tx.exit.thread

dsi_cmd_dma_tx.exit.thread:                       ; preds = %dsi_wait4video_eng_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_base.i) #8
  br label %cleanup

if.then5.i:                                       ; preds = %dsi_wait4video_eng_busy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i49 = call i32 @wait_for_completion_timeout(ptr noundef %dma_comp.i, i32 noundef 20) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.206, i32 noundef %call8.i49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i49)
  %cmp.i50 = icmp eq i32 %call8.i49, 0
  %.len.i = select i1 %cmp.i50, i32 -110, i32 %retval.0.i54
  br label %dsi_cmd_dma_tx.exit

dsi_cmd_dma_tx.exit:                              ; preds = %if.then5.i, %do.end.i47
  %retval.0.i51 = phi i32 [ %call.i44, %do.end.i47 ], [ %.len.i, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_base.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i51, i32 %retval.0.i54)
  %cmp14 = icmp slt i32 %retval.0.i51, %retval.0.i54
  br i1 %cmp14, label %do.end19, label %dsi_cmd_dma_tx.exit.cleanup_crit_edge

dsi_cmd_dma_tx.exit.cleanup_crit_edge:            ; preds = %dsi_cmd_dma_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %dsi_cmd_dma_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %type21 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %90 = ptrtoint ptr %type21 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %type21, align 1
  %conv22 = zext i8 %91 to i32
  %tx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %92 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_buf, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %conv23 = zext i8 %95 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.189, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %retval.0.i54) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %dsi_cmd_dma_tx.exit.cleanup_crit_edge, %dsi_cmd_dma_tx.exit.thread, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -70, %do.end19 ], [ -22, %do.end ], [ %retval.0.i54, %dsi_cmd_dma_tx.exit.cleanup_crit_edge ], [ %retval.0.i54, %dsi_cmd_dma_tx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_cmd_rx(ptr noundef %host, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca [16 x i8], align 4
  %tx = alloca [2 x i8], align 1
  %max_pkt_size_msg = alloca %struct.mipi_dsi_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %2 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp slt i32 %3, 3
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 10)
  %rx_byte.0 = select i1 %cmp, i32 4, i32 16
  %pkt_size.1 = select i1 %cmp, i32 %3, i32 %4
  %data_byte.0 = select i1 %cmp, i32 -1, i32 10
  %rx_buf = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 38
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %7 = getelementptr inbounds [2 x i8], ptr %tx, i32 0, i32 1
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %max_pkt_size_msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %max_pkt_size_msg, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %max_pkt_size_msg, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %max_pkt_size_msg, i32 0, i32 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %max_pkt_size_msg, i32 0, i32 5
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %max_pkt_size_msg, i32 0, i32 6
  %minor = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 1
  %ctrl_base.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %tx_len29 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %shr39.i = lshr exact i32 %rx_byte.0, 2
  %i.035.i = add nsw i32 %shr39.i, -1
  %mul.i.i = shl nsw i32 %i.035.i, 2
  %add.i.i = add nsw i32 %mul.i.i, 104
  %incdec.ptr.i = getelementptr inbounds i32, ptr %reg.i, i32 1
  %add.i.i.1 = or i32 %rx_byte.0, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.035.i)
  %cmp10.i.1 = icmp ugt i32 %i.035.i, 1
  %incdec.ptr.i.1 = getelementptr inbounds i32, ptr %reg.i, i32 2
  %i.035.i.2 = add nsw i32 %shr39.i, -3
  %mul.i.i.2 = shl nsw i32 %i.035.i.2, 2
  %add.i.i.2 = add nsw i32 %mul.i.i.2, 104
  %incdec.ptr.i.2 = getelementptr inbounds i32, ptr %reg.i, i32 3
  %add.i.i.3 = add nuw nsw i32 %rx_byte.0, 88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.035.i.2)
  %cmp10.i.3 = icmp ugt i32 %i.035.i.2, 1
  %incdec.ptr.i.3 = getelementptr inbounds i32, ptr %reg.i, i32 4
  %add.i.i.4 = add nuw nsw i32 %rx_byte.0, 84
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry
  %data_byte.1225 = phi i32 [ %data_byte.0, %entry ], [ %data_byte.3, %cleanup.while.body_crit_edge ]
  %buf.0224 = phi ptr [ %6, %entry ], [ %buf.2, %cleanup.while.body_crit_edge ]
  %rlen.0223 = phi i32 [ %3, %entry ], [ %rlen.1, %cleanup.while.body_crit_edge ]
  %pkt_size.2222 = phi i32 [ %pkt_size.1, %entry ], [ %pkt_size.5, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx) #8
  %conv = trunc i32 %pkt_size.2222 to i8
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %tx, align 1
  %15 = lshr i32 %pkt_size.2222, 8
  %conv6 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %max_pkt_size_msg) #8
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msg, align 4
  %19 = ptrtoint ptr %max_pkt_size_msg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %max_pkt_size_msg, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 55, ptr %8, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %9, align 2
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %10, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx, ptr %11, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %12, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %13, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.105, i32 noundef %rlen.0223, i32 noundef %pkt_size.2222, i32 noundef %rx_byte.0) #8
  %call10 = call fastcc i32 @dsi_cmds2buf_tx(ptr noundef %host, ptr noundef nonnull %max_pkt_size_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 2
  br i1 %cmp11, label %do.end, label %if.end15

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef %call10) #11
  br label %cleanup.thread

if.end15:                                         ; preds = %while.body
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp16 = icmp eq i32 %27, 3
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.end27_crit_edge

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end15
  %28 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268500991, i32 %29)
  %cmp18 = icmp ugt i32 %29, 268500991
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 464
  call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %33, i32 464
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i165) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  call void @arm_heavy_mb() #8
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %land.lhs.true.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %call28 = call fastcc i32 @dsi_cmds2buf_tx(ptr noundef %host, ptr noundef %msg)
  %34 = ptrtoint ptr %tx_len29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_len29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %35)
  %cmp30 = icmp ult i32 %call28, %35
  br i1 %cmp30, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, i32 noundef %call28) #11
  br label %cleanup.thread

if.end38:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg.i) #8
  %36 = call ptr @memset(ptr %reg.i, i32 255, i32 16)
  %37 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_buf, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %buf.0224 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %add3.i = add i32 %pkt_size.2222, 6
  %read_cnt.0.i = select i1 %cmp, i32 4, i32 %add3.i
  %39 = add i32 %sub.ptr.lhs.cast.i, 16
  %40 = add i32 %read_cnt.0.i, %sub.ptr.rhs.cast.i
  %sub7.i = sub i32 %39, %40
  %41 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %add.i.i
  %call.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i.i, ptr %reg.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.208, i32 noundef %call.i.i, i32 noundef %call.i.i) #8
  br i1 %cmp, label %if.end38.for.cond12.preheader.i_crit_edge, label %for.body.i.1

if.end38.for.cond12.preheader.i_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.body.i.4, %for.body.i.2.for.cond12.preheader.i_crit_edge, %for.body.i.1.for.cond12.preheader.i_crit_edge, %if.end38.for.cond12.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %read_cnt.0.i)
  %cmp5.i = icmp ugt i32 %read_cnt.0.i, 16
  %repeated_bytes.0.i = select i1 %cmp5.i, i32 %sub7.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %repeated_bytes.0.i)
  %cmp1336.i = icmp slt i32 %repeated_bytes.0.i, 16
  br i1 %cmp1336.i, label %dsi_cmd_dma_rx.exit, label %dsi_cmd_dma_rx.exit.thread

dsi_cmd_dma_rx.exit.thread:                       ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i) #8
  br label %cleanup.thread

for.body.i.1:                                     ; preds = %if.end38
  %44 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %45, i32 %add.i.i.1
  %call.i.i.1 = call i32 @msm_readl(ptr noundef %add.ptr.i.i.1) #8
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i.i.1, ptr %incdec.ptr.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.208, i32 noundef %call.i.i.1, i32 noundef %call.i.i.1) #8
  br i1 %cmp10.i.1, label %for.body.i.2, label %for.body.i.1.for.cond12.preheader.i_crit_edge

for.body.i.1.for.cond12.preheader.i_crit_edge:    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %47 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %48, i32 %add.i.i.2
  %call.i.i.2 = call i32 @msm_readl(ptr noundef %add.ptr.i.i.2) #8
  %49 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i.i.2, ptr %incdec.ptr.i.1, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.208, i32 noundef %call.i.i.2, i32 noundef %call.i.i.2) #8
  %50 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %51, i32 %add.i.i.3
  %call.i.i.3 = call i32 @msm_readl(ptr noundef %add.ptr.i.i.3) #8
  %52 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i.i.3, ptr %incdec.ptr.i.2, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.208, i32 noundef %call.i.i.3, i32 noundef %call.i.i.3) #8
  br i1 %cmp10.i.3, label %for.body.i.4, label %for.body.i.2.for.cond12.preheader.i_crit_edge

for.body.i.2.for.cond12.preheader.i_crit_edge:    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

for.body.i.4:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %54, i32 %add.i.i.4
  %call.i.i.4 = call i32 @msm_readl(ptr noundef %add.ptr.i.i.4) #8
  %55 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i.i.4, ptr %incdec.ptr.i.3, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.208, i32 noundef %call.i.i.4, i32 noundef %call.i.i.4) #8
  br label %for.cond12.preheader.i

dsi_cmd_dma_rx.exit:                              ; preds = %for.cond12.preheader.i
  %uglygep.i = getelementptr i8, ptr %reg.i, i32 %repeated_bytes.0.i
  %56 = sub i32 16, %repeated_bytes.0.i
  %57 = call ptr @memcpy(ptr %buf.0224, ptr %uglygep.i, i32 %56)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp40 = icmp slt i32 %56, 1
  br i1 %cmp40, label %dsi_cmd_dma_rx.exit.cleanup.thread_crit_edge, label %if.end43

dsi_cmd_dma_rx.exit.cleanup.thread_crit_edge:     ; preds = %dsi_cmd_dma_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end43:                                         ; preds = %dsi_cmd_dma_rx.exit
  br i1 %cmp, label %while.end.thread, label %if.end46

while.end.thread:                                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %max_pkt_size_msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx) #8
  br label %if.else74

if.end46:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_cmp4(i32 %data_byte.1225, i32 %rlen.0223)
  %cmp47.not = icmp slt i32 %data_byte.1225, %rlen.0223
  %not.cmp47.not = xor i1 %cmp47.not, true
  %end.1 = zext i1 %not.cmp47.not to i32
  %sub51 = select i1 %cmp47.not, i32 %data_byte.1225, i32 0
  %rlen.1 = sub i32 %rlen.0223, %sub51
  br i1 %cmp47.not, label %if.then54, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %sub56 = sub i32 14, %repeated_bytes.0.i
  %add.ptr = getelementptr i8, ptr %buf.0224, i32 %sub56
  %58 = call i32 @llvm.smin.i32(i32 %rlen.1, i32 14)
  %pkt_size.3 = add i32 %58, %pkt_size.2222
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.111, ptr noundef %add.ptr, i32 noundef %sub56, i32 noundef 0) #8
  br label %cleanup

cleanup.thread:                                   ; preds = %dsi_cmd_dma_rx.exit.cleanup.thread_crit_edge, %dsi_cmd_dma_rx.exit.thread, %do.end35, %do.end
  %retval.1.ph = phi i32 [ 0, %dsi_cmd_dma_rx.exit.thread ], [ %call28, %do.end35 ], [ -22, %do.end ], [ 0, %dsi_cmd_dma_rx.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %max_pkt_size_msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx) #8
  br label %cleanup94

cleanup:                                          ; preds = %if.then54, %if.end46.cleanup_crit_edge
  %end.2 = phi i32 [ 0, %if.then54 ], [ %end.1, %if.end46.cleanup_crit_edge ]
  %pkt_size.5 = phi i32 [ %pkt_size.3, %if.then54 ], [ %pkt_size.2222, %if.end46.cleanup_crit_edge ]
  %buf.2 = phi ptr [ %add.ptr, %if.then54 ], [ %buf.0224, %if.end46.cleanup_crit_edge ]
  %data_byte.3 = phi i32 [ 14, %if.then54 ], [ %data_byte.1225, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %max_pkt_size_msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx) #8
  %tobool.not = icmp eq i32 %end.2, 0
  br i1 %tobool.not, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %pkt_size.5)
  %cmp66 = icmp sgt i32 %pkt_size.5, 9
  br i1 %cmp66, label %while.end.if.else74_crit_edge, label %if.then70

while.end.if.else74_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else74

if.then70:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_buf, align 4
  %sub72 = sub i32 10, %rlen.1
  %add.ptr73 = getelementptr i8, ptr %60, i32 %sub72
  br label %if.end76

if.else74:                                        ; preds = %while.end.if.else74_crit_edge, %while.end.thread
  %61 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_buf, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then70
  %buf.3 = phi ptr [ %62, %if.else74 ], [ %add.ptr73, %if.then70 ]
  %63 = ptrtoint ptr %buf.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %buf.3, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %64, label %do.end91 [
    i8 2, label %do.end80
    i8 17, label %if.end76.sw.bb83_crit_edge
    i8 33, label %if.end76.sw.bb83_crit_edge271
    i8 18, label %if.end76.sw.bb85_crit_edge
    i8 34, label %if.end76.sw.bb85_crit_edge272
    i8 26, label %if.end76.sw.bb87_crit_edge
    i8 28, label %if.end76.sw.bb87_crit_edge273
  ]

if.end76.sw.bb87_crit_edge273:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb87

if.end76.sw.bb87_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb87

if.end76.sw.bb85_crit_edge272:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end76.sw.bb85_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb85

if.end76.sw.bb83_crit_edge271:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb83

if.end76.sw.bb83_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb83

do.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.107) #11
  br label %cleanup94

sw.bb83:                                          ; preds = %if.end76.sw.bb83_crit_edge, %if.end76.sw.bb83_crit_edge271
  %rx_buf.i166 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %66 = ptrtoint ptr %rx_buf.i166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_buf.i166, align 4
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %sw.bb83.do.end.i_crit_edge, label %land.lhs.true.i

sw.bb83.do.end.i_crit_edge:                       ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %sw.bb83
  %68 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.not.i = icmp eq i32 %69, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %buf.3, i32 1
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i, align 1
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %67, align 1
  br label %cleanup94

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %sw.bb83.do.end.i_crit_edge
  %73 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_len, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef %74) #11
  br label %cleanup94

sw.bb85:                                          ; preds = %if.end76.sw.bb85_crit_edge, %if.end76.sw.bb85_crit_edge272
  %rx_buf.i167 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %75 = ptrtoint ptr %rx_buf.i167 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_buf.i167, align 4
  %tobool.not.i168 = icmp eq ptr %76, null
  br i1 %tobool.not.i168, label %sw.bb85.do.end.i174_crit_edge, label %land.lhs.true.i170

sw.bb85.do.end.i174_crit_edge:                    ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i174

land.lhs.true.i170:                               ; preds = %sw.bb85
  %77 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i = icmp ugt i32 %78, 1
  br i1 %cmp.i, label %if.then.i172, label %land.lhs.true.i170.do.end.i174_crit_edge

land.lhs.true.i170.do.end.i174_crit_edge:         ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i174

if.then.i172:                                     ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i171 = getelementptr i8, ptr %buf.3, i32 1
  %79 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i171, align 1
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %76, align 1
  %arrayidx2.i = getelementptr i8, ptr %buf.3, i32 2
  %82 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %76, i32 1
  %84 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx3.i, align 1
  br label %cleanup94

do.end.i174:                                      ; preds = %land.lhs.true.i170.do.end.i174_crit_edge, %sw.bb85.do.end.i174_crit_edge
  %85 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_len, align 4
  %call.i173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.211, i32 noundef %86) #11
  br label %cleanup94

sw.bb87:                                          ; preds = %if.end76.sw.bb87_crit_edge, %if.end76.sw.bb87_crit_edge273
  %rx_buf.i176 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %87 = ptrtoint ptr %rx_buf.i176 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_buf.i176, align 4
  %tobool.not.i177 = icmp eq ptr %88, null
  br i1 %tobool.not.i177, label %sw.bb87.dsi_long_read_resp.exit_crit_edge, label %land.lhs.true.i179

sw.bb87.dsi_long_read_resp.exit_crit_edge:        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_long_read_resp.exit

land.lhs.true.i179:                               ; preds = %sw.bb87
  %89 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool1.not.i = icmp eq i32 %90, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i179.dsi_long_read_resp.exit_crit_edge, label %if.then.i181

land.lhs.true.i179.dsi_long_read_resp.exit_crit_edge: ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_long_read_resp.exit

if.then.i181:                                     ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i180 = getelementptr i8, ptr %buf.3, i32 4
  %91 = call ptr @memcpy(ptr %88, ptr %add.ptr.i180, i32 %90)
  br label %dsi_long_read_resp.exit

dsi_long_read_resp.exit:                          ; preds = %if.then.i181, %land.lhs.true.i179.dsi_long_read_resp.exit_crit_edge, %sw.bb87.dsi_long_read_resp.exit_crit_edge
  %92 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_len, align 4
  br label %cleanup94

do.end91:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.107) #11
  br label %cleanup94

cleanup94:                                        ; preds = %do.end91, %dsi_long_read_resp.exit, %do.end.i174, %if.then.i172, %do.end.i, %if.then.i, %do.end80, %cleanup.thread
  %retval.2 = phi i32 [ 0, %do.end91 ], [ %93, %dsi_long_read_resp.exit ], [ 0, %do.end80 ], [ %retval.1.ph, %cleanup.thread ], [ 1, %if.then.i ], [ -22, %do.end.i ], [ 2, %if.then.i172 ], [ -22, %do.end.i174 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_cmd_xfer_commit(ptr nocapture noundef readonly %host, i32 noundef %dma_base, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  tail call void @msm_writel(i32 noundef %dma_base, ptr noundef %add.ptr.i) #8
  %2 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 72
  tail call void @msm_writel(i32 noundef %len, ptr noundef %add.ptr.i4) #8
  %4 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 140
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msm_dsi_host_set_phy_mode(ptr nocapture noundef writeonly %host, ptr nocapture noundef readonly %src_phy) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_phy, ptr %src_phy, i32 0, i32 16
  %0 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cphy_mode, align 1, !range !402
  %cphy_mode1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 48
  %2 = ptrtoint ptr %cphy_mode1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %cphy_mode1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_reset_phy(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  %ctrl_base.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 296
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  tail call void @arm_heavy_mb() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  %3 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %4, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_get_phy_clk_req(ptr noundef %host, ptr nocapture noundef writeonly %clk_req, i1 noundef zeroext %is_bonded_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %ops = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %calc_clk_rate = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %calc_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %calc_clk_rate, align 4
  %call2 = tail call i32 %5(ptr noundef %host, i1 noundef zeroext %is_bonded_dsi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 48
  %6 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cphy_mode, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %byte_clk_rate7 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 15
  %8 = ptrtoint ptr %byte_clk_rate7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %byte_clk_rate7, align 4
  %mul8 = shl i32 %9, 3
  %mul = mul i32 %9, 7
  %storemerge = select i1 %tobool5.not, i32 %mul8, i32 %mul
  %10 = ptrtoint ptr %clk_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %clk_req, align 4
  %esc_clk_rate = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 17
  %11 = ptrtoint ptr %esc_clk_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %esc_clk_rate, align 4
  %escclk_rate = getelementptr inbounds %struct.msm_dsi_phy_clk_request, ptr %clk_req, i32 0, i32 1
  %13 = ptrtoint ptr %escclk_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %escclk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_enable_irq(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 53
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_disable_irq(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 53
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_enable(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call fastcc void @dsi_op_mode_config(ptr noundef %host, i1 noundef zeroext %tobool, i1 noundef zeroext true)
  %enabled = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 52
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_op_mode_config(ptr noundef %msm_host, i1 noundef zeroext %video_mode, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base.i, align 4
  %call.i = tail call i32 @msm_readl(ptr noundef %1) #8
  br i1 %enable, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call.i, -8
  %intr_lock.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 29
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i) #8
  %2 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 268
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %and.i = and i32 %call.i.i, -131585
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %and.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %5, i32 268
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %add.ptr.i16.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i, i32 noundef %call2.i) #8
  br label %if.end7

if.else:                                          ; preds = %entry
  br i1 %video_mode, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call.i, 2
  br label %if.end

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or5 = or i32 %call.i, 4
  %intr_lock.i15 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 29
  %call2.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i15) #8
  %6 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %7, i32 268
  %call.i.i19 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i18) #8
  %or.i20 = or i32 %call.i.i19, 512
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %or.i20, i32 noundef 1) #8
  %8 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i16.i22 = getelementptr i8, ptr %9, i32 268
  tail call void @msm_writel(i32 noundef %or.i20, ptr noundef %add.ptr.i16.i22) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i15, i32 noundef %call2.i16) #8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %dsi_ctrl.0 = phi i32 [ %or, %if.then3 ], [ %or5, %if.else4 ]
  %or6 = or i32 %dsi_ctrl.0, 1
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %dsi_ctrl.1 = phi i32 [ %or6, %if.end ], [ %and, %if.then ]
  %10 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_base.i, align 4
  tail call void @msm_writel(i32 noundef %dsi_ctrl.1, ptr noundef %11) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_disable(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 52
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 2
  %ctrl_base.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl_base.i.i, align 4
  %call.i.i = tail call i32 @msm_readl(ptr noundef %2) #8
  %and.i = and i32 %call.i.i, -8
  %intr_lock.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 29
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i.i) #8
  %3 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 268
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #8
  %and.i.i = and i32 %call.i.i.i, -131585
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %and.i.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %6, i32 268
  tail call void @msm_writel(i32 noundef %and.i.i, ptr noundef %add.ptr.i16.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i.i, i32 noundef %call2.i.i) #8
  %7 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_base.i.i, align 4
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %8) #8
  %9 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %add.ptr.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i4.i) #8
  tail call void @msleep(i32 noundef 20) #8
  %13 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %14, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i6.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_power_on(ptr noundef %host, ptr nocapture noundef readonly %phy_shared_timings, i1 noundef zeroext %is_bonded_dsi, ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %dev_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #8
  %power_on = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 51
  %2 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_on, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.120) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sfpb.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 39
  %4 = ptrtoint ptr %sfpb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sfpb.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.msm_dsi_sfpb_config.exit_crit_edge, label %if.end.i

if.end.msm_dsi_sfpb_config.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_dsi_sfpb_config.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef 88, i32 noundef 6144, i32 noundef 6144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %msm_dsi_sfpb_config.exit

msm_dsi_sfpb_config.exit:                         ; preds = %if.end.i, %if.end.msm_dsi_sfpb_config.exit_crit_edge
  %supplies.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 6
  %6 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_hnd1, align 4
  %cfg.i = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 4
  %reg_cfg.i = getelementptr inbounds %struct.msm_dsi_config, ptr %9, i32 0, i32 1
  %regs1.i = getelementptr inbounds %struct.msm_dsi_config, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %reg_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_cfg.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp62.i = icmp sgt i32 %11, 0
  br i1 %cmp62.i, label %msm_dsi_sfpb_config.exit.for.body.i_crit_edge, label %msm_dsi_sfpb_config.exit.for.end.i_crit_edge

msm_dsi_sfpb_config.exit.for.end.i_crit_edge:     ; preds = %msm_dsi_sfpb_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

msm_dsi_sfpb_config.exit.for.body.i_crit_edge:    ; preds = %msm_dsi_sfpb_config.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %msm_dsi_sfpb_config.exit.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %msm_dsi_sfpb_config.exit.for.body.i_crit_edge ]
  %enable_load.i = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.063.i, i32 1
  %12 = ptrtoint ptr %enable_load.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp7.i = icmp sgt i32 %13, -1
  br i1 %cmp7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.063.i, i32 1
  %14 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %consumer.i, align 4
  %call.i = tail call i32 @regulator_set_load(ptr noundef %15, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %do.end.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %i.063.i, i32 noundef %call.i) #11
  br label %fail.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %msm_dsi_sfpb_config.exit.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %msm_dsi_sfpb_config.exit.for.end.i_crit_edge ], [ %11, %for.inc.i.for.end.i_crit_edge ]
  %call15.i = tail call i32 @regulator_bulk_enable(i32 noundef %11, ptr noundef %supplies.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end6

do.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %call15.i) #11
  br label %fail.i

fail.i:                                           ; preds = %do.end20.i, %do.end.i
  %i.061.i = phi i32 [ %i.063.i, %do.end.i ], [ %i.0.lcssa.i, %do.end20.i ]
  %ret.0.i = phi i32 [ %call.i, %do.end.i ], [ %call15.i, %do.end20.i ]
  %i.165.i = add i32 %i.061.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.165.i)
  %cmp2566.i = icmp sgt i32 %i.165.i, -1
  br i1 %cmp2566.i, label %fail.i.for.body26.i_crit_edge, label %fail.i.do.end_crit_edge

fail.i.do.end_crit_edge:                          ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

fail.i.for.body26.i_crit_edge:                    ; preds = %fail.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %fail.i.for.body26.i_crit_edge
  %i.167.i = phi i32 [ %i.1.i, %for.body26.i.for.body26.i_crit_edge ], [ %i.165.i, %fail.i.for.body26.i_crit_edge ]
  %consumer28.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.167.i, i32 1
  %16 = ptrtoint ptr %consumer28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %consumer28.i, align 4
  %disable_load.i = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.167.i, i32 2
  %18 = ptrtoint ptr %disable_load.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %disable_load.i, align 4
  %call30.i = tail call i32 @regulator_set_load(ptr noundef %17, i32 noundef %19) #8
  %i.1.i = add nsw i32 %i.167.i, -1
  %cmp25.not.i = icmp eq i32 %i.167.i, 0
  br i1 %cmp25.not.i, label %for.body26.i.do.end_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i

for.body26.i.do.end_crit_edge:                    ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.body26.i.do.end_crit_edge, %fail.i.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %ret.0.i) #11
  br label %cleanup

if.end6:                                          ; preds = %for.end.i
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %call.i75 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %ops = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call8 = tail call i32 %25(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.end6.do.end18_crit_edge

if.end6.do.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end13:                                         ; preds = %if.end6
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %link_clk_enable = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %link_clk_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link_clk_enable, align 4
  %call12 = tail call i32 %29(ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end21, label %if.end13.do.end18_crit_edge

if.end13.do.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %if.end13.do.end18_crit_edge, %if.end6.do.end18_crit_edge
  %ret.0102 = phi i32 [ %call12, %if.end13.do.end18_crit_edge ], [ %call8, %if.end6.do.end18_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, i32 noundef %ret.0102) #11
  br label %fail_disable_reg

if.end21:                                         ; preds = %if.end13
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %call24 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.122, i32 noundef %call24) #11
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %link_clk_disable = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %link_clk_disable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link_clk_disable, align 4
  tail call void %35(ptr noundef %host) #8
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %call.i76 = tail call i32 @__pm_runtime_idle(ptr noundef %dev42, i32 noundef 5) #8
  br label %fail_disable_reg

if.end32:                                         ; preds = %if.end21
  %mode1.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 40
  %38 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mode1.i, align 4
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %41 to i32
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 9
  %42 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vtotal.i, align 4
  %conv2.i = zext i16 %43 to i32
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hsync_end.i, align 4
  %conv3.i = zext i16 %45 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 2
  %46 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hsync_start.i, align 2
  %conv4.i = zext i16 %47 to i32
  %sub.i = sub nsw i32 %conv3.i, %conv4.i
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 8
  %48 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vsync_end.i, align 2
  %conv5.i = zext i16 %49 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 7
  %50 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vsync_start.i, align 4
  %conv6.i = zext i16 %51 to i32
  %sub7.i = sub nsw i32 %conv5.i, %conv6.i
  %sub10.i = sub nsw i32 %conv.i, %conv4.i
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 1
  %52 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hdisplay.i, align 4
  %conv11.i = zext i16 %53 to i32
  %add.i = add nsw i32 %sub10.i, %conv11.i
  %sub14.i = sub nsw i32 %conv2.i, %conv6.i
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %39, i32 0, i32 6
  %54 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vdisplay.i, align 2
  %conv15.i = zext i16 %55 to i32
  %add16.i = add nsw i32 %sub14.i, %conv15.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  br i1 %is_bonded_dsi, label %if.then.i77, label %if.end32.if.end.i78_crit_edge

if.end32.if.end.i78_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i78

if.then.i77:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %div88.i = lshr i32 %conv.i, 1
  %div2089.i = lshr i32 %sub.i, 1
  %div2190.i = lshr i32 %sub10.i, 1
  %div2291.i = lshr i32 %add.i, 1
  %div2392.i = lshr i32 %conv11.i, 1
  br label %if.end.i78

if.end.i78:                                       ; preds = %if.then.i77, %if.end32.if.end.i78_crit_edge
  %h_total.0.i = phi i32 [ %div88.i, %if.then.i77 ], [ %conv.i, %if.end32.if.end.i78_crit_edge ]
  %hs_end.0.i = phi i32 [ %div2089.i, %if.then.i77 ], [ %sub.i, %if.end32.if.end.i78_crit_edge ]
  %ha_start.0.i = phi i32 [ %div2190.i, %if.then.i77 ], [ %sub10.i, %if.end32.if.end.i78_crit_edge ]
  %ha_end.0.i = phi i32 [ %div2291.i, %if.then.i77 ], [ %add.i, %if.end32.if.end.i78_crit_edge ]
  %hdisplay17.0.i = phi i32 [ %div2392.i, %if.then.i77 ], [ %conv11.i, %if.end32.if.end.i78_crit_edge ]
  %mode_flags.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 45
  %56 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode_flags.i, align 4
  %and.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %ha_start.0.i, 4095
  %shl.i.i = shl i32 %ha_end.0.i, 16
  %and.i93.i = and i32 %shl.i.i, 268369920
  %or.i = or i32 %and.i93.i, %and.i.i
  %ctrl_base.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %58 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 32
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i.i) #8
  %and.i94.i = and i32 %sub14.i, 4095
  %shl.i95.i = shl i32 %add16.i, 16
  %and.i96.i = and i32 %shl.i95.i, 268369920
  %or29.i = or i32 %and.i96.i, %and.i94.i
  %60 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %61, i32 36
  tail call void @msm_writel(i32 noundef %or29.i, ptr noundef %add.ptr.i98.i) #8
  %sub30.i = add nuw nsw i32 %h_total.0.i, 4095
  %and.i99.i = and i32 %sub30.i, 4095
  %sub32.i = shl nuw i32 %conv2.i, 16
  %shl.i100.i = add i32 %sub32.i, 268369920
  %and.i101.i = and i32 %shl.i100.i, 268369920
  %or34.i = or i32 %and.i99.i, %and.i101.i
  %62 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %63, i32 40
  tail call void @msm_writel(i32 noundef %or34.i, ptr noundef %add.ptr.i103.i) #8
  %shl.i104.i = shl i32 %hs_end.0.i, 16
  %and.i105.i = and i32 %shl.i104.i, 268369920
  %64 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %65, i32 44
  tail call void @msm_writel(i32 noundef %and.i105.i, ptr noundef %add.ptr.i107.i) #8
  %66 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %67, i32 48
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i109.i) #8
  %shl.i110.i = shl i32 %sub7.i, 16
  %and.i111.i = and i32 %shl.i110.i, 268369920
  br label %dsi_timing_setup.exit

if.else.i:                                        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  %format.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 44
  %68 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %switch.selectcmp.i.i = icmp eq i32 %69, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 18, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %switch.selectcmp3.i.i = icmp eq i32 %69, 3
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 16, i32 %switch.select.i.i
  %mul.i = shl nuw nsw i32 %hdisplay17.0.i, 13
  %70 = mul i32 %mul.i, %switch.select4.i.i
  %71 = add i32 %70, 65536
  %shl.i114.i = and i32 %71, -65536
  %channel.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 42
  %72 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channel.i, align 4
  %shl.i115.i = shl i32 %73, 8
  %and.i116.i = and i32 %shl.i115.i, 768
  %or46.i = or i32 %and.i116.i, %shl.i114.i
  %or48.i = or i32 %or46.i, 57
  %ctrl_base.i117.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %74 = ptrtoint ptr %ctrl_base.i117.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctrl_base.i117.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %75, i32 84
  tail call void @msm_writel(i32 noundef %or48.i, ptr noundef %add.ptr.i118.i) #8
  %and.i119.i = and i32 %hdisplay17.0.i, 4095
  %76 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vdisplay.i, align 2
  %conv51.i = zext i16 %77 to i32
  %shl.i120.i = shl nuw i32 %conv51.i, 16
  %and.i121.i = and i32 %shl.i120.i, 268369920
  %or53.i = or i32 %and.i121.i, %and.i119.i
  br label %dsi_timing_setup.exit

dsi_timing_setup.exit:                            ; preds = %if.else.i, %if.then25.i
  %ctrl_base.i117.sink.i = phi ptr [ %ctrl_base.i117.i, %if.else.i ], [ %ctrl_base.i.i, %if.then25.i ]
  %.sink124.i = phi i32 [ 88, %if.else.i ], [ 52, %if.then25.i ]
  %or53.sink.i = phi i32 [ %or53.i, %if.else.i ], [ %and.i111.i, %if.then25.i ]
  %78 = ptrtoint ptr %ctrl_base.i117.sink.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl_base.i117.sink.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %79, i32 %.sink124.i
  tail call void @msm_writel(i32 noundef %or53.sink.i, ptr noundef %add.ptr.i123.i) #8
  %ctrl_base.i.i79 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %80 = ptrtoint ptr %ctrl_base.i.i79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctrl_base.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %81, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %add.ptr.i.i80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %ctrl_base.i.i79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctrl_base.i.i79, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %83, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i4.i) #8
  tail call void @msleep(i32 noundef 20) #8
  %84 = ptrtoint ptr %ctrl_base.i.i79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctrl_base.i.i79, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %85, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i6.i) #8
  tail call fastcc void @dsi_ctrl_config(ptr noundef %host, i1 noundef zeroext true, ptr noundef %phy_shared_timings, ptr noundef %phy)
  %disp_en_gpio = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 22
  %86 = ptrtoint ptr %disp_en_gpio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %disp_en_gpio, align 4
  %tobool34.not = icmp eq ptr %87, null
  br i1 %tobool34.not, label %dsi_timing_setup.exit.if.end37_crit_edge, label %if.then35

dsi_timing_setup.exit.if.end37_crit_edge:         ; preds = %dsi_timing_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %dsi_timing_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %87, i32 noundef 1) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %dsi_timing_setup.exit.if.end37_crit_edge
  %88 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %power_on, align 1
  br label %cleanup

fail_disable_reg:                                 ; preds = %do.end29, %do.end18
  %ret.1 = phi i32 [ %ret.0102, %do.end18 ], [ %call24, %do.end29 ]
  %89 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg_hnd1, align 4
  %cfg.i83 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %cfg.i83 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i83, align 4
  %reg_cfg.i84 = getelementptr inbounds %struct.msm_dsi_config, ptr %92, i32 0, i32 1
  %regs1.i85 = getelementptr inbounds %struct.msm_dsi_config, ptr %92, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %reg_cfg.i84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg_cfg.i84, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  %i.021.i = add i32 %94, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.021.i)
  %cmp22.i = icmp sgt i32 %i.021.i, -1
  br i1 %cmp22.i, label %fail_disable_reg.for.body.i88_crit_edge, label %fail_disable_reg.dsi_host_regulator_disable.exit_crit_edge

fail_disable_reg.dsi_host_regulator_disable.exit_crit_edge: ; preds = %fail_disable_reg
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_regulator_disable.exit

fail_disable_reg.for.body.i88_crit_edge:          ; preds = %fail_disable_reg
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.inc.i92.for.body.i88_crit_edge, %fail_disable_reg.for.body.i88_crit_edge
  %i.023.i = phi i32 [ %i.0.i, %for.inc.i92.for.body.i88_crit_edge ], [ %i.021.i, %fail_disable_reg.for.body.i88_crit_edge ]
  %disable_load.i86 = getelementptr %struct.dsi_reg_entry, ptr %regs1.i85, i32 %i.023.i, i32 2
  %95 = ptrtoint ptr %disable_load.i86 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %disable_load.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp7.i87 = icmp sgt i32 %96, -1
  br i1 %cmp7.i87, label %if.then.i91, label %for.body.i88.for.inc.i92_crit_edge

for.body.i88.for.inc.i92_crit_edge:               ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i92

if.then.i91:                                      ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  %consumer.i89 = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.023.i, i32 1
  %97 = ptrtoint ptr %consumer.i89 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %consumer.i89, align 4
  %call.i90 = tail call i32 @regulator_set_load(ptr noundef %98, i32 noundef %96) #8
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %if.then.i91, %for.body.i88.for.inc.i92_crit_edge
  %i.0.i = add i32 %i.023.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i92.for.body.i88_crit_edge, label %for.inc.i92.dsi_host_regulator_disable.exit_crit_edge

for.inc.i92.dsi_host_regulator_disable.exit_crit_edge: ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_regulator_disable.exit

for.inc.i92.for.body.i88_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i88

dsi_host_regulator_disable.exit:                  ; preds = %for.inc.i92.dsi_host_regulator_disable.exit_crit_edge, %fail_disable_reg.dsi_host_regulator_disable.exit_crit_edge
  %call11.i = tail call i32 @regulator_bulk_disable(i32 noundef %94, ptr noundef %supplies.i) #8
  br label %cleanup

cleanup:                                          ; preds = %dsi_host_regulator_disable.exit, %if.end37, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end37 ], [ 0, %if.then ], [ %ret.0.i, %do.end ], [ %ret.1, %dsi_host_regulator_disable.exit ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_ctrl_config(ptr noundef %msm_host, i1 noundef zeroext %enable, ptr nocapture noundef readonly %phy_shared_timings, ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 45
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  %format = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 44
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 24
  %4 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_hnd1, align 4
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_base.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 4
  %6 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = shl i32 %1, 24
  %8 = and i32 %and4, 268435456
  %and8 = shl i32 %1, 19
  %9 = and i32 %and8, 16777216
  %and13 = shl i32 %1, 14
  %10 = and i32 %and13, 1048576
  %and18 = shl i32 %1, 9
  %11 = and i32 %and18, 65536
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %12 = shl i32 %1, 6
  %13 = and i32 %12, 256
  %.op = xor i32 %13, 256
  %shl.i = select i1 %tobool.not.i, i32 %.op, i32 512
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.mult = mul i32 %switch.tableidx, -16
  %switch.offset = add i32 %switch.idx.mult, 32
  %retval.0.i161 = select i1 %14, i32 %switch.offset, i32 48
  %channel = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 42
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 4
  %and.i164 = and i32 %16, 3
  %17 = or i32 %8, %9
  %18 = or i32 %17, %10
  %19 = or i32 %18, %11
  %or23 = or i32 %19, %shl.i
  %or25 = or i32 %or23, %retval.0.i161
  %or28 = or i32 %or25, %and.i164
  %or30 = or i32 %or28, 36864
  br label %if.end40

if.else:                                          ; preds = %if.end
  %switch.tableidx212 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx212)
  %20 = icmp ult i32 %switch.tableidx212, 3
  br i1 %20, label %switch.lookup211, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

switch.lookup211:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dsi_ctrl_config, i32 0, i32 %switch.tableidx212
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end40

if.end40:                                         ; preds = %switch.lookup211, %if.else.if.end40_crit_edge, %if.then3
  %.sink209 = phi i32 [ 12, %if.then3 ], [ 60, %if.else.if.end40_crit_edge ], [ 60, %switch.lookup211 ]
  %retval.0.i170.sink = phi i32 [ %or30, %if.then3 ], [ 8, %if.else.if.end40_crit_edge ], [ %switch.load, %switch.lookup211 ]
  %.sink207 = phi i32 [ 28, %if.then3 ], [ 64, %if.else.if.end40_crit_edge ], [ 64, %switch.lookup211 ]
  %.sink = phi i32 [ 0, %if.then3 ], [ 80940, %if.else.if.end40_crit_edge ], [ 80940, %switch.lookup211 ]
  %ctrl_base.i172 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 4
  %22 = ptrtoint ptr %ctrl_base.i172 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_base.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %23, i32 %.sink209
  tail call void @msm_writel(i32 noundef %retval.0.i170.sink, ptr noundef %add.ptr.i173) #8
  %24 = ptrtoint ptr %ctrl_base.i172 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_base.i172, align 4
  %add.ptr.i175 = getelementptr i8, ptr %25, i32 %.sink207
  tail call void @msm_writel(i32 noundef %.sink, ptr noundef %add.ptr.i175) #8
  %ctrl_base.i176 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 4
  %26 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %27, i32 56
  tail call void @msm_writel(i32 noundef 335544320, ptr noundef %add.ptr.i177) #8
  %channel46 = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 42
  %28 = ptrtoint ptr %channel46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel46, align 4
  %shl.i178 = shl i32 %29, 8
  %and.i179 = and i32 %shl.i178, 768
  %or48 = or i32 %and.i179, -2147483644
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp = icmp eq i32 %31, 3
  br i1 %cmp, label %land.lhs.true, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %minor = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268566527, i32 %33)
  %cmp49 = icmp ugt i32 %33, 268566527
  %or51 = or i32 %and.i179, -2147479548
  %spec.select157 = select i1 %cmp49, i32 %or51, i32 %or48
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true, %if.end40.if.end52_crit_edge
  %data.4 = phi i32 [ %or48, %if.end40.if.end52_crit_edge ], [ %spec.select157, %land.lhs.true ]
  %34 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i181 = getelementptr i8, ptr %35, i32 128
  tail call void @msm_writel(i32 noundef %data.4, ptr noundef %add.ptr.i181) #8
  %36 = ptrtoint ptr %phy_shared_timings to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_shared_timings, align 4
  %shl.i182 = shl i32 %37, 8
  %and.i183 = and i32 %shl.i182, 16128
  %clk_pre = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, ptr %phy_shared_timings, i32 0, i32 1
  %38 = ptrtoint ptr %clk_pre to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clk_pre, align 4
  %and.i184 = and i32 %39, 63
  %or55 = or i32 %and.i183, %and.i184
  %40 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i186 = getelementptr i8, ptr %41, i32 192
  tail call void @msm_writel(i32 noundef %or55, ptr noundef %add.ptr.i186) #8
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp57 = icmp eq i32 %43, 3
  br i1 %cmp57, label %land.lhs.true58, label %if.end52.if.end64_crit_edge

if.end52.if.end64_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true58:                                  ; preds = %if.end52
  %minor59 = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %minor59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %minor59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %45)
  %cmp60 = icmp ugt i32 %45, 268435456
  br i1 %cmp60, label %land.lhs.true61, label %land.lhs.true58.if.end64_crit_edge

land.lhs.true58.if.end64_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %clk_pre_inc_by_2 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, ptr %phy_shared_timings, i32 0, i32 2
  %46 = ptrtoint ptr %clk_pre_inc_by_2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %clk_pre_inc_by_2, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool62.not = icmp eq i8 %47, 0
  br i1 %tobool62.not, label %land.lhs.true61.if.end64_crit_edge, label %if.then63

land.lhs.true61.if.end64_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i188 = getelementptr i8, ptr %49, i32 380
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i188) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true61.if.end64_crit_edge, %land.lhs.true58.if.end64_crit_edge, %if.end52.if.end64_crit_edge
  %and65 = lshr i32 %1, 9
  %and65.lobit = and i32 %and65, 1
  %50 = xor i32 %and65.lobit, 1
  %51 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i190 = getelementptr i8, ptr %52, i32 200
  tail call void @msm_writel(i32 noundef %50, ptr noundef %add.ptr.i190) #8
  %53 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i192 = getelementptr i8, ptr %54, i32 264
  tail call void @msm_writel(i32 noundef 335495136, ptr noundef %add.ptr.i192) #8
  %intr_lock.i = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 29
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i) #8
  %55 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 268
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #8
  %or.i = or i32 %call.i.i, 33554432
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.187, i32 noundef %or.i, i32 noundef 1) #8
  %57 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %58, i32 268
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i16.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i, i32 noundef %call2.i) #8
  %59 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i195 = getelementptr i8, ptr %60, i32 280
  tail call void @msm_writel(i32 noundef 575, ptr noundef %add.ptr.i195) #8
  %lanes = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 43
  %61 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lanes, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.217, i32 noundef %62) #8
  %63 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lanes, align 4
  %shl = shl i32 16, %64
  %sub = add i32 %shl, -16
  %dlane_swap = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 46
  %65 = ptrtoint ptr %dlane_swap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dlane_swap, align 4
  %and.i196 = and i32 %66, 7
  %67 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i198 = getelementptr i8, ptr %68, i32 172
  tail call void @msm_writel(i32 noundef %and.i196, ptr noundef %add.ptr.i198) #8
  %and73 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end64.if.end83_crit_edge

if.end64.if.end83_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then75:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i200 = getelementptr i8, ptr %70, i32 168
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i200) #8
  %call78 = tail call zeroext i1 @msm_dsi_phy_set_continuous_clock(ptr noundef %phy, i1 noundef zeroext true) #8
  %and80 = and i32 %call.i, -285212673
  %spec.select159 = select i1 %call78, i32 %and80, i32 %call.i
  %or82 = or i32 %spec.select159, 268435456
  %71 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i202 = getelementptr i8, ptr %72, i32 168
  tail call void @msm_writel(i32 noundef %or82, ptr noundef %add.ptr.i202) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then75, %if.end64.if.end83_crit_edge
  %or84 = or i32 %sub, 257
  %73 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctrl_base.i176, align 4
  tail call void @msm_writel(i32 noundef %or84, ptr noundef %74) #8
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_host, ptr %msm_host, i32 0, i32 48
  %75 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cphy_mode, align 4, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool85.not = icmp eq i8 %76, 0
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %if.then86

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %ctrl_base.i176 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctrl_base.i176, align 4
  %add.ptr.i205 = getelementptr i8, ptr %78, i32 724
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i205) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end83.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_power_off(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg_hnd1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_hnd1, align 4
  %dev_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #8
  %power_on = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 51
  %2 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_on, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.129) #8
  br label %unlock_ret

if.end:                                           ; preds = %entry
  %ctrl_base.i.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i.i, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %5) #8
  %disp_en_gpio = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 22
  %6 = ptrtoint ptr %disp_en_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disp_en_gpio, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 0) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  %ops = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %link_clk_disable = getelementptr inbounds %struct.msm_dsi_host_cfg_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %link_clk_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_clk_disable, align 4
  tail call void %13(ptr noundef %host) #8
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev8, i32 noundef 5) #8
  %supplies.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 6
  %16 = ptrtoint ptr %cfg_hnd1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg_hnd1, align 4
  %cfg.i = getelementptr inbounds %struct.msm_dsi_cfg_handler, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 4
  %reg_cfg.i = getelementptr inbounds %struct.msm_dsi_config, ptr %19, i32 0, i32 1
  %regs1.i = getelementptr inbounds %struct.msm_dsi_config, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %reg_cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_cfg.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  %i.021.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.021.i)
  %cmp22.i = icmp sgt i32 %i.021.i, -1
  br i1 %cmp22.i, label %if.end5.for.body.i_crit_edge, label %if.end5.dsi_host_regulator_disable.exit_crit_edge

if.end5.dsi_host_regulator_disable.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_regulator_disable.exit

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.023.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.021.i, %if.end5.for.body.i_crit_edge ]
  %disable_load.i = getelementptr %struct.dsi_reg_entry, ptr %regs1.i, i32 %i.023.i, i32 2
  %22 = ptrtoint ptr %disable_load.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %disable_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp7.i = icmp sgt i32 %23, -1
  br i1 %cmp7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.023.i, i32 1
  %24 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %consumer.i, align 4
  %call.i24 = tail call i32 @regulator_set_load(ptr noundef %25, i32 noundef %23) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.023.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.dsi_host_regulator_disable.exit_crit_edge

for.inc.i.dsi_host_regulator_disable.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_regulator_disable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

dsi_host_regulator_disable.exit:                  ; preds = %for.inc.i.dsi_host_regulator_disable.exit_crit_edge, %if.end5.dsi_host_regulator_disable.exit_crit_edge
  %call11.i = tail call i32 @regulator_bulk_disable(i32 noundef %21, ptr noundef %supplies.i) #8
  %sfpb.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 39
  %26 = ptrtoint ptr %sfpb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sfpb.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %dsi_host_regulator_disable.exit.msm_dsi_sfpb_config.exit_crit_edge, label %if.end.i

dsi_host_regulator_disable.exit.msm_dsi_sfpb_config.exit_crit_edge: ; preds = %dsi_host_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_dsi_sfpb_config.exit

if.end.i:                                         ; preds = %dsi_host_regulator_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %27, i32 noundef 88, i32 noundef 6144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %msm_dsi_sfpb_config.exit

msm_dsi_sfpb_config.exit:                         ; preds = %if.end.i, %dsi_host_regulator_disable.exit.msm_dsi_sfpb_config.exit_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.130) #8
  %28 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %power_on, align 1
  br label %unlock_ret

unlock_ret:                                       ; preds = %msm_dsi_sfpb_config.exit, %if.then
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dsi_host_set_display_mode(ptr nocapture noundef %host, ptr noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 40
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @drm_mode_destroy(ptr noundef %3, ptr noundef nonnull %1) #8
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mode1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev4 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 2
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %call5 = tail call ptr @drm_mode_duplicate(ptr noundef %6, ptr noundef %mode) #8
  %7 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %mode1, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_host_get_panel(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_node = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 41
  %0 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_node, align 4
  %call1 = tail call ptr @of_drm_find_panel(ptr noundef %1) #8
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msm_dsi_host_get_mode_flags(ptr nocapture noundef readonly %host) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_host_get_bridge(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_node = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 41
  %0 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_node, align 4
  %call1 = tail call ptr @of_drm_find_bridge(ptr noundef %1) #8
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_snapshot(ptr noundef %disp_state, ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %ctrl_size = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_size, align 4
  %ctrl_base = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base, align 4
  %id = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %3, ptr noundef %5, ptr noundef nonnull @.str.133, i32 noundef %7) #8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev3, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dsi_host_test_pattern_en(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ctrl_base.i.i17 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %3, i32 344
  %call.i.i19 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i18) #8
  %4 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_base.i.i17, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i10.i = getelementptr i8, ptr %5, i32 352
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i10.i) #8
  %6 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %7, i32 408
  tail call void @msm_writel(i32 noundef 256, ptr noundef %add.ptr.i12.i) #8
  %8 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %9, i32 416
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr.i14.i) #8
  %or3.i = or i32 %call.i.i19, 48
  %10 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %11, i32 344
  tail call void @msm_writel(i32 noundef %or3.i, ptr noundef %add.ptr.i16.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.218) #8
  %12 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 344
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #8
  %or.c14 = or i32 %call.i, 1
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 360
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i7.i) #8
  %or.i = or i32 %call.i.i19, 768
  %14 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %15, i32 344
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i9.i) #8
  %16 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %17, i32 412
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr.i11.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.219) #8
  %18 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i21 = getelementptr i8, ptr %19, i32 344
  %call.i22 = tail call i32 @msm_readl(ptr noundef %add.ptr.i21) #8
  %or.c = or i32 %call.i22, 1
  %20 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i24 = getelementptr i8, ptr %21, i32 344
  tail call void @msm_writel(i32 noundef %or.c, ptr noundef %add.ptr.i24) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %.sink27 = phi i32 [ 344, %if.then ], [ 384, %if.else ]
  %or.c14.sink = phi i32 [ %or.c14, %if.then ], [ 1, %if.else ]
  %22 = ptrtoint ptr %ctrl_base.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_base.i.i17, align 4
  %add.ptr.i16 = getelementptr i8, ptr %23, i32 %.sink27
  tail call void @msm_writel(i32 noundef %or.c14.sink, ptr noundef %add.ptr.i16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dsi_cfg_get(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_host_attach(ptr noundef %host, ptr noundef %dsi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 8
  %num_data_lanes = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 47
  %2 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_data_lanes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 3
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %channel1 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 42
  %6 = ptrtoint ptr %channel1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %channel1, align 4
  %7 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lanes, align 8
  %lanes3 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 43
  %9 = ptrtoint ptr %lanes3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %lanes3, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %format4 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 44
  %12 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %format4, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %13 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode_flags, align 8
  %mode_flags5 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 45
  %15 = ptrtoint ptr %mode_flags5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mode_flags5, align 4
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.183, i32 noundef 3) #8
  %disp_en_gpio.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 22
  %16 = ptrtoint ptr %disp_en_gpio.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %disp_en_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.dsi_host_init_panel_gpios.exit_crit_edge, label %if.end.i

if.end.dsi_host_init_panel_gpios.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_init_panel_gpios.exit

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.185, i32 noundef 1) #8
  %te_gpio.i = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 23
  %17 = ptrtoint ptr %te_gpio.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %te_gpio.i, align 4
  %cmp.i24.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.end.i.dsi_host_init_panel_gpios.exit_crit_edge, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i.dsi_host_init_panel_gpios.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsi_host_init_panel_gpios.exit

dsi_host_init_panel_gpios.exit:                   ; preds = %if.end.i.dsi_host_init_panel_gpios.exit_crit_edge, %if.end.dsi_host_init_panel_gpios.exit_crit_edge
  %call7.sink.i = phi ptr [ %call.i, %if.end.dsi_host_init_panel_gpios.exit_crit_edge ], [ %call7.i, %if.end.i.dsi_host_init_panel_gpios.exit_crit_edge ]
  %.str.186.sink.i = phi ptr [ @.str.184, %if.end.dsi_host_init_panel_gpios.exit_crit_edge ], [ @.str.186, %if.end.i.dsi_host_init_panel_gpios.exit_crit_edge ]
  %te_gpio.sink.i = phi ptr [ %disp_en_gpio.i, %if.end.dsi_host_init_panel_gpios.exit_crit_edge ], [ %te_gpio.i, %if.end.i.dsi_host_init_panel_gpios.exit_crit_edge ]
  %18 = ptrtoint ptr %call7.sink.i to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %.str.186.sink.i, i32 noundef %18) #8
  %19 = ptrtoint ptr %te_gpio.sink.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %te_gpio.sink.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %dsi_host_init_panel_gpios.exit.if.end8_crit_edge, label %dsi_host_init_panel_gpios.exit.cleanup_crit_edge

dsi_host_init_panel_gpios.exit.cleanup_crit_edge: ; preds = %dsi_host_init_panel_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dsi_host_init_panel_gpios.exit.if.end8_crit_edge: ; preds = %dsi_host_init_panel_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %dsi_host_init_panel_gpios.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %call9 = tail call i32 @dsi_dev_attach(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %id = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.182, i32 noundef %25) #8
  %dev13 = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 2
  %26 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev13, align 4
  %tobool14.not = icmp eq ptr %27, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 33
  %28 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workqueue, align 4
  %hpd_work = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 32
  %call.i37 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %hpd_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %dsi_host_init_panel_gpios.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %21, %dsi_host_init_panel_gpios.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_host_detach(ptr noundef %host, ptr nocapture noundef readnone %dsi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  tail call void @dsi_dev_detach(ptr noundef %1) #8
  %device_node = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 41
  %2 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %device_node, align 4
  %id = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.182, i32 noundef %4) #8
  %dev = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 33
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  %hpd_work = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 32
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %hpd_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_host_transfer(ptr noundef %host, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %power_on = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 51
  %0 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on, align 1, !range !402
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_mutex = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #8
  %id = getelementptr inbounds %struct.msm_dsi_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call2 = tail call i32 @msm_dsi_manager_cmd_xfer(i32 noundef %3, ptr noundef nonnull %msg) #8
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_dev_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_dev_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_manager_cmd_xfer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_manager_cmd_xfer_trigger(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_phy_set_continuous_clock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !158, !160, !161, !163, !164, !166, !168, !170, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !218, !220, !221, !222, !223, !225, !227, !228, !229, !230, !232, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !274, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !290, !291, !292, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !310, !311, !313, !314, !315, !316, !317, !318, !320, !322, !324, !326, !328, !330, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !363, !365, !367, !369, !371, !372, !373, !374, !376, !377, !378, !380, !381, !382, !383, !385, !386, !387, !389, !391}
!llvm.module.flags = !{!393, !394, !395, !396, !397, !398, !399, !400}
!llvm.ident = !{!401}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 327, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 331, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dsi_clk_init_v2._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dsi_clk_init_v2._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 340, i32 3}
!10 = !{ptr @dsi_clk_init_v2._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dsi_clk_init_v2._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 348, i32 3}
!14 = !{ptr @dsi_clk_init_v2._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dsi_clk_init_v2._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 360, i32 46}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 363, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dsi_clk_init_6g_v2._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @dsi_clk_init_6g_v2._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 469, i32 2}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 475, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dsi_link_clk_set_rate_6g._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @dsi_link_clk_set_rate_6g._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 481, i32 3}
!32 = !{ptr @dsi_link_clk_set_rate_6g._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dsi_link_clk_set_rate_6g._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 494, i32 4}
!36 = !{ptr @dsi_link_clk_set_rate_6g._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dsi_link_clk_set_rate_6g._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 510, i32 3}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dsi_link_clk_enable_6g._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @dsi_link_clk_enable_6g._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 516, i32 3}
!45 = !{ptr @dsi_link_clk_enable_6g._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @dsi_link_clk_enable_6g._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 522, i32 3}
!49 = !{ptr @dsi_link_clk_enable_6g._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dsi_link_clk_enable_6g._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 528, i32 3}
!53 = !{ptr @dsi_link_clk_enable_6g._entry.30, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @dsi_link_clk_enable_6g._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 549, i32 2}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 555, i32 3}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dsi_link_clk_set_rate_v2._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @dsi_link_clk_set_rate_v2._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 561, i32 3}
!64 = !{ptr @dsi_link_clk_set_rate_v2._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dsi_link_clk_set_rate_v2._entry_ptr.38, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 567, i32 3}
!68 = !{ptr @dsi_link_clk_set_rate_v2._entry.39, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dsi_link_clk_set_rate_v2._entry_ptr.41, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @dsi_link_clk_set_rate_v2._entry.42, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 573, i32 3}
!72 = !{ptr @dsi_link_clk_set_rate_v2._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 586, i32 3}
!75 = !{ptr @dsi_link_clk_enable_v2._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @dsi_link_clk_enable_v2._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dsi_link_clk_enable_v2._entry.45, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 592, i32 3}
!79 = !{ptr @dsi_link_clk_enable_v2._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 598, i32 3}
!82 = !{ptr @dsi_link_clk_enable_v2._entry.47, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @dsi_link_clk_enable_v2._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @dsi_link_clk_enable_v2._entry.50, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 604, i32 3}
!86 = !{ptr @dsi_link_clk_enable_v2._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 686, i32 3}
!89 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dsi_calc_clk_rate_6g._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @dsi_calc_clk_rate_6g._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 737, i32 2}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1070, i32 48}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1812, i32 3}
!98 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @msm_dsi_host_init._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @msm_dsi_host_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1816, i32 47}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1816, i32 59}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1818, i32 3}
!107 = !{ptr @msm_dsi_host_init._entry.60, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @msm_dsi_host_init._entry_ptr.62, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1828, i32 3}
!111 = !{ptr @msm_dsi_host_init._entry.63, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @msm_dsi_host_init._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1835, i32 3}
!115 = !{ptr @msm_dsi_host_init._entry.66, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @msm_dsi_host_init._entry_ptr.68, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.70, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1844, i32 3}
!119 = !{ptr @msm_dsi_host_init._entry.69, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @msm_dsi_host_init._entry_ptr.71, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1850, i32 3}
!123 = !{ptr @msm_dsi_host_init._entry.72, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @msm_dsi_host_init._entry_ptr.74, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1857, i32 3}
!127 = !{ptr @msm_dsi_host_init._entry.75, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @msm_dsi_host_init._entry_ptr.77, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1861, i32 44}
!131 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1867, i32 3}
!133 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.82, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @msm_dsi_host_init._entry.79, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @msm_dsi_host_init._entry_ptr.83, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1874, i32 3}
!139 = !{ptr @msm_dsi_host_init._entry.84, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @msm_dsi_host_init._entry_ptr.86, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1881, i32 4}
!143 = !{ptr @.str.89, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1883, i32 3}
!145 = !{ptr @msm_dsi_host_init._entry.88, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @msm_dsi_host_init._entry_ptr.90, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @msm_dsi_host_init.__key, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1890, i32 2}
!149 = !{ptr @.str.91, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @msm_dsi_host_init.__key.92, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1891, i32 2}
!152 = !{ptr @.str.93, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @msm_dsi_host_init.__key.94, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1892, i32 2}
!155 = !{ptr @.str.95, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.96, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1895, i32 24}
!158 = !{ptr @msm_dsi_host_init.__key.97, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1896, i32 2}
!160 = !{ptr @.str.98, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @msm_dsi_host_init.__key.99, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1897, i32 2}
!163 = !{ptr @.str.100, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.101, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1901, i32 2}
!166 = !{ptr @.str.102, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1912, i32 2}
!168 = !{ptr @.str.103, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1935, i32 3}
!170 = !{ptr @.str.104, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @msm_dsi_host_modeset_init._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @msm_dsi_host_modeset_init._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.105, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2070, i32 3}
!175 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2075, i32 4}
!177 = !{ptr @.str.107, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @msm_dsi_host_cmd_rx._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @msm_dsi_host_cmd_rx._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.109, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2092, i32 4}
!182 = !{ptr @msm_dsi_host_cmd_rx._entry.108, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @msm_dsi_host_cmd_rx._entry_ptr.110, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.111, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2128, i32 4}
!186 = !{ptr @.str.113, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2146, i32 3}
!188 = !{ptr @msm_dsi_host_cmd_rx._entry.112, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @msm_dsi_host_cmd_rx._entry_ptr.114, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.116, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2162, i32 3}
!192 = !{ptr @msm_dsi_host_cmd_rx._entry.115, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @msm_dsi_host_cmd_rx._entry_ptr.117, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2213, i32 3}
!196 = !{ptr @.str.119, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @msm_dsi_host_get_phy_clk_req._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @msm_dsi_host_get_phy_clk_req._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.120, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2303, i32 3}
!201 = !{ptr @.str.121, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2311, i32 3}
!203 = !{ptr @.str.122, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @msm_dsi_host_power_on._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @msm_dsi_host_power_on._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.124, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2321, i32 3}
!208 = !{ptr @msm_dsi_host_power_on._entry.123, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @msm_dsi_host_power_on._entry_ptr.125, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.127, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2328, i32 3}
!212 = !{ptr @msm_dsi_host_power_on._entry.126, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @msm_dsi_host_power_on._entry_ptr.128, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.129, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2362, i32 3}
!216 = !{ptr @.str.130, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2380, i32 2}
!218 = !{ptr @.str.131, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2401, i32 3}
!220 = !{ptr @.str.132, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @msm_dsi_host_set_display_mode._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @msm_dsi_host_set_display_mode._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.133, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2432, i32 25}
!225 = !{ptr @.str.134, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 665, i32 3}
!227 = !{ptr @.str.135, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @dsi_calc_pclk._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @dsi_calc_pclk._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.136, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 678, i32 2}
!232 = !{ptr @.str.137, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1736, i32 3}
!234 = !{ptr @__func__.dsi_host_parse_dt, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.138, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1742, i32 3}
!237 = !{ptr @.str.139, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1751, i32 3}
!239 = !{ptr @.str.140, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1758, i32 32}
!241 = !{ptr @.str.141, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1762, i32 4}
!243 = !{ptr @.str.142, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1663, i32 30}
!245 = !{ptr @.str.143, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1665, i32 3}
!247 = !{ptr @.str.144, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1675, i32 3}
!249 = !{ptr @.str.145, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1684, i32 3}
!251 = !{ptr @.str.146, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1705, i32 5}
!253 = !{ptr @supported_data_lane_swaps, !254, !"supported_data_lane_swaps", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1644, i32 18}
!255 = !{ptr @.str.147, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 215, i32 40}
!257 = !{ptr @.str.148, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 217, i32 3}
!259 = !{ptr @.str.149, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @dsi_get_config._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @dsi_get_config._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.151, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 225, i32 3}
!264 = !{ptr @dsi_get_config._entry.150, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @dsi_get_config._entry_ptr.152, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.154, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 231, i32 3}
!268 = !{ptr @dsi_get_config._entry.153, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @dsi_get_config._entry_ptr.155, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.156, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 237, i32 2}
!272 = !{ptr @.str.157, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 314, i32 3}
!274 = !{ptr @.str.158, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @dsi_regulator_init._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @dsi_regulator_init._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.159, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 384, i32 3}
!279 = !{ptr @.str.160, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @dsi_clk_init._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @dsi_clk_init._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.162, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 392, i32 3}
!284 = !{ptr @dsi_clk_init._entry.161, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @dsi_clk_init._entry_ptr.163, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.164, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 398, i32 42}
!288 = !{ptr @.str.166, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 401, i32 3}
!290 = !{ptr @dsi_clk_init._entry.165, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @dsi_clk_init._entry_ptr.167, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.168, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 407, i32 40}
!294 = !{ptr @.str.170, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 410, i32 3}
!296 = !{ptr @dsi_clk_init._entry.169, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @dsi_clk_init._entry_ptr.171, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.173, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 419, i32 3}
!300 = !{ptr @dsi_clk_init._entry.172, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @dsi_clk_init._entry_ptr.174, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.176, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 426, i32 3}
!304 = !{ptr @dsi_clk_init._entry.175, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @dsi_clk_init._entry_ptr.177, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.178, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1534, i32 2}
!308 = !{ptr @init_completion.__key, !309, !"__key", i1 false, i1 false}
!309 = !{!"../include/linux/completion.h", i32 87, i32 2}
!310 = !{ptr @.str.179, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.180, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1411, i32 2}
!313 = !{ptr @dsi_err_worker._rs, !312, !"_rs", i1 false, i1 false}
!314 = !{ptr @__func__.dsi_err_worker, !312, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @dsi_err_worker._entry, !312, !"_entry", i1 false, i1 false}
!317 = !{ptr @dsi_err_worker._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @dsi_host_ops, !319, !"dsi_host_ops", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1632, i32 39}
!320 = !{ptr @.str.182, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1593, i32 2}
!322 = !{ptr @.str.183, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1552, i32 9}
!324 = !{ptr @.str.184, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1555, i32 3}
!326 = !{ptr @.str.185, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1560, i32 60}
!328 = !{ptr @.str.186, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1563, i32 3}
!330 = !{ptr @.str.187, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 756, i32 2}
!332 = !{ptr @.str.188, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1341, i32 3}
!334 = !{ptr @.str.189, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @dsi_cmds2buf_tx._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @dsi_cmds2buf_tx._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.191, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1356, i32 3}
!339 = !{ptr @dsi_cmds2buf_tx._entry.190, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @dsi_cmds2buf_tx._entry_ptr.192, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.194, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1363, i32 3}
!343 = !{ptr @dsi_cmds2buf_tx._entry.193, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @dsi_cmds2buf_tx._entry_ptr.195, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.196, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1146, i32 3}
!347 = !{ptr @.str.197, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @dsi_cmd_dma_add._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @dsi_cmd_dma_add._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.199, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1152, i32 3}
!352 = !{ptr @dsi_cmd_dma_add._entry.198, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @dsi_cmd_dma_add._entry_ptr.200, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.202, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1159, i32 3}
!356 = !{ptr @dsi_cmd_dma_add._entry.201, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @dsi_cmd_dma_add._entry_ptr.203, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.204, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1259, i32 3}
!360 = !{ptr @.str.205, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @dsi_cmd_dma_tx._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @dsi_cmd_dma_tx._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.206, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1272, i32 3}
!365 = !{ptr @.str.207, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1037, i32 3}
!367 = !{ptr @.str.208, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1323, i32 3}
!369 = !{ptr @.str.209, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1197, i32 3}
!371 = !{ptr @.str.210, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @dsi_short_read1_resp._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @dsi_short_read1_resp._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.211, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 1214, i32 3}
!376 = !{ptr @dsi_short_read2_resp._entry, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @dsi_short_read2_resp._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.212, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 281, i32 5}
!380 = !{ptr @.str.213, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @dsi_host_regulator_enable._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @dsi_host_regulator_enable._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.215, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 290, i32 3}
!385 = !{ptr @dsi_host_regulator_enable._entry.214, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @dsi_host_regulator_enable._entry_ptr.216, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.217, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 884, i32 2}
!389 = !{ptr @.str.218, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2455, i32 2}
!391 = !{ptr @.str.219, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/msm/dsi/dsi_host.c", i32 2474, i32 2}
!393 = !{i32 1, !"wchar_size", i32 2}
!394 = !{i32 1, !"min_enum_size", i32 4}
!395 = !{i32 8, !"branch-target-enforcement", i32 0}
!396 = !{i32 8, !"sign-return-address", i32 0}
!397 = !{i32 8, !"sign-return-address-all", i32 0}
!398 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!399 = !{i32 7, !"uwtable", i32 1}
!400 = !{i32 7, !"frame-pointer", i32 2}
!401 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!402 = !{i8 0, i8 2}
!403 = !{!"branch_weights", i32 2000, i32 1}
!404 = !{i64 2148692719, i64 2148692999, i64 2148693333, i64 2148693667}
!405 = !{!"auto-init"}
!406 = !{i64 2157684739}
!407 = !{i64 2157685180}
!408 = !{i64 2157685353}
!409 = !{i64 2157685512}
!410 = !{i64 2148391716}
!411 = !{i64 2148306180, i64 2148306212, i64 2148306241, i64 2148306275, i64 2148306306, i64 2148306329}
!412 = !{i64 2149833147}
!413 = !{i64 2157716419}
!414 = !{i64 2157716578}
!415 = !{i64 2157721638}
!416 = !{i64 2157721905}
!417 = !{i64 2157667852}
