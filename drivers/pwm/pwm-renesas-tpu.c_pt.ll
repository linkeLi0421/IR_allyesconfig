; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-renesas-tpu.c_pt.bc'
source_filename = "../drivers/pwm/pwm-renesas-tpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tpu_device = type { ptr, %struct.pwm_chip, %struct.spinlock, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.tpu_pwm_device = type { i8, ptr, i32, i32, i32, i16, i16 }

@__initcall__kmod_pwm_renesas_tpu__188_457_tpu_driver_init6 = internal global ptr @tpu_driver_init, section ".initcall6.init", align 4
@tpu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tpu_probe, ptr @tpu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tpu_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tpu_driver_exit = internal global ptr @tpu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [76 x i8] c"pwm_renesas_tpu.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [51 x i8] c"pwm_renesas_tpu.description=Renesas TPU PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [49 x i8] c"pwm_renesas_tpu.file=drivers/pwm/pwm-renesas-tpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [31 x i8] c"pwm_renesas_tpu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [47 x i8] c"pwm_renesas_tpu.alias=platform:renesas-tpu-pwm\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas-tpu-pwm\00", [16 x i8] zeroinitializer }, align 32
@tpu_of_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tpu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tpu->lock\00", [21 x i8] zeroinitializer }, align 32
@tpu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tpu_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/pwm/pwm-renesas-tpu.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpu_probe._entry_ptr = internal global ptr @tpu_probe._entry, section ".printk_index", align 4
@tpu_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @tpu_pwm_request, ptr @tpu_pwm_free, ptr null, ptr null, ptr null, ptr null, ptr @tpu_pwm_config, ptr @tpu_pwm_set_polarity, ptr @tpu_pwm_enable, ptr @tpu_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@tpu_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 417, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register PWM chip\0A\00", [35 x i8] zeroinitializer }, align 32
@tpu_probe._entry_ptr.9 = internal global ptr @tpu_probe._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tpu_pwm_config.prescalers = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 4, i32 16, i32 64], [16 x i8] zeroinitializer }, align 32
@tpu_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock rate mismatch\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tpu_pwm_config\00", [17 x i8] zeroinitializer }, align 32
@tpu_pwm_config._entry_ptr = internal global ptr @tpu_pwm_config._entry, section ".printk_index", align 4
@tpu_pwm_config.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.13, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm_renesas_tpu\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rate %u, prescaler %u, period %u, duty %u\0A\00", [53 x i8] zeroinitializer }, align 32
@tpu_pwm_config.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.14, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%u: TGRA 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@tpu_pwm_timer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot enable clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tpu_pwm_timer_start\00", [44 x i8] zeroinitializer }, align 32
@tpu_pwm_timer_start._entry_ptr = internal global ptr @tpu_pwm_timer_start._entry, section ".printk_index", align 4
@tpu_pwm_timer_start.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%u: TGRA 0x%04x TGRB 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@tpu_pwm_set_pin.states = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PWM\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@tpu_pwm_set_pin.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tpu_pwm_set_pin\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%u: configuring pin as %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"tpu_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 448, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 452, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"tpu_of_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 437, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 392, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 402, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"tpu_pwm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 369, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 417, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"prescalers\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 247, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 271, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 284, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 306, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 153, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 182, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 103, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 103, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 103, i32 53 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 103, i32 60 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [33 x i8] c"../drivers/pwm/pwm-renesas-tpu.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 105, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_tpu_driver_exit, ptr @__initcall__kmod_pwm_renesas_tpu__188_457_tpu_driver_init6, ptr @tpu_driver_exit, ptr @tpu_probe._entry, ptr @tpu_probe._entry.7, ptr @tpu_probe._entry_ptr, ptr @tpu_probe._entry_ptr.9, ptr @tpu_pwm_config._entry, ptr @tpu_pwm_config._entry_ptr, ptr @tpu_pwm_timer_start._entry, ptr @tpu_pwm_timer_start._entry_ptr, ptr @tpu_driver, ptr @.str, ptr @tpu_of_table, ptr @tpu_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tpu_pwm_ops, ptr @.str.8, ptr @tpu_pwm_config.prescalers, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @tpu_pwm_set_pin.states, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_of_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_pwm_config.prescalers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_pwm_timer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_pwm_set_pin.states to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tpu_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tpu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.tpu_device, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tpu_probe.__key, i16 noundef signext 3) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.tpu_device, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.tpu_device, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %clk, align 4
  %cmp.i61 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.tpu_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.tpu_device, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tpu_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.tpu_device, ptr %call.i, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %npwm, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call28 = tail call i32 @pwmchip_add(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end21.cleanup_crit_edge, %do.end17, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %6, %do.end17 ], [ %call28, %do.end33 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.tpu_device, ptr %1, i32 0, i32 1
  tail call void @pwmchip_remove(ptr noundef %chip) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_pwm_request(ptr noundef %chip, ptr noundef %_pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %_pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #10
  %cmp1 = icmp eq ptr %call7.i.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tpu4 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %tpu4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %tpu4, align 4
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %channel = getelementptr inbounds %struct.tpu_pwm_device, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %channel, align 8
  %polarity = getelementptr inbounds %struct.tpu_pwm_device, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call7.i.i, align 8
  %8 = call ptr @memset(ptr %polarity, i32 0, i32 12)
  %call6 = tail call i32 @pwm_set_chip_data(ptr noundef %_pwm, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpu_pwm_free(ptr nocapture noundef readnone %chip, ptr noundef %_pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %_pwm) #6
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %call)
  tail call void @kfree(ptr noundef %call) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_pwm_config(ptr nocapture noundef readonly %chip, ptr noundef %_pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %_pwm) #6
  %add.ptr = getelementptr i8, ptr %chip, i32 -4
  %clk = getelementptr i8, ptr %chip, i32 84
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %div2 = sdiv i32 1000000000, %period_ns
  %div3 = udiv i32 %call1, %div2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div3)
  %cmp4 = icmp ult i32 %div3, 65536
  br i1 %cmp4, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %entry
  %div.1154 = lshr i32 %call1, 2
  %div3.1 = udiv i32 %div.1154, %div2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div3.1)
  %cmp4.1 = icmp ult i32 %div3.1, 65536
  br i1 %cmp4.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %div.2155 = lshr i32 %call1, 4
  %div3.2 = udiv i32 %div.2155, %div2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div3.2)
  %cmp4.2 = icmp ult i32 %div3.2, 65536
  br i1 %cmp4.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %div.3156 = lshr i32 %call1, 6
  %div3.3 = udiv i32 %div.3156, %div2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div3.3)
  %cmp4.3 = icmp ult i32 %div3.3, 65536
  br i1 %cmp4.3, label %for.inc.2.for.end_crit_edge, label %for.inc.2.do.end_crit_edge

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %div.lcssa = phi i32 [ %call1, %entry.for.end_crit_edge ], [ %div.1154, %for.inc.for.end_crit_edge ], [ %div.2155, %for.inc.1.for.end_crit_edge ], [ %div.3156, %for.inc.2.for.end_crit_edge ]
  %div3.lcssa = phi i32 [ %div3, %entry.for.end_crit_edge ], [ %div3.1, %for.inc.for.end_crit_edge ], [ %div3.2, %for.inc.1.for.end_crit_edge ], [ %div3.3, %for.inc.2.for.end_crit_edge ]
  %prescaler.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div2, i32 %div.lcssa)
  %cmp6 = icmp ugt i32 %div2, %div.lcssa
  br i1 %cmp6, label %for.end.do.end_crit_edge, label %if.end8

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.2.do.end_crit_edge
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duty_ns)
  %tobool.not = icmp eq i32 %duty_ns, 0
  br i1 %tobool.not, label %if.end8.do.body18_crit_edge, label %if.then9

