; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-img.c_pt.bc'
source_filename = "../drivers/pwm/pwm-img.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.img_pwm_soc_data = type { i32 }
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
%struct.img_pwm_chip = type { ptr, %struct.pwm_chip, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, [4 x i32] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_img__184_430_img_pwm_driver_init6 = internal global ptr @img_pwm_driver_init, section ".initcall6.init", align 4
@img_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_pwm_probe, ptr @img_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_pwm_driver_exit = internal global ptr @img_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [54 x i8] c"pwm_img.author=Sai Masarapu <Sai.Masarapu@imgtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [60 x i8] c"pwm_img.description=Imagination Technologies PWM DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [33 x i8] c"pwm_img.file=drivers/pwm/pwm-img\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [23 x i8] c"pwm_img.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"img-pwm\00", [24 x i8] zeroinitializer }, align 32
@img_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,pistachio-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pistachio_pwm }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_pwm_suspend, ptr @img_pwm_resume, ptr @img_pwm_suspend, ptr @img_pwm_resume, ptr @img_pwm_suspend, ptr @img_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_pwm_runtime_suspend, ptr @img_pwm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img,cr-periph\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 289, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get system clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img_pwm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pwm/pwm-img.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry_ptr = internal global ptr @img_pwm_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get pwm clock\0A\00", [39 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry_ptr.11 = internal global ptr @img_pwm_probe._entry.9, section ".printk_index", align 4
@img_pwm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwm clock has no frequency\0A\00", [36 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry_ptr.14 = internal global ptr @img_pwm_probe._entry.12, section ".printk_index", align 4
@img_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @img_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwmchip_add failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@img_pwm_probe._entry_ptr.17 = internal global ptr @img_pwm_probe._entry.15, section ".printk_index", align 4
@img_pwm_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 245, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not prepare or enable sys clock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"img_pwm_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@img_pwm_runtime_resume._entry_ptr = internal global ptr @img_pwm_runtime_resume._entry, section ".printk_index", align 4
@img_pwm_runtime_resume._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not prepare or enable pwm clock\0A\00", [57 x i8] zeroinitializer }, align 32
@img_pwm_runtime_resume._entry_ptr.22 = internal global ptr @img_pwm_runtime_resume._entry.20, section ".printk_index", align 4
@img_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 103, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"configured period not in range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"img_pwm_config\00", [17 x i8] zeroinitializer }, align 32
@img_pwm_config._entry_ptr = internal global ptr @img_pwm_config._entry, section ".printk_index", align 4
@img_pwm_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to configure timebase steps/divider value\0A\00", [46 x i8] zeroinitializer }, align 32
@img_pwm_config._entry_ptr.27 = internal global ptr @img_pwm_config._entry.25, section ".printk_index", align 4
@pistachio_pwm = internal constant { %struct.img_pwm_soc_data, [28 x i8] } { %struct.img_pwm_soc_data { i32 255 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"img_pwm_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 421, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 423, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"img_pwm_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 219, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"img_pwm_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 414, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 283, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 287, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 289, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 293, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 295, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 312, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"img_pwm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 210, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 332, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 245, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 251, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 103, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"pistachio_pwm\00", align 1
@___asan_gen_.119 = private constant [25 x i8] c"../drivers/pwm/pwm-img.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 215, i32 38 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_img_pwm_driver_exit, ptr @__initcall__kmod_pwm_img__184_430_img_pwm_driver_init6, ptr @img_pwm_config._entry, ptr @img_pwm_config._entry.25, ptr @img_pwm_config._entry_ptr, ptr @img_pwm_config._entry_ptr.27, ptr @img_pwm_driver_exit, ptr @img_pwm_probe._entry, ptr @img_pwm_probe._entry.12, ptr @img_pwm_probe._entry.15, ptr @img_pwm_probe._entry.9, ptr @img_pwm_probe._entry_ptr, ptr @img_pwm_probe._entry_ptr.11, ptr @img_pwm_probe._entry_ptr.14, ptr @img_pwm_probe._entry_ptr.17, ptr @img_pwm_runtime_resume._entry, ptr @img_pwm_runtime_resume._entry.20, ptr @img_pwm_runtime_resume._entry_ptr, ptr @img_pwm_runtime_resume._entry_ptr.22, ptr @img_pwm_driver, ptr @.str, ptr @img_pwm_of_match, ptr @img_pwm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @img_pwm_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @pistachio_pwm], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_runtime_resume._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_pwm_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_pwm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @of_match_device(ptr noundef nonnull @img_pwm_of_match, ptr noundef %dev) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %data15 = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %data15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %data15, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.1) #6
  %periph_regs = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %periph_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call17, ptr %periph_regs, align 4
  %cmp.i712 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i712, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %sys_clk = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25, ptr %sys_clk, align 4
  %cmp.i713 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i713, label %do.end, label %if.end32

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %11 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sys_clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  %pwm_clk = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call34, ptr %pwm_clk, align 4
  %cmp.i714 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i714, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %15 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwm_clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %19 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end44.if.end56_crit_edge, label %if.then50

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then50:                                        ; preds = %if.end44
  %call52 = tail call i32 @img_pwm_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then50.if.end56_crit_edge, label %if.then50.err_pm_disable_crit_edge

if.then50.err_pm_disable_crit_edge:               ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_disable

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %if.then50.if.end56_crit_edge, %if.end44.if.end56_crit_edge
  %20 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwm_clk, align 4
  %call58 = tail call i32 @clk_get_rate(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %err_suspend

if.end65:                                         ; preds = %if.end56
  %22 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data15, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %conv = zext i32 %25 to i64
  %mul = mul i64 %conv, 512000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp237 = icmp ult i64 %mul, 4294967296
  br i1 %cmp237, label %if.then241, label %if.else247, !prof !75

if.then241:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %conv242 = trunc i64 %mul to i32
  %div245 = udiv i32 %conv242, %call58
  br label %if.else469

if.else247:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call58, i64 %mul) #10, !srcloc !76
  %asmresult1.i = extractvalue { i64, i64 } %26, 1
  %extract.t743 = trunc i64 %asmresult1.i to i32
  br label %if.else469

if.else469:                                       ; preds = %if.else247, %if.then241
  %val.0.off0 = phi i32 [ %div245, %if.then241 ], [ %extract.t743, %if.else247 ]
  %max_period_ns = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %max_period_ns to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %val.0.off0, ptr %max_period_ns, align 4
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call58, i64 16000000000) #10, !srcloc !76
  %asmresult1.i719 = extractvalue { i64, i64 } %28, 1
  %extract.t750 = trunc i64 %asmresult1.i719 to i32
  %min_period_ns = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %min_period_ns to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %extract.t750, ptr %min_period_ns, align 4
  %chip = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @img_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.img_pwm_chip, ptr %call.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %npwm, align 4
  %call481 = tail call i32 @pwmchip_add(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %cmp482 = icmp slt i32 %call481, 0
  br i1 %cmp482, label %do.end487, label %if.else469.cleanup_crit_edge

if.else469.cleanup_crit_edge:                     ; preds = %if.else469
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end487:                                        ; preds = %if.else469
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call481) #9
  br label %err_suspend

err_suspend:                                      ; preds = %do.end487, %do.end63
  %ret.0 = phi i32 [ %call481, %do.end487 ], [ -22, %do.end63 ]
  %33 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i721 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i721)
  %tobool.not.i722 = icmp ult i16 %bf.load.i721, 8192
  br i1 %tobool.not.i722, label %err_suspend.err_pm_disable_crit_edge, label %if.then492

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_disable

