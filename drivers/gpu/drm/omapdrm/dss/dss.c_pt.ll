; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/dss.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/dss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.dss_features = type { i32, i8, i32, i8, ptr, ptr, i32, ptr, ptr, %struct.dss_reg_field, i8 }
%struct.dss_reg_field = type { i8, i8 }
%struct.dss_ops = type { ptr, ptr }
%struct.dss_pll = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dss_pll_clock_info }
%struct.dss_pll_clock_info = type { i32, i32, [4 x i32], i16, i16, i32, [4 x i16], i16 }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.78, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon.78 = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dss_debugfs_entry = type { ptr, ptr, ptr }
%struct.dss_component_match_data = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.dss_pdata = type { ptr }

@dss_ctrl_pll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DSS: omapdss DSS error: illegal DSS PLL ID %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dss_ctrl_pll_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/omapdrm/dss/dss.c\00", [62 x i8] zeroinitializer }, align 32
@dss_ctrl_pll_enable._entry_ptr = internal global ptr @dss_ctrl_pll_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dss_sdi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013DSS: omapdss DSS error: PLL lock request timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dss_sdi_enable\00", [17 x i8] zeroinitializer }, align 32
@dss_sdi_enable._entry_ptr = internal global ptr @dss_sdi_enable._entry, section ".printk_index", align 4
@dss_sdi_enable._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DSS: omapdss DSS error: PLL lock timed out\0A\00", [50 x i8] zeroinitializer }, align 32
@dss_sdi_enable._entry_ptr.7 = internal global ptr @dss_sdi_enable._entry.5, section ".printk_index", align 4
@dss_sdi_enable._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DSS: omapdss DSS error: SDI reset timed out\0A\00", [49 x i8] zeroinitializer }, align 32
@dss_sdi_enable._entry_ptr.10 = internal global ptr @dss_sdi_enable._entry.8, section ".printk_index", align 4
@dss_generic_clk_source_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [32 x i8] zeroinitializer }, align 32
@dss_set_fck_rate.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dss_set_fck_rate\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set fck to %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSS: set fck to %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@dss_set_fck_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clk rate mismatch: %lu != %lu\00", [34 x i8] zeroinitializer }, align 32
@dss_runtime_get.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dss_runtime_get\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dss_runtime_get\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSS: dss_runtime_get\0A\00", [42 x i8] zeroinitializer }, align 32
@dss_runtime_put.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dss_runtime_put\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dss_runtime_put\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSS: dss_runtime_put\0A\00", [42 x i8] zeroinitializer }, align 32
@dss_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dss_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omapdss_dss\00", [20 x i8] zeroinitializer }, align 32
@dss_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-dss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap24xx_dss_feats }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3630_dss_feats }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap44xx_dss_feats }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-dss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap54xx_dss_feats }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-dss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7xx_dss_feats }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@dss_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dss_runtime_suspend, ptr @dss_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_dsshw_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dss_probe, ptr @dss_remove, ptr @dss_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.22, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dss_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dss_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@omap_dss_drivers = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @omap_dsshw_driver, ptr @omap_dispchw_driver, ptr @omap_dsihw_driver, ptr @omap_venchw_driver, ptr @omapdss_hdmi4hw_driver, ptr @omapdss_hdmi5hw_driver], [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCK\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL1:1\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL1:2\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL1:3\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL2:1\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL2:2\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL2:3\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI PLL\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1439, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set the DMA mask\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dss_probe._entry_ptr = internal global ptr @dss_probe._entry, section ".printk_index", align 4
@dss_soc_devices = internal constant { [4 x %struct.soc_device_attribute], [48 x i8] } { [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr @omap34xx_dss_feats, ptr null }, %struct.soc_device_attribute { ptr @.str.38, ptr null, ptr null, ptr null, ptr null, ptr @omap34xx_dss_feats, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.39, ptr null, ptr null, ptr null, ptr @am43xx_dss_feats, ptr null }, %struct.soc_device_attribute zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dss\00", [28 x i8] zeroinitializer }, align 32
@dss_component_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @dss_bind, ptr @dss_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OMAP3430/3530\00", [18 x i8] zeroinitializer }, align 32
@omap34xx_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 1, i8 16, i32 173000000, i8 2, ptr @.str.40, ptr @omap34xx_ports, i32 2, ptr @omap3430_dss_supported_outputs, ptr @dss_ops_omap2_omap3, %struct.dss_reg_field zeroinitializer, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM35??\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM43xx\00", [25 x i8] zeroinitializer }, align 32
@am43xx_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 1, i8 0, i32 200000000, i8 0, ptr null, ptr @omap2plus_ports, i32 1, ptr @am43xx_dss_supported_outputs, ptr @dss_ops_omap2_omap3, %struct.dss_reg_field zeroinitializer, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll4_ck\00", [23 x i8] zeroinitializer }, align 32
@omap34xx_ports = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 4], [24 x i8] zeroinitializer }, align 32
@omap3430_dss_supported_outputs = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 32], [24 x i8] zeroinitializer }, align 32
@dss_ops_omap2_omap3 = internal constant { %struct.dss_ops, [24 x i8] } { %struct.dss_ops { ptr @dss_dpi_select_source_omap2_omap3, ptr null }, [24 x i8] zeroinitializer }, align 32
@omap2plus_ports = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@am43xx_dss_supported_outputs = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@dss_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DSS: omapdss DSS error: can't get clock fck\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dss_get_clocks\00", [17 x i8] zeroinitializer }, align 32
@dss_get_clocks._entry_ptr = internal global ptr @dss_get_clocks._entry, section ".printk_index", align 4
@dss_get_clocks._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DSS: omapdss DSS error: Failed to get %s\0A\00", [52 x i8] zeroinitializer }, align 32
@dss_get_clocks._entry_ptr.46 = internal global ptr @dss_get_clocks._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syscon-pll-ctrl\00", [16 x i8] zeroinitializer }, align 32
@dss_video_pll_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1240, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get syscon-pll-ctrl regmap\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dss_video_pll_probe\00", [44 x i8] zeroinitializer }, align 32
@dss_video_pll_probe._entry_ptr = internal global ptr @dss_video_pll_probe._entry, section ".printk_index", align 4
@dss_video_pll_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1247, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get syscon-pll-ctrl offset\0A\00", [58 x i8] zeroinitializer }, align 32
@dss_video_pll_probe._entry_ptr.52 = internal global ptr @dss_video_pll_probe._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdda_video\00", [21 x i8] zeroinitializer }, align 32
@dss_video_pll_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013DSS: omapdss DSS error: can't get DPLL VDDA regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@dss_video_pll_probe._entry_ptr.56 = internal global ptr @dss_video_pll_probe._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@dss_probe_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016DSS: OMAP DSS rev %d.%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dss_probe_hardware\00", [45 x i8] zeroinitializer }, align 32
@dss_probe_hardware._entry_ptr = internal global ptr @dss_probe_hardware._entry, section ".printk_index", align 4
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdss\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"- DSS -\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s = %lu\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSS_REVISION\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSS_SYSCONFIG\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSS_SYSSTATUS\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSS_CONTROL\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSS_SDI_CONTROL\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSS_PLL_CONTROL\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSS_SDI_STATUS\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rfbi\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"target-module\00", [18 x i8] zeroinitializer }, align 32
@dss_shutdown.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 -120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dss_shutdown\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shutdown\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSS: shutdown\0A\00", [17 x i8] zeroinitializer }, align 32
@omap24xx_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 0, i8 6, i32 133000000, i8 2, ptr @.str.78, ptr @omap2plus_ports, i32 1, ptr @omap2_dss_supported_outputs, ptr @dss_ops_omap2_omap3, %struct.dss_reg_field zeroinitializer, i8 0 }, [56 x i8] zeroinitializer }, align 32
@omap3630_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 1, i8 31, i32 173000000, i8 1, ptr @.str.40, ptr @omap2plus_ports, i32 1, ptr @omap3630_dss_supported_outputs, ptr @dss_ops_omap2_omap3, %struct.dss_reg_field zeroinitializer, i8 0 }, [56 x i8] zeroinitializer }, align 32
@omap44xx_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 2, i8 32, i32 186000000, i8 1, ptr @.str.79, ptr @omap2plus_ports, i32 1, ptr @omap4_dss_supported_outputs, ptr @dss_ops_omap4, %struct.dss_reg_field { i8 9, i8 8 }, i8 1 }, [56 x i8] zeroinitializer }, align 32
@omap54xx_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 3, i8 64, i32 209250000, i8 1, ptr @.str.79, ptr @omap2plus_ports, i32 1, ptr @omap5_dss_supported_outputs, ptr @dss_ops_omap5, %struct.dss_reg_field { i8 9, i8 7 }, i8 1 }, [56 x i8] zeroinitializer }, align 32
@dra7xx_dss_feats = internal constant { %struct.dss_features, [56 x i8] } { %struct.dss_features { i32 4, i8 64, i32 209250000, i8 1, ptr @.str.79, ptr @dra7xx_ports, i32 3, ptr @omap5_dss_supported_outputs, ptr @dss_ops_dra7, %struct.dss_reg_field { i8 9, i8 7 }, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"core_ck\00", [24 x i8] zeroinitializer }, align 32
@omap2_dss_supported_outputs = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 32], [24 x i8] zeroinitializer }, align 32
@omap3630_dss_supported_outputs = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 11, i32 32], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_per_x2_ck\00", [17 x i8] zeroinitializer }, align 32
@omap4_dss_supported_outputs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 96, i32 19], [20 x i8] zeroinitializer }, align 32
@dss_ops_omap4 = internal constant { %struct.dss_ops, [24 x i8] } { %struct.dss_ops { ptr @dss_dpi_select_source_omap4, ptr @dss_lcd_clk_mux_omap4 }, [24 x i8] zeroinitializer }, align 32
@__const.dss_lcd_clk_mux_omap4.ctrl_bits = private unnamed_addr constant [3 x i8] c"\00\00\0C", align 1
@__const.dss_lcd_clk_mux_omap4.allowed_plls = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 4], align 4
@omap5_dss_supported_outputs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 27, i32 64, i32 11, i32 19], [16 x i8] zeroinitializer }, align 32
@dss_ops_omap5 = internal constant { %struct.dss_ops, [24 x i8] } { %struct.dss_ops { ptr @dss_dpi_select_source_omap5, ptr @dss_lcd_clk_mux_omap5 }, [24 x i8] zeroinitializer }, align 32
@__const.dss_lcd_clk_mux_omap5.allowed_plls = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 4], align 4
@dra7xx_ports = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@dss_ops_dra7 = internal constant { %struct.dss_ops, [24 x i8] } { %struct.dss_ops { ptr @dss_dpi_select_source_dra7xx, ptr @dss_lcd_clk_mux_dra7 }, [24 x i8] zeroinitializer }, align 32
@__const.dss_lcd_clk_mux_dra7.ctrl_bits = private unnamed_addr constant [4 x i8] c"\00\00\0C\13", align 1
@dss_ctrl_pll_set_control_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013DSS: omapdss DSS error: error in PLL mux config for LCD\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dss_ctrl_pll_set_control_mux\00", [35 x i8] zeroinitializer }, align 32
@dss_ctrl_pll_set_control_mux._entry_ptr = internal global ptr @dss_ctrl_pll_set_control_mux._entry, section ".printk_index", align 4
@dss_ctrl_pll_set_control_mux._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013DSS: omapdss DSS error: error in PLL mux config for LCD2\0A\00", [36 x i8] zeroinitializer }, align 32
@dss_ctrl_pll_set_control_mux._entry_ptr.84 = internal global ptr @dss_ctrl_pll_set_control_mux._entry.82, section ".printk_index", align 4
@dss_ctrl_pll_set_control_mux._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013DSS: omapdss DSS error: error in PLL mux config for LCD3\0A\00", [36 x i8] zeroinitializer }, align 32
@dss_ctrl_pll_set_control_mux._entry_ptr.87 = internal global ptr @dss_ctrl_pll_set_control_mux._entry.85, section ".printk_index", align 4
@dss_ctrl_pll_set_control_mux._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013DSS: omapdss DSS error: error in PLL mux config\0A\00", [45 x i8] zeroinitializer }, align 32
@dss_ctrl_pll_set_control_mux._entry_ptr.90 = internal global ptr @dss_ctrl_pll_set_control_mux._entry.88, section ".printk_index", align 4
@dss_save_context.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dss_save_context\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dss_save_context\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSS: dss_save_context\0A\00", [41 x i8] zeroinitializer }, align 32
@dss_save_context.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.91, ptr @.str.2, ptr @.str.94, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"context saved\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSS: context saved\0A\00", [44 x i8] zeroinitializer }, align 32
@dss_restore_context.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dss_restore_context\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dss_restore_context\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DSS: dss_restore_context\0A\00", [38 x i8] zeroinitializer }, align 32
@dss_restore_context.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.96, ptr @.str.2, ptr @.str.99, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"context restored\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSS: context restored\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_dispchw_driver = external dso_local global %struct.platform_driver, align 4
@omap_dsihw_driver = external dso_local global %struct.platform_driver, align 4
@omap_venchw_driver = external dso_local global %struct.platform_driver, align 4
@omapdss_hdmi4hw_driver = external dso_local global %struct.platform_driver, align 4
@omapdss_hdmi5hw_driver = external dso_local global %struct.platform_driver, align 4
@switch.table.dss_ctrl_pll_enable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.dss_dpi_select_source_omap5 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 65536, i32 0, i32 131072, i32 196608], [16 x i8] zeroinitializer }, align 32
@switch.table.dss_dpi_select_source_dra7xx = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 65536, i32 0, i32 131072, i32 196608], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 5]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967280]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967280]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967280]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967280]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 7]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 167, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 279, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 291, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 302, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [29 x i8] c"dss_generic_clk_source_names\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 83, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 646, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 654, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 858, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 872, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"dss_debug_fops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 916, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1616, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"dss_of_match\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1290, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"dss_pm_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1606, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"omap_dsshw_driver\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1611, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"omap_dss_drivers\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1624, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 84, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 85, i32 25 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 86, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 87, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 88, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 89, i32 25 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 90, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 91, i32 27 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1439, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [16 x i8] c"dss_soc_devices\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1300, i32 42 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1489, i32 50 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1491, i32 50 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"dss_component_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1342, i32 42 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1301, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"omap34xx_dss_feats\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1073, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1302, i32 15 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1303, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"am43xx_dss_feats\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1129, i32 34 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1078, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"omap34xx_ports\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 984, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant [31 x i8] c"omap3430_dss_supported_outputs\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1003, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c"dss_ops_omap2_omap3\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 961, i32 29 }
@___asan_gen_.285 = private unnamed_addr constant [16 x i8] c"omap2plus_ports\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 980, i32 37 }
@___asan_gen_.288 = private unnamed_addr constant [29 x i8] c"am43xx_dss_supported_outputs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1021, i32 38 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 824, i32 38 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 826, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 835, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1235, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1239, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1246, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1252, i32 49 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1265, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1270, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1270, i32 48 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1277, i32 48 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1415, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 889, i32 27 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 343, i32 16 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 348, i32 16 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 364, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 365, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 366, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 367, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 370, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 371, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 372, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1369, i32 28 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1378, i32 28 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1569, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [19 x i8] c"omap24xx_dss_feats\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1055, i32 34 }
@___asan_gen_.405 = private unnamed_addr constant [19 x i8] c"omap3630_dss_feats\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1087, i32 34 }
@___asan_gen_.408 = private unnamed_addr constant [19 x i8] c"omap44xx_dss_feats\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1101, i32 34 }
@___asan_gen_.411 = private unnamed_addr constant [19 x i8] c"omap54xx_dss_feats\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1115, i32 34 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"dra7xx_dss_feats\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1143, i32 34 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1064, i32 21 }
@___asan_gen_.420 = private unnamed_addr constant [28 x i8] c"omap2_dss_supported_outputs\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 995, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant [31 x i8] c"omap3630_dss_supported_outputs\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1012, i32 38 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1106, i32 21 }
@___asan_gen_.429 = private unnamed_addr constant [28 x i8] c"omap4_dss_supported_outputs\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1026, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [14 x i8] c"dss_ops_omap4\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 965, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant [28 x i8] c"omap5_dss_supported_outputs\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 1038, i32 38 }
@___asan_gen_.438 = private unnamed_addr constant [14 x i8] c"dss_ops_omap5\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 970, i32 29 }
@___asan_gen_.441 = private unnamed_addr constant [13 x i8] c"dra7xx_ports\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 989, i32 37 }
@___asan_gen_.444 = private unnamed_addr constant [13 x i8] c"dss_ops_dra7\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 975, i32 29 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 195, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 211, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 227, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 233, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 112, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 123, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 128, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.502 = private constant [37 x i8] c"../drivers/gpu/drm/omapdrm/dss/dss.c\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.502, i32 140, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [33 x i8] c"switch.table.dss_ctrl_pll_enable\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [41 x i8] c"switch.table.dss_dpi_select_source_omap5\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [42 x i8] c"switch.table.dss_dpi_select_source_dra7xx\00", align 1
@llvm.compiler.used = appending global [146 x ptr] [ptr @dss_ctrl_pll_enable._entry, ptr @dss_ctrl_pll_enable._entry_ptr, ptr @dss_ctrl_pll_set_control_mux._entry, ptr @dss_ctrl_pll_set_control_mux._entry.82, ptr @dss_ctrl_pll_set_control_mux._entry.85, ptr @dss_ctrl_pll_set_control_mux._entry.88, ptr @dss_ctrl_pll_set_control_mux._entry_ptr, ptr @dss_ctrl_pll_set_control_mux._entry_ptr.84, ptr @dss_ctrl_pll_set_control_mux._entry_ptr.87, ptr @dss_ctrl_pll_set_control_mux._entry_ptr.90, ptr @dss_get_clocks._entry, ptr @dss_get_clocks._entry.44, ptr @dss_get_clocks._entry_ptr, ptr @dss_get_clocks._entry_ptr.46, ptr @dss_probe._entry, ptr @dss_probe._entry_ptr, ptr @dss_probe_hardware._entry, ptr @dss_probe_hardware._entry_ptr, ptr @dss_sdi_enable._entry, ptr @dss_sdi_enable._entry.5, ptr @dss_sdi_enable._entry.8, ptr @dss_sdi_enable._entry_ptr, ptr @dss_sdi_enable._entry_ptr.10, ptr @dss_sdi_enable._entry_ptr.7, ptr @dss_video_pll_probe._entry, ptr @dss_video_pll_probe._entry.50, ptr @dss_video_pll_probe._entry.54, ptr @dss_video_pll_probe._entry_ptr, ptr @dss_video_pll_probe._entry_ptr.52, ptr @dss_video_pll_probe._entry_ptr.56, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @dss_generic_clk_source_names, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dss_debug_fops, ptr @.str.22, ptr @dss_of_match, ptr @dss_pm_ops, ptr @omap_dsshw_driver, ptr @omap_dss_drivers, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @dss_soc_devices, ptr @.str.35, ptr @.str.36, ptr @dss_component_ops, ptr @.str.37, ptr @omap34xx_dss_feats, ptr @.str.38, ptr @.str.39, ptr @am43xx_dss_feats, ptr @.str.40, ptr @omap34xx_ports, ptr @omap3430_dss_supported_outputs, ptr @dss_ops_omap2_omap3, ptr @omap2plus_ports, ptr @am43xx_dss_supported_outputs, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @omap24xx_dss_feats, ptr @omap3630_dss_feats, ptr @omap44xx_dss_feats, ptr @omap54xx_dss_feats, ptr @dra7xx_dss_feats, ptr @.str.78, ptr @omap2_dss_supported_outputs, ptr @omap3630_dss_supported_outputs, ptr @.str.79, ptr @omap4_dss_supported_outputs, ptr @dss_ops_omap4, ptr @omap5_dss_supported_outputs, ptr @dss_ops_omap5, ptr @dra7xx_ports, ptr @dss_ops_dra7, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @switch.table.dss_ctrl_pll_enable, ptr @switch.table.dss_dpi_select_source_omap5, ptr @switch.table.dss_dpi_select_source_dra7xx], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ctrl_pll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_sdi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_sdi_enable._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_sdi_enable._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_generic_clk_source_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dsshw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dss_drivers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_soc_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_ports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3430_dss_supported_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ops_omap2_omap3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2plus_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_dss_supported_outputs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_get_clocks._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_video_pll_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_video_pll_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_video_pll_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_probe_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap24xx_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3630_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap44xx_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap54xx_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_dss_feats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_dss_supported_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3630_dss_supported_outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_dss_supported_outputs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ops_omap4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_dss_supported_outputs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ops_omap5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xx_ports to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ops_dra7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ctrl_pll_set_control_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ctrl_pll_set_control_mux._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ctrl_pll_set_control_mux._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_ctrl_pll_set_control_mux._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dss_ctrl_pll_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dss_dpi_select_source_omap5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dss_dpi_select_source_dra7xx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_ctrl_pll_enable(ptr nocapture noundef readonly %pll, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dss = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 2
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %syscon_pll_ctrl = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %syscon_pll_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syscon_pll_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.dss_pll, ptr %pll, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5) #16
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lnot = xor i1 %enable, true
  %lnot.ext = zext i1 %lnot to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dss_ctrl_pll_enable, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %syscon_pll_ctrl_offset = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %syscon_pll_ctrl_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %syscon_pll_ctrl_offset, align 4
  %shl = shl nuw nsw i32 1, %switch.load
  %shl8 = shl nuw nsw i32 %lnot.ext, %switch.load
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %3, i32 noundef %9, i32 noundef %shl, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_sdi_init(ptr nocapture noundef readonly %dss, i32 noundef %datapairs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %datapairs, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %do.body3, label %do.end8, !prof !248

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/dss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 247, 0\0A.popsection", ""() #13, !srcloc !249
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %4, -1015824
  %sub = shl nuw nsw i32 %datapairs, 2
  %shl = add nuw nsw i32 %sub, 12
  %and10 = and i32 %shl, 12
  %or = or i32 %and10, %and
  %or13 = or i32 %or, 491522
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %or13) #13, !srcloc !251
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %8, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #13, !srcloc !250
  %and21 = and i32 %9, -63045631
  %or26 = or i32 %and21, 29383016
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %or26) #13, !srcloc !251
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_sdi_enable(ptr nocapture noundef readonly %dss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dispc = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 21
  %0 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc, align 4
  tail call void @dispc_pck_free_enable(ptr noundef %1, i1 noundef zeroext true) #13
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %or = or i32 %4, 262144
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %or) #13, !srcloc !251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #13
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %9, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #13, !srcloc !250
  %or11 = or i32 %10, 268435456
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %or11) #13, !srcloc !251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %13
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %15, i32 92
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #13, !srcloc !250
  %and18 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  br label %err1

