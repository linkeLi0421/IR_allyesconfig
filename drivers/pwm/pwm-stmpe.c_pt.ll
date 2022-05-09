; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-stmpe.c_pt.bc'
source_filename = "../drivers/pwm/pwm-stmpe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.stmpe_pwm = type { ptr, %struct.pwm_chip, i8 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_stmpe__186_314_stmpe_pwm_driver_init6 = internal global ptr @stmpe_pwm_driver_init, section ".initcall6.init", align 4
@stmpe_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmpe-pwm\00", [22 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_24xx_pwm_config, ptr null, ptr @stmpe_24xx_pwm_enable, ptr @stmpe_24xx_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@stmpe_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"STMPE1601 not yet supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stmpe_pwm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pwm/pwm-stmpe.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmpe_pwm_probe._entry_ptr = internal global ptr @stmpe_pwm_probe._entry, section ".printk_index", align 4
@stmpe_pwm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown STMPE PWM\0A\00", [45 x i8] zeroinitializer }, align 32
@stmpe_pwm_probe._entry_ptr.8 = internal global ptr @stmpe_pwm_probe._entry.6, section ".printk_index", align 4
@stmpe_24xx_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to connect PWM#%u to pin\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmpe_24xx_pwm_config\00", [42 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_config._entry_ptr = internal global ptr @stmpe_24xx_pwm_config._entry, section ".printk_index", align 4
@stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_stmpe\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PWM#%u: config duty %d ns, period %d ns\0A\00", [55 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"PWM#%u: value = %02x, last_duty = %02x, program=%04x,%04x,%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error writing register %02x: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_config._entry_ptr.16 = internal global ptr @stmpe_24xx_pwm_config._entry.14, section ".printk_index", align 4
@stmpe_24xx_pwm_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_config._entry_ptr.18 = internal global ptr @stmpe_24xx_pwm_config._entry.17, section ".printk_index", align 4
@stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.3, ptr @.str.19, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"programmed PWM#%u, %u bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 48, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error reading PWM#%u control\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmpe_24xx_pwm_enable\00", [42 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_enable._entry_ptr = internal global ptr @stmpe_24xx_pwm_enable._entry, section ".printk_index", align 4
@stmpe_24xx_pwm_enable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 57, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error writing PWM#%u control\0A\00", [34 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_enable._entry_ptr.24 = internal global ptr @stmpe_24xx_pwm_enable._entry.22, section ".printk_index", align 4
@stmpe_24xx_pwm_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.3, i32 74, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stmpe_24xx_pwm_disable\00", [41 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_disable._entry_ptr = internal global ptr @stmpe_24xx_pwm_disable._entry, section ".printk_index", align 4
@stmpe_24xx_pwm_disable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@stmpe_24xx_pwm_disable._entry_ptr.27 = internal global ptr @stmpe_24xx_pwm_disable._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"stmpe_pwm_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 309, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 311, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"stmpe_24xx_pwm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 262, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 287, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 289, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 127, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 152, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 218, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 235, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 244, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 257, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 47, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 56, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 73, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private constant [27 x i8] c"../drivers/pwm/pwm-stmpe.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 82, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__initcall__kmod_pwm_stmpe__186_314_stmpe_pwm_driver_init6, ptr @stmpe_24xx_pwm_config._entry, ptr @stmpe_24xx_pwm_config._entry.14, ptr @stmpe_24xx_pwm_config._entry.17, ptr @stmpe_24xx_pwm_config._entry_ptr, ptr @stmpe_24xx_pwm_config._entry_ptr.16, ptr @stmpe_24xx_pwm_config._entry_ptr.18, ptr @stmpe_24xx_pwm_disable._entry, ptr @stmpe_24xx_pwm_disable._entry.26, ptr @stmpe_24xx_pwm_disable._entry_ptr, ptr @stmpe_24xx_pwm_disable._entry_ptr.27, ptr @stmpe_24xx_pwm_enable._entry, ptr @stmpe_24xx_pwm_enable._entry.22, ptr @stmpe_24xx_pwm_enable._entry_ptr, ptr @stmpe_24xx_pwm_enable._entry_ptr.24, ptr @stmpe_pwm_probe._entry, ptr @stmpe_pwm_probe._entry.6, ptr @stmpe_pwm_probe._entry_ptr, ptr @stmpe_pwm_probe._entry_ptr.8, ptr @stmpe_pwm_driver, ptr @.str, ptr @stmpe_24xx_pwm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_pwm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_enable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_24xx_pwm_disable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @stmpe_pwm_driver, ptr noundef nonnull @stmpe_pwm_probe, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_pwm_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %chip = getelementptr inbounds %struct.stmpe_pwm, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %chip, align 4
  %partnum = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %partnum, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end18 [
    i32 6, label %if.end.if.then8_crit_edge
    i32 7, label %if.end.if.then8_crit_edge53
    i32 4, label %do.end
  ]

if.end.if.then8_crit_edge53:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge53
  %ops = getelementptr inbounds %struct.stmpe_pwm, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @stmpe_24xx_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.stmpe_pwm, ptr %call.i, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %npwm, align 4
  %call22 = tail call i32 @stmpe_enable(ptr noundef %3, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end25:                                         ; preds = %if.then8
  %call27 = tail call i32 @pwmchip_add(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 @stmpe_disable(ptr noundef %3, i32 noundef 16) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29, %do.end18, %do.end, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then29 ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %do.end18 ], [ -19, %do.end ], [ %call22, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_24xx_pwm_config(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -4
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %call1.i = tail call i32 @stmpe_reg_read(ptr noundef %2, i8 noundef zeroext 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %5 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwpwm.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %6) #7
  br label %if.end11

if.end.i:                                         ; preds = %if.then
  %hwpwm2.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %7 = ptrtoint ptr %hwpwm2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwpwm2.i, align 8
  %shl.i = shl nuw i32 1, %8
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call1.i, %neg.i
  %conv.i = trunc i32 %and.i to i8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call4.i = tail call i32 @stmpe_reg_write(ptr noundef %10, i8 noundef zeroext 48, i8 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end11_crit_edge, label %do.end8.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %hwpwm2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwpwm2.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef %14) #7
  br label %if.end11

if.else:                                          ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %15 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwpwm, align 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %partnum = getelementptr inbounds %struct.stmpe, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %partnum, align 4
  %21 = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %switch = icmp eq i32 %21, 6
  %add = add i32 %16, 21
  %spec.select = select i1 %switch, i32 %add, i32 %16
  %shl = shl nuw i32 1, %spec.select
  %call7 = tail call i32 @stmpe_set_altfunc(ptr noundef %18, i32 noundef %shl, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.else.if.end11_crit_edge, label %do.end

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %24 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9, i32 noundef %25) #7
  br label %cleanup195

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %do.end8.i, %if.end.i.if.end11_crit_edge, %do.end.i
  %hwpwm12 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %26 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwpwm12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %switch.lookup, label %if.end11.cleanup195_crit_edge

if.end11.cleanup195_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195

switch.lookup:                                    ; preds = %if.end11
  %switch.idx.cast = trunc i32 %27 to i8
  %switch.offset = add i8 %switch.idx.cast, 56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmpe_24xx_pwm_config, %if.then20)) #4
          to label %do.end25 [label %if.then20], !srcloc !67

if.then20:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwpwm12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug183, ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %32, i32 noundef %duty_ns, i32 noundef %period_ns) #4
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duty_ns)
  %cmp26 = icmp eq i32 %duty_ns, 0
  br i1 %cmp26, label %if.then27, label %if.else39

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %partnum29 = getelementptr inbounds %struct.stmpe, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %partnum29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %partnum29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %cond = icmp eq i32 %36, 7
  %spec.select345 = select i1 %cond, i8 -1, i8 127
  %spec.select346 = select i1 %cond, i8 64, i8 0
  %last_duty = getelementptr i8, ptr %chip, i32 36
  %37 = ptrtoint ptr %last_duty to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %last_duty, align 4
  br label %if.end139