if.end8.do.body18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

if.then9:                                         ; preds = %if.end8
  %arrayidx10 = getelementptr [4 x i32], ptr @tpu_pwm_config.prescalers, i32 0, i32 %prescaler.0.lcssa
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  %div11 = udiv i32 %call1, %5
  %div12 = sdiv i32 1000000000, %duty_ns
  %div13 = udiv i32 %div11, %div12
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %div3.lcssa)
  %cmp14 = icmp ugt i32 %div13, %div3.lcssa
  br i1 %cmp14, label %if.then9.cleanup_crit_edge, label %if.then9.do.body18_crit_edge

if.then9.do.body18_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body18:                                        ; preds = %if.then9.do.body18_crit_edge, %if.end8.do.body18_crit_edge
  %duty.0 = phi i32 [ %div13, %if.then9.do.body18_crit_edge ], [ 0, %if.end8.do.body18_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_config.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_config, %if.then24)) #6
          to label %do.end30 [label %if.then24], !srcloc !78

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %arrayidx27 = getelementptr [4 x i32], ptr @tpu_pwm_config.prescalers, i32 0, i32 %prescaler.0.lcssa
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_config.__UNIQUE_ID_ddebug186, ptr noundef %dev26, ptr noundef nonnull @.str.13, i32 noundef %call1, i32 noundef %9, i32 noundef %div3.lcssa, i32 noundef %duty.0) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body18
  %prescaler31 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %prescaler31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prescaler31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %prescaler.0.lcssa)
  %cmp32 = icmp eq i32 %11, %prescaler.0.lcssa
  br i1 %cmp32, label %if.end37, label %if.end37.thread