while.end:                                        ; preds = %while.cond
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %19, i32 72
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #13, !srcloc !250
  %and26 = and i32 %20, -268435457
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %and26) #13, !srcloc !251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add30.neg = sub i32 -50, %23
  br label %while.cond31

while.cond31:                                     ; preds = %while.body38.while.cond31_crit_edge, %while.end
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %25, i32 92
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #13, !srcloc !250
  %and36 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %while.body38, label %while.end48

while.body38:                                     ; preds = %while.cond31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub39 = add i32 %add30.neg, %27
  %cmp40 = icmp sgt i32 %sub39, -1
  br i1 %cmp40, label %do.end44, label %while.body38.while.cond31_crit_edge

while.body38.while.cond31_crit_edge:              ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond31

do.end44:                                         ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %err1

while.end48:                                      ; preds = %while.cond31
  %28 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dispc, align 4
  tail call void @dispc_lcd_enable_signal(ptr noundef %29, i1 noundef zeroext true) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add51.neg = sub i32 -50, %30
  br label %while.cond52

while.cond52:                                     ; preds = %while.body60.while.cond52_crit_edge, %while.end48
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %32, i32 92
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #13, !srcloc !250
  %and57 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %while.body60, label %while.cond52.cleanup_crit_edge

while.cond52.cleanup_crit_edge:                   ; preds = %while.cond52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body60:                                     ; preds = %while.cond52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub61 = add i32 %add51.neg, %34
  %cmp62 = icmp sgt i32 %sub61, -1
  br i1 %cmp62, label %do.end66, label %while.body60.while.cond52_crit_edge