if.else39:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %duty_ns, i32 %period_ns)
  %cmp40 = icmp eq i32 %duty_ns, %period_ns
  br i1 %cmp40, label %if.then41, label %if.else55

if.then41:                                        ; preds = %if.else39
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %partnum43 = getelementptr inbounds %struct.stmpe, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %partnum43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %partnum43, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %41, label %if.then41.if.end53_crit_edge [
    i32 6, label %if.end47.thread
    i32 7, label %if.then51
  ]

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.end47.thread:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then51:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47.thread, %if.then41.if.end53_crit_edge
  %program.sroa.0.1.off0 = phi i8 [ 127, %if.then41.if.end53_crit_edge ], [ 0, %if.then51 ], [ -1, %if.end47.thread ]
  %program.sroa.0.1.off8 = phi i8 [ 0, %if.then41.if.end53_crit_edge ], [ 64, %if.then51 ], [ 0, %if.end47.thread ]
  %last_duty54 = getelementptr i8, ptr %chip, i32 36
  %43 = ptrtoint ptr %last_duty54 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %last_duty54, align 4
  br label %if.end139

if.else55:                                        ; preds = %if.else39
  %last_duty56 = getelementptr i8, ptr %chip, i32 36
  %44 = ptrtoint ptr %last_duty56 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %last_duty56, align 4
  %mul = shl i32 %duty_ns, 8
  %div = sdiv i32 %period_ns, 2
  %add58 = add i32 %div, %mul
  %div59 = udiv i32 %add58, %period_ns
  %conv = trunc i32 %div59 to i8
  %conv60 = and i32 %div59, 255
  %conv61 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv60, i32 %conv61)
  %cmp62 = icmp eq i32 %conv60, %conv61
  br i1 %cmp62, label %if.then64, label %if.else69