if.then492:                                       ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #8
  %call494 = tail call i32 @img_pwm_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then492, %err_suspend.err_pm_disable_crit_edge, %if.then50.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then492 ], [ %call52, %if.then50.err_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.else469.cleanup_crit_edge, %do.end40, %do.end, %if.then20, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %9, %if.then20 ], [ %13, %do.end ], [ %17, %do.end40 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ 0, %if.else469.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pwm_clk.i = getelementptr inbounds %struct.img_pwm_chip, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pwm_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwm_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %sys_clk.i = getelementptr inbounds %struct.img_pwm_chip, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 1
  tail call void @pwmchip_remove(ptr noundef %chip) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sys_clk = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %pwm_clk = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_clk, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end.clk_prepare_enable.exit25_crit_edge

if.end.clk_prepare_enable.exit25_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit25

if.end.i22:                                       ; preds = %if.end
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.then3.i23

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit25

clk_prepare_enable.exit25:                        ; preds = %if.then3.i23, %if.end.clk_prepare_enable.exit25_crit_edge
  %retval.0.i24 = phi i32 [ %call.i18, %if.end.clk_prepare_enable.exit25_crit_edge ], [ %call1.i20, %if.then3.i23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i24)
  %cmp3 = icmp slt i32 %retval.0.i24, 0
  br i1 %cmp3, label %do.end7, label %clk_prepare_enable.exit25.cleanup_crit_edge

clk_prepare_enable.exit25.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %clk_prepare_enable.exit25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %clk_prepare_enable.exit25.cleanup_crit_edge, %if.end.i22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %retval.0.i24, %do.end7 ], [ 0, %clk_prepare_enable.exit25.cleanup_crit_edge ], [ 0, %if.end.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwm_clk = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %sys_clk = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %enabled3 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %enabled3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled3, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then1.cleanup_crit_edge, label %if.then5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i = getelementptr i8, ptr %chip, i32 44
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !78
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %10 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm.i, align 8
  %shl.i = shl nuw i32 1, %11
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !81
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %call.i9.i = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %chip8 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %20 = ptrtoint ptr %chip8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip8, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %duty_cycle, align 8
  %conv = trunc i64 %23 to i32
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %state, align 8
  %conv9 = trunc i64 %25 to i32
  %data.i = getelementptr i8, ptr %21, i32 60
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %min_period_ns.i = getelementptr i8, ptr %21, i32 56
  %30 = ptrtoint ptr %min_period_ns.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_period_ns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv9)
  %cmp.i = icmp sgt i32 %31, %conv9
  br i1 %cmp.i, label %if.end7.do.end.i_crit_edge, label %lor.lhs.false.i