while.body60.while.cond52_crit_edge:              ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond52

do.end66:                                         ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #15
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  %35 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dispc, align 4
  tail call void @dispc_lcd_enable_signal(ptr noundef %36, i1 noundef zeroext false) #13
  br label %err1

err1:                                             ; preds = %do.end66, %do.end44, %do.end
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %38, i32 72
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #13, !srcloc !250
  %and78 = and i32 %39, -262145
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %and78) #13, !srcloc !251
  %42 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dispc, align 4
  tail call void @dispc_pck_free_enable(ptr noundef %43, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err1, %while.cond52.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %err1 ], [ 0, %while.cond52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_pck_free_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_lcd_enable_signal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_sdi_disable(ptr nocapture noundef readonly %dss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dispc = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 21
  %0 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc, align 4
  tail call void @dispc_lcd_enable_signal(ptr noundef %1, i1 noundef zeroext false) #13
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  tail call void @dispc_pck_free_enable(ptr noundef %3, i1 noundef zeroext false) #13
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %6, -262145
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %and) #13, !srcloc !251
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dss_get_clk_source_name(i32 noundef %clk_src) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr @dss_generic_clk_source_names, i32 0, i32 %clk_src
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_select_dsi_clk_source(ptr nocapture noundef %dss, i32 noundef %dsi_module, i32 noundef %clk_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clk_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_src, label %do.body28 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %do.body
    i32 5, label %do.body10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsi_module)
  %cmp.not = icmp eq i32 %dsi_module, 0
  br i1 %cmp.not, label %do.body.sw.epilog_crit_edge, label %do.body3, !prof !252

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/dss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 448, 0\0A.popsection", ""() #13, !srcloc !253
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dsi_module)
  %cmp11.not = icmp eq i32 %dsi_module, 1
  br i1 %cmp11.not, label %do.body10.sw.epilog_crit_edge, label %do.body19, !prof !252

do.body10.sw.epilog_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/dss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !254
  unreachable

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/dss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 456, 0\0A.popsection", ""() #13, !srcloc !255
  unreachable

sw.epilog:                                        ; preds = %do.body10.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %b.0 = phi i32 [ %clk_src, %entry.sw.epilog_crit_edge ], [ 1, %do.body.sw.epilog_crit_edge ], [ 1, %do.body10.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsi_module)
  %cmp34 = icmp eq i32 %dsi_module, 0
  %cond = select i1 %cmp34, i32 1, i32 10
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %shl38 = shl nuw nsw i32 1, %cond
  %neg = xor i32 %shl38, -1
  %and = and i32 %3, %neg
  %shl39 = shl nuw nsw i32 %b.0, %cond
  %and45 = and i32 %shl39, %shl38
  %or = or i32 %and, %and45
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %or) #13, !srcloc !251
  %arrayidx = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 11, i32 %dsi_module
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clk_src, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_select_lcd_clk_source(ptr noundef %dss, i32 noundef %channel, i32 noundef %clk_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %channel, label %do.end.i [
    i32 0, label %entry.dss_get_channel_index.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.dss_get_channel_index.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_channel_index.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_channel_index.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_channel_index.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #13
  br label %dss_get_channel_index.exit

dss_get_channel_index.exit:                       ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %entry.dss_get_channel_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ %channel, %entry.dss_get_channel_index.exit_crit_edge ]
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %1 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %feat, align 4
  %has_lcd_clk_src = getelementptr inbounds %struct.dss_features, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %has_lcd_clk_src to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_lcd_clk_src, align 2, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end22.i, label %if.end

if.end22.i:                                       ; preds = %dss_get_channel_index.exit
  %5 = zext i32 %clk_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %clk_src, label %do.body25.i [
    i32 0, label %if.end22.i.dss_select_dispc_clk_source.exit_crit_edge
    i32 1, label %sw.bb23.i
    i32 4, label %sw.bb24.i
  ]

if.end22.i.dss_select_dispc_clk_source.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_select_dispc_clk_source.exit

sw.bb23.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_select_dispc_clk_source.exit

sw.bb24.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_select_dispc_clk_source.exit

do.body25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/dss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #13, !srcloc !257
  unreachable

dss_select_dispc_clk_source.exit:                 ; preds = %sw.bb24.i, %sw.bb23.i, %if.end22.i.dss_select_dispc_clk_source.exit_crit_edge
  %b.0.i = phi i32 [ 2, %sw.bb24.i ], [ 1, %sw.bb23.i ], [ %clk_src, %if.end22.i.dss_select_dispc_clk_source.exit_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !250
  %9 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %feat, align 4
  %dispc_clk_switch.i = getelementptr inbounds %struct.dss_features, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %dispc_clk_switch.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dispc_clk_switch.i, align 4
  %conv.i = zext i8 %12 to i32
  %end.i = getelementptr inbounds %struct.dss_features, ptr %10, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %end.i, align 1
  %conv36.i = zext i8 %14 to i32
  %sub.i = add nuw nsw i32 %conv.i, 1
  %add.i = sub nsw i32 %sub.i, %conv36.i
  %notmask.i = shl nsw i32 -1, %add.i
  %sub37.i = xor i32 %notmask.i, -1
  %shl42.i = shl i32 %sub37.i, %conv36.i
  %neg.i = xor i32 %shl42.i, -1
  %and.i = and i32 %8, %neg.i
  %shl47.i = shl i32 %b.0.i, %conv36.i
  %and65.i = and i32 %shl42.i, %shl47.i
  %or.i = or i32 %and.i, %and65.i
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %or.i) #13, !srcloc !251
  %dispc_clk_source.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 12
  %17 = ptrtoint ptr %dispc_clk_source.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %clk_src, ptr %dispc_clk_source.i, align 4
  br label %cleanup.sink.split

if.end:                                           ; preds = %dss_get_channel_index.exit
  %ops = getelementptr inbounds %struct.dss_features, ptr %2, i32 0, i32 8
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %select_lcd_source = getelementptr inbounds %struct.dss_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %select_lcd_source to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %select_lcd_source, align 4
  %call2 = tail call i32 %21(ptr noundef %dss, i32 noundef %channel, i32 noundef %clk_src) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %dss_select_dispc_clk_source.exit
  %arrayidx7 = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 13, i32 %retval.0.i
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %clk_src, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dss_get_dispc_clk_source(ptr nocapture noundef readonly %dss) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dispc_clk_source = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 12
  %0 = ptrtoint ptr %dispc_clk_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dispc_clk_source, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dss_get_dsi_clk_source(ptr nocapture noundef readonly %dss, i32 noundef %dsi_module) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 11, i32 %dsi_module
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_get_lcd_clk_source(ptr nocapture noundef readonly %dss, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %has_lcd_clk_src = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_lcd_clk_src to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_lcd_clk_src, align 2, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %channel, label %do.end.i [
    i32 0, label %if.then.dss_get_channel_index.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

if.then.dss_get_channel_index.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_channel_index.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_channel_index.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_channel_index.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef null) #13
  br label %dss_get_channel_index.exit

dss_get_channel_index.exit:                       ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %if.then.dss_get_channel_index.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ %channel, %if.then.dss_get_channel_index.exit_crit_edge ]
  %arrayidx = getelementptr %struct.dss_device, ptr %dss, i32 0, i32 13, i32 %retval.0.i
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dispc_clk_source = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 12
  br label %return

return:                                           ; preds = %if.else, %dss_get_channel_index.exit
  %retval.0.in = phi ptr [ %arrayidx, %dss_get_channel_index.exit ], [ %dispc_clk_source, %if.else ]
  %5 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dss_div_calc(ptr nocapture noundef readonly %dss, i32 noundef %pck, i32 noundef %fck_min, ptr nocapture noundef readonly %func, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %fck_freq_max = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fck_freq_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fck_freq_max, align 4
  %parent_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 5
  %4 = ptrtoint ptr %parent_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_clk, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = urem i32 %3, %pck
  %mul = sub i32 %3, %6
  %dss_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 6
  %7 = ptrtoint ptr %dss_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dss_clk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %8, i32 noundef %mul) #13
  %call1 = tail call zeroext i1 %func(i32 noundef %call, ptr noundef %data) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fck_div_max = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %fck_div_max to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fck_div_max, align 4
  %conv = zext i8 %10 to i32
  %dss_fck_multiplier = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dss_fck_multiplier to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dss_fck_multiplier, align 4
  %conv4 = zext i8 %12 to i32
  %call6 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fck_min)
  %tobool.not = icmp eq i32 %fck_min, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %fck_min
  %mul7 = mul i32 %call6, %conv4
  %div8 = udiv i32 %mul7, %spec.select
  %13 = tail call i32 @llvm.umin.i32(i32 %div8, i32 %conv)
  %add = add i32 %3, -1
  %sub = add i32 %add, %mul7
  %div16 = udiv i32 %sub, %3
  %14 = tail call i32 @llvm.umax.i32(i32 %div16, i32 1)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp24.not65 = icmp slt i32 %13, %14
  br i1 %cmp24.not65, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %fckd.066 = phi i32 [ %add26, %for.body.for.body_crit_edge ], [ %13, %if.end.for.body_crit_edge ]
  %add26 = add i32 %fckd.066, -1
  %sub27 = add i32 %add26, %call6
  %div28 = udiv i32 %sub27, %fckd.066
  %mul29 = mul i32 %div28, %conv4
  %call30 = tail call zeroext i1 %func(i32 noundef %mul29, ptr noundef %data) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %14)
  %cmp24.not = icmp slt i32 %add26, %14
  %or.cond = select i1 %call30, i1 true, i1 %cmp24.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %call1, %if.then ], [ false, %if.end.cleanup_crit_edge ], [ %call30, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_set_fck_rate(ptr nocapture noundef %dss, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_set_fck_rate.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_set_fck_rate, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_set_fck_rate.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.14, i32 noundef %rate) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dss_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 6
  %0 = ptrtoint ptr %dss_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss_clk, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %rate) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %2 = ptrtoint ptr %dss_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss_clk, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %3) #13
  %dss_clk_rate = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 7
  %4 = ptrtoint ptr %dss_clk_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %dss_clk_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %rate)
  %cmp.not = icmp eq i32 %call9, %rate
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %land.rhs

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %if.end7
  %.b71 = load i1, ptr @dss_set_fck_rate.__already_done, align 1
  br i1 %.b71, label %land.rhs.cleanup_crit_edge, label %if.then26, !prof !252

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dss_set_fck_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 655, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %call9, i32 noundef %rate) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.rhs.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dss_get_dispc_clk_rate(ptr nocapture noundef readonly %dss) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dss_clk_rate = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 7
  %0 = ptrtoint ptr %dss_clk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dss_clk_rate, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dss_get_max_fck_rate(ptr nocapture noundef readonly %dss) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %fck_freq_max = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fck_freq_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fck_freq_max, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_set_venc_output(ptr nocapture noundef readonly %dss, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %type, label %do.body [
    i32 0, label %entry.if.end7_crit_edge
    i32 1, label %if.then2
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/dss/dss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 706, 0\0A.popsection", ""() #13, !srcloc !259
  unreachable

if.end7:                                          ; preds = %if.then2, %entry.if.end7_crit_edge
  %l.0 = phi i32 [ 64, %if.then2 ], [ %type, %entry.if.end7_crit_edge ]
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %3, -65
  %or = or i32 %and, %l.0
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %or) #13, !srcloc !251
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_set_dac_pwrdn_bgz(ptr nocapture noundef readonly %dss, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %2, -33
  %shl = select i1 %enable, i32 32, i32 0
  %or = or i32 %and, %shl
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %or) #13, !srcloc !251
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_select_hdmi_venc_clk_source(ptr nocapture noundef readonly %dss, i32 noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %outputs1 = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %outputs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outputs1, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src)
  %cmp = icmp eq i32 %src, 0
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %6, label %if.end.thread, label %if.end, !prof !248

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 726, i32 noundef 9, ptr noundef null) #13
  %and2583 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2583)
  %tobool26.not84 = icmp eq i32 %and2583, 0
  br label %if.end51

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %src)
  %cmp23 = icmp eq i32 %src, 1
  %and25 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %7 = select i1 %cmp23, i1 %tobool26.not, i1 false
  br i1 %7, label %if.end51.thread, label %if.end.if.end51_crit_edge, !prof !248

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end51.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 727, i32 noundef 9, ptr noundef null) #13
  br label %if.end69