if.then64:                                        ; preds = %if.else55
  %46 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %state.sroa.4.0.copyload1.i280 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i280)
  %tobool.i281.not = icmp eq i8 %state.sroa.4.0.copyload1.i280, 0
  br i1 %tobool.i281.not, label %if.then64.cleanup195_crit_edge, label %if.then66

if.then64.cleanup195_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195

if.then66:                                        ; preds = %if.then64
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %call1.i283 = tail call i32 @stmpe_reg_read(ptr noundef %48, i8 noundef zeroext 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i283)
  %cmp.i284 = icmp slt i32 %call1.i283, 0
  br i1 %cmp.i284, label %do.end.i286, label %if.end.i292

do.end.i286:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %51 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hwpwm12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef %52) #7
  br label %cleanup195

if.end.i292:                                      ; preds = %if.then66
  %53 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwpwm12, align 8
  %shl.i288 = shl nuw i32 1, %54
  %or.i = or i32 %shl.i288, %call1.i283
  %conv.i289 = trunc i32 %or.i to i8
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %call4.i290 = tail call i32 @stmpe_reg_write(ptr noundef %56, i8 noundef zeroext 48, i8 noundef zeroext %conv.i289) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i290)
  %tobool.not.i291 = icmp eq i32 %call4.i290, 0
  br i1 %tobool.not.i291, label %if.end.i292.cleanup195_crit_edge, label %do.end8.i293

if.end.i292.cleanup195_crit_edge:                 ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195

do.end8.i293:                                     ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip, align 4
  %59 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hwpwm12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.23, i32 noundef %60) #7
  br label %cleanup195

if.else69:                                        ; preds = %if.else55
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %partnum71 = getelementptr inbounds %struct.stmpe, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %partnum71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %partnum71, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %64, label %if.else69.do.body109_crit_edge [
    i32 7, label %if.then74
    i32 6, label %if.then84
  ]

if.else69.do.body109_crit_edge:                   ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109

if.then74:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  %66 = trunc i32 %conv60 to i16
  %conv76 = or i16 %66, 16384
  br label %do.body109

if.then84:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %conv60, i32 %conv61)
  %cmp87 = icmp ugt i32 %conv60, %conv61
  %sub = sub nsw i32 %conv60, %conv61
  %sub97 = sub nsw i32 %conv61, %conv60
  %conv99 = or i32 %sub97, 128
  %incdec.0 = select i1 %cmp87, i32 %sub, i32 %conv99
  %67 = trunc i32 %incdec.0 to i16
  %conv103 = or i16 %67, 16640
  br label %do.body109