if.end7.do.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end7
  %max_period_ns.i = getelementptr i8, ptr %21, i32 52
  %32 = ptrtoint ptr %max_period_ns.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_period_ns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv9)
  %cmp2.i = icmp slt i32 %33, %conv9
  br i1 %cmp2.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end7.do.end.i_crit_edge
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pwm_clk.i = getelementptr i8, ptr %21, i32 36
  %36 = ptrtoint ptr %pwm_clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwm_clk.i, align 4
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %37) #6
  %sub.i = add i32 %conv9, 999999999
  %div4.i = sdiv i32 %sub.i, %conv9
  %add5.i = add i32 %call3.i, -1
  %sub6.i = add i32 %add5.i, %div4.i
  %div7.i = udiv i32 %sub6.i, %div4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %29)
  %cmp8.not.i = icmp ugt i32 %div7.i, %29
  br i1 %cmp8.not.i, label %if.else.i, label %if.end.i.if.end41.i_crit_edge

if.end.i.if.end41.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end.i
  %mul13.i = shl i32 %29, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %mul13.i)
  %cmp14.not.i = icmp ugt i32 %div7.i, %mul13.i
  br i1 %cmp14.not.i, label %if.else19.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i = add i32 %div7.i, 7
  %div18113.i = lshr i32 %sub17.i, 3
  br label %if.end41.i

if.else19.i:                                      ; preds = %if.else.i
  %mul20.i = shl i32 %29, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %mul20.i)
  %cmp21.not.i = icmp ugt i32 %div7.i, %mul20.i
  br i1 %cmp21.not.i, label %if.else26.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub24.i = add i32 %div7.i, 63
  %div25112.i = lshr i32 %sub24.i, 6
  br label %if.end41.i