if.end37:                                         ; preds = %do.end30
  %period33 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %period33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %period33, align 4
  %14 = ptrtoint ptr %prescaler31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %prescaler.0.lcssa, ptr %prescaler31, align 4
  %conv39 = trunc i32 %div3.lcssa to i16
  store i16 %conv39, ptr %period33, align 4
  %conv41 = trunc i32 %duty.0 to i16
  %duty42 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %duty42 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv41, ptr %duty42, align 2
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %_pwm, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %if.end37.cleanup_crit_edge, label %if.end45

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37.thread:                                  ; preds = %do.end30
  %17 = ptrtoint ptr %prescaler31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %prescaler.0.lcssa, ptr %prescaler31, align 4
  %conv39139 = trunc i32 %div3.lcssa to i16
  %period40140 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %period40140 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv39139, ptr %period40140, align 4
  %conv41141 = trunc i32 %duty.0 to i16
  %duty42142 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 6
  %19 = ptrtoint ptr %duty42142 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv41141, ptr %duty42142, align 2
  %state.sroa.4.0.state1.i.sroa_idx.i143 = getelementptr inbounds %struct.pwm_device, ptr %_pwm, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i143 to i32
  call void @__asan_load1_noabort(i32 %20)
  %state.sroa.4.0.copyload1.i144 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i144)
  %tobool.i145.not = icmp eq i8 %state.sroa.4.0.copyload1.i144, 0
  br i1 %tobool.i145.not, label %if.end37.thread.cleanup_crit_edge, label %if.end37.thread.if.else73_crit_edge

if.end37.thread.if.else73_crit_edge:              ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

if.end37.thread.cleanup_crit_edge:                ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.lcssa, i32 %conv)
  %cmp34 = icmp eq i32 %div3.lcssa, %conv
  br i1 %cmp34, label %land.lhs.true48, label %if.end45.if.else73_crit_edge

if.end45.if.else73_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

land.lhs.true48:                                  ; preds = %if.end45
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool49.not = icmp eq i8 %22, 0
  br i1 %tobool49.not, label %land.lhs.true48.if.else73_crit_edge, label %if.then51

land.lhs.true48.if.else73_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else73

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  %tpu.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpu.i, align 4
  %base1.i = getelementptr inbounds %struct.tpu_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 16
  %channel.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %28, 6
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv41) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %29) #6, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_config.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_config, %if.then65)) #6
          to label %if.end79 [label %if.then65], !srcloc !78