if.end51:                                         ; preds = %if.end.if.end51_crit_edge, %if.end.thread
  %tobool26.not85 = phi i1 [ %tobool26.not84, %if.end.thread ], [ %tobool26.not, %if.end.if.end51_crit_edge ]
  %or.cond = or i1 %tobool.not, %tobool26.not85
  br i1 %or.cond, label %if.end51.if.end69_crit_edge, label %if.then63

if.end51.if.end69_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then63:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and66 = and i32 %10, -32769
  %shl = shl i32 %src, 15
  %and67 = and i32 %shl, 32768
  %or = or i32 %and66, %and67
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %or) #13, !srcloc !251
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %if.end51.if.end69_crit_edge, %if.end51.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_dpi_select_source(ptr noundef %dss, i32 noundef %port, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %ops = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %dss, i32 noundef %port, i32 noundef %channel) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dss_runtime_get(ptr nocapture noundef readonly %dss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_get.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_runtime_get, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_get.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end20, label %do.end.cleanup_crit_edge, !prof !248

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 861, i32 noundef 9, ptr noundef null) #13
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev37)
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end20 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #13, !srcloc !261
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !262
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_runtime_put(ptr nocapture noundef readonly %dss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_put.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_runtime_put, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_put.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.21) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #13
  %call.i.fr = freeze i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.fr)
  %cmp = icmp slt i32 %call.i.fr, 0
  br i1 %cmp, label %switch.early.test, label %do.end.if.end28_crit_edge

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

switch.early.test:                                ; preds = %do.end
  %2 = zext i32 %call.i.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call.i.fr, label %do.end22 [
    i32 -16, label %switch.early.test.if.end28_crit_edge
    i32 -38, label %switch.early.test.if.end28_crit_edge41
  ]

switch.early.test.if.end28_crit_edge41:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

switch.early.test.if.end28_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.end22:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 875, i32 noundef 9, ptr noundef null) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %switch.early.test.if.end28_crit_edge, %switch.early.test.if.end28_crit_edge41, %do.end.if.end28_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dss_get_device(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dss_debugfs_create_file(ptr nocapture noundef readonly %dss, ptr noundef %name, ptr noundef %show_fn, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %show_fn3 = getelementptr inbounds %struct.dss_debugfs_entry, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %show_fn3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %show_fn, ptr %show_fn3, align 4
  %data4 = getelementptr inbounds %struct.dss_debugfs_entry, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data4, align 8
  %debugfs = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 17
  %3 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs, align 4
  %call5 = tail call ptr @debugfs_create_file(ptr noundef %name, i16 noundef zeroext 292, ptr noundef %4, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dss_debug_fops) #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dss_debugfs_remove_file(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %entry1, null
  %cmp.i = icmp ugt ptr %entry1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  tail call void @debugfs_remove(ptr noundef %1) #13
  tail call void @kfree(ptr noundef nonnull %entry1) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %cmatch = alloca %struct.dss_component_match_data, align 4
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmatch) #13
  %0 = ptrtoint ptr %cmatch to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmatch, align 4, !annotation !263
  %1 = getelementptr inbounds %struct.dss_component_match_data, ptr %cmatch, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #13
  %3 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %match, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 640) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #16
  br label %err_free_dss

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @soc_device_match(ptr noundef nonnull @dss_soc_devices) #13
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call7, i32 0, i32 5
  br label %if.end14

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call ptr @of_match_device(ptr noundef nonnull @dss_of_match, ptr noundef %dev) #13
  %data12 = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %.sink.in = phi ptr [ %data12, %if.else ], [ %data, %if.then9 ]
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load ptr, ptr %.sink.in, align 4
  %8 = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink, ptr %8, align 8
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #13
  %base = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call15 to i32
  br label %err_free_dss

if.end21:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.41) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #16
  br label %dss_get_clocks.exit

if.end.i:                                         ; preds = %if.end21
  %dss_clk.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %dss_clk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %dss_clk.i, align 8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 8
  %parent_clk_name.i = getelementptr inbounds %struct.dss_features, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %parent_clk_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent_clk_name.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i.dss_get_clocks.exit.thread_crit_edge, label %if.then4.i

if.end.i.dss_get_clocks.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_clocks.exit.thread

if.then4.i:                                       ; preds = %if.end.i
  %call7.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull %18) #13
  %cmp.i30.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %do.end12.i, label %if.then4.i.dss_get_clocks.exit.thread_crit_edge

if.then4.i.dss_get_clocks.exit.thread_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_get_clocks.exit.thread

do.end12.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 8
  %parent_clk_name15.i = getelementptr inbounds %struct.dss_features, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %parent_clk_name15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_clk_name15.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %22) #16
  br label %dss_get_clocks.exit

dss_get_clocks.exit.thread:                       ; preds = %if.then4.i.dss_get_clocks.exit.thread_crit_edge, %if.end.i.dss_get_clocks.exit.thread_crit_edge
  %clk.0.i = phi ptr [ %call7.i, %if.then4.i.dss_get_clocks.exit.thread_crit_edge ], [ null, %if.end.i.dss_get_clocks.exit.thread_crit_edge ]
  %parent_clk.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %parent_clk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %clk.0.i, ptr %parent_clk.i, align 4
  %call26 = tail call fastcc i32 @dss_setup_default_clock(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %dss_get_clocks.exit.thread.err_put_clocks_crit_edge

dss_get_clocks.exit.thread.err_put_clocks_crit_edge: ; preds = %dss_get_clocks.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_clocks

dss_get_clocks.exit:                              ; preds = %do.end12.i, %do.end.i
  %retval.0.i.in = phi ptr [ %call.i, %do.end.i ], [ %call7.i, %do.end12.i ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %err_free_dss

if.end29:                                         ; preds = %dss_get_clocks.exit.thread
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %dev.i140 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i141 = icmp eq ptr %27, null
  br i1 %tobool.not.i141, label %if.end29.if.end33_crit_edge, label %if.end.i142

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end.i142:                                      ; preds = %if.end29
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.47, ptr noundef null) #13
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i142.if.end19.i145_crit_edge, label %if.then2.i

if.end.i142.if.end19.i145_crit_edge:              ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i145

if.then2.i:                                       ; preds = %if.end.i142
  %call3.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %27, ptr noundef nonnull @.str.47) #13
  %syscon_pll_ctrl.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %syscon_pll_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3.i, ptr %syscon_pll_ctrl.i, align 8
  %cmp.i.i143 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i143, label %do.end.i144, label %if.end10.i

do.end.i144:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i140, ptr noundef nonnull @.str.48) #16
  %29 = ptrtoint ptr %syscon_pll_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %syscon_pll_ctrl.i, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %dss_video_pll_probe.exit

if.end10.i:                                       ; preds = %if.then2.i
  %syscon_pll_ctrl_offset.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 3
  %call11.i = tail call i32 @of_property_read_u32_index(ptr noundef nonnull %27, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef %syscon_pll_ctrl_offset.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end19.i145_crit_edge, label %do.end16.i

if.end10.i.if.end19.i145_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i145

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i140, ptr noundef nonnull @.str.51) #16
  br label %err_put_clocks

if.end19.i145:                                    ; preds = %if.end10.i.if.end19.i145_crit_edge, %if.end.i142.if.end19.i145_crit_edge
  %call21.i = tail call ptr @devm_regulator_get(ptr noundef %dev.i140, ptr noundef nonnull @.str.53) #13
  %cmp.i83.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83.i, label %if.then23.i, label %if.end19.i145.if.end30.i_crit_edge

if.end19.i145.if.end30.i_crit_edge:               ; preds = %if.end19.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.end19.i145
  %32 = ptrtoint ptr %call21.i to i32
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %32, label %do.end28.i [
    i32 -2, label %if.then23.i.if.end30.i_crit_edge
    i32 -517, label %if.then23.i.err_put_clocks_crit_edge
  ]

if.then23.i.err_put_clocks_crit_edge:             ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_clocks

if.then23.i.if.end30.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

do.end28.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #16
  br label %dss_video_pll_probe.exit

if.end30.i:                                       ; preds = %if.then23.i.if.end30.i_crit_edge, %if.end19.i145.if.end30.i_crit_edge
  %pll_regulator.0.i = phi ptr [ %call21.i, %if.end19.i145.if.end30.i_crit_edge ], [ null, %if.then23.i.if.end30.i_crit_edge ]
  %call31.i = tail call i32 @of_property_match_string(ptr noundef nonnull %27, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31.i)
  %cmp.i146 = icmp sgt i32 %call31.i, -1
  br i1 %cmp.i146, label %if.then32.i, label %if.end30.i.if.end40.i_crit_edge

if.end30.i.if.end40.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then32.i:                                      ; preds = %if.end30.i
  %call33.i = tail call ptr @dss_video_pll_init(ptr noundef nonnull %call7.i.i, ptr noundef %25, i32 noundef 0, ptr noundef %pll_regulator.0.i) #13
  %video1_pll.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %video1_pll.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call33.i, ptr %video1_pll.i, align 8
  %cmp.i84.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %if.then36.i, label %if.then32.i.if.end40.i_crit_edge

if.then32.i.if.end40.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %call33.i to i32
  br label %dss_video_pll_probe.exit