if.else26.i:                                      ; preds = %if.else19.i
  %mul27.i = shl i32 %29, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %mul27.i)
  %cmp28.not.i = icmp ugt i32 %div7.i, %mul27.i
  br i1 %cmp28.not.i, label %do.end36.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub31.i = add i32 %div7.i, 511
  %div32111.i = lshr i32 %sub31.i, 9
  br label %if.end41.i

do.end36.i:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end41.i:                                       ; preds = %if.then29.i, %if.then22.i, %if.then15.i, %if.end.i.if.end41.i_crit_edge
  %div.0.i = phi i32 [ 1, %if.then15.i ], [ 2, %if.then22.i ], [ 3, %if.then29.i ], [ 0, %if.end.i.if.end41.i_crit_edge ]
  %timebase.0.i = phi i32 [ %div18113.i, %if.then15.i ], [ %div25112.i, %if.then22.i ], [ %div32111.i, %if.then29.i ], [ %div7.i, %if.end.i.if.end41.i_crit_edge ]
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %21, align 4
  %call.i.i30 = tail call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.i.i = icmp slt i32 %call.i.i30, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end12

if.then.i.i:                                      ; preds = %if.end41.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #6
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #6, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %cleanup

if.end12:                                         ; preds = %if.end41.i
  %mul42.i = mul i32 %timebase.0.i, %conv
  %add43.i = add i32 %conv9, -1
  %sub44.i = add i32 %add43.i, %mul42.i
  %div45.i = udiv i32 %sub44.i, %conv9
  %base.i.i31 = getelementptr i8, ptr %21, i32 44
  %43 = ptrtoint ptr %base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i31, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !78
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %hwpwm.i32 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %47 = ptrtoint ptr %hwpwm.i32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hwpwm.i32, align 8
  %mul52.i = shl i32 %48, 1
  %add53.i = add i32 %mul52.i, 4
  %shl.i33 = shl i32 3, %add53.i
  %neg.i34 = xor i32 %shl.i33, -1
  %and.i35 = and i32 %46, %neg.i34
  %shl58.i = shl i32 %div.0.i, %add53.i
  %or.i = or i32 %and.i35, %shl58.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %50 = ptrtoint ptr %base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #6, !srcloc !81
  %shl59.i = shl i32 %div45.i, 16
  %or61.i = or i32 %shl59.i, %timebase.0.i
  %52 = ptrtoint ptr %hwpwm.i32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hwpwm.i32, align 8
  %mul63.i = shl i32 %53, 2
  %add64.i = add i32 %mul63.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %or61.i) #6
  %55 = ptrtoint ptr %base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i31, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %56, i32 %add64.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i, i32 %54) #6, !srcloc !81
  %57 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %21, align 4
  %call.i117.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i36 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 12, i32 22
  %59 = ptrtoint ptr %last_busy.i.i36 to i32
  call void @__asan_store8_noabort(i32 %59)
  store volatile i64 %call.i117.i, ptr %last_busy.i.i36, align 8
  %60 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %21, align 4
  %call.i118.i = tail call i32 @__pm_runtime_suspend(ptr noundef %61, i32 noundef 13) #6
  %enabled14 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %62 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enabled14, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool15.not = icmp eq i8 %63, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  %64 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip, align 4
  %call.i.i37 = tail call i32 @__pm_runtime_resume(ptr noundef %65, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %cmp.i.i38 = icmp slt i32 %call.i.i37, 0
  br i1 %cmp.i.i38, label %if.then.i.i43, label %if.end.i49

if.then.i.i43:                                    ; preds = %if.then16
  %usage_count.i.i.i39 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 12, i32 13
  %call.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i39, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i39, i32 1, i32 3, i32 1) #6
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i39, ptr %usage_count.i.i.i39, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i39) #6, !srcloc !83
  %asmresult.i.i.i.i.i.i41 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i41)
  %cmp.not.i.i.i.i.i.i42 = icmp eq i32 %asmresult.i.i.i.i.i.i41, 0
  br i1 %cmp.not.i.i.i.i.i.i42, label %if.then.i.i43.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i44

