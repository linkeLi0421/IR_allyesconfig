; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-cros-ec.c_pt.bc'
source_filename = "../drivers/pwm/pwm-cros-ec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.46 = type <{ %struct.cros_ec_command, %union.anon.47 }>
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%union.anon.47 = type { %struct.ec_response_pwm_get_duty }
%struct.ec_response_pwm_get_duty = type { i16 }
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
%struct.cros_ec_pwm_device = type { ptr, ptr, %struct.pwm_chip }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.ec_params_pwm_get_duty = type { i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.anon.45 = type { %struct.cros_ec_command, %struct.ec_params_pwm_set_duty }
%struct.ec_params_pwm_set_duty = type { i16, i8, i8 }

@__initcall__kmod_pwm_cros_ec__184_304_cros_ec_pwm_driver_init6 = internal global ptr @cros_ec_pwm_driver_init, section ".initcall6.init", align 4
@cros_ec_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_pwm_probe, ptr @cros_ec_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_pwm_driver_exit = internal global ptr @cros_ec_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias185 = internal constant [39 x i8] c"pwm_cros_ec.alias=platform:cros-ec-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [47 x i8] c"pwm_cros_ec.description=ChromeOS EC PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [41 x i8] c"pwm_cros_ec.file=drivers/pwm/pwm-cros-ec\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [27 x i8] c"pwm_cros_ec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-pwm\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no parent EC device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_pwm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pwm/pwm-cros-ec.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_pwm_probe._entry_ptr = internal global ptr @cros_ec_pwm_probe._entry, section ".printk_index", align 4
@cros_ec_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @cros_ec_pwm_request, ptr @cros_ec_pwm_free, ptr null, ptr @cros_ec_pwm_apply, ptr @cros_ec_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cros_ec_pwm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't find PWMs: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cros_ec_pwm_probe._entry_ptr.8 = internal global ptr @cros_ec_pwm_probe._entry.6, section ".printk_index", align 4
@cros_ec_pwm_probe.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm_cros_ec\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Probed %u PWMs\0A\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_pwm_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot register PWM: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cros_ec_pwm_probe._entry_ptr.13 = internal global ptr @cros_ec_pwm_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cros_ec_pwm_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error getting initial duty: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_ec_pwm_get_state\00", [42 x i8] zeroinitializer }, align 32
@cros_ec_pwm_get_state._entry_ptr = internal global ptr @cros_ec_pwm_get_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967274]
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"cros_ec_pwm_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 296, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 300, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"cros_ec_pwm_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 289, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 244, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"cros_ec_pwm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 194, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 261, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 265, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 269, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [29 x i8] c"../drivers/pwm/pwm-cros-ec.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 154, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_cros_ec_pwm_driver_exit, ptr @__initcall__kmod_pwm_cros_ec__184_304_cros_ec_pwm_driver_init6, ptr @cros_ec_pwm_driver_exit, ptr @cros_ec_pwm_get_state._entry, ptr @cros_ec_pwm_get_state._entry_ptr, ptr @cros_ec_pwm_probe._entry, ptr @cros_ec_pwm_probe._entry.11, ptr @cros_ec_pwm_probe._entry.6, ptr @cros_ec_pwm_probe._entry_ptr, ptr @cros_ec_pwm_probe._entry_ptr.13, ptr @cros_ec_pwm_probe._entry_ptr.8, ptr @cros_ec_pwm_driver, ptr @.str, ptr @cros_ec_pwm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cros_ec_pwm_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pwm_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf.i.i = alloca %struct.anon.46, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %chip7 = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %call.i, i32 0, i32 2
  %ec8 = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ec8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ec8, align 4
  %5 = ptrtoint ptr %chip7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %chip7, align 4
  %ops = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cros_ec_pwm_ops, ptr %ops, align 4
  %of_xlate = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %call.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cros_ec_pwm_xlate, ptr %of_xlate, align 4
  %of_pwm_n_cells = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %call.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %of_pwm_n_cells to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %of_pwm_n_cells, align 4
  %9 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.anon.46, ptr %buf.i.i, i32 0, i32 1
  %index2.i.i = getelementptr inbounds %struct.ec_params_pwm_get_duty, ptr %12, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6
  %i.011.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.011.i to i8
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %buf.i.i) #6
  %13 = call ptr @memset(ptr %buf.i.i, i32 0, i32 20)
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 38, ptr %9, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %11, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %10, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %12, align 4
  %18 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %index2.i.i, align 1
  %call.i.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef nonnull %3, ptr noundef nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.cros_ec_pwm_get_duty.exit.i_crit_edge, label %if.end.i.i