if.then65:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %dev67 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel.i, align 4
  %34 = ptrtoint ptr %duty42 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %duty42, align 2
  %conv69 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_config.__UNIQUE_ID_ddebug187, ptr noundef %dev67, ptr noundef nonnull @.str.14, i32 noundef %33, i32 noundef %conv69) #6
  br label %if.end79

if.else73:                                        ; preds = %land.lhs.true48.if.else73_crit_edge, %if.end45.if.else73_crit_edge, %if.end37.thread.if.else73_crit_edge
  %call74 = tail call fastcc i32 @tpu_pwm_timer_start(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.else73.cleanup_crit_edge, label %if.else73.if.end79_crit_edge

if.else73.if.end79_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.else73.cleanup_crit_edge:                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.else73.if.end79_crit_edge, %if.then65, %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duty.0)
  %cmp80 = icmp eq i32 %duty.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %duty.0, i32 %div3.lcssa)
  %cmp83 = icmp eq i32 %duty.0, %div3.lcssa
  %or.cond133 = select i1 %cmp80, i1 true, i1 %cmp83
  br i1 %or.cond133, label %if.then85, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %cmp80, i32 0, i32 2
  tail call fastcc void @tpu_pwm_set_pin(ptr noundef %call, i32 noundef %cond)
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end79.cleanup_crit_edge, %if.else73.cleanup_crit_edge, %if.end37.thread.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %call74, %if.else73.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ 0, %if.then85 ], [ 0, %if.end37.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_pwm_set_polarity(ptr nocapture noundef readnone %chip, ptr noundef %_pwm, i32 noundef %polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %_pwm) #6
  %polarity1 = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %polarity1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %polarity, ptr %polarity1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_pwm_enable(ptr nocapture noundef readnone %chip, ptr noundef %_pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %_pwm) #6
  %call1 = tail call fastcc i32 @tpu_pwm_timer_start(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %duty = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %duty to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %duty, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2 = icmp eq i16 %1, 0
  br i1 %cmp2, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %period = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp7 = icmp eq i16 %1, %3
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %cond = phi i32 [ 2, %lor.lhs.false.if.then9_crit_edge ], [ 0, %if.end.if.then9_crit_edge ]
  tail call fastcc void @tpu_pwm_set_pin(ptr noundef %call, i32 noundef %cond)
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpu_pwm_disable(ptr nocapture noundef readnone %chip, ptr noundef %_pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %_pwm) #6
  %call1 = tail call fastcc i32 @tpu_pwm_timer_start(ptr noundef %call)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_disable, %if.then.i)) #6
          to label %tpu_pwm_set_pin.exit [label %if.then.i], !srcloc !78

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tpu.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpu.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %channel.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %5, ptr noundef nonnull @.str.18) #6
  br label %tpu_pwm_set_pin.exit

tpu_pwm_set_pin.exit:                             ; preds = %if.then.i, %entry
  %polarity.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %conv.i = select i1 %cmp.i, i16 1024, i16 0
  %tpu.i.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpu.i.i, align 4
  %base1.i.i = getelementptr inbounds %struct.tpu_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  %channel.i.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel.i.i, align 4
  %mul.i.i = shl i32 %13, 6
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i, i16 %conv.i) #6, !srcloc !81
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %call)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tpu_pwm_timer_stop(ptr nocapture noundef %pwm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tpu.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %2 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpu.i, align 4
  %lock.i = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %4 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpu.i, align 4
  %base.i = getelementptr inbounds %struct.tpu_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !82
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %channel9.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %10 = ptrtoint ptr %channel9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel9.i, align 4
  %shl10.i = shl nuw i32 1, %11
  %12 = trunc i32 %shl10.i to i16
  %13 = xor i16 %12, -1
  %conv12.i = and i16 %9, %13
  %14 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpu.i, align 4
  %base14.i = getelementptr inbounds %struct.tpu_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %base14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base14.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv12.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %18) #6, !srcloc !81
  %19 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tpu.i, align 4
  %lock17.i = getelementptr inbounds %struct.tpu_device, ptr %20, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock17.i, i32 noundef %call2.i) #6
  %21 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tpu.i, align 4
  %clk = getelementptr inbounds %struct.tpu_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  %25 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tpu.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  %29 = ptrtoint ptr %pwm to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %pwm, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpu_pwm_timer_start(ptr noundef %pwm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %tpu = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %2 = ptrtoint ptr %tpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpu, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  %6 = ptrtoint ptr %tpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tpu, align 4
  %clk = getelementptr inbounds %struct.tpu_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i46 = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i47.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i46, %if.then.do.end_crit_edge ]
  %10 = ptrtoint ptr %tpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpu, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pwm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %pwm, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_timer_start, %if.then.i)) #6
          to label %tpu_pwm_set_pin.exit [label %if.then.i], !srcloc !78

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %tpu.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %15 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpu.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %channel.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %20, ptr noundef nonnull @.str.18) #6
  br label %tpu_pwm_set_pin.exit