if.then.i.i43.cleanup_crit_edge:                  ; preds = %if.then.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i.i44:                           ; preds = %if.then.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %cleanup

if.end.i49:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %base.i.i45 = getelementptr i8, ptr %chip, i32 44
  %67 = ptrtoint ptr %base.i.i45 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i45, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !78
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %71 = ptrtoint ptr %hwpwm.i32 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hwpwm.i32, align 8
  %shl.i47 = shl nuw i32 1, %72
  %or.i48 = or i32 %shl.i47, %70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i48) #6
  %74 = ptrtoint ptr %base.i.i45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i45, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #6, !srcloc !81
  %periph_regs.i = getelementptr i8, ptr %chip, i32 48
  %76 = ptrtoint ptr %periph_regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %periph_regs.i, align 4
  %78 = ptrtoint ptr %hwpwm.i32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hwpwm.i32, align 8
  %mul.i = shl i32 %79, 2
  %shl4.i = shl nuw i32 1, %mul.i
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 320, i32 noundef %shl4.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i49, %do.end11.i.i.i.i.i.i44, %if.then.i.i43.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %do.end36.i, %do.end.i, %if.then5, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end.i49 ], [ %call.i.i37, %if.then.i.i43.cleanup_crit_edge ], [ %call.i.i37, %do.end11.i.i.i.i.i.i44 ], [ %call.i.i30, %do.end11.i.i.i.i.i.i ], [ %call.i.i30, %if.then.i.i.cleanup_crit_edge ], [ -22, %do.end36.i ], [ -34, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @img_pwm_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %npwm = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not = icmp eq i32 %5, 0
  br i1 %cmp22.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %base.i = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.023, 2
  %add = add i32 %mul, 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !78
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %arrayidx = getelementptr %struct.img_pwm_chip, ptr %1, i32 0, i32 10, i32 %i.023
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.023, 1
  %11 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %base.i21 = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %base.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i21, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !78
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %suspend_ctrl_cfg = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %suspend_ctrl_cfg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %suspend_ctrl_cfg, align 4
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i, align 4
  %pwm_clk.i = getelementptr inbounds %struct.img_pwm_chip, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %pwm_clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwm_clk.i, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  %sys_clk.i = getelementptr inbounds %struct.img_pwm_chip, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sys_clk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_pwm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @img_pwm_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %npwm = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42.not = icmp eq i32 %3, 0
  br i1 %cmp42.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %base.i = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.043, 2
  %add = add i32 %mul, 4
  %arrayidx = getelementptr %struct.img_pwm_chip, ptr %1, i32 0, i32 10, i32 %i.043
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !81
  %inc = add nuw i32 %i.043, 1
  %9 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %suspend_ctrl_cfg = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %suspend_ctrl_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %suspend_ctrl_cfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %base.i41 = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %base.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !81
  %16 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp544.not = icmp eq i32 %17, 0
  br i1 %cmp544.not, label %for.end.for.end16_crit_edge, label %for.body6.lr.ph

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.body6.lr.ph:                                  ; preds = %for.end
  %periph_regs = getelementptr inbounds %struct.img_pwm_chip, ptr %1, i32 0, i32 5
  br label %for.body6

for.body6:                                        ; preds = %for.inc14.for.body6_crit_edge, %for.body6.lr.ph
  %i.145 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc15, %for.inc14.for.body6_crit_edge ]
  %18 = ptrtoint ptr %suspend_ctrl_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %suspend_ctrl_cfg, align 4
  %shl = shl nuw i32 1, %i.145
  %and = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body6.for.inc14_crit_edge, label %if.then9

for.body6.for.inc14_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc14

if.then9:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %periph_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %periph_regs, align 4
  %mul10 = shl i32 %i.145, 2
  %shl11 = shl nuw i32 1, %mul10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 320, i32 noundef %shl11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.inc14

