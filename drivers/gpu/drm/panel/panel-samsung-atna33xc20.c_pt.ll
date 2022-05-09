; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-atna33xc20.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_aux_ep_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.atana33xc20_panel = type { %struct.drm_panel, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i64, i64, i64 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.dp_aux_ep_device = type { %struct.device, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }

@__initcall__kmod_panel_samsung_atna33xc20__303_357_atana33xc20_init6 = internal global ptr @atana33xc20_init, section ".initcall6.init", align 4
@atana33xc20_driver = internal global { %struct.dp_aux_ep_driver, [40 x i8] } { %struct.dp_aux_ep_driver { ptr @atana33xc20_probe, ptr @atana33xc20_remove, ptr @atana33xc20_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atana33xc20_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atana33xc20_pm_ops, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@__exitcall_atana33xc20_exit = internal global ptr @atana33xc20_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [70 x i8] c"panel_samsung_atna33xc20.description=Samsung ATANA33XC20 Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [77 x i8] c"panel_samsung_atna33xc20.file=drivers/gpu/drm/panel/panel-samsung-atna33xc20\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [40 x i8] c"panel_samsung_atna33xc20.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung_atana33xc20\00", [44 x i8] zeroinitializer }, align 32
@atana33xc20_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,atna33xc20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atana33xc20_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atana33xc20_suspend, ptr @atana33xc20_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get power supply\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get enable GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-hpd\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get HPD GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@atana33xc20_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @atana33xc20_prepare, ptr @atana33xc20_enable, ptr @atana33xc20_disable, ptr @atana33xc20_unprepare, ptr @atana33xc20_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register dp aux backlight\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/panel/panel-samsung-atna33xc20.c\00", [47 x i8] zeroinitializer }, align 32
@atana33xc20_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.9, i32 107, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Timeout waiting for HPD\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atana33xc20_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atana33xc20_resume._entry_ptr = internal global ptr @atana33xc20_resume._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"atana33xc20_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 342, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 344, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"atana33xc20_dt_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 330, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"atana33xc20_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 336, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 266, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 269, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 271, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 274, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 276, i32 54 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 278, i32 50 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 281, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"atana33xc20_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 237, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 302, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 159, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [52 x i8] c"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 107, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_atana33xc20_exit, ptr @__initcall__kmod_panel_samsung_atna33xc20__303_357_atana33xc20_init6, ptr @atana33xc20_exit, ptr @atana33xc20_resume._entry, ptr @atana33xc20_resume._entry_ptr, ptr @atana33xc20_driver, ptr @.str, ptr @atana33xc20_dt_match, ptr @atana33xc20_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @atana33xc20_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atana33xc20_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atana33xc20_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atana33xc20_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atana33xc20_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atana33xc20_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__dp_aux_dp_driver_register(ptr noundef nonnull @atana33xc20_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atana33xc20_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dp_aux_dp_driver_unregister(ptr noundef nonnull @atana33xc20_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_dp_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dp_aux_dp_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_probe(ptr noundef %aux_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %aux_ep, i32 noundef 72, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %aux_ep, ptr noundef nonnull @.str.1) #5
  %supply = getelementptr inbounds %struct.atana33xc20_panel, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %supply, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %aux_ep, i32 noundef %2, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_gpiod_get(ptr noundef %aux_ep, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %el_on3_gpio = getelementptr inbounds %struct.atana33xc20_panel, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %el_on3_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %el_on3_gpio, align 4
  %cmp.i91 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call10 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %aux_ep, i32 noundef %4, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %of_node = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i92 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i92, null
  %no_hpd = getelementptr inbounds %struct.atana33xc20_panel, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %7 = ptrtoint ptr %no_hpd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %no_hpd, align 1
  br i1 %tobool.i, label %if.end17.if.end30_crit_edge, label %if.then21

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then21:                                        ; preds = %if.end17
  %call22 = tail call ptr @devm_gpiod_get_optional(ptr noundef %aux_ep, ptr noundef nonnull @.str.6, i32 noundef 1) #5
  %hpd_gpio = getelementptr inbounds %struct.atana33xc20_panel, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %hpd_gpio, align 4
  %cmp.i93 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then25, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call22 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %aux_ep, i32 noundef %9, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end30:                                         ; preds = %if.then21.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %aux_ep) #5
  %call.i94 = tail call i32 @devm_add_action(ptr noundef %aux_ep, ptr noundef nonnull @atana33xc20_runtime_disable, ptr noundef %aux_ep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i, label %if.end34, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %aux_ep, i1 noundef zeroext true) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %aux_ep, i32 noundef 1000) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %aux_ep, i1 noundef zeroext true) #5
  %call.i95 = tail call i32 @devm_add_action(ptr noundef %aux_ep, ptr noundef nonnull @atana33xc20_dont_use_autosuspend, ptr noundef %aux_ep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.end38, label %devm_add_action_or_reset.exit98

devm_add_action_or_reset.exit98:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %aux_ep, i1 noundef zeroext false) #5
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %aux_ep, ptr noundef nonnull @atana33xc20_funcs, i32 noundef 14) #5
  %call.i99 = tail call i32 @__pm_runtime_resume(ptr noundef %aux_ep, i32 noundef 4) #5
  %aux = getelementptr inbounds %struct.dp_aux_ep_device, ptr %aux_ep, i32 0, i32 1
  %10 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aux, align 8
  %call41 = tail call i32 @drm_panel_dp_aux_backlight(ptr noundef nonnull %call.i, ptr noundef %11) #5
  %call.i100 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i100, ptr %last_busy.i, align 8
  %call.i101 = tail call i32 @__pm_runtime_suspend(ptr noundef %aux_ep, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %aux_ep, i32 noundef %call41, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then44, %devm_add_action_or_reset.exit98, %devm_add_action_or_reset.exit, %if.then25, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %call16, %if.then13 ], [ %call45, %if.then44 ], [ 0, %if.end46 ], [ %call28, %if.then25 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i94, %devm_add_action_or_reset.exit ], [ %call.i95, %devm_add_action_or_reset.exit98 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atana33xc20_remove(ptr nocapture noundef readonly %aux_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #5
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %1) #5
  %call5 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #5
  %edid = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 8
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atana33xc20_shutdown(ptr nocapture noundef readonly %aux_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #5
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atana33xc20_runtime_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atana33xc20_dont_use_autosuspend(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %data, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_dp_aux_backlight(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prepared, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %el3_was_on = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %el3_was_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %el3_was_on, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end25, label %do.end, !prof !54

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 159, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %powered_on_time = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 10
  %4 = ptrtoint ptr %powered_on_time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %powered_on_time, align 8
  %add.i = add i64 %5, 400000000
  %call1.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call1.i)
  %cmp.i.i.i = icmp sgt i64 %add.i, %call1.i
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end25.atana33xc20_wait.exit_crit_edge

if.end25.atana33xc20_wait.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %atana33xc20_wait.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i64 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #8, !srcloc !55
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #8, !srcloc !56
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %9 = trunc i64 %cond213.i.i.i to i32
  %conv5.i = add i32 %9, 1
  tail call void @msleep(i32 noundef %conv5.i) #5
  br label %atana33xc20_wait.exit

atana33xc20_wait.exit:                            ; preds = %if.then.i, %if.end25.atana33xc20_wait.exit_crit_edge
  %el_on3_gpio = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 7
  %10 = ptrtoint ptr %el_on3_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %el_on3_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #5
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %atana33xc20_wait.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %atana33xc20_wait.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %el_on3_gpio = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 7
  %2 = ptrtoint ptr %el_on3_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %el_on3_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #5
  %call1 = tail call i64 @ktime_get() #5
  %el_on3_off_time = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 11
  %4 = ptrtoint ptr %el_on3_off_time to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call1, ptr %el_on3_off_time, align 8
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled, align 1
  %el3_was_on = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %el3_was_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %el3_was_on, align 2
  tail call void @msleep(i32 noundef 20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %prepared, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_get_modes(ptr nocapture noundef %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #5
  %edid = getelementptr inbounds %struct.atana33xc20_panel, ptr %panel, i32 0, i32 8
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %aux = getelementptr inbounds %struct.dp_aux_ep_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 8
  %ddc = getelementptr inbounds %struct.drm_dp_aux, ptr %5, i32 0, i32 1
  %call4 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #5
  %6 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %edid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edid, align 8
  %call7 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %8) #5
  %9 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel, align 4
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %el3_was_on = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %el3_was_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %el3_was_on, align 2, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %el_on3_off_time = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %el_on3_off_time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %el_on3_off_time, align 8
  %add.i = add i64 %5, 150000000
  %call1.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call1.i)
  %cmp.i.i.i = icmp sgt i64 %add.i, %call1.i
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i64 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #8, !srcloc !55
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #8, !srcloc !56
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %9 = trunc i64 %cond213.i.i.i to i32
  %conv5.i = add i32 %9, 1
  tail call void @msleep(i32 noundef %conv5.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %supply = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supply, align 8
  %call1 = tail call i32 @regulator_disable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i64 @ktime_get() #5
  %powered_off_time = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %powered_off_time to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call5, ptr %powered_off_time, align 8
  %13 = ptrtoint ptr %el3_was_on to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %el3_was_on, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atana33xc20_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powered_off_time = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %powered_off_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %powered_off_time, align 8
  %add.i = add i64 %3, 500000000
  %call1.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call1.i)
  %cmp.i.i.i = icmp sgt i64 %add.i, %call1.i
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.atana33xc20_wait.exit_crit_edge

entry.atana33xc20_wait.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %atana33xc20_wait.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i64 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #8, !srcloc !55
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #8, !srcloc !56
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %7 = trunc i64 %cond213.i.i.i to i32
  %conv5.i = add i32 %7, 1
  tail call void @msleep(i32 noundef %conv5.i) #5
  br label %atana33xc20_wait.exit

atana33xc20_wait.exit:                            ; preds = %if.then.i, %entry.atana33xc20_wait.exit_crit_edge
  %supply = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supply, align 8
  %call1 = tail call i32 @regulator_enable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %atana33xc20_wait.exit.cleanup_crit_edge

atana33xc20_wait.exit.cleanup_crit_edge:          ; preds = %atana33xc20_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %atana33xc20_wait.exit
  %call2 = tail call i64 @ktime_get() #5
  %powered_on_time = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %powered_on_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call2, ptr %powered_on_time, align 8
  %no_hpd = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %no_hpd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %no_hpd, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 200) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %hpd_gpio = getelementptr inbounds %struct.atana33xc20_panel, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hpd_gpio, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.then6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.else
  %call7 = tail call i64 @ktime_get() #5
  %add.i61 = add i64 %call7, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 105) #5
  %15 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hpd_gpio, align 4
  %call1863 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1863)
  %tobool19.not64 = icmp eq i32 %call1863, 0
  br i1 %tobool19.not64, label %if.then6.land.lhs.true_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.land.lhs.true_crit_edge:                 ; preds = %if.then6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %if.then6.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i61)
  %cmp3.i = icmp sgt i64 %call24, %add.i61
  br i1 %cmp3.i, label %for.end, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %17 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hpd_gpio, align 4
  %call18 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %18) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then34.land.lhs.true_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hpd_gpio, align 4
  %call29 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end41, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %for.end.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then4, %atana33xc20_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %atana33xc20_wait.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end41 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_panel_samsung_atna33xc20__303_357_atana33xc20_init6, !1, !"__initcall__kmod_panel_samsung_atna33xc20__303_357_atana33xc20_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 357, i32 1}