do.body109:                                       ; preds = %if.then84, %if.then74, %if.else69.do.body109_crit_edge
  %program.sroa.11.0 = phi i16 [ 0, %if.else69.do.body109_crit_edge ], [ -24576, %if.then84 ], [ 0, %if.then74 ]
  %program.sroa.0.2 = phi i16 [ 127, %if.else69.do.body109_crit_edge ], [ %conv103, %if.then84 ], [ %conv76, %if.then74 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmpe_24xx_pwm_config, %if.then121)) #4
          to label %if.end139.critedge272 [label %if.then121], !srcloc !67

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chip, align 4
  %70 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hwpwm12, align 8
  %conv127 = zext i16 %program.sroa.0.2 to i32
  %conv129 = zext i16 %program.sroa.11.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug184, ptr noundef %69, ptr noundef nonnull @.str.13, i32 noundef %71, i32 noundef %conv60, i32 noundef %conv61, i32 noundef %conv127, i32 noundef %conv129, i32 noundef 0) #4
  %72 = ptrtoint ptr %last_duty56 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv, ptr %last_duty56, align 4
  %extract332 = lshr exact i16 %program.sroa.11.0, 8
  %extract.t333 = trunc i16 %extract332 to i8
  %extract.t336 = trunc i16 %program.sroa.0.2 to i8
  %extract343 = lshr i16 %program.sroa.0.2, 8
  %extract.t344 = trunc i16 %extract343 to i8
  br label %if.end139

if.end139.critedge272:                            ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %last_duty56 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv, ptr %last_duty56, align 4
  %extract = lshr exact i16 %program.sroa.11.0, 8
  %extract.t331 = trunc i16 %extract to i8
  %extract.t335 = trunc i16 %program.sroa.0.2 to i8
  %extract341 = lshr i16 %program.sroa.0.2, 8
  %extract.t342 = trunc i16 %extract341 to i8
  br label %if.end139

if.end139:                                        ; preds = %if.end139.critedge272, %if.then121, %if.end53, %if.then27
  %program.sroa.11.1.off8 = phi i8 [ 0, %if.then27 ], [ 0, %if.end53 ], [ %extract.t331, %if.end139.critedge272 ], [ %extract.t333, %if.then121 ]
  %program.sroa.0.3.off0 = phi i8 [ %spec.select345, %if.then27 ], [ %program.sroa.0.1.off0, %if.end53 ], [ %extract.t335, %if.end139.critedge272 ], [ %extract.t336, %if.then121 ]
  %program.sroa.0.3.off8 = phi i8 [ %spec.select346, %if.then27 ], [ %program.sroa.0.1.off8, %if.end53 ], [ %extract.t342, %if.end139.critedge272 ], [ %extract.t344, %if.then121 ]
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  %call147 = tail call i32 @stmpe_reg_write(ptr noundef %75, i8 noundef zeroext %switch.offset, i8 noundef zeroext %program.sroa.0.3.off8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end155, label %if.end139.do.end152_crit_edge

if.end139.do.end152_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end152

do.end152:                                        ; preds = %for.inc.1.do.end152_crit_edge, %for.inc.do.end152_crit_edge, %if.end139.do.end152_crit_edge
  %call147.lcssa = phi i32 [ %call147, %if.end139.do.end152_crit_edge ], [ %call147.1, %for.inc.do.end152_crit_edge ], [ %call147.2, %for.inc.1.do.end152_crit_edge ]
  %76 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chip, align 4
  %conv154 = zext i8 %switch.offset to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.15, i32 noundef %conv154, i32 noundef %call147.lcssa) #7
  br label %cleanup195

if.end155:                                        ; preds = %if.end139
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %call161 = tail call i32 @stmpe_reg_write(ptr noundef %79, i8 noundef zeroext %switch.offset, i8 noundef zeroext %program.sroa.0.3.off0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %for.inc, label %if.end155.do.end166_crit_edge

if.end155.do.end166_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end166

do.end166:                                        ; preds = %if.end155.2.do.end166_crit_edge, %if.end155.1.do.end166_crit_edge, %if.end155.do.end166_crit_edge
  %call161.lcssa = phi i32 [ %call161, %if.end155.do.end166_crit_edge ], [ %call161.1, %if.end155.1.do.end166_crit_edge ], [ %call161.2, %if.end155.2.do.end166_crit_edge ]
  %80 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chip, align 4
  %conv168 = zext i8 %switch.offset to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.15, i32 noundef %conv168, i32 noundef %call161.lcssa) #7
  br label %cleanup195