for.inc14:                                        ; preds = %if.then9, %for.body6.for.inc14_crit_edge
  %inc15 = add nuw i32 %i.145, 1
  %22 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %npwm, align 4
  %cmp5 = icmp ult i32 %inc15, %23
  br i1 %cmp5, label %for.inc14.for.body6_crit_edge, label %for.inc14.for.end16_crit_edge

for.inc14.for.end16_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.inc14.for.body6_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end16:                                        ; preds = %for.inc14.for.end16_crit_edge, %for.end.for.end16_crit_edge
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %24 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i = icmp eq i32 %25, 2
  br i1 %cmp.i, label %if.then18, label %for.end16.cleanup_crit_edge

for.end16.cleanup_crit_edge:                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i, align 4
  %pwm_clk.i = getelementptr inbounds %struct.img_pwm_chip, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pwm_clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwm_clk.i, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  %sys_clk.i = getelementptr inbounds %struct.img_pwm_chip, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sys_clk.i, align 4
  tail call void @clk_disable(ptr noundef %31) #6
  tail call void @clk_unprepare(ptr noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %for.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %for.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_pwm_img__184_430_img_pwm_driver_init6, !1, !"__initcall__kmod_pwm_img__184_430_img_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-img.c", i32 430, i32 1}
!2 = !{ptr @__exitcall_img_pwm_driver_exit, !1, !"__exitcall_img_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author185, !4, !"__UNIQUE_ID_author185", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-img.c", i32 432, i32 1}
!5 = !{ptr @__UNIQUE_ID_description186, !6, !"__UNIQUE_ID_description186", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-img.c", i32 433, i32 1}
!7 = !{ptr @__UNIQUE_ID_file187, !8, !"__UNIQUE_ID_file187", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-img.c", i32 434, i32 1}
!9 = !{ptr @__UNIQUE_ID_license188, !8, !"__UNIQUE_ID_license188", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-img.c", i32 423, i32 11}
!12 = !{ptr @img_pwm_driver, !13, !"img_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-img.c", i32 421, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-img.c", i32 283, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-img.c", i32 287, i32 42}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-img.c", i32 289, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @img_pwm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @img_pwm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-img.c", i32 293, i32 42}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-img.c", i32 295, i32 3}
!30 = !{ptr @img_pwm_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @img_pwm_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-img.c", i32 312, i32 3}
!34 = !{ptr @img_pwm_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @img_pwm_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-img.c", i32 332, i32 3}
!38 = !{ptr @img_pwm_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @img_pwm_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-img.c", i32 245, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @img_pwm_runtime_resume._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @img_pwm_runtime_resume._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pwm/pwm-img.c", i32 251, i32 3}
!47 = !{ptr @img_pwm_runtime_resume._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @img_pwm_runtime_resume._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @img_pwm_ops, !50, !"img_pwm_ops", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-img.c", i32 210, i32 29}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-img.c", i32 103, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @img_pwm_config._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @img_pwm_config._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pwm/pwm-img.c", i32 124, i32 3}
!58 = !{ptr @img_pwm_config._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @img_pwm_config._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @img_pwm_of_match, !61, !"img_pwm_of_match", i1 false, i1 false}
!61 = !{!"../drivers/pwm/pwm-img.c", i32 219, i32 34}
!62 = !{ptr @pistachio_pwm, !63, !"pistachio_pwm", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-img.c", i32 215, i32 38}
!64 = !{ptr @img_pwm_pm_ops, !65, !"img_pwm_pm_ops", i1 false, i1 false}
!65 = !{!"../drivers/pwm/pwm-img.c", i32 414, i32 32}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2148639390, i64 2148639670, i64 2148640004, i64 2148640338}
!77 = !{i8 0, i8 2}
!78 = !{i64 2038179}
!79 = !{i64 2153074609}
!80 = !{i64 2153073784}
!81 = !{i64 2037761}
!82 = !{i64 2148248275}
!83 = !{i64 733098, i64 733123, i64 733145, i64 733161, i64 733173, i64 733193, i64 733217, i64 733233, i64 733245}
!84 = !{i64 2148248463}