tpu_pwm_set_pin.exit:                             ; preds = %if.then.i, %if.end9
  %polarity.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 3
  %21 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  %conv.i = select i1 %cmp.i, i16 1024, i16 0
  %tpu.i.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %23 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpu.i.i, align 4
  %base1.i.i = getelementptr inbounds %struct.tpu_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %base1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 16
  %channel.i.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %27 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel.i.i, align 4
  %mul.i.i = shl i32 %28, 6
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i, i16 %conv.i) #6, !srcloc !81
  %29 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tpu.i.i, align 4
  %lock.i = getelementptr inbounds %struct.tpu_device, ptr %30, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %31 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tpu.i.i, align 4
  %base.i = getelementptr inbounds %struct.tpu_device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #6, !srcloc !82
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %37 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel.i.i, align 4
  %shl10.i = shl nuw i32 1, %38
  %39 = trunc i32 %shl10.i to i16
  %40 = xor i16 %39, -1
  %conv12.i = and i16 %36, %40
  %41 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tpu.i.i, align 4
  %base14.i = getelementptr inbounds %struct.tpu_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %base14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base14.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv12.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %45) #6, !srcloc !81
  %46 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tpu.i.i, align 4
  %lock17.i = getelementptr inbounds %struct.tpu_device, ptr %47, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock17.i, i32 noundef %call2.i) #6
  %prescaler = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 4
  %48 = ptrtoint ptr %prescaler to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %prescaler, align 4
  %50 = trunc i32 %49 to i16
  %conv = or i16 %50, 64
  %51 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tpu.i.i, align 4
  %base1.i = getelementptr inbounds %struct.tpu_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 16
  %55 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel.i.i, align 4
  %mul.i = shl i32 %56, 6
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %57) #6, !srcloc !81
  %58 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tpu.i.i, align 4
  %base1.i52 = getelementptr inbounds %struct.tpu_device, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %base1.i52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base1.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %61, i32 16
  %62 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channel.i.i, align 4
  %mul.i55 = shl i32 %63, 6
  %add.ptr2.i56 = getelementptr i8, ptr %add.ptr.i53, i32 %mul.i55
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i56, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 512) #6, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_timer_start, %if.then.i60)) #6
          to label %tpu_pwm_set_pin.exit62 [label %if.then.i60], !srcloc !78

if.then.i60:                                      ; preds = %tpu_pwm_set_pin.exit
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tpu.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %dev.i58 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, ptr noundef %dev.i58, ptr noundef nonnull @.str.22, i32 noundef %69, ptr noundef nonnull @.str.19) #6
  br label %tpu_pwm_set_pin.exit62