for.inc:                                          ; preds = %if.end155
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  %call147.1 = tail call i32 @stmpe_reg_write(ptr noundef %83, i8 noundef zeroext %switch.offset, i8 noundef zeroext %program.sroa.11.1.off8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.1)
  %tobool148.not.1 = icmp eq i32 %call147.1, 0
  br i1 %tobool148.not.1, label %if.end155.1, label %for.inc.do.end152_crit_edge

for.inc.do.end152_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end152

if.end155.1:                                      ; preds = %for.inc
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 4
  %call161.1 = tail call i32 @stmpe_reg_write(ptr noundef %85, i8 noundef zeroext %switch.offset, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.1)
  %tobool162.not.1 = icmp eq i32 %call161.1, 0
  br i1 %tobool162.not.1, label %for.inc.1, label %if.end155.1.do.end166_crit_edge

if.end155.1.do.end166_crit_edge:                  ; preds = %if.end155.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end166

for.inc.1:                                        ; preds = %if.end155.1
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  %call147.2 = tail call i32 @stmpe_reg_write(ptr noundef %87, i8 noundef zeroext %switch.offset, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.2)
  %tobool148.not.2 = icmp eq i32 %call147.2, 0
  br i1 %tobool148.not.2, label %if.end155.2, label %for.inc.1.do.end152_crit_edge

for.inc.1.do.end152_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end152

if.end155.2:                                      ; preds = %for.inc.1
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 4
  %call161.2 = tail call i32 @stmpe_reg_write(ptr noundef %89, i8 noundef zeroext %switch.offset, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.2)
  %tobool162.not.2 = icmp eq i32 %call161.2, 0
  br i1 %tobool162.not.2, label %for.inc.2, label %if.end155.2.do.end166_crit_edge

if.end155.2.do.end166_crit_edge:                  ; preds = %if.end155.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end166

for.inc.2:                                        ; preds = %if.end155.2
  %90 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %state.sroa.4.0.copyload1.i296 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i296)
  %tobool.i297.not = icmp eq i8 %state.sroa.4.0.copyload1.i296, 0
  br i1 %tobool.i297.not, label %for.inc.2.if.end176_crit_edge, label %if.then174

for.inc.2.if.end176_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176

if.then174:                                       ; preds = %for.inc.2
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 4
  %call1.i299 = tail call i32 @stmpe_reg_read(ptr noundef %92, i8 noundef zeroext 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i299)
  %cmp.i300 = icmp slt i32 %call1.i299, 0
  br i1 %cmp.i300, label %if.then174.if.end176.sink.split_crit_edge, label %if.end.i309

if.then174.if.end176.sink.split_crit_edge:        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176.sink.split

if.end.i309:                                      ; preds = %if.then174
  %93 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hwpwm12, align 8
  %shl.i304 = shl nuw i32 1, %94
  %or.i305 = or i32 %shl.i304, %call1.i299
  %conv.i306 = trunc i32 %or.i305 to i8
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  %call4.i307 = tail call i32 @stmpe_reg_write(ptr noundef %96, i8 noundef zeroext 48, i8 noundef zeroext %conv.i306) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i307)
  %tobool.not.i308 = icmp eq i32 %call4.i307, 0
  br i1 %tobool.not.i308, label %if.end.i309.if.end176_crit_edge, label %if.end.i309.if.end176.sink.split_crit_edge

if.end.i309.if.end176.sink.split_crit_edge:       ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176.sink.split

if.end.i309.if.end176_crit_edge:                  ; preds = %if.end.i309
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176

if.end176.sink.split:                             ; preds = %if.end.i309.if.end176.sink.split_crit_edge, %if.then174.if.end176.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.20, %if.then174.if.end176.sink.split_crit_edge ], [ @.str.23, %if.end.i309.if.end176.sink.split_crit_edge ]
  %97 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip, align 4
  %99 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hwpwm12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull %.str.23.sink, i32 noundef %100) #7
  br label %if.end176

if.end176:                                        ; preds = %if.end176.sink.split, %if.end.i309.if.end176_crit_edge, %for.inc.2.if.end176_crit_edge
  tail call void @msleep(i32 noundef 200) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmpe_24xx_pwm_config, %if.then189)) #4
          to label %cleanup195 [label %if.then189], !srcloc !67