if.end40.i:                                       ; preds = %if.then32.i.if.end40.i_crit_edge, %if.end30.i.if.end40.i_crit_edge
  %call41.i = tail call i32 @of_property_match_string(ptr noundef nonnull %27, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp42.i = icmp sgt i32 %call41.i, -1
  br i1 %cmp42.i, label %if.then43.i, label %if.end40.i.if.end33_crit_edge

if.end40.i.if.end33_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then43.i:                                      ; preds = %if.end40.i
  %call44.i = tail call ptr @dss_video_pll_init(ptr noundef nonnull %call7.i.i, ptr noundef %25, i32 noundef 1, ptr noundef %pll_regulator.0.i) #13
  %video2_pll.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 20
  %36 = ptrtoint ptr %video2_pll.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call44.i, ptr %video2_pll.i, align 4
  %cmp.i85.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85.i, label %if.then47.i, label %if.then43.i.if.end33_crit_edge

if.then43.i.if.end33_crit_edge:                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then47.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #15
  %video1_pll48.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %video1_pll48.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %video1_pll48.i, align 8
  tail call void @dss_video_pll_uninit(ptr noundef %38) #13
  %39 = ptrtoint ptr %video2_pll.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video2_pll.i, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %dss_video_pll_probe.exit

dss_video_pll_probe.exit:                         ; preds = %if.then47.i, %if.then36.i, %do.end28.i, %do.end.i144
  %retval.0.i147 = phi i32 [ %31, %do.end.i144 ], [ %32, %do.end28.i ], [ %35, %if.then36.i ], [ %41, %if.then47.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i147)
  %tobool31.not = icmp eq i32 %retval.0.i147, 0
  br i1 %tobool31.not, label %dss_video_pll_probe.exit.if.end33_crit_edge, label %dss_video_pll_probe.exit.err_put_clocks_crit_edge

dss_video_pll_probe.exit.err_put_clocks_crit_edge: ; preds = %dss_video_pll_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_clocks

dss_video_pll_probe.exit.if.end33_crit_edge:      ; preds = %dss_video_pll_probe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end33:                                         ; preds = %dss_video_pll_probe.exit.if.end33_crit_edge, %if.then43.i.if.end33_crit_edge, %if.end40.i.if.end33_crit_edge, %if.end29.if.end33_crit_edge
  %call34 = tail call fastcc i32 @dss_init_ports(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.err_uninit_plls_crit_edge

if.end33.err_uninit_plls_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uninit_plls

if.end37:                                         ; preds = %if.end33
  tail call void @pm_runtime_enable(ptr noundef %dev) #13
  %call39 = tail call fastcc i32 @dss_probe_hardware(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.err_pm_runtime_disable_crit_edge

if.end37.err_pm_runtime_disable_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_runtime_disable

if.end42:                                         ; preds = %if.end37
  %call.i148 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.62, ptr noundef null) #13
  %cmp.i.i149 = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i149, label %dss_initialize_debugfs.exit, label %dss_initialize_debugfs.exit.thread

dss_initialize_debugfs.exit.thread:               ; preds = %if.end42
  %debugfs.i = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 17
  %42 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i148, ptr %debugfs.i, align 4
  %call47 = tail call ptr @dss_debugfs_create_file(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @dss_debug_dump_clocks, ptr noundef nonnull %call7.i.i)
  %clk = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 17, i32 1
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call47, ptr %clk, align 8
  %call48 = tail call ptr @dss_debugfs_create_file(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @dss_dump_regs, ptr noundef nonnull %call7.i.i)
  %dss50 = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %dss50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call48, ptr %dss50, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call53 = tail call i32 @of_platform_populate(ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %dss_initialize_debugfs.exit.thread.err_uninit_debugfs_crit_edge

dss_initialize_debugfs.exit.thread.err_uninit_debugfs_crit_edge: ; preds = %dss_initialize_debugfs.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uninit_debugfs

dss_initialize_debugfs.exit:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %call.i148 to i32
  br label %err_pm_runtime_disable

if.end56:                                         ; preds = %dss_initialize_debugfs.exit.thread
  tail call void @omapdss_gather_components(ptr noundef %dev) #13
  %48 = ptrtoint ptr %cmatch to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev, ptr %cmatch, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %match, ptr %1, align 4
  %call62 = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %cmatch, ptr noundef nonnull @dss_add_child_component) #13
  %50 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %match, align 4
  %call64 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @dss_component_ops, ptr noundef %51) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end56.cleanup_crit_edge, label %err_of_depopulate

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_of_depopulate:                                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  call void @of_platform_depopulate(ptr noundef %dev) #13
  br label %err_uninit_debugfs

err_uninit_debugfs:                               ; preds = %err_of_depopulate, %dss_initialize_debugfs.exit.thread.err_uninit_debugfs_crit_edge
  %r.0 = phi i32 [ %call53, %dss_initialize_debugfs.exit.thread.err_uninit_debugfs_crit_edge ], [ %call64, %err_of_depopulate ]
  %52 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk, align 8
  call void @dss_debugfs_remove_file(ptr noundef %53)
  %54 = ptrtoint ptr %dss50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dss50, align 4
  call void @dss_debugfs_remove_file(ptr noundef %55)
  %56 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %debugfs.i, align 4
  call void @debugfs_remove(ptr noundef %57) #13
  br label %err_pm_runtime_disable

err_pm_runtime_disable:                           ; preds = %err_uninit_debugfs, %dss_initialize_debugfs.exit, %if.end37.err_pm_runtime_disable_crit_edge
  %r.1 = phi i32 [ %call39, %if.end37.err_pm_runtime_disable_crit_edge ], [ %47, %dss_initialize_debugfs.exit ], [ %r.0, %err_uninit_debugfs ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  call fastcc void @dss_uninit_ports(ptr noundef nonnull %call7.i.i)
  br label %err_uninit_plls

err_uninit_plls:                                  ; preds = %err_pm_runtime_disable, %if.end33.err_uninit_plls_crit_edge
  %r.2 = phi i32 [ %call34, %if.end33.err_uninit_plls_crit_edge ], [ %r.1, %err_pm_runtime_disable ]
  %video1_pll = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 19
  %58 = ptrtoint ptr %video1_pll to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %video1_pll, align 8
  %tobool74.not = icmp eq ptr %59, null
  br i1 %tobool74.not, label %err_uninit_plls.if.end77_crit_edge, label %if.then75

err_uninit_plls.if.end77_crit_edge:               ; preds = %err_uninit_plls
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then75:                                        ; preds = %err_uninit_plls
  call void @__sanitizer_cov_trace_pc() #15
  call void @dss_video_pll_uninit(ptr noundef nonnull %59) #13
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %err_uninit_plls.if.end77_crit_edge
  %video2_pll = getelementptr inbounds %struct.dss_device, ptr %call7.i.i, i32 0, i32 20
  %60 = ptrtoint ptr %video2_pll to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video2_pll, align 4
  %tobool78.not = icmp eq ptr %61, null
  br i1 %tobool78.not, label %if.end77.err_put_clocks_crit_edge, label %if.then79

if.end77.err_put_clocks_crit_edge:                ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_clocks

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  call void @dss_video_pll_uninit(ptr noundef nonnull %61) #13
  br label %err_put_clocks

err_put_clocks:                                   ; preds = %if.then79, %if.end77.err_put_clocks_crit_edge, %dss_video_pll_probe.exit.err_put_clocks_crit_edge, %if.then23.i.err_put_clocks_crit_edge, %do.end16.i, %dss_get_clocks.exit.thread.err_put_clocks_crit_edge
  %r.3 = phi i32 [ %call26, %dss_get_clocks.exit.thread.err_put_clocks_crit_edge ], [ %retval.0.i147, %dss_video_pll_probe.exit.err_put_clocks_crit_edge ], [ %r.2, %if.then79 ], [ %r.2, %if.end77.err_put_clocks_crit_edge ], [ %32, %if.then23.i.err_put_clocks_crit_edge ], [ -22, %do.end16.i ]
  %62 = ptrtoint ptr %parent_clk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent_clk.i, align 4
  %tobool.not.i154 = icmp eq ptr %63, null
  br i1 %tobool.not.i154, label %err_put_clocks.err_free_dss_crit_edge, label %if.then.i155

err_put_clocks.err_free_dss_crit_edge:            ; preds = %err_put_clocks
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_dss

if.then.i155:                                     ; preds = %err_put_clocks
  call void @__sanitizer_cov_trace_pc() #15
  call void @clk_put(ptr noundef nonnull %63) #13
  br label %err_free_dss

err_free_dss:                                     ; preds = %if.then.i155, %err_put_clocks.err_free_dss_crit_edge, %dss_get_clocks.exit, %if.then18, %do.end
  %r.4 = phi i32 [ %call2, %do.end ], [ %11, %if.then18 ], [ %retval.0.i, %dss_get_clocks.exit ], [ %r.3, %err_put_clocks.err_free_dss_crit_edge ], [ %r.3, %if.then.i155 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_dss, %if.end56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.4, %err_free_dss ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmatch) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #13
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @dss_component_ops) #13
  %clk = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.dss_debugfs_remove_file.exit_crit_edge, label %if.end.i

entry.dss_debugfs_remove_file.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_debugfs_remove_file.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @debugfs_remove(ptr noundef %5) #13
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %dss_debugfs_remove_file.exit

dss_debugfs_remove_file.exit:                     ; preds = %if.end.i, %entry.dss_debugfs_remove_file.exit_crit_edge
  %dss3 = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %dss3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dss3, align 4
  %tobool.not.i.i23 = icmp eq ptr %7, null
  %cmp.i.i24 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i25 = or i1 %tobool.not.i.i23, %cmp.i.i24
  br i1 %spec.select.i.i25, label %dss_debugfs_remove_file.exit.dss_debugfs_remove_file.exit27_crit_edge, label %if.end.i26

dss_debugfs_remove_file.exit.dss_debugfs_remove_file.exit27_crit_edge: ; preds = %dss_debugfs_remove_file.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_debugfs_remove_file.exit27

if.end.i26:                                       ; preds = %dss_debugfs_remove_file.exit
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @debugfs_remove(ptr noundef %9) #13
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %dss_debugfs_remove_file.exit27

dss_debugfs_remove_file.exit27:                   ; preds = %if.end.i26, %dss_debugfs_remove_file.exit.dss_debugfs_remove_file.exit27_crit_edge
  %debugfs.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs.i, align 4
  tail call void @debugfs_remove(ptr noundef %11) #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  %feat.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %feat.i, align 4
  %num_ports.i = getelementptr inbounds %struct.dss_features, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp9.not.i.i, label %dss_debugfs_remove_file.exit27.dss_uninit_ports.exit_crit_edge, label %dss_debugfs_remove_file.exit27.for.body.i.i_crit_edge

dss_debugfs_remove_file.exit27.for.body.i.i_crit_edge: ; preds = %dss_debugfs_remove_file.exit27
  br label %for.body.i.i

dss_debugfs_remove_file.exit27.dss_uninit_ports.exit_crit_edge: ; preds = %dss_debugfs_remove_file.exit27
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_uninit_ports.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dss_debugfs_remove_file.exit27.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %dss_debugfs_remove_file.exit27.for.body.i.i_crit_edge ]
  %call.i.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %19, i32 noundef %i.010.i.i) #13
  %tobool.not.i.i28 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i28, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %20 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %feat.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dss_features, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %23, i32 %i.010.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %25, label %if.end.i.i.for.inc.i.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 4, label %sw.bb2.i.i
  ]

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dpi_uninit_port(ptr noundef nonnull %call.i.i) #13
  br label %for.inc.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdi_uninit_port(ptr noundef nonnull %call.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb2.i.i, %sw.bb.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.dss_uninit_ports.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dss_uninit_ports.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_uninit_ports.exit

dss_uninit_ports.exit:                            ; preds = %for.inc.i.i.dss_uninit_ports.exit_crit_edge, %dss_debugfs_remove_file.exit27.dss_uninit_ports.exit_crit_edge
  %video1_pll = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %video1_pll to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video1_pll, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %dss_uninit_ports.exit.if.end_crit_edge, label %if.then

dss_uninit_ports.exit.if.end_crit_edge:           ; preds = %dss_uninit_ports.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %dss_uninit_ports.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dss_video_pll_uninit(ptr noundef nonnull %28) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %dss_uninit_ports.exit.if.end_crit_edge
  %video2_pll = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %video2_pll to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %video2_pll, align 4
  %tobool6.not = icmp eq ptr %30, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dss_video_pll_uninit(ptr noundef nonnull %30) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %parent_clk.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %parent_clk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent_clk.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end9.dss_put_clocks.exit_crit_edge, label %if.then.i

if.end9.dss_put_clocks.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_put_clocks.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_put(ptr noundef nonnull %32) #13
  br label %dss_put_clocks.exit

dss_put_clocks.exit:                              ; preds = %if.then.i, %if.end9.dss_put_clocks.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dss_shutdown(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_shutdown.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_shutdown, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !258

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_shutdown.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.77) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_dss_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @omap_dss_drivers, i32 noundef 6, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_dss_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_unregister_drivers(ptr noundef nonnull @omap_dss_drivers, i32 noundef 6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %show_fn = getelementptr inbounds %struct.dss_debugfs_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %show_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show_fn, align 4
  %data = getelementptr inbounds %struct.dss_debugfs_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef %3, ptr noundef %5) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dss_setup_default_clock(ptr nocapture noundef %dss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %fck_freq_max = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fck_freq_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fck_freq_max, align 4
  %parent_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 5
  %4 = ptrtoint ptr %parent_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_clk, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dss_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 6
  %6 = ptrtoint ptr %dss_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dss_clk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %7, i32 noundef %3) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #13
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %dss_fck_multiplier = getelementptr inbounds %struct.dss_features, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dss_fck_multiplier to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dss_fck_multiplier, align 4
  %conv = zext i8 %11 to i32
  %mul = mul i32 %call2, %conv
  %add = add i32 %3, -1
  %sub = add i32 %add, %mul
  %div = udiv i32 %sub, %3
  %add4 = add i32 %call2, -1
  %sub5 = add i32 %add4, %div
  %div6 = udiv i32 %sub5, %div
  %mul10 = mul i32 %div6, %conv
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fck.0 = phi i32 [ %call, %if.then ], [ %mul10, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_set_fck_rate.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_setup_default_clock, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !258

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_set_fck_rate.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.14, i32 noundef %fck.0) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %dss_clk.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 6
  %12 = ptrtoint ptr %dss_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dss_clk.i, align 4
  %call4.i = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %fck.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i.dss_set_fck_rate.exit_crit_edge

do.end.i.dss_set_fck_rate.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_set_fck_rate.exit

if.end7.i:                                        ; preds = %do.end.i
  %14 = ptrtoint ptr %dss_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dss_clk.i, align 4
  %call9.i = tail call i32 @clk_get_rate(ptr noundef %15) #13
  %dss_clk_rate.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 7
  %16 = ptrtoint ptr %dss_clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call9.i, ptr %dss_clk_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %fck.0)
  %cmp.not.i = icmp eq i32 %call9.i, %fck.0
  br i1 %cmp.not.i, label %if.end7.i.dss_set_fck_rate.exit_crit_edge, label %land.rhs.i