tpu_pwm_set_pin.exit62:                           ; preds = %if.then.i60, %tpu_pwm_set_pin.exit
  %70 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp5.i = icmp eq i32 %71, 1
  %conv8.i61 = select i1 %cmp5.i, i16 512, i16 1280
  %72 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tpu.i.i, align 4
  %base1.i24.i = getelementptr inbounds %struct.tpu_device, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %base1.i24.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base1.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %75, i32 16
  %76 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %channel.i.i, align 4
  %mul.i27.i = shl i32 %77, 6
  %add.ptr2.i28.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %mul.i27.i
  %add.ptr3.i29.i = getelementptr i8, ptr %add.ptr2.i28.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i29.i, i16 %conv8.i61) #6, !srcloc !81
  %duty = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 6
  %78 = ptrtoint ptr %duty to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %duty, align 2
  %80 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tpu.i.i, align 4
  %base1.i64 = getelementptr inbounds %struct.tpu_device, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %base1.i64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base1.i64, align 4
  %add.ptr.i65 = getelementptr i8, ptr %83, i32 16
  %84 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %channel.i.i, align 4
  %mul.i67 = shl i32 %85, 6
  %add.ptr2.i68 = getelementptr i8, ptr %add.ptr.i65, i32 %mul.i67
  %add.ptr3.i69 = getelementptr i8, ptr %add.ptr2.i68, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %86 = tail call i16 @llvm.bswap.i16(i16 %79) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i69, i16 %86) #6, !srcloc !81
  %period = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 5
  %87 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %period, align 4
  %89 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tpu.i.i, align 4
  %base1.i71 = getelementptr inbounds %struct.tpu_device, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %base1.i71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base1.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %92, i32 16
  %93 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %channel.i.i, align 4
  %mul.i74 = shl i32 %94, 6
  %add.ptr2.i75 = getelementptr i8, ptr %add.ptr.i72, i32 %mul.i74
  %add.ptr3.i76 = getelementptr i8, ptr %add.ptr2.i75, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %95 = tail call i16 @llvm.bswap.i16(i16 %88) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i76, i16 %95) #6, !srcloc !81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_timer_start.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_timer_start, %if.then15)) #6
          to label %do.end25 [label %if.then15], !srcloc !78