if.then189:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %chip, align 4
  %103 = ptrtoint ptr %hwpwm12 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hwpwm12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug185, ptr noundef %102, ptr noundef nonnull @.str.19, i32 noundef %104, i32 noundef 3) #4
  br label %cleanup195

cleanup195:                                       ; preds = %if.then189, %if.end176, %do.end166, %do.end152, %do.end8.i293, %if.end.i292.cleanup195_crit_edge, %do.end.i286, %if.then64.cleanup195_crit_edge, %if.end11.cleanup195_crit_edge, %do.end
  %retval.4 = phi i32 [ %call7, %do.end ], [ -19, %if.end11.cleanup195_crit_edge ], [ 0, %if.then189 ], [ 0, %if.then64.cleanup195_crit_edge ], [ 0, %do.end.i286 ], [ 0, %if.end.i292.cleanup195_crit_edge ], [ 0, %do.end8.i293 ], [ 0, %if.end176 ], [ %call147.lcssa, %do.end152 ], [ %call161.lcssa, %do.end166 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_24xx_pwm_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @stmpe_reg_read(ptr noundef %1, i8 noundef zeroext 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwpwm2 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm2, align 8
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %call1
  %conv = trunc i32 %or to i8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call4 = tail call i32 @stmpe_reg_write(ptr noundef %9, i8 noundef zeroext 48, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %12 = ptrtoint ptr %hwpwm2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call4, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_24xx_pwm_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @stmpe_reg_read(ptr noundef %1, i8 noundef zeroext 48) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwpwm2 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm2, align 8
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %call1, %neg
  %conv = trunc i32 %and to i8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call4 = tail call i32 @stmpe_reg_write(ptr noundef %9, i8 noundef zeroext 48, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %12 = ptrtoint ptr %hwpwm2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_altfunc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_pwm_stmpe__186_314_stmpe_pwm_driver_init6, !1, !"__initcall__kmod_pwm_stmpe__186_314_stmpe_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-stmpe.c", i32 314, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pwm/pwm-stmpe.c", i32 311, i32 11}
!4 = !{ptr @stmpe_pwm_driver, !5, !"stmpe_pwm_driver", i1 false, i1 false}
!5 = !{!"../drivers/pwm/pwm-stmpe.c", i32 309, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pwm/pwm-stmpe.c", i32 287, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @stmpe_pwm_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @stmpe_pwm_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-stmpe.c", i32 289, i32 4}
!16 = !{ptr @stmpe_pwm_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @stmpe_pwm_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @stmpe_24xx_pwm_ops, !19, !"stmpe_24xx_pwm_ops", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-stmpe.c", i32 262, i32 29}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-stmpe.c", i32 127, i32 4}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stmpe_24xx_pwm_config._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @stmpe_24xx_pwm_config._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-stmpe.c", i32 152, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug183, !26, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-stmpe.c", i32 218, i32 3}
!31 = !{ptr @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug184, !30, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-stmpe.c", i32 235, i32 4}
!34 = !{ptr @stmpe_24xx_pwm_config._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stmpe_24xx_pwm_config._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @stmpe_24xx_pwm_config._entry.17, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-stmpe.c", i32 244, i32 4}
!38 = !{ptr @stmpe_24xx_pwm_config._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-stmpe.c", i32 257, i32 2}
!41 = !{ptr @stmpe_24xx_pwm_config.__UNIQUE_ID_ddebug185, !40, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-stmpe.c", i32 47, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stmpe_24xx_pwm_enable._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @stmpe_24xx_pwm_enable._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-stmpe.c", i32 56, i32 3}
!49 = !{ptr @stmpe_24xx_pwm_enable._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stmpe_24xx_pwm_enable._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-stmpe.c", i32 73, i32 3}
!53 = !{ptr @stmpe_24xx_pwm_disable._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stmpe_24xx_pwm_disable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @stmpe_24xx_pwm_disable._entry.26, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-stmpe.c", i32 82, i32 3}
!57 = !{ptr @stmpe_24xx_pwm_disable._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148761937, i64 2148761942, i64 2148761955, i64 2148761999, i64 2148762033, i64 2148762054}