if.end7.i.dss_set_fck_rate.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_set_fck_rate.exit

land.rhs.i:                                       ; preds = %if.end7.i
  %.b71.i = load i1, ptr @dss_set_fck_rate.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.dss_set_fck_rate.exit_crit_edge, label %if.then26.i, !prof !252

land.rhs.i.dss_set_fck_rate.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_set_fck_rate.exit

if.then26.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dss_set_fck_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 655, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %call9.i, i32 noundef %fck.0) #13
  br label %dss_set_fck_rate.exit

dss_set_fck_rate.exit:                            ; preds = %if.then26.i, %land.rhs.i.dss_set_fck_rate.exit_crit_edge, %if.end7.i.dss_set_fck_rate.exit_crit_edge, %do.end.i.dss_set_fck_rate.exit_crit_edge
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dss_init_ports(ptr noundef %dss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %4 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat, align 4
  %num_ports36 = getelementptr inbounds %struct.dss_features, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %num_ports36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp37.not = icmp eq i32 %7, 0
  br i1 %cmp37.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @of_graph_get_port_by_id(ptr noundef %3, i32 noundef %i.038) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %ports = getelementptr inbounds %struct.dss_features, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %i.038
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %13, label %if.end.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb8
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  %call4 = tail call i32 @dpi_init_port(ptr noundef %dss, ptr noundef %1, ptr noundef nonnull %call, i32 noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb8:                                           ; preds = %if.end
  %call9 = tail call i32 @sdi_init_port(ptr noundef %dss, ptr noundef %1, ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb8.for.inc_crit_edge, label %sw.bb8.error_crit_edge

sw.bb8.error_crit_edge:                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %sw.bb8.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.038, 1
  %17 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %feat, align 4
  %num_ports = getelementptr inbounds %struct.dss_features, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

error:                                            ; preds = %sw.bb8.error_crit_edge, %sw.bb.error_crit_edge
  %r.0 = phi i32 [ %call9, %sw.bb8.error_crit_edge ], [ %call4, %sw.bb.error_crit_edge ]
  %21 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dss, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038)
  %cmp9.not.i = icmp eq i32 %i.038, 0
  br i1 %cmp9.not.i, label %error.cleanup_crit_edge, label %error.for.body.i_crit_edge

error.for.body.i_crit_edge:                       ; preds = %error
  br label %for.body.i

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %error.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %error.for.body.i_crit_edge ]
  %call.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %24, i32 noundef %i.010.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %25 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %feat, align 4
  %ports.i = getelementptr inbounds %struct.dss_features, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr i32, ptr %28, i32 %i.010.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %30, label %if.end.i.for.inc.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb2.i
  ]

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dpi_uninit_port(ptr noundef nonnull %call.i) #13
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdi_uninit_port(ptr noundef nonnull %call.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb2.i, %sw.bb.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.038
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %error.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %r.0, %for.inc.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dss_probe_hardware(ptr noundef %dss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_get.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_probe_hardware, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !258

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_get.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %dss_runtime_get.exit, label %if.end, !prof !248

dss_runtime_get.exit:                             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 861, i32 noundef 9, ptr noundef null) #13
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev37.i) #13
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %dss_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 6
  %4 = ptrtoint ptr %dss_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dss_clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %5) #13
  %dss_clk_rate = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 7
  %6 = ptrtoint ptr %dss_clk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %dss_clk_rate, align 4
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %9, -2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %and) #13, !srcloc !251
  %feat.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !250
  %15 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %feat.i, align 4
  %dispc_clk_switch.i = getelementptr inbounds %struct.dss_features, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %dispc_clk_switch.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dispc_clk_switch.i, align 4
  %conv.i = zext i8 %18 to i32
  %end.i = getelementptr inbounds %struct.dss_features, ptr %16, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %end.i, align 1
  %conv36.i = zext i8 %20 to i32
  %sub.i = add nuw nsw i32 %conv.i, 1
  %add.i = sub nsw i32 %sub.i, %conv36.i
  %notmask.i = shl nsw i32 -1, %add.i
  %sub37.i = xor i32 %notmask.i, -1
  %shl42.i = shl i32 %sub37.i, %conv36.i
  %neg.i = xor i32 %shl42.i, -1
  %and.i = and i32 %14, %neg.i
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %and.i) #13, !srcloc !251
  %dispc_clk_source.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 12
  %23 = ptrtoint ptr %dispc_clk_source.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dispc_clk_source.i, align 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %25, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #13, !srcloc !250
  %or13 = or i32 %26, 16
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %or13) #13, !srcloc !251
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %30, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #13, !srcloc !250
  %or22 = or i32 %31, 8
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %or22) #13, !srcloc !251
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %35, i32 64
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #13, !srcloc !250
  %and30 = and i32 %36, -5
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %and30) #13, !srcloc !251
  %dsi_clk_source = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 11
  %39 = call ptr @memset(ptr %dsi_clk_source, i32 0, i32 20)
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #13, !srcloc !250
  %and42 = lshr i32 %42, 4
  %shr = and i32 %and42, 15
  %and43 = and i32 %42, 15
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %shr, i32 noundef %and43) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_put.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_probe_hardware, %do.end.i94)) #13
          to label %if.then.i90 [label %do.end.i94], !srcloc !258

if.then.i90:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_put.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.21) #13
  br label %do.end.i94

do.end.i94:                                       ; preds = %if.then.i90, %if.end
  %43 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dss, align 4
  %dev.i91 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %call.i.i92 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i91, i32 noundef 4) #13
  %call.i.fr.i = freeze i32 %call.i.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.fr.i)
  %cmp.i93 = icmp slt i32 %call.i.fr.i, 0
  br i1 %cmp.i93, label %switch.early.test.i, label %do.end.i94.cleanup_crit_edge

do.end.i94.cleanup_crit_edge:                     ; preds = %do.end.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.early.test.i:                              ; preds = %do.end.i94
  %45 = zext i32 %call.i.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call.i.fr.i, label %do.end22.i [
    i32 -16, label %switch.early.test.i.cleanup_crit_edge
    i32 -38, label %switch.early.test.i.cleanup_crit_edge97
  ]

switch.early.test.i.cleanup_crit_edge97:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end22.i:                                       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 875, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end22.i, %switch.early.test.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge97, %do.end.i94.cleanup_crit_edge, %dss_runtime_get.exit
  %retval.0 = phi i32 [ %call.i.i, %dss_runtime_get.exit ], [ 0, %do.end.i94.cleanup_crit_edge ], [ 0, %switch.early.test.i.cleanup_crit_edge ], [ 0, %switch.early.test.i.cleanup_crit_edge97 ], [ 0, %do.end22.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_debug_dump_clocks(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call fastcc void @dss_dump_clocks(ptr noundef %1, ptr noundef %s)
  %dispc = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  tail call void @dispc_dump_clocks(ptr noundef %3, ptr noundef %s) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_dump_regs(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_get.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_dump_regs, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !258

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_get.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end, !prof !248

do.end20.i:                                       ; preds = %do.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 861, i32 noundef 9, ptr noundef null) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !261
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end20.i.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end20.i.cleanup_crit_edge:                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !262
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %base.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %9) #13
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67, i32 noundef %12) #13
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.68, i32 noundef %15) #13
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %17, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.69, i32 noundef %18) #13
  %feat = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %feat, align 4
  %outputs = getelementptr inbounds %struct.dss_features, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %outputs, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end.if.end28_crit_edge, label %if.then15

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %26, i32 68
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.70, i32 noundef %27) #13
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %29, i32 72
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.71, i32 noundef %30) #13
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %32, i32 92
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #13, !srcloc !250
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.72, i32 noundef %33) #13
  br label %if.end28

if.end28:                                         ; preds = %if.then15, %if.end.if.end28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_put.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_dump_regs, %do.end.i66)) #13
          to label %if.then.i62 [label %do.end.i66], !srcloc !258

if.then.i62:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_put.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.21) #13
  br label %do.end.i66

do.end.i66:                                       ; preds = %if.then.i62, %if.end28
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %dev.i63 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %call.i.i64 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i63, i32 noundef 4) #13
  %call.i.fr.i = freeze i32 %call.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.fr.i)
  %cmp.i65 = icmp slt i32 %call.i.fr.i, 0
  br i1 %cmp.i65, label %switch.early.test.i, label %do.end.i66.cleanup_crit_edge

do.end.i66.cleanup_crit_edge:                     ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.early.test.i:                              ; preds = %do.end.i66
  %36 = zext i32 %call.i.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call.i.fr.i, label %do.end22.i [
    i32 -16, label %switch.early.test.i.cleanup_crit_edge
    i32 -38, label %switch.early.test.i.cleanup_crit_edge69
  ]

