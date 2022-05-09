; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_mdss_funcs = type { ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dpu_mdss = type { %struct.msm_mdss, ptr, %struct.dss_module_power, %struct.dpu_irq_controller }
%struct.msm_mdss = type { ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_irq_controller = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdss\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mapped mdss address space @%pK\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_mdss_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[dpu error]failed to parse clocks, ret=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpu_mdss_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c\00", [55 x i8] zeroinitializer }, align 32
@dpu_mdss_init._entry_ptr = internal global ptr @dpu_mdss_init._entry, section ".printk_index", align 4
@mdss_funcs = internal constant { %struct.msm_mdss_funcs, [20 x i8] } { %struct.msm_mdss_funcs { ptr @dpu_mdss_enable, ptr @dpu_mdss_disable, ptr @dpu_mdss_destroy }, [20 x i8] zeroinitializer }, align 32
@dpu_mdss_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[dpu error]clock enable failed, ret:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpu_mdss_enable\00", [16 x i8] zeroinitializer }, align 32
@dpu_mdss_enable._entry_ptr = internal global ptr @dpu_mdss_enable._entry, section ".printk_index", align 4
@dpu_mdss_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[dpu error]clock disable failed, ret:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpu_mdss_disable\00", [47 x i8] zeroinitializer }, align 32
@dpu_mdss_disable._entry_ptr = internal global ptr @dpu_mdss_disable._entry, section ".printk_index", align 4
@dpu_mdss_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @dpu_mdss_irqdomain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@_dpu_mdss_irq_domain_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[dpu error]failed to add irq_domain\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_dpu_mdss_irq_domain_add\00", [39 x i8] zeroinitializer }, align 32
@_dpu_mdss_irq_domain_add._entry_ptr = internal global ptr @_dpu_mdss_irq_domain_add._entry, section ".printk_index", align 4
@dpu_mdss_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dpu_mdss_request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dpu_mdss_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_mdss_irq_mask, ptr null, ptr @dpu_mdss_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpu_mdss\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"handle irq fail: irq=%lu rc=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1342177280, i64 1342177281, i64 1610612736, i64 1610743808, i64 1879179264]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 225, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 229, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 234, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"mdss_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 207, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 144, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 182, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"dpu_mdss_irqdomain_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 104, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 119, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"dpu_mdss_lock_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 92, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"dpu_mdss_request_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 92, i32 49 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"dpu_mdss_irq_chip\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 86, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 53, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @_dpu_mdss_irq_domain_add._entry, ptr @_dpu_mdss_irq_domain_add._entry_ptr, ptr @dpu_mdss_disable._entry, ptr @dpu_mdss_disable._entry_ptr, ptr @dpu_mdss_enable._entry, ptr @dpu_mdss_enable._entry_ptr, ptr @dpu_mdss_init._entry, ptr @dpu_mdss_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mdss_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dpu_mdss_irqdomain_ops, ptr @.str.9, ptr @.str.10, ptr @dpu_mdss_lock_key, ptr @dpu_mdss_request_key, ptr @dpu_mdss_irq_chip, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdss_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_mdss_irq_domain_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_mdss_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_mdss_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull @.str, ptr noundef nonnull @.str) #4
  %mmio = getelementptr inbounds %struct.dpu_mdss, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %call2) #4
  %mp10 = getelementptr inbounds %struct.dpu_mdss, ptr %call.i, i32 0, i32 2
  %call11 = tail call i32 @msm_dss_parse_clock(ptr noundef %pdev, ptr noundef %mp10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call11) #7
  br label %clk_parse_err

if.end15:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %funcs = getelementptr inbounds %struct.msm_mdss, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mdss_funcs, ptr %funcs, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @dpu_mdss_irqdomain_ops, ptr noundef nonnull %call.i) #4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %_dpu_mdss_irq_domain_add.exit, label %if.end22

_dpu_mdss_irq_domain_add.exit:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %irq_domain_error