for.body.i.cros_ec_pwm_get_duty.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cros_ec_pwm_get_duty.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %12, align 4
  %conv.i.i = zext i16 %20 to i32
  br label %cros_ec_pwm_get_duty.exit.i

cros_ec_pwm_get_duty.exit.i:                      ; preds = %if.end.i.i, %for.body.i.cros_ec_pwm_get_duty.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ %call.i.i, %for.body.i.cros_ec_pwm_get_duty.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %buf.i.i) #6
  %21 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i, label %sw.default.i [
    i32 -95, label %cros_ec_pwm_get_duty.exit.i.do.end14_crit_edge
    i32 -22, label %cros_ec_pwm_get_duty.exit.i.if.end15_crit_edge
  ]

cros_ec_pwm_get_duty.exit.i.if.end15_crit_edge:   ; preds = %cros_ec_pwm_get_duty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

cros_ec_pwm_get_duty.exit.i.do.end14_crit_edge:   ; preds = %cros_ec_pwm_get_duty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

sw.default.i:                                     ; preds = %cros_ec_pwm_get_duty.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2.i, label %sw.default.i.do.end14_crit_edge, label %for.inc.i

sw.default.i.do.end14_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

for.inc.i:                                        ; preds = %sw.default.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.if.end15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end14:                                         ; preds = %sw.default.i.do.end14_crit_edge, %cros_ec_pwm_get_duty.exit.i.do.end14_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %retval.0.i.i, %sw.default.i.do.end14_crit_edge ], [ -19, %cros_ec_pwm_get_duty.exit.i.do.end14_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.ph.i.ph) #9
  br label %cleanup

if.end15:                                         ; preds = %for.inc.i.if.end15_crit_edge, %cros_ec_pwm_get_duty.exit.i.if.end15_crit_edge
  %retval.0.i6265 = phi i32 [ 255, %for.inc.i.if.end15_crit_edge ], [ %i.011.i, %cros_ec_pwm_get_duty.exit.i.if.end15_crit_edge ]
  %npwm = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %call.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i6265, ptr %npwm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_pwm_probe.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_pwm_probe, %if.then21)) #6
          to label %do.end25 [label %if.then21], !srcloc !52

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %npwm, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_pwm_probe.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %24) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.end15
  %call26 = call i32 @pwmchip_add(ptr noundef %chip7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end32

do.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call26) #9
  br label %cleanup