switch.early.test.i.cleanup_crit_edge69:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end22.i:                                       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 875, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end22.i, %switch.early.test.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge69, %do.end.i66.cleanup_crit_edge, %do.end11.i.i.i.i, %do.end20.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_gather_components(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_add_child_component(ptr noundef %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %match1 = getelementptr inbounds %struct.dss_component_match_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %match1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_name.exit, label %dev_name.exit.thread

dev_name.exit:                                    ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @strstr(ptr noundef %5, ptr noundef nonnull @.str.73)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.i18, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_name.exit.thread:                             ; preds = %entry
  %call222 = tail call ptr @strstr(ptr noundef nonnull %3, ptr noundef nonnull @.str.73)
  %tobool.not23 = icmp eq ptr %call222, null
  br i1 %tobool.not23, label %dev_name.exit.thread.dev_name.exit20_crit_edge, label %dev_name.exit.thread.cleanup_crit_edge

dev_name.exit.thread.cleanup_crit_edge:           ; preds = %dev_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_name.exit.thread.dev_name.exit20_crit_edge:   ; preds = %dev_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit20

if.end.i18:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit20

dev_name.exit20:                                  ; preds = %if.end.i18, %dev_name.exit.thread.dev_name.exit20_crit_edge
  %retval.0.i19 = phi ptr [ %7, %if.end.i18 ], [ %3, %dev_name.exit.thread.dev_name.exit20_crit_edge ]
  %call4 = tail call ptr @strstr(ptr noundef %retval.0.i19, ptr noundef nonnull @.str.74)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %dev_name.exit20
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef %data, ptr noundef nonnull @dss_add_child_component) #13
  br label %cleanup

if.end8:                                          ; preds = %dev_name.exit20
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void @component_match_add_release(ptr noundef %9, ptr noundef %1, ptr noundef null, ptr noundef nonnull @dss_component_compare, ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %dev_name.exit.thread.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %if.end8 ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ 0, %dev_name.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dss_uninit_ports(ptr nocapture noundef readonly %dss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 16
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feat, align 4
  %num_ports = getelementptr inbounds %struct.dss_features, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  %4 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dss, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %entry.__dss_uninit_ports.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.__dss_uninit_ports.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dss_uninit_ports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %7, i32 noundef %i.010.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat, align 4
  %ports.i = getelementptr inbounds %struct.dss_features, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 %i.010.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %13, label %if.end.i.for.inc.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb2.i
  ]

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dpi_uninit_port(ptr noundef nonnull %call.i) #13
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdi_uninit_port(ptr noundef nonnull %call.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb2.i, %sw.bb.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.__dss_uninit_ports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.__dss_uninit_ports.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dss_uninit_ports.exit

__dss_uninit_ports.exit:                          ; preds = %for.inc.i.__dss_uninit_ports.exit_crit_edge, %entry.__dss_uninit_ports.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_video_pll_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dss_dpi_select_source_omap2_omap3(ptr nocapture noundef readnone %dss, i32 noundef %port, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.not = icmp eq i32 %channel, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dss_video_pll_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpi_init_port(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdi_init_port(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpi_uninit_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdi_uninit_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dss_dump_clocks(ptr nocapture noundef readonly %dss, ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_get.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_dump_clocks, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !258

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_get.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end, !prof !248

do.end20.i:                                       ; preds = %do.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 861, i32 noundef 9, ptr noundef null) #13
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !261
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end20.i.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end20.i.cleanup_crit_edge:                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !262
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63) #13
  %dss_clk = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 6
  %5 = ptrtoint ptr %dss_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dss_clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %6) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.23, i32 noundef %call2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_runtime_put.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_dump_clocks, %do.end.i11)) #13
          to label %if.then.i7 [label %do.end.i11], !srcloc !258

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_runtime_put.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.21) #13
  br label %do.end.i11

do.end.i11:                                       ; preds = %if.then.i7, %if.end
  %7 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dss, align 4
  %dev.i8 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.i.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i8, i32 noundef 4) #13
  %call.i.fr.i = freeze i32 %call.i.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.fr.i)
  %cmp.i10 = icmp slt i32 %call.i.fr.i, 0
  br i1 %cmp.i10, label %switch.early.test.i, label %do.end.i11.cleanup_crit_edge

do.end.i11.cleanup_crit_edge:                     ; preds = %do.end.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.early.test.i:                              ; preds = %do.end.i11
  %9 = zext i32 %call.i.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call.i.fr.i, label %do.end22.i [
    i32 -16, label %switch.early.test.i.cleanup_crit_edge
    i32 -38, label %switch.early.test.i.cleanup_crit_edge14
  ]

switch.early.test.i.cleanup_crit_edge14:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end22.i:                                       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 875, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end22.i, %switch.early.test.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge14, %do.end.i11.cleanup_crit_edge, %do.end11.i.i.i.i, %do.end20.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_dump_clocks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dss_component_compare(ptr noundef readnone %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_bind(ptr noundef %dev) #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %pdata = alloca %struct.dss_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdata) #13
  %call1 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pm_set_vt_switch(i32 noundef 0) #13
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #13
  %3 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 255, i32 48)
  %5 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fwnode.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.11, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #13
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @component_unbind_all(ptr noundef %dev, ptr noundef null) #13
  %16 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %drm_pdev8 = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %drm_pdev8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %drm_pdev8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then5 ], [ 0, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdata) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dss_unbind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_pdev = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %drm_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #13
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_set_vt_switch(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_dpi_select_source_omap4(ptr nocapture noundef readonly %dss, i32 noundef %port, i32 noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %channel, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 131072, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %3, -131073
  %or = or i32 %and, %val.0
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %or) #13, !srcloc !251
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_lcd_clk_mux_omap4(ptr nocapture noundef readonly %dss, i32 noundef %channel, i32 noundef %clk_src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x i8], ptr @__const.dss_lcd_clk_mux_omap4.ctrl_bits, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_src)
  %cmp = icmp eq i32 %clk_src, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %conv = zext i8 %1 to i32
  %shl6 = shl nuw i32 1, %conv
  %neg = xor i32 %shl6, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %and) #13, !srcloc !251
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx19 = getelementptr [3 x i32], ptr @__const.dss_lcd_clk_mux_omap4.allowed_plls, i32 0, i32 %channel
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %clk_src)
  %cmp20.not = icmp eq i32 %8, %clk_src
  br i1 %cmp20.not, label %if.end44, label %do.end, !prof !252

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 546, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %base.i100 = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %9 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #13, !srcloc !250
  %conv51 = zext i8 %1 to i32
  %shl58 = shl nuw i32 1, %conv51
  %or72 = or i32 %11, %shl58
  %12 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i100, align 4
  %add.ptr.i103 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %or72) #13, !srcloc !251
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %do.end ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_dpi_select_source_omap5(ptr nocapture noundef readonly %dss, i32 noundef %port, i32 noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %0 = icmp ult i32 %channel, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dss_dpi_select_source_omap5, i32 0, i32 %channel
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %and = and i32 %4, -196609
  %or = or i32 %and, %switch.load
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %or) #13, !srcloc !251
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_lcd_clk_mux_omap5(ptr nocapture noundef readonly %dss, i32 noundef %channel, i32 noundef %clk_src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i8], ptr @__const.dss_lcd_clk_mux_dra7.ctrl_bits, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_src)
  %cmp = icmp eq i32 %clk_src, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %conv = zext i8 %1 to i32
  %shl6 = shl nuw i32 1, %conv
  %neg = xor i32 %shl6, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %and) #13, !srcloc !251
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx19 = getelementptr [4 x i32], ptr @__const.dss_lcd_clk_mux_omap5.allowed_plls, i32 0, i32 %channel
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %clk_src)
  %cmp20.not = icmp eq i32 %8, %clk_src
  br i1 %cmp20.not, label %if.end44, label %do.end, !prof !252

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 517, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %base.i100 = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %9 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #13, !srcloc !250
  %conv51 = zext i8 %1 to i32
  %shl58 = shl nuw i32 1, %conv51
  %or72 = or i32 %11, %shl58
  %12 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i100, align 4
  %add.ptr.i103 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %or72) #13, !srcloc !251
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %do.end ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_dpi_select_source_dra7xx(ptr nocapture noundef readonly %dss, i32 noundef %port, i32 noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %port, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %1 = icmp ult i32 %channel, 4
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dss_dpi_select_source_dra7xx, i32 0, i32 %channel
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %base.i.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !250
  %and.i = and i32 %5, -196609
  %or.i = or i32 %and.i, %switch.load
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %or.i) #13, !srcloc !251
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel)
  %cmp.not = icmp eq i32 %channel, 2
  br i1 %cmp.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %channel)
  %cmp3.not = icmp eq i32 %channel, 3
  br i1 %cmp3.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2.return_crit_edge, %sw.bb1.return_crit_edge, %switch.lookup, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %sw.bb2.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ], [ -22, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_lcd_clk_mux_dra7(ptr nocapture noundef readonly %dss, i32 noundef %channel, i32 noundef %clk_src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i8], ptr @__const.dss_lcd_clk_mux_dra7.ctrl_bits, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_src)
  %cmp = icmp eq i32 %clk_src, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !250
  %conv = zext i8 %1 to i32
  %shl6 = shl nuw i32 1, %conv
  %neg = xor i32 %shl6, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %and) #13, !srcloc !251
  br label %cleanup

if.end:                                           ; preds = %entry
  %syscon_pll_ctrl.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 2
  %7 = ptrtoint ptr %syscon_pll_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %syscon_pll_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %9 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %channel, label %do.end28.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %10 = zext i32 %clk_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %clk_src, label %do.end.i [
    i32 1, label %sw.bb.i.if.end21_crit_edge
    i32 7, label %sw.bb2.i
  ]

sw.bb.i.if.end21_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

sw.bb2.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i
  %11 = zext i32 %clk_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %clk_src, label %do.end10.i [
    i32 3, label %sw.bb3.i.if.end21_crit_edge
    i32 6, label %sw.bb5.i
    i32 7, label %sw.bb6.i
  ]

sw.bb3.i.if.end21_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

sw.bb5.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

sw.bb6.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end10.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #16
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.end.i
  %12 = zext i32 %clk_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %clk_src, label %do.end21.i [
    i32 4, label %sw.bb14.i.if.end21_crit_edge
    i32 3, label %sw.bb16.i
    i32 7, label %sw.bb17.i
  ]

sw.bb14.i.if.end21_crit_edge:                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

sw.bb16.i:                                        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

sw.bb17.i:                                        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end21.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #16
  br label %cleanup

do.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #16
  br label %cleanup

if.end21:                                         ; preds = %sw.bb17.i, %sw.bb16.i, %sw.bb14.i.if.end21_crit_edge, %sw.bb6.i, %sw.bb5.i, %sw.bb3.i.if.end21_crit_edge, %sw.bb2.i, %sw.bb.i.if.end21_crit_edge
  %val.0.i = phi i32 [ 2, %sw.bb17.i ], [ 1, %sw.bb16.i ], [ 2, %sw.bb6.i ], [ 1, %sw.bb5.i ], [ 1, %sw.bb2.i ], [ 0, %sw.bb.i.if.end21_crit_edge ], [ 0, %sw.bb3.i.if.end21_crit_edge ], [ 0, %sw.bb14.i.if.end21_crit_edge ]
  %shift.0.i = phi i32 [ 7, %sw.bb17.i ], [ 7, %sw.bb16.i ], [ 5, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 3, %sw.bb2.i ], [ 3, %sw.bb.i.if.end21_crit_edge ], [ 5, %sw.bb3.i.if.end21_crit_edge ], [ 7, %sw.bb14.i.if.end21_crit_edge ]
  %syscon_pll_ctrl_offset.i = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 3
  %13 = ptrtoint ptr %syscon_pll_ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %syscon_pll_ctrl_offset.i, align 4
  %shl.i = shl nuw nsw i32 3, %shift.0.i
  %shl33.i = shl nuw nsw i32 %val.0.i, %shift.0.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %8, i32 noundef %14, i32 noundef %shl.i, i32 noundef %shl33.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %base.i78 = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 1
  %15 = ptrtoint ptr %base.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %16, i32 64
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #13, !srcloc !250
  %conv28 = zext i8 %1 to i32
  %shl35 = shl nuw i32 1, %conv28
  %or49 = or i32 %17, %shl35
  %18 = ptrtoint ptr %base.i78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i78, align 4
  %add.ptr.i81 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %or49) #13, !srcloc !251
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end28.i, %do.end21.i, %do.end10.i, %do.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end21 ], [ -22, %do.end28.i ], [ -22, %do.end21.i ], [ -22, %do.end10.i ], [ -22, %do.end.i ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_save_context.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_runtime_suspend, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !258

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_save_context.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.93) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %base.i.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !250
  %arrayidx.i = getelementptr %struct.dss_device, ptr %1, i32 0, i32 15, i32 16
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx.i, align 4
  %feat.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %feat.i, align 4
  %outputs.i = getelementptr inbounds %struct.dss_features, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %outputs.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %do.end.i.if.end26.i_crit_edge, label %if.then9.i