if.end22:                                         ; preds = %if.end15
  %irq_controller.i = getelementptr inbounds %struct.dpu_mdss, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %irq_controller.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_controller.i, align 4
  %domain4.i = getelementptr inbounds %struct.dpu_mdss, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %domain4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i.i, ptr %domain4.i, align 4
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %10 = ptrtoint ptr %domain4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain4.i, align 4
  %tobool.not.i71 = icmp eq ptr %11, null
  br i1 %tobool.not.i71, label %if.then24.irq_domain_error_crit_edge, label %if.then.i

if.then24.irq_domain_error_crit_edge:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %irq_domain_error

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @irq_domain_remove(ptr noundef nonnull %11) #4
  %12 = ptrtoint ptr %domain4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %domain4.i, align 4
  br label %irq_domain_error

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call23, ptr noundef nonnull @dpu_mdss_irq, ptr noundef nonnull %call.i) #4
  %mdss = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %mdss to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %mdss, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #4
  br label %cleanup

irq_domain_error:                                 ; preds = %if.then.i, %if.then24.irq_domain_error_crit_edge, %_dpu_mdss_irq_domain_add.exit
  %ret.0 = phi i32 [ -22, %_dpu_mdss_irq_domain_add.exit ], [ %call23, %if.then24.irq_domain_error_crit_edge ], [ %call23, %if.then.i ]
  %clk_config = getelementptr inbounds %struct.dpu_mdss, ptr %call.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_config, align 4
  %16 = ptrtoint ptr %mp10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mp10, align 4
  tail call void @msm_dss_put_clk(ptr noundef %15, i32 noundef %17) #4
  br label %clk_parse_err

clk_parse_err:                                    ; preds = %irq_domain_error, %do.end
  %ret.1 = phi i32 [ %call11, %do.end ], [ %ret.0, %irq_domain_error ]
  %clk_config29 = getelementptr inbounds %struct.dpu_mdss, ptr %call.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %clk_config29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_config29, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %19) #4
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %clk_parse_err.if.end35_crit_edge, label %if.then32

clk_parse_err.if.end35_crit_edge:                 ; preds = %clk_parse_err
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then32:                                        ; preds = %clk_parse_err
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devm_iounmap(ptr noundef %dev, ptr noundef nonnull %21) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %clk_parse_err.if.end35_crit_edge
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mmio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end25, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %ret.1, %if.end35 ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_parse_clock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_mdss_irq(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #4
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %11(ptr noundef %irq_data4.i) #4
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %mmio = getelementptr inbounds %struct.dpu_mdss, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not23 = icmp eq i32 %14, 0
  br i1 %tobool.not23, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %domain = getelementptr inbounds %struct.dpu_mdss, ptr %1, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %interrupts.024 = phi i32 [ %15, %while.body.lr.ph ], [ %and, %cleanup.while.body_crit_edge ]
  %16 = tail call i32 @llvm.ctlz.i32(i32 %interrupts.024, i1 true) #4, !range !49
  %sub = xor i32 %16, 31
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %sub, i32 noundef %call4) #4
  br label %while.end

cleanup:                                          ; preds = %while.body
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %interrupts.024, %neg
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %chained_irq_enter.exit.while.end_crit_edge
  %19 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i17 = icmp eq ptr %20, null
  br i1 %tobool.not.i17, label %if.else.i18, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_exit.exit