if.then15:                                        ; preds = %tpu_pwm_set_pin.exit62
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tpu.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %channel.i.i, align 4
  %102 = ptrtoint ptr %duty to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %duty, align 2
  %conv20 = zext i16 %103 to i32
  %104 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %period, align 4
  %conv22 = zext i16 %105 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_timer_start.__UNIQUE_ID_ddebug185, ptr noundef %dev18, ptr noundef nonnull @.str.17, i32 noundef %101, i32 noundef %conv20, i32 noundef %conv22) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then15, %tpu_pwm_set_pin.exit62
  %106 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tpu.i.i, align 4
  %lock.i78 = getelementptr inbounds %struct.tpu_device, ptr %107, i32 0, i32 2
  %call2.i79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i78) #6
  %108 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tpu.i.i, align 4
  %base.i80 = getelementptr inbounds %struct.tpu_device, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %base.i80 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i80, align 4
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #6, !srcloc !82
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %114 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %channel.i.i, align 4
  %shl10.i82 = shl nuw i32 1, %115
  %116 = trunc i32 %shl10.i82 to i16
  %conv8.i83 = or i16 %113, %116
  %117 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tpu.i.i, align 4
  %base14.i85 = getelementptr inbounds %struct.tpu_device, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %base14.i85 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base14.i85, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv8.i83) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %120, i16 %121) #6, !srcloc !81
  %122 = ptrtoint ptr %tpu.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tpu.i.i, align 4
  %lock17.i86 = getelementptr inbounds %struct.tpu_device, ptr %123, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock17.i86, i32 noundef %call2.i79) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end
  %retval.0 = phi i32 [ 0, %do.end25 ], [ %retval.0.i47.ph, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tpu_pwm_set_pin(ptr nocapture noundef readonly %pwm, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpu_pwm_set_pin, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tpu = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %0 = ptrtoint ptr %tpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %channel = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @tpu_pwm_set_pin.states, i32 0, i32 %state
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %5, ptr noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb9
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %polarity = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 3
  %9 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  %conv = select i1 %cmp, i16 1024, i16 0
  %tpu.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %11 = ptrtoint ptr %tpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tpu.i, align 4
  %base1.i = getelementptr inbounds %struct.tpu_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  %channel.i = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i, align 4
  %mul.i = shl i32 %16, 6
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %conv) #6, !srcloc !81
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %polarity4 = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 3
  %17 = ptrtoint ptr %polarity4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %polarity4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp5 = icmp eq i32 %18, 1
  %conv8 = select i1 %cmp5, i16 512, i16 1280
  %tpu.i23 = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %19 = ptrtoint ptr %tpu.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tpu.i23, align 4
  %base1.i24 = getelementptr inbounds %struct.tpu_device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %base1.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base1.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %22, i32 16
  %channel.i26 = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %23 = ptrtoint ptr %channel.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel.i26, align 4
  %mul.i27 = shl i32 %24, 6
  %add.ptr2.i28 = getelementptr i8, ptr %add.ptr.i25, i32 %mul.i27
  %add.ptr3.i29 = getelementptr i8, ptr %add.ptr2.i28, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i29, i16 %conv8) #6, !srcloc !81
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %polarity10 = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 3
  %25 = ptrtoint ptr %polarity10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %polarity10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp11 = icmp eq i32 %26, 1
  %conv14 = select i1 %cmp11, i16 0, i16 1024
  %tpu.i30 = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 1
  %27 = ptrtoint ptr %tpu.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpu.i30, align 4
  %base1.i31 = getelementptr inbounds %struct.tpu_device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %base1.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base1.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %30, i32 16
  %channel.i33 = getelementptr inbounds %struct.tpu_pwm_device, ptr %pwm, i32 0, i32 2
  %31 = ptrtoint ptr %channel.i33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel.i33, align 4
  %mul.i34 = shl i32 %32, 6
  %add.ptr2.i35 = getelementptr i8, ptr %add.ptr.i32, i32 %mul.i34
  %add.ptr3.i36 = getelementptr i8, ptr %add.ptr2.i35, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i36, i16 %conv14) #6, !srcloc !81
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb3, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_pwm_renesas_tpu__188_457_tpu_driver_init6, !1, !"__initcall__kmod_pwm_renesas_tpu__188_457_tpu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_tpu_driver_exit, !1, !"__exitcall_tpu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author189, !4, !"__UNIQUE_ID_author189", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 459, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 460, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 461, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias193, !11, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 462, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 452, i32 11}
!14 = !{ptr @tpu_driver, !15, !"tpu_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 448, i32 31}
!16 = !{ptr @tpu_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 392, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 402, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tpu_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tpu_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 417, i32 3}
!29 = !{ptr @tpu_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tpu_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @tpu_pwm_ops, !32, !"tpu_pwm_ops", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 369, i32 29}
!33 = !{ptr @tpu_pwm_config.prescalers, !34, !"prescalers", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 247, i32 28}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 271, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tpu_pwm_config._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tpu_pwm_config._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 284, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tpu_pwm_config.__UNIQUE_ID_ddebug186, !41, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 306, i32 3}
!46 = !{ptr @tpu_pwm_config.__UNIQUE_ID_ddebug187, !45, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 153, i32 4}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tpu_pwm_timer_start._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tpu_pwm_timer_start._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 182, i32 2}
!54 = !{ptr @tpu_pwm_timer_start.__UNIQUE_ID_ddebug185, !53, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 103, i32 41}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 103, i32 53}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 103, i32 60}
!61 = !{ptr @tpu_pwm_set_pin.states, !62, !"states", i1 false, i1 false}
!62 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 103, i32 28}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 105, i32 2}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @tpu_pwm_set_pin.__UNIQUE_ID_ddebug184, !64, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!67 = !{ptr @tpu_of_table, !68, !"tpu_of_table", i1 false, i1 false}
!68 = !{!"../drivers/pwm/pwm-renesas-tpu.c", i32 437, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148731398, i64 2148731403, i64 2148731416, i64 2148731460, i64 2148731494, i64 2148731515}
!79 = !{i8 0, i8 2}
!80 = !{i64 2149580060}
!81 = !{i64 2037868}
!82 = !{i64 2038068}
!83 = !{i64 2149578643}