do.end.i.if.end26.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %13, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #13, !srcloc !250
  %arrayidx17.i = getelementptr %struct.dss_device, ptr %1, i32 0, i32 15, i32 17
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx17.i, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %17, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #13, !srcloc !250
  %arrayidx25.i = getelementptr %struct.dss_device, ptr %1, i32 0, i32 15, i32 18
  %19 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then9.i, %do.end.i.if.end26.i_crit_edge
  %ctx_valid.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %ctx_valid.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ctx_valid.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_save_context.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_runtime_suspend, %dss_save_context.exit)) #13
          to label %if.then41.i [label %dss_save_context.exit], !srcloc !258

if.then41.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_save_context.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.95) #13
  br label %dss_save_context.exit

dss_save_context.exit:                            ; preds = %if.then41.i, %if.end26.i
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dss_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_restore_context.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_runtime_resume, %do.end.i)) #13
          to label %if.then.i [label %do.end.i], !srcloc !258

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_restore_context.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.98) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %ctx_valid.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ctx_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctx_valid.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not.i = icmp eq i8 %3, 0
  br i1 %tobool4.not.i, label %do.end.i.dss_restore_context.exit_crit_edge, label %if.end6.i

do.end.i.dss_restore_context.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dss_restore_context.exit

if.end6.i:                                        ; preds = %do.end.i
  %arrayidx.i = getelementptr %struct.dss_device, ptr %1, i32 0, i32 15, i32 16
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #13, !srcloc !251
  %feat.i = getelementptr inbounds %struct.dss_device, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feat.i, align 4
  %outputs.i = getelementptr inbounds %struct.dss_features, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %outputs.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.do.body27.i_crit_edge, label %if.then11.i

if.end6.i.do.body27.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i = getelementptr %struct.dss_device, ptr %1, i32 0, i32 15, i32 17
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.i, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %15) #13, !srcloc !251
  %arrayidx24.i = getelementptr %struct.dss_device, ptr %1, i32 0, i32 15, i32 18
  %18 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24.i, align 4
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %19) #13, !srcloc !251
  br label %do.body27.i

do.body27.i:                                      ; preds = %if.then11.i, %if.end6.i.do.body27.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dss_restore_context.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dss_runtime_resume, %dss_restore_context.exit)) #13
          to label %if.then41.i [label %dss_restore_context.exit], !srcloc !258

if.then41.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dss_restore_context.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.100) #13
  br label %dss_restore_context.exit

dss_restore_context.exit:                         ; preds = %if.then41.i, %do.body27.i, %do.end.i.dss_restore_context.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !129, !131, !133, !134, !135, !136, !138, !140, !142, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 167, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dss_ctrl_pll_enable._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dss_ctrl_pll_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 279, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dss_sdi_enable._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dss_sdi_enable._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 291, i32 4}
!13 = !{ptr @dss_sdi_enable._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @dss_sdi_enable._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 302, i32 4}
!17 = !{ptr @dss_sdi_enable._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @dss_sdi_enable._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 646, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dss_set_fck_rate.__UNIQUE_ID_ddebug317, !20, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!24 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 654, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 858, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dss_runtime_get.__UNIQUE_ID_ddebug318, !29, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 872, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dss_runtime_put.__UNIQUE_ID_ddebug319, !34, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!37 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1616, i32 13}
!40 = !{ptr @omap_dsshw_driver, !41, !"omap_dsshw_driver", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1611, i32 24}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 84, i32 22}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 85, i32 25}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 86, i32 25}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 87, i32 25}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 88, i32 25}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 89, i32 25}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 90, i32 25}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 91, i32 27}
!58 = !{ptr @dss_generic_clk_source_names, !59, !"dss_generic_clk_source_names", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 83, i32 27}
!60 = !{ptr @dss_debug_fops, !61, !"dss_debug_fops", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 916, i32 37}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1439, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dss_probe._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @dss_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1489, i32 50}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1491, i32 50}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1301, i32 15}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1302, i32 15}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1303, i32 15}
!79 = !{ptr @dss_soc_devices, !80, !"dss_soc_devices", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1300, i32 42}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1078, i32 21}
!83 = !{ptr @omap34xx_dss_feats, !84, !"omap34xx_dss_feats", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1073, i32 34}
!85 = !{ptr @omap34xx_ports, !86, !"omap34xx_ports", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 984, i32 37}
!87 = !{ptr @omap3430_dss_supported_outputs, !88, !"omap3430_dss_supported_outputs", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1003, i32 38}
!89 = !{ptr @dss_ops_omap2_omap3, !90, !"dss_ops_omap2_omap3", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 961, i32 29}
!91 = !{ptr @am43xx_dss_feats, !92, !"am43xx_dss_feats", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1129, i32 34}
!93 = !{ptr @omap2plus_ports, !94, !"omap2plus_ports", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 980, i32 37}
!95 = !{ptr @am43xx_dss_supported_outputs, !96, !"am43xx_dss_supported_outputs", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1021, i32 38}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 824, i32 38}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 826, i32 3}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @dss_get_clocks._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @dss_get_clocks._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 835, i32 4}
!106 = !{ptr @dss_get_clocks._entry.44, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @dss_get_clocks._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1235, i32 32}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1239, i32 4}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @dss_video_pll_probe._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @dss_video_pll_probe._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1246, i32 4}
!117 = !{ptr @dss_video_pll_probe._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dss_video_pll_probe._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1252, i32 49}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1265, i32 4}
!123 = !{ptr @dss_video_pll_probe._entry.54, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dss_video_pll_probe._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1270, i32 35}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1270, i32 48}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1277, i32 48}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1415, i32 2}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dss_probe_hardware._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @dss_probe_hardware._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 889, i32 27}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 343, i32 16}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 348, i32 16}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 364, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 365, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 366, i32 2}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 367, i32 2}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 370, i32 3}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 371, i32 3}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 372, i32 3}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1369, i32 28}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1378, i32 28}
!161 = !{ptr @dss_component_ops, !162, !"dss_component_ops", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1342, i32 42}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1569, i32 2}
!165 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @dss_shutdown.__UNIQUE_ID_ddebug320, !164, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!167 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @dss_of_match, !169, !"dss_of_match", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1290, i32 34}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1064, i32 21}
!172 = !{ptr @omap24xx_dss_feats, !173, !"omap24xx_dss_feats", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1055, i32 34}
!174 = !{ptr @omap2_dss_supported_outputs, !175, !"omap2_dss_supported_outputs", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 995, i32 38}
!176 = !{ptr @omap3630_dss_feats, !177, !"omap3630_dss_feats", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1087, i32 34}
!178 = !{ptr @omap3630_dss_supported_outputs, !179, !"omap3630_dss_supported_outputs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1012, i32 38}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1106, i32 21}
!182 = !{ptr @omap44xx_dss_feats, !183, !"omap44xx_dss_feats", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1101, i32 34}
!184 = !{ptr @omap4_dss_supported_outputs, !185, !"omap4_dss_supported_outputs", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1026, i32 38}
!186 = !{ptr @dss_ops_omap4, !187, !"dss_ops_omap4", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 965, i32 29}
!188 = !{ptr @omap54xx_dss_feats, !189, !"omap54xx_dss_feats", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1115, i32 34}
!190 = !{ptr @omap5_dss_supported_outputs, !191, !"omap5_dss_supported_outputs", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1038, i32 38}
!192 = !{ptr @dss_ops_omap5, !193, !"dss_ops_omap5", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 970, i32 29}
!194 = !{ptr @dra7xx_dss_feats, !195, !"dra7xx_dss_feats", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1143, i32 34}
!196 = !{ptr @dra7xx_ports, !197, !"dra7xx_ports", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 989, i32 37}
!198 = !{ptr @dss_ops_dra7, !199, !"dss_ops_dra7", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 975, i32 29}
!200 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 195, i32 4}
!202 = !{ptr @.str.81, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @dss_ctrl_pll_set_control_mux._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @dss_ctrl_pll_set_control_mux._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 211, i32 4}
!207 = !{ptr @dss_ctrl_pll_set_control_mux._entry.82, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @dss_ctrl_pll_set_control_mux._entry_ptr.84, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 227, i32 4}
!211 = !{ptr @dss_ctrl_pll_set_control_mux._entry.85, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dss_ctrl_pll_set_control_mux._entry_ptr.87, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 233, i32 3}
!215 = !{ptr @dss_ctrl_pll_set_control_mux._entry.88, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @dss_ctrl_pll_set_control_mux._entry_ptr.90, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @dss_pm_ops, !218, !"dss_pm_ops", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1606, i32 32}
!219 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 112, i32 2}
!221 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @dss_save_context.__UNIQUE_ID_ddebug309, !220, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!223 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 123, i32 2}
!226 = !{ptr @dss_save_context.__UNIQUE_ID_ddebug310, !225, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!227 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 128, i32 2}
!230 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @dss_restore_context.__UNIQUE_ID_ddebug311, !229, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!232 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 140, i32 2}
!235 = !{ptr @dss_restore_context.__UNIQUE_ID_ddebug312, !234, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!236 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @omap_dss_drivers, !238, !"omap_dss_drivers", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/omapdrm/dss/dss.c", i32 1624, i32 39}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{!"branch_weights", i32 1, i32 2000}
!249 = !{i64 2156722391, i64 2156722889, i64 2156722428, i64 2156722484, i64 2156722518, i64 2156722542, i64 2156722583, i64 2156722604, i64 2156722632, i64 2156722666}
!250 = !{i64 6286815}
!251 = !{i64 6286397}
!252 = !{!"branch_weights", i32 2000, i32 1}
!253 = !{i64 2156744636, i64 2156745134, i64 2156744673, i64 2156744729, i64 2156744763, i64 2156744787, i64 2156744828, i64 2156744849, i64 2156744877, i64 2156744911}
!254 = !{i64 2156746264, i64 2156746762, i64 2156746301, i64 2156746357, i64 2156746391, i64 2156746415, i64 2156746456, i64 2156746477, i64 2156746505, i64 2156746539}
!255 = !{i64 2156747784, i64 2156748282, i64 2156747821, i64 2156747877, i64 2156747911, i64 2156747935, i64 2156747976, i64 2156747997, i64 2156748025, i64 2156748059}
!256 = !{i8 0, i8 2}
!257 = !{i64 2156742036, i64 2156742534, i64 2156742073, i64 2156742129, i64 2156742163, i64 2156742187, i64 2156742228, i64 2156742249, i64 2156742277, i64 2156742311}
!258 = !{i64 2148523587, i64 2148523592, i64 2148523605, i64 2148523649, i64 2148523683, i64 2148523704}
!259 = !{i64 2156761956, i64 2156762454, i64 2156761993, i64 2156762049, i64 2156762083, i64 2156762107, i64 2156762148, i64 2156762169, i64 2156762197, i64 2156762231}
!260 = !{i64 2148698408}
!261 = !{i64 1185008, i64 1185033, i64 1185055, i64 1185071, i64 1185083, i64 1185103, i64 1185127, i64 1185143, i64 1185155}
!262 = !{i64 2148698596}
!263 = !{!"auto-init"}