!2 = !{ptr @__exitcall_atana33xc20_exit, !3, !"__exitcall_atana33xc20_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 363, i32 1}
!4 = !{ptr @__UNIQUE_ID_description304, !5, !"__UNIQUE_ID_description304", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 365, i32 1}
!6 = !{ptr @__UNIQUE_ID_file305, !7, !"__UNIQUE_ID_file305", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 366, i32 1}
!8 = !{ptr @__UNIQUE_ID_license306, !7, !"__UNIQUE_ID_license306", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 344, i32 12}
!11 = !{ptr @atana33xc20_driver, !12, !"atana33xc20_driver", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 342, i32 32}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 266, i32 42}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 269, i32 10}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 271, i32 43}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 274, i32 10}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 276, i32 54}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 278, i32 50}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 281, i32 11}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 302, i32 10}
!29 = !{ptr @atana33xc20_funcs, !30, !"atana33xc20_funcs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 237, i32 37}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 159, i32 6}
!33 = !{ptr @atana33xc20_dt_match, !34, !"atana33xc20_dt_match", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 330, i32 34}
!35 = !{ptr @atana33xc20_pm_ops, !36, !"atana33xc20_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 336, i32 32}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-samsung-atna33xc20.c", i32 107, i32 4}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @atana33xc20_resume._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @atana33xc20_resume._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 837718, i64 837745}
!56 = !{i64 838413, i64 838440, i64 838473, i64 838494, i64 838521, i64 838547}