if.end32:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end31, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.ph.i.ph, %do.end14 ], [ %call26, %do.end31 ], [ %call26, %if.end32 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pwm_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.cros_ec_pwm_device, ptr %1, i32 0, i32 2
  tail call void @pwmchip_remove(ptr noundef %chip1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cros_ec_pwm_xlate(ptr noundef %pc, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %pc, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @pwm_request_from_chip(ptr noundef %pc, i32 noundef %1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %args8 = getelementptr inbounds %struct.pwm_device, ptr %call4, i32 0, i32 6
  %4 = ptrtoint ptr %args8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 65535, ptr %args8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end7 ], [ %call4, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pwm_request(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_pwm_free(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  tail call void @kfree(ptr noundef %call) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pwm_apply(ptr nocapture noundef readonly %chip, ptr noundef %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %buf.i = alloca %struct.anon.45, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %1)
  %cmp.not = icmp eq i64 %1, 65535
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end4.cond.end_crit_edge, label %cond.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %duty_cycle5 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %duty_cycle5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %duty_cycle5, align 8
  %extract.t = trunc i64 %7 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond.off0 = phi i16 [ %extract.t, %cond.true ], [ 0, %if.end4.cond.end_crit_edge ]
  %ec = getelementptr i8, ptr %chip, i32 -4
  %8 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ec, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %10 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm, align 8
  %conv6 = trunc i32 %11 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #6
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.anon.45, ptr %buf.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.anon.45, ptr %buf.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.anon.45, ptr %buf.i, i32 0, i32 1, i32 2
  %17 = call ptr @memset(ptr %buf.i, i32 0, i32 20)
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 37, ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %cond.off0, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %15, align 2
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6, ptr %16, align 1
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %9, ptr noundef nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %cond.end.cleanup_crit_edge, label %if.end11

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %duty_cycle12 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %23 = ptrtoint ptr %duty_cycle12 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %duty_cycle12, align 8
  %conv13 = trunc i64 %24 to i16
  %25 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv13, ptr %call1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_pwm_get_state(ptr nocapture noundef readonly %chip, ptr noundef %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %buf.i = alloca %struct.anon.46, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %ec = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %conv = trunc i32 %3 to i8
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %buf.i) #6
  %4 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.cros_ec_command, ptr %buf.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.anon.46, ptr %buf.i, i32 0, i32 1
  %8 = call ptr @memset(ptr %buf.i, i32 0, i32 20)
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 38, ptr %4, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %6, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %5, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %7, align 4
  %index2.i = getelementptr inbounds %struct.ec_params_pwm_get_duty, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %index2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %index2.i, align 1
  %call.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %1, ptr noundef nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cros_ec_pwm_get_duty.exit.thread, label %cros_ec_pwm_get_duty.exit

cros_ec_pwm_get_duty.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %buf.i) #6
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef %call.i) #9
  br label %cleanup

cros_ec_pwm_get_duty.exit:                        ; preds = %entry
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp4 = icmp ne i16 %17, 0
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %frombool = zext i1 %cmp4 to i8
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %enabled, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 65535, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp6 = icmp eq i16 %17, 0
  br i1 %cmp6, label %land.lhs.true, label %cros_ec_pwm_get_duty.exit.if.else_crit_edge

cros_ec_pwm_get_duty.exit.if.else_crit_edge:      ; preds = %cros_ec_pwm_get_duty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %cros_ec_pwm_get_duty.exit
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp9.not = icmp eq i16 %21, 0
  br i1 %cmp9.not, label %land.lhs.true.if.else_crit_edge, label %if.then11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = zext i16 %21 to i64
  %duty_cycle14 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %duty_cycle14 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv13, ptr %duty_cycle14, align 8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %cros_ec_pwm_get_duty.exit.if.else_crit_edge
  %conv1533 = zext i16 %17 to i64
  %duty_cycle16 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %23 = ptrtoint ptr %duty_cycle16 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv1533, ptr %duty_cycle16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %cros_ec_pwm_get_duty.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request_from_chip(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_pwm_cros_ec__184_304_cros_ec_pwm_driver_init6, !1, !"__initcall__kmod_pwm_cros_ec__184_304_cros_ec_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_cros_ec_pwm_driver_exit, !1, !"__exitcall_cros_ec_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias185, !4, !"__UNIQUE_ID_alias185", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_description186, !6, !"__UNIQUE_ID_description186", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_file187, !8, !"__UNIQUE_ID_file187", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 308, i32 1}
!9 = !{ptr @__UNIQUE_ID_license188, !8, !"__UNIQUE_ID_license188", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 300, i32 11}
!12 = !{ptr @cros_ec_pwm_driver, !13, !"cros_ec_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 296, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 244, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_ec_pwm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_ec_pwm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 261, i32 3}
!24 = !{ptr @cros_ec_pwm_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cros_ec_pwm_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 265, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cros_ec_pwm_probe.__UNIQUE_ID_ddebug183, !27, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 269, i32 3}
!32 = !{ptr @cros_ec_pwm_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cros_ec_pwm_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @cros_ec_pwm_ops, !35, !"cros_ec_pwm_ops", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 194, i32 29}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 154, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cros_ec_pwm_get_state._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cros_ec_pwm_get_state._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @cros_ec_pwm_of_match, !42, !"cros_ec_pwm_of_match", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-cros-ec.c", i32 289, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148958778, i64 2148958783, i64 2148958796, i64 2148958840, i64 2148958874, i64 2148958895}
!53 = !{i8 0, i8 2}