if.else.i18:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i18, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i18 ], [ %20, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dss_put_clk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_mdss_enable(ptr nocapture noundef readonly %mdss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mp1 = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 2
  %clk_config = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_config, align 4
  %2 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mp1, align 4
  %call = tail call i32 @msm_dss_enable_clk(ptr noundef %1, i32 noundef %3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 1
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !48
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 1342177280, label %if.end.sw.bb_crit_edge
    i32 1342177281, label %if.end.sw.bb_crit_edge35
    i32 1610612736, label %sw.bb9
    i32 1610743808, label %sw.bb16
    i32 1879179264, label %sw.bb19
  ]

if.end.sw.bb_crit_edge35:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge35
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 537133056) #4, !srcloc !50
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1041235968) #4, !srcloc !50
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 33554432) #4, !srcloc !50
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16777216) #4, !srcloc !50
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 503316480) #4, !srcloc !50
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 504365056) #4, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb16, %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_mdss_disable(ptr nocapture noundef readonly %mdss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mp1 = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 2
  %clk_config = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_config, align 4
  %2 = ptrtoint ptr %mp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mp1, align 4
  %call = tail call i32 @msm_dss_enable_clk(ptr noundef %1, i32 noundef %3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_mdss_destroy(ptr nocapture noundef %mdss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdss, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %mp4 = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 2
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 0) #4
  %2 = ptrtoint ptr %mdss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdss, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #4
  %domain.i = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry._dpu_mdss_irq_domain_fini.exit_crit_edge, label %if.then.i

entry._dpu_mdss_irq_domain_fini.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_dpu_mdss_irq_domain_fini.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @irq_domain_remove(ptr noundef nonnull %5) #4
  %6 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %domain.i, align 4
  br label %_dpu_mdss_irq_domain_fini.exit

_dpu_mdss_irq_domain_fini.exit:                   ; preds = %if.then.i, %entry._dpu_mdss_irq_domain_fini.exit_crit_edge
  %call7 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call7, ptr noundef null, ptr noundef null) #4
  %clk_config = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_config, align 4
  %9 = ptrtoint ptr %mp4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mp4, align 4
  tail call void @msm_dss_put_clk(ptr noundef %8, i32 noundef %10) #4
  %11 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_config, align 4
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %12) #4
  %mmio = getelementptr inbounds %struct.dpu_mdss, ptr %mdss, i32 0, i32 1
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %_dpu_mdss_irq_domain_fini.exit.if.end_crit_edge, label %if.then

_dpu_mdss_irq_domain_fini.exit.if.end_crit_edge:  ; preds = %_dpu_mdss_irq_domain_fini.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %_dpu_mdss_irq_domain_fini.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devm_iounmap(ptr noundef %1, ptr noundef nonnull %14) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %_dpu_mdss_irq_domain_fini.exit.if.end_crit_edge
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mmio, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_enable_clk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_mdss_irqdomain_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @__irq_set_lockdep_class(i32 noundef %irq, ptr noundef nonnull @dpu_mdss_lock_key, ptr noundef nonnull @dpu_mdss_request_key) #4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dpu_mdss_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_mdss_irq_mask(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !51
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_controller = getelementptr inbounds %struct.dpu_mdss, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_controller) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_mdss_irq_unmask(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !53
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_controller = getelementptr inbounds %struct.dpu_mdss, ptr %1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_controller) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 225, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 229, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 234, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dpu_mdss_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dpu_mdss_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @mdss_funcs, !11, !"mdss_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 207, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 144, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dpu_mdss_enable._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @dpu_mdss_enable._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 182, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dpu_mdss_disable._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @dpu_mdss_disable._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 119, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @_dpu_mdss_irq_domain_add._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @_dpu_mdss_irq_domain_add._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @dpu_mdss_irqdomain_ops, !28, !"dpu_mdss_irqdomain_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 104, i32 36}
!29 = !{ptr @dpu_mdss_lock_key, !30, !"dpu_mdss_lock_key", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 92, i32 30}
!31 = !{ptr @dpu_mdss_request_key, !32, !"dpu_mdss_request_key", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 92, i32 49}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 87, i32 10}
!35 = !{ptr @dpu_mdss_irq_chip, !36, !"dpu_mdss_irq_chip", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 86, i32 24}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c", i32 53, i32 4}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 3634182}
!49 = !{i32 0, i32 33}
!50 = !{i64 3633764}
!51 = !{i64 2157268143}
!52 = !{i64 2157268486}
!53 = !{i64 2157268664}
!54 = !{i64 2157269001}
