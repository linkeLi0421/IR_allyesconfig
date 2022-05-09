; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-sti.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.sti_pwm_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pwm_chip, ptr, i32, i32, %struct.mutex, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.sti_pwm_compat_data = type { ptr, i32, i32, i32, i32 }
%struct.sti_cpt_ddata = type { [3 x i32], i32, %struct.mutex, %struct.wait_queue_head }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pwm_capture = type { i32, i32 }

@__initcall__kmod_pwm_sti__188_675_sti_pwm_driver_init6 = internal global ptr @sti_pwm_driver_init, section ".initcall6.init", align 4
@sti_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_pwm_probe, ptr @sti_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sti_pwm_driver_exit = internal global ptr @sti_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [53 x i8] c"pwm_sti.author=Ajit Pal Singh <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [53 x i8] c"pwm_sti.description=STMicroelectronics ST PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [33 x i8] c"pwm_sti.file=drivers/pwm/pwm-sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [20 x i8] c"pwm_sti.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sti-pwm\00", [24 x i8] zeroinitializer }, align 32
@sti_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sti-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_pwm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sti_pwm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pwm_sti:558:(&sti_pwm_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sti_pwm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pwm/pwm-sti.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry_ptr = internal global ptr @sti_pwm_probe._entry, section ".printk_index", align 4
@sti_pwm_regfields = internal constant { [7 x %struct.reg_field], [52 x i8] } { [7 x %struct.reg_field] [%struct.reg_field { i32 80, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 11, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 4, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 1, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 1, i32 4, i32 0, i32 0 }], [52 x i8] zeroinitializer }, align 32
@sti_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pc->sti_pwm_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get PWM clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry_ptr.11 = internal global ptr @sti_pwm_probe._entry.9, section ".printk_index", align 4
@sti_pwm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry_ptr.14 = internal global ptr @sti_pwm_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get PWM capture clock\0A\00", [63 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry_ptr.18 = internal global ptr @sti_pwm_probe._entry.16, section ".printk_index", align 4
@sti_pwm_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sti_pwm_probe._entry_ptr.20 = internal global ptr @sti_pwm_probe._entry.19, section ".printk_index", align 4
@sti_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr @sti_pwm_free, ptr @sti_pwm_capture, ptr null, ptr null, ptr null, ptr @sti_pwm_config, ptr null, ptr @sti_pwm_enable, ptr @sti_pwm_disable }, [56 x i8] zeroinitializer }, align 32
@sti_pwm_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ddata->wait\00", [19 x i8] zeroinitializer }, align 32
@sti_pwm_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ddata->lock\00", [19 x i8] zeroinitializer }, align 32
@sti_pwm_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Internal error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sti_pwm_interrupt\00", [46 x i8] zeroinitializer }, align 32
@sti_pwm_interrupt._entry_ptr = internal global ptr @sti_pwm_interrupt._entry, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,pwm-num-chan\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st,capture-num-chan\00", [44 x i8] zeroinitializer }, align 32
@sti_pwm_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No channels configured\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sti_pwm_probe_dt\00", [47 x i8] zeroinitializer }, align 32
@sti_pwm_probe_dt._entry_ptr = internal global ptr @sti_pwm_probe_dt._entry, section ".printk_index", align 4
@sti_pwm_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device %u is not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sti_pwm_capture\00", [16 x i8] zeroinitializer }, align 32
@sti_pwm_capture._entry_ptr = internal global ptr @sti_pwm_capture._entry, section ".printk_index", align 4
@sti_pwm_capture._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable PWM capture %u: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sti_pwm_capture._entry_ptr.35 = internal global ptr @sti_pwm_capture._entry.33, section ".printk_index", align 4
@sti_pwm_capture._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"internal error\0A\00", [16 x i8] zeroinitializer }, align 32
@sti_pwm_capture._entry_ptr.38 = internal global ptr @sti_pwm_capture._entry.36, section ".printk_index", align 4
@sti_pwm_config.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sti\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sti_pwm_config\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"prescale:%u, period:%i, duty:%i, value:%u\0A\00", [53 x i8] zeroinitializer }, align 32
@sti_pwm_get_prescale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_pwm_get_prescale\00", [43 x i8] zeroinitializer }, align 32
@sti_pwm_get_prescale._entry_ptr = internal global ptr @sti_pwm_get_prescale._entry, section ".printk_index", align 4
@sti_pwm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable PWM device %u: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sti_pwm_enable\00", [17 x i8] zeroinitializer }, align 32
@sti_pwm_enable._entry_ptr = internal global ptr @sti_pwm_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"sti_pwm_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 667, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 669, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"sti_pwm_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 661, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"sti_pwm_regmap_config\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 531, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 557, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 569, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"sti_pwm_regfields\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 104, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 586, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 593, i32 50 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 595, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 601, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 607, i32 50 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 609, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 615, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"sti_pwm_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 394, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 638, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 639, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 460, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 483, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 487, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 492, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 324, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 338, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 382, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 238, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 132, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [25 x i8] c"../drivers/pwm/pwm-sti.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 273, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_sti_pwm_driver_exit, ptr @__initcall__kmod_pwm_sti__188_675_sti_pwm_driver_init6, ptr @sti_pwm_capture._entry, ptr @sti_pwm_capture._entry.33, ptr @sti_pwm_capture._entry.36, ptr @sti_pwm_capture._entry_ptr, ptr @sti_pwm_capture._entry_ptr.35, ptr @sti_pwm_capture._entry_ptr.38, ptr @sti_pwm_driver_exit, ptr @sti_pwm_enable._entry, ptr @sti_pwm_enable._entry_ptr, ptr @sti_pwm_get_prescale._entry, ptr @sti_pwm_get_prescale._entry_ptr, ptr @sti_pwm_interrupt._entry, ptr @sti_pwm_interrupt._entry_ptr, ptr @sti_pwm_probe._entry, ptr @sti_pwm_probe._entry.12, ptr @sti_pwm_probe._entry.16, ptr @sti_pwm_probe._entry.19, ptr @sti_pwm_probe._entry.9, ptr @sti_pwm_probe._entry_ptr, ptr @sti_pwm_probe._entry_ptr.11, ptr @sti_pwm_probe._entry_ptr.14, ptr @sti_pwm_probe._entry_ptr.18, ptr @sti_pwm_probe._entry_ptr.20, ptr @sti_pwm_probe_dt._entry, ptr @sti_pwm_probe_dt._entry_ptr, ptr @sti_pwm_driver, ptr @.str, ptr @sti_pwm_of_match, ptr @sti_pwm_probe._key, ptr @sti_pwm_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sti_pwm_regfields, ptr @sti_pwm_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @sti_pwm_ops, ptr @sti_pwm_probe.__key.21, ptr @.str.22, ptr @sti_pwm_probe.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_regfields to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_capture._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_capture._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_get_prescale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_pwm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sti_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_devs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup110_crit_edge, label %if.end

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup110

if.end:                                           ; preds = %entry
  %call.i188 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i188, null
  br i1 %tobool3.not, label %if.end.cleanup110_crit_edge, label %if.end5

if.end.cleanup110_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup110

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %mmio = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %mmio, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup110

if.end12:                                         ; preds = %if.end5
  %call14 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call6, ptr noundef nonnull @sti_pwm_regmap_config, ptr noundef nonnull @sti_pwm_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %regmap, align 4
  %cmp.i189 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call14 to i32
  br label %cleanup110

if.end20:                                         ; preds = %if.end12
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.cleanup110_crit_edge, label %if.end23

if.end20.cleanup110_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup110

if.end23:                                         ; preds = %if.end20
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call.i190 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call21, ptr noundef nonnull @sti_pwm_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %5, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp26 = icmp slt i32 %call.i190, 0
  br i1 %cmp26, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup110

if.end29:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %call.i188 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sti_pwm_regfields, ptr %call.i188, align 4
  %max_prescale = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %call.i188, i32 0, i32 4
  %7 = ptrtoint ptr %max_prescale to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 255, ptr %max_prescale, align 4
  %max_pwm_cnt = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %call.i188, i32 0, i32 3
  %8 = ptrtoint ptr %max_pwm_cnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 255, ptr %max_pwm_cnt, align 4
  %pwm_num_devs = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %call.i188, i32 0, i32 1
  %9 = ptrtoint ptr %pwm_num_devs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pwm_num_devs, align 4
  %cpt_num_devs = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %call.i188, i32 0, i32 2
  %10 = ptrtoint ptr %cpt_num_devs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cpt_num_devs, align 4
  %cdata30 = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %cdata30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i188, ptr %cdata30, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %call.i, align 4
  %en_count = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %en_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %en_count, align 4
  %sti_pwm_lock = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %sti_pwm_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sti_pwm_probe.__key) #6
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %18 = ptrtoint ptr %cdata30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdata30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_devs.i) #6
  %20 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %num_devs.i, align 4, !annotation !112
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.27, ptr noundef nonnull %num_devs.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end29.if.end.i_crit_edge

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_devs.i, align 4
  %pwm_num_devs.i = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pwm_num_devs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pwm_num_devs.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end29.if.end.i_crit_edge
  %call.i.i168.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull %num_devs.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i168.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i168.i, -1
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_devs.i, align 4
  %cpt_num_devs.i = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %cpt_num_devs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cpt_num_devs.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %pwm_num_devs7.i = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %pwm_num_devs7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pwm_num_devs7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not.i = icmp eq i32 %28, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end6.i.if.end12.i_crit_edge

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %cpt_num_devs9.i = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %cpt_num_devs9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpt_num_devs9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.not.i = icmp eq i32 %30, 0
  br i1 %tobool10.not.i, label %sti_pwm_probe_dt.exit.thread196, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

sti_pwm_probe_dt.exit.thread196:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.29) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_devs.i) #6
  br label %cleanup110

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end6.i.if.end12.i_crit_edge
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %19, align 4
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i = load i32, ptr %32, align 4
  %36 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt115.i = getelementptr inbounds [5 x i32], ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %.elt115.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack116.i = load i32, ptr %.elt115.i, align 4
  %38 = insertvalue [5 x i32] %36, i32 %.unpack116.i, 1
  %.elt117.i = getelementptr inbounds [5 x i32], ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %.elt117.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack118.i = load i32, ptr %.elt117.i, align 4
  %40 = insertvalue [5 x i32] %38, i32 %.unpack118.i, 2
  %.elt119.i = getelementptr inbounds [5 x i32], ptr %32, i32 0, i32 3
  %41 = ptrtoint ptr %.elt119.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack120.i = load i32, ptr %.elt119.i, align 4
  %42 = insertvalue [5 x i32] %40, i32 %.unpack120.i, 3
  %.elt121.i = getelementptr inbounds [5 x i32], ptr %32, i32 0, i32 4
  %43 = ptrtoint ptr %.elt121.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack122.i = load i32, ptr %.elt121.i, align 4
  %44 = insertvalue [5 x i32] %42, i32 %.unpack122.i, 4
  %call14.i = call ptr @devm_regmap_field_alloc(ptr noundef %15, ptr noundef %34, [5 x i32] %44) #6
  %prescale_low.i = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %prescale_low.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call14.i, ptr %prescale_low.i, align 4
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end12.i.sti_pwm_probe_dt.exit_crit_edge, label %if.end20.i

if.end12.i.sti_pwm_probe_dt.exit_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_pwm_probe_dt.exit

if.end20.i:                                       ; preds = %if.end12.i
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %arrayidx22.i = getelementptr %struct.reg_field, ptr %32, i32 1
  %48 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack123.i = load i32, ptr %arrayidx22.i, align 4
  %49 = insertvalue [5 x i32] undef, i32 %.unpack123.i, 0
  %.elt124.i = getelementptr %struct.reg_field, ptr %32, i32 1, i32 1
  %50 = ptrtoint ptr %.elt124.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack125.i = load i32, ptr %.elt124.i, align 4
  %51 = insertvalue [5 x i32] %49, i32 %.unpack125.i, 1
  %.elt126.i = getelementptr %struct.reg_field, ptr %32, i32 1, i32 2
  %52 = ptrtoint ptr %.elt126.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack127.i = load i32, ptr %.elt126.i, align 4
  %53 = insertvalue [5 x i32] %51, i32 %.unpack127.i, 2
  %.elt128.i = getelementptr %struct.reg_field, ptr %32, i32 1, i32 3
  %54 = ptrtoint ptr %.elt128.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack129.i = load i32, ptr %.elt128.i, align 4
  %55 = insertvalue [5 x i32] %53, i32 %.unpack129.i, 3
  %.elt130.i = getelementptr %struct.reg_field, ptr %32, i32 1, i32 4
  %56 = ptrtoint ptr %.elt130.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack131.i = load i32, ptr %.elt130.i, align 4
  %57 = insertvalue [5 x i32] %55, i32 %.unpack131.i, 4
  %call23.i = call ptr @devm_regmap_field_alloc(ptr noundef %15, ptr noundef %47, [5 x i32] %57) #6
  %prescale_high.i = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 6
  %58 = ptrtoint ptr %prescale_high.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call23.i, ptr %prescale_high.i, align 4
  %cmp.i169.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169.i, label %if.end20.i.sti_pwm_probe_dt.exit_crit_edge, label %if.end29.i

if.end20.i.sti_pwm_probe_dt.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_pwm_probe_dt.exit

if.end29.i:                                       ; preds = %if.end20.i
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %arrayidx31.i = getelementptr %struct.reg_field, ptr %32, i32 3
  %61 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack132.i = load i32, ptr %arrayidx31.i, align 4
  %62 = insertvalue [5 x i32] undef, i32 %.unpack132.i, 0
  %.elt133.i = getelementptr %struct.reg_field, ptr %32, i32 3, i32 1
  %63 = ptrtoint ptr %.elt133.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack134.i = load i32, ptr %.elt133.i, align 4
  %64 = insertvalue [5 x i32] %62, i32 %.unpack134.i, 1
  %.elt135.i = getelementptr %struct.reg_field, ptr %32, i32 3, i32 2
  %65 = ptrtoint ptr %.elt135.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack136.i = load i32, ptr %.elt135.i, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack136.i, 2
  %.elt137.i = getelementptr %struct.reg_field, ptr %32, i32 3, i32 3
  %67 = ptrtoint ptr %.elt137.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack138.i = load i32, ptr %.elt137.i, align 4
  %68 = insertvalue [5 x i32] %66, i32 %.unpack138.i, 3
  %.elt139.i = getelementptr %struct.reg_field, ptr %32, i32 3, i32 4
  %69 = ptrtoint ptr %.elt139.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack140.i = load i32, ptr %.elt139.i, align 4
  %70 = insertvalue [5 x i32] %68, i32 %.unpack140.i, 4
  %call32.i = call ptr @devm_regmap_field_alloc(ptr noundef %15, ptr noundef %60, [5 x i32] %70) #6
  %pwm_out_en.i = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 7
  %71 = ptrtoint ptr %pwm_out_en.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call32.i, ptr %pwm_out_en.i, align 4
  %cmp.i170.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %if.end29.i.sti_pwm_probe_dt.exit_crit_edge, label %if.end38.i

if.end29.i.sti_pwm_probe_dt.exit_crit_edge:       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_pwm_probe_dt.exit

if.end38.i:                                       ; preds = %if.end29.i
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %arrayidx40.i = getelementptr %struct.reg_field, ptr %32, i32 4
  %74 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack141.i = load i32, ptr %arrayidx40.i, align 4
  %75 = insertvalue [5 x i32] undef, i32 %.unpack141.i, 0
  %.elt142.i = getelementptr %struct.reg_field, ptr %32, i32 4, i32 1
  %76 = ptrtoint ptr %.elt142.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack143.i = load i32, ptr %.elt142.i, align 4
  %77 = insertvalue [5 x i32] %75, i32 %.unpack143.i, 1
  %.elt144.i = getelementptr %struct.reg_field, ptr %32, i32 4, i32 2
  %78 = ptrtoint ptr %.elt144.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack145.i = load i32, ptr %.elt144.i, align 4
  %79 = insertvalue [5 x i32] %77, i32 %.unpack145.i, 2
  %.elt146.i = getelementptr %struct.reg_field, ptr %32, i32 4, i32 3
  %80 = ptrtoint ptr %.elt146.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack147.i = load i32, ptr %.elt146.i, align 4
  %81 = insertvalue [5 x i32] %79, i32 %.unpack147.i, 3
  %.elt148.i = getelementptr %struct.reg_field, ptr %32, i32 4, i32 4
  %82 = ptrtoint ptr %.elt148.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack149.i = load i32, ptr %.elt148.i, align 4
  %83 = insertvalue [5 x i32] %81, i32 %.unpack149.i, 4
  %call41.i = call ptr @devm_regmap_field_alloc(ptr noundef %15, ptr noundef %73, [5 x i32] %83) #6
  %pwm_cpt_en.i = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 8
  %84 = ptrtoint ptr %pwm_cpt_en.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call41.i, ptr %pwm_cpt_en.i, align 4
  %cmp.i171.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171.i, label %if.end38.i.sti_pwm_probe_dt.exit_crit_edge, label %if.end47.i

if.end38.i.sti_pwm_probe_dt.exit_crit_edge:       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_pwm_probe_dt.exit

if.end47.i:                                       ; preds = %if.end38.i
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %arrayidx49.i = getelementptr %struct.reg_field, ptr %32, i32 5
  %87 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack150.i = load i32, ptr %arrayidx49.i, align 4
  %88 = insertvalue [5 x i32] undef, i32 %.unpack150.i, 0
  %.elt151.i = getelementptr %struct.reg_field, ptr %32, i32 5, i32 1
  %89 = ptrtoint ptr %.elt151.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.unpack152.i = load i32, ptr %.elt151.i, align 4
  %90 = insertvalue [5 x i32] %88, i32 %.unpack152.i, 1
  %.elt153.i = getelementptr %struct.reg_field, ptr %32, i32 5, i32 2
  %91 = ptrtoint ptr %.elt153.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.unpack154.i = load i32, ptr %.elt153.i, align 4
  %92 = insertvalue [5 x i32] %90, i32 %.unpack154.i, 2
  %.elt155.i = getelementptr %struct.reg_field, ptr %32, i32 5, i32 3
  %93 = ptrtoint ptr %.elt155.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.unpack156.i = load i32, ptr %.elt155.i, align 4
  %94 = insertvalue [5 x i32] %92, i32 %.unpack156.i, 3
  %.elt157.i = getelementptr %struct.reg_field, ptr %32, i32 5, i32 4
  %95 = ptrtoint ptr %.elt157.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.unpack158.i = load i32, ptr %.elt157.i, align 4
  %96 = insertvalue [5 x i32] %94, i32 %.unpack158.i, 4
  %call50.i = call ptr @devm_regmap_field_alloc(ptr noundef %15, ptr noundef %86, [5 x i32] %96) #6
  %pwm_cpt_int_en.i = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 9
  %97 = ptrtoint ptr %pwm_cpt_int_en.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call50.i, ptr %pwm_cpt_int_en.i, align 4
  %cmp.i172.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172.i, label %if.end47.i.sti_pwm_probe_dt.exit_crit_edge, label %if.end56.i

if.end47.i.sti_pwm_probe_dt.exit_crit_edge:       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_pwm_probe_dt.exit

if.end56.i:                                       ; preds = %if.end47.i
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %arrayidx58.i = getelementptr %struct.reg_field, ptr %32, i32 6
  %100 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.unpack159.i = load i32, ptr %arrayidx58.i, align 4
  %101 = insertvalue [5 x i32] undef, i32 %.unpack159.i, 0
  %.elt160.i = getelementptr %struct.reg_field, ptr %32, i32 6, i32 1
  %102 = ptrtoint ptr %.elt160.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.unpack161.i = load i32, ptr %.elt160.i, align 4
  %103 = insertvalue [5 x i32] %101, i32 %.unpack161.i, 1
  %.elt162.i = getelementptr %struct.reg_field, ptr %32, i32 6, i32 2
  %104 = ptrtoint ptr %.elt162.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.unpack163.i = load i32, ptr %.elt162.i, align 4
  %105 = insertvalue [5 x i32] %103, i32 %.unpack163.i, 2
  %.elt164.i = getelementptr %struct.reg_field, ptr %32, i32 6, i32 3
  %106 = ptrtoint ptr %.elt164.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.unpack165.i = load i32, ptr %.elt164.i, align 4
  %107 = insertvalue [5 x i32] %105, i32 %.unpack165.i, 3
  %.elt166.i = getelementptr %struct.reg_field, ptr %32, i32 6, i32 4
  %108 = ptrtoint ptr %.elt166.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.unpack167.i = load i32, ptr %.elt166.i, align 4
  %109 = insertvalue [5 x i32] %107, i32 %.unpack167.i, 4
  %call59.i = call ptr @devm_regmap_field_alloc(ptr noundef %15, ptr noundef %99, [5 x i32] %109) #6
  %pwm_cpt_int_stat.i = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 10
  %110 = ptrtoint ptr %pwm_cpt_int_stat.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call59.i, ptr %pwm_cpt_int_stat.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %call59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %if.end56.i.sti_pwm_probe_dt.exit_crit_edge, label %sti_pwm_probe_dt.exit.thread

if.end56.i.sti_pwm_probe_dt.exit_crit_edge:       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_pwm_probe_dt.exit

sti_pwm_probe_dt.exit.thread:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_devs.i) #6
  br label %if.end38

sti_pwm_probe_dt.exit:                            ; preds = %if.end56.i.sti_pwm_probe_dt.exit_crit_edge, %if.end47.i.sti_pwm_probe_dt.exit_crit_edge, %if.end38.i.sti_pwm_probe_dt.exit_crit_edge, %if.end29.i.sti_pwm_probe_dt.exit_crit_edge, %if.end20.i.sti_pwm_probe_dt.exit_crit_edge, %if.end12.i.sti_pwm_probe_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call59.i, %if.end56.i.sti_pwm_probe_dt.exit_crit_edge ], [ %call14.i, %if.end12.i.sti_pwm_probe_dt.exit_crit_edge ], [ %call23.i, %if.end20.i.sti_pwm_probe_dt.exit_crit_edge ], [ %call32.i, %if.end29.i.sti_pwm_probe_dt.exit_crit_edge ], [ %call41.i, %if.end38.i.sti_pwm_probe_dt.exit_crit_edge ], [ %call50.i, %if.end47.i.sti_pwm_probe_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_devs.i) #6
  %tobool36.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool36.not, label %sti_pwm_probe_dt.exit.if.end38_crit_edge, label %sti_pwm_probe_dt.exit.cleanup110_crit_edge

sti_pwm_probe_dt.exit.cleanup110_crit_edge:       ; preds = %sti_pwm_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup110

sti_pwm_probe_dt.exit.if.end38_crit_edge:         ; preds = %sti_pwm_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %sti_pwm_probe_dt.exit.if.end38_crit_edge, %sti_pwm_probe_dt.exit.thread
  %111 = ptrtoint ptr %pwm_num_devs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pwm_num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool40.not = icmp eq i32 %112, 0
  br i1 %tobool40.not, label %if.end38.if.end60_crit_edge, label %if.then41

if.end38.if.end60_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then41:                                        ; preds = %if.end38
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %113 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %of_node, align 8
  %call42 = call ptr @of_clk_get_by_name(ptr noundef %114, ptr noundef nonnull @.str.8) #6
  %pwm_clk = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 1
  %115 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call42, ptr %pwm_clk, align 4
  %cmp.i191 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %116 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pwm_clk, align 4
  %118 = ptrtoint ptr %117 to i32
  br label %cleanup110

if.end51:                                         ; preds = %if.then41
  %call53 = call i32 @clk_prepare(ptr noundef %call42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.if.end60_crit_edge, label %do.end58

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup110

if.end60:                                         ; preds = %if.end51.if.end60_crit_edge, %if.end38.if.end60_crit_edge
  %119 = ptrtoint ptr %cpt_num_devs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cpt_num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool62.not = icmp eq i32 %120, 0
  br i1 %tobool62.not, label %if.end60.if.end83_crit_edge, label %if.then63

if.end60.if.end83_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then63:                                        ; preds = %if.end60
  %of_node64 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %121 = ptrtoint ptr %of_node64 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %of_node64, align 8
  %call65 = call ptr @of_clk_get_by_name(ptr noundef %122, ptr noundef nonnull @.str.15) #6
  %cpt_clk = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 2
  %123 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call65, ptr %cpt_clk, align 4
  %cmp.i192 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  %124 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cpt_clk, align 4
  %126 = ptrtoint ptr %125 to i32
  br label %cleanup110

if.end74:                                         ; preds = %if.then63
  %call76 = call i32 @clk_prepare(ptr noundef %call65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end74.if.end83_crit_edge, label %do.end81

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup110

if.end83:                                         ; preds = %if.end74.if.end83_crit_edge, %if.end60.if.end83_crit_edge
  %chip = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 11
  %127 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %dev1, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 11, i32 1
  %128 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @sti_pwm_ops, ptr %ops, align 4
  %129 = ptrtoint ptr %cdata30 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cdata30, align 4
  %pwm_num_devs87 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %pwm_num_devs87 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pwm_num_devs87, align 4
  %npwm = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 11, i32 3
  %133 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %npwm, align 4
  %call90 = call i32 @pwmchip_add(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end83
  %134 = ptrtoint ptr %cpt_num_devs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cpt_num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp97199.not = icmp eq i32 %135, 0
  br i1 %cmp97199.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pwms = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 11, i32 7
  br label %for.body

if.then92:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %pwm_clk93 = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 1
  %136 = ptrtoint ptr %pwm_clk93 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pwm_clk93, align 4
  call void @clk_unprepare(ptr noundef %137) #6
  %cpt_clk94 = getelementptr inbounds %struct.sti_pwm_chip, ptr %call.i, i32 0, i32 2
  %138 = ptrtoint ptr %cpt_clk94 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cpt_clk94, align 4
  call void @clk_unprepare(ptr noundef %139) #6
  br label %cleanup110

for.body:                                         ; preds = %do.body102.for.body_crit_edge, %for.body.lr.ph
  %i.0200 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body102.for.body_crit_edge ]
  %call.i193 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #6
  %tobool99.not = icmp eq ptr %call.i193, null
  br i1 %tobool99.not, label %for.body.cleanup110_crit_edge, label %do.body102

for.body.cleanup110_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup110

do.body102:                                       ; preds = %for.body
  %wait = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call.i193, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.22, ptr noundef nonnull @sti_pwm_probe.__key.21) #6
  %lock = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call.i193, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @sti_pwm_probe.__key.23) #6
  %140 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %141, i32 %i.0200
  %call109 = call i32 @pwm_set_chip_data(ptr noundef %arrayidx, ptr noundef nonnull %call.i193) #6
  %inc = add nuw i32 %i.0200, 1
  %142 = ptrtoint ptr %cpt_num_devs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cpt_num_devs, align 4
  %cmp97 = icmp ult i32 %inc, %143
  br i1 %cmp97, label %do.body102.for.body_crit_edge, label %do.body102.for.end_crit_edge

do.body102.for.end_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body102.for.body_crit_edge:                    ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.body102.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %144 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup110

cleanup110:                                       ; preds = %for.end, %for.body.cleanup110_crit_edge, %if.then92, %do.end81, %do.end71, %do.end58, %do.end48, %sti_pwm_probe_dt.exit.cleanup110_crit_edge, %sti_pwm_probe_dt.exit.thread196, %do.end, %if.end20.cleanup110_crit_edge, %if.then17, %if.then9, %if.end.cleanup110_crit_edge, %entry.cleanup110_crit_edge
  %retval.2 = phi i32 [ %1, %if.then9 ], [ %3, %if.then17 ], [ %call.i190, %do.end ], [ %118, %do.end48 ], [ %call53, %do.end58 ], [ %126, %do.end71 ], [ %call76, %do.end81 ], [ %call90, %if.then92 ], [ 0, %for.end ], [ -12, %entry.cleanup110_crit_edge ], [ -12, %if.end.cleanup110_crit_edge ], [ %call21, %if.end20.cleanup110_crit_edge ], [ %retval.0.i, %sti_pwm_probe_dt.exit.cleanup110_crit_edge ], [ -22, %sti_pwm_probe_dt.exit.thread196 ], [ -12, %for.body.cleanup110_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 11
  tail call void @pwmchip_remove(ptr noundef %chip) #6
  %pwm_clk = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #6
  %cpt_clk = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpt_clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %cpt_int_stat = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpt_int_stat) #6
  %2 = ptrtoint ptr %cpt_int_stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cpt_int_stat, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !112
  %pwm_cpt_int_stat = getelementptr inbounds %struct.sti_pwm_chip, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %pwm_cpt_int_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_cpt_int_stat, align 4
  %call = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %cpt_int_stat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.condthread-pre-split, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.condthread-pre-split:                       ; preds = %entry
  %6 = ptrtoint ptr %cpt_int_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %cpt_int_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool2.not47 = icmp eq i32 %.pr, 0
  br i1 %tobool2.not47, label %while.condthread-pre-split.while.end_crit_edge, label %while.body.lr.ph

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.condthread-pre-split
  %pwms = getelementptr inbounds %struct.sti_pwm_chip, ptr %data, i32 0, i32 11, i32 7
  %regmap = getelementptr inbounds %struct.sti_pwm_chip, ptr %data, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %.pr, %while.body.lr.ph ], [ %and, %sw.epilog.while.body_crit_edge ]
  %8 = call i32 @llvm.cttz.i32(i32 %7, i1 true), !range !113
  %9 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %10, i32 %8
  %call3 = call ptr @pwm_get_chip_data(ptr noundef %arrayidx) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %mul = shl nuw nsw i32 %8, 2
  %add = add nuw nsw i32 %mul, 16
  %index = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call3, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %arrayidx4 = getelementptr [3 x i32], ptr %call3, i32 0, i32 %14
  %call5 = call i32 @regmap_read(ptr noundef %12, i32 noundef %add, ptr noundef %arrayidx4) #6
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end [
    i32 0, label %while.body.sw.bb_crit_edge
    i32 1, label %while.body.sw.bb_crit_edge48
    i32 2, label %sw.bb16
  ]

while.body.sw.bb_crit_edge48:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge48
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %add9 = add nuw nsw i32 %mul, 48
  %call10 = call i32 @regmap_read(ptr noundef %19, i32 noundef %add9, ptr noundef nonnull %reg) #6
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg, align 4
  %xor = xor i32 %21, 3
  store i32 %xor, ptr %reg, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_write(ptr noundef %23, i32 noundef %add9, i32 noundef %xor) #6
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %index, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %add19 = add nuw nsw i32 %mul, 48
  %call20 = call i32 @regmap_write(ptr noundef %27, i32 noundef %add19, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call3, i32 0, i32 3
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb16, %sw.bb
  %shl = shl nuw i32 1, %8
  %neg = xor i32 %shl, -1
  %28 = ptrtoint ptr %cpt_int_stat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpt_int_stat, align 4
  %and = and i32 %29, %neg
  store i32 %and, ptr %cpt_int_stat, align 4
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %while.condthread-pre-split.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %while.condthread-pre-split.while.end_crit_edge ], [ 1, %sw.epilog.while.end_crit_edge ]
  %regmap21 = getelementptr inbounds %struct.sti_pwm_chip, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap21, align 4
  %call22 = call i32 @regmap_write(ptr noundef %31, i32 noundef 92, i32 noundef 511) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %while.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpt_int_stat) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_pwm_free(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %configured = getelementptr i8, ptr %chip, i32 40
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %configured) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_capture(ptr nocapture noundef readonly %chip, ptr noundef %pwm, ptr nocapture noundef writeonly %result, i32 noundef %timeout) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -44
  %cdata1 = getelementptr i8, ptr %chip, i32 -28
  %0 = ptrtoint ptr %cdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdata1, align 4
  %call2 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %cpt_num_devs = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cpt_num_devs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpt_num_devs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %5) #9
  br label %cleanup98

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %index = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index, align 4
  %regmap = getelementptr i8, ptr %chip, i32 -32
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %12, 2
  %add = add i32 %mul, 48
  %call6 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add, i32 noundef 1) #6
  %pwm_cpt_int_en = getelementptr i8, ptr %chip, i32 -8
  %13 = ptrtoint ptr %pwm_cpt_int_en to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm_cpt_int_en, align 4
  %15 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %16
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %pwm_cpt_en = getelementptr i8, ptr %chip, i32 -12
  %17 = ptrtoint ptr %pwm_cpt_en to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pwm_cpt_en, align 4
  %call.i161 = tail call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not = icmp eq i32 %call.i161, 0
  br i1 %tobool.not, label %if.else.i, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %20, i32 noundef %call.i161) #9
  br label %out

if.else.i:                                        ; preds = %if.end
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 344) #6
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp24 = icmp ugt i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool26.not = icmp eq i32 %call2.i, 0
  %23 = select i1 %cmp24, i1 %tobool26.not, i1 false
  %__ret.0 = select i1 %23, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool30.not = icmp eq i32 %__ret.0, 0
  %24 = select i1 %cmp24, i1 true, i1 %tobool30.not
  br i1 %24, label %if.else.i.if.end61_crit_edge, label %if.then32

if.else.i.if.end61_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then32:                                        ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i157 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.sti_cpt_ddata, ptr %call2, i32 0, i32 3
  %call35173 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp38174 = icmp ugt i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i157)
  %tobool42.not175 = icmp eq i32 %call2.i157, 0
  %28 = select i1 %cmp38174, i1 %tobool42.not175, i1 false
  %__ret33.1176 = select i1 %28, i32 1, i32 %call2.i157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.1176)
  %tobool48.not177 = icmp eq i32 %__ret33.1176, 0
  %29 = select i1 %cmp38174, i1 true, i1 %tobool48.not177
  br i1 %29, label %if.then32.for.end_crit_edge, label %if.then32.if.end54_crit_edge

if.then32.if.end54_crit_edge:                     ; preds = %if.then32
  br label %if.end54

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end54:                                         ; preds = %cleanup.if.end54_crit_edge, %if.then32.if.end54_crit_edge
  %__ret33.1179 = phi i32 [ %__ret33.1, %cleanup.if.end54_crit_edge ], [ %__ret33.1176, %if.then32.if.end54_crit_edge ]
  %call35178 = phi i32 [ %call35, %cleanup.if.end54_crit_edge ], [ %call35173, %if.then32.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35178)
  %tobool55.not = icmp eq i32 %call35178, 0
  br i1 %tobool55.not, label %cleanup, label %if.end54.__out_crit_edge

if.end54.__out_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end54
  %call58 = call i32 @schedule_timeout(i32 noundef %__ret33.1179) #6
  %call35 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp38 = icmp ugt i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool42.not = icmp eq i32 %call58, 0
  %32 = select i1 %cmp38, i1 %tobool42.not, i1 false
  %__ret33.1 = select i1 %32, i32 1, i32 %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.1)
  %tobool48.not = icmp eq i32 %__ret33.1, 0
  %33 = select i1 %cmp38, i1 true, i1 %tobool48.not
  br i1 %33, label %cleanup.for.end_crit_edge, label %cleanup.if.end54_crit_edge

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then32.for.end_crit_edge
  %__ret33.1.lcssa = phi i32 [ %__ret33.1176, %if.then32.for.end_crit_edge ], [ %__ret33.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end54.__out_crit_edge
  %__ret33.2165 = phi i32 [ %__ret33.1.lcssa, %for.end ], [ %call35178, %if.end54.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end61

if.end61:                                         ; preds = %__out, %if.else.i.if.end61_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.else.i.if.end61_crit_edge ], [ %__ret33.2165, %__out ]
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %36 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hwpwm, align 8
  %mul65 = shl i32 %37, 2
  %add66 = add i32 %mul65, 48
  %call67 = call i32 @regmap_write(ptr noundef %35, i32 noundef %add66, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret.1)
  %cmp68 = icmp eq i32 %__ret.1, -512
  br i1 %cmp68, label %if.end61.out_crit_edge, label %if.end70

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end70:                                         ; preds = %if.end61
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %39, label %do.end94 [
    i32 0, label %if.end70.sw.bb_crit_edge
    i32 1, label %if.end70.sw.bb_crit_edge191
    i32 2, label %sw.bb72
  ]

if.end70.sw.bb_crit_edge191:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end70.sw.bb_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end70.sw.bb_crit_edge, %if.end70.sw.bb_crit_edge191
  %41 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %result, align 4
  %duty_cycle = getelementptr inbounds %struct.pwm_capture, ptr %result, i32 0, i32 1
  %42 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %duty_cycle, align 4
  br label %out

sw.bb72:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [3 x i32], ptr %call2, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call2, align 4
  %sub = sub i32 %44, %46
  %arrayidx76 = getelementptr [3 x i32], ptr %call2, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx76, align 4
  %sub79 = sub i32 %48, %44
  %cpt_clk = getelementptr i8, ptr %chip, i32 -36
  %49 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cpt_clk, align 4
  %call81 = call i32 @clk_get_rate(ptr noundef %50) #6
  %add82 = add i32 %sub79, %sub
  %mul83 = mul i32 %add82, 1000000000
  %div = udiv i32 %mul83, %call81
  %51 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div, ptr %result, align 4
  %mul87 = mul i32 %sub, 1000000000
  %duty_cycle89 = getelementptr inbounds %struct.pwm_capture, ptr %result, i32 0, i32 1
  %div91 = udiv i32 %mul87, %call81
  %52 = ptrtoint ptr %duty_cycle89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div91, ptr %duty_cycle89, align 4
  br label %out

do.end94:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37) #9
  br label %out

out:                                              ; preds = %do.end94, %sw.bb72, %sw.bb, %if.end61.out_crit_edge, %do.end13
  %ret.0 = phi i32 [ %call.i161, %do.end13 ], [ -512, %if.end61.out_crit_edge ], [ %__ret.1, %do.end94 ], [ %__ret.1, %sw.bb72 ], [ %__ret.1, %sw.bb ]
  %53 = ptrtoint ptr %pwm_cpt_en to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pwm_cpt_en, align 4
  %call.i162 = call i32 @regmap_field_update_bits_base(ptr noundef %54, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup98

cleanup98:                                        ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_config(ptr noundef %chip, ptr noundef %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -44
  %cdata1 = getelementptr i8, ptr %chip, i32 -28
  %0 = ptrtoint ptr %cdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdata1, align 4
  %cur2 = getelementptr i8, ptr %chip, i32 36
  %2 = ptrtoint ptr %cur2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur2, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %configured = getelementptr i8, ptr %chip, i32 40
  %6 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %configured, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.if.then30_crit_edge, label %lor.lhs.false

entry.if.then30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false:                                    ; preds = %entry
  %conv = sext i32 %period_ns to i64
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %state.sroa.0.0.copyload1.i = load i64, ptr %state1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %state.sroa.0.0.copyload1.i, i64 %conv)
  %cmp = icmp eq i64 %state.sroa.0.0.copyload1.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp8 = icmp eq i32 %call.i.i, 1
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %9 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwpwm, align 8
  %hwpwm10 = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %hwpwm10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp11 = icmp ne i32 %10, %12
  %period_same.0.off0.not = xor i1 %cmp, true
  %or.cond = select i1 %cmp11, i1 %period_same.0.off0.not, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then30_crit_edge

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  br i1 %cmp, label %lor.lhs.false24.if.then30_crit_edge, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24.if.then30_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false24.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge, %entry.if.then30_crit_edge
  %period_same.0.off0134 = phi i1 [ true, %lor.lhs.false24.if.then30_crit_edge ], [ %cmp, %land.lhs.true.if.then30_crit_edge ], [ false, %entry.if.then30_crit_edge ]
  %pwm_clk = getelementptr i8, ptr %chip, i32 -40
  %13 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pwm_clk, align 4
  %call31 = tail call i32 @clk_enable(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.then30
  %cpt_clk = getelementptr i8, ptr %chip, i32 -36
  %15 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpt_clk, align 4
  %call35 = tail call i32 @clk_enable(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  br i1 %period_same.0.off0134, label %if.end38.if.end54_crit_edge, label %if.then40

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then40:                                        ; preds = %if.end38
  %17 = ptrtoint ptr %cdata1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdata1, align 4
  %19 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwm_clk, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.42) #9
  br label %clk_dis

if.end.i:                                         ; preds = %if.then40
  %div.i = udiv i32 1000000000, %call.i
  %max_pwm_cnt.i = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %max_pwm_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_pwm_cnt.i, align 4
  %add.i126 = add i32 %24, 1
  %mul.i = mul i32 %add.i126, %div.i
  %mul.i.frozen = freeze i32 %mul.i
  %div5.i = udiv i32 %period_ns, %mul.i.frozen
  %25 = mul i32 %div5.i, %mul.i.frozen
  %rem.i.decomposed = sub i32 %period_ns, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool2.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.clk_dis_crit_edge

if.end.i.clk_dis_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis

if.end4.i:                                        ; preds = %if.end.i
  %sub.i = add i32 %div5.i, -1
  %max_prescale.i = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %18, i32 0, i32 4
  %26 = ptrtoint ptr %max_prescale.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_prescale.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %27)
  %cmp.i = icmp ugt i32 %sub.i, %27
  br i1 %cmp.i, label %if.end4.i.clk_dis_crit_edge, label %if.end44

if.end4.i.clk_dis_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis

if.end44:                                         ; preds = %if.end4.i
  %and = and i32 %sub.i, 15
  %prescale_low = getelementptr i8, ptr %chip, i32 -24
  %28 = ptrtoint ptr %prescale_low to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prescale_low, align 4
  %call.i128 = tail call i32 @regmap_field_update_bits_base(ptr noundef %29, i32 noundef -1, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool46.not = icmp eq i32 %call.i128, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.clk_dis_crit_edge

if.end44.clk_dis_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis

if.end48:                                         ; preds = %if.end44
  %and49 = lshr i32 %sub.i, 4
  %shr = and i32 %and49, 15
  %prescale_high = getelementptr i8, ptr %chip, i32 -20
  %30 = ptrtoint ptr %prescale_high to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prescale_high, align 4
  %call.i129 = tail call i32 @regmap_field_update_bits_base(ptr noundef %31, i32 noundef -1, i32 noundef %shr, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool51.not = icmp eq i32 %call.i129, 0
  br i1 %tobool51.not, label %if.end48.if.end54_crit_edge, label %if.end48.clk_dis_crit_edge

if.end48.clk_dis_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %if.end48.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  %prescale.1 = phi i32 [ 0, %if.end38.if.end54_crit_edge ], [ %sub.i, %if.end48.if.end54_crit_edge ]
  %max_pwm_cnt = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %max_pwm_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_pwm_cnt, align 4
  %mul = mul i32 %33, %duty_ns
  %div = udiv i32 %mul, %period_ns
  %regmap = getelementptr i8, ptr %chip, i32 -32
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %hwpwm55 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %36 = ptrtoint ptr %hwpwm55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hwpwm55, align 8
  %mul56 = shl i32 %37, 2
  %call57 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %mul56, i32 noundef %div) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end54.clk_dis_crit_edge

if.end54.clk_dis_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %pwm_cpt_int_en = getelementptr i8, ptr %chip, i32 -8
  %38 = ptrtoint ptr %pwm_cpt_int_en to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pwm_cpt_int_en, align 4
  %call.i130 = tail call i32 @regmap_field_update_bits_base(ptr noundef %39, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %40 = ptrtoint ptr %hwpwm55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwpwm55, align 8
  tail call void @_set_bit(i32 noundef %41, ptr noundef %configured) #6
  %42 = ptrtoint ptr %cur2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pwm, ptr %cur2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_pwm_config.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_pwm_config, %if.then70)) #6
          to label %clk_dis [label %if.then70], !srcloc !114

if.then70:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_pwm_config.__UNIQUE_ID_ddebug187, ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %prescale.1, i32 noundef %period_ns, i32 noundef %duty_ns, i32 noundef %div) #6
  br label %clk_dis

clk_dis:                                          ; preds = %if.then70, %if.end60, %if.end54.clk_dis_crit_edge, %if.end48.clk_dis_crit_edge, %if.end44.clk_dis_crit_edge, %if.end4.i.clk_dis_crit_edge, %if.end.i.clk_dis_crit_edge, %do.end.i
  %ret.0 = phi i32 [ %call57, %if.end54.clk_dis_crit_edge ], [ %call.i130, %if.then70 ], [ %call.i128, %if.end44.clk_dis_crit_edge ], [ %call.i129, %if.end48.clk_dis_crit_edge ], [ %call.i130, %if.end60 ], [ -22, %do.end.i ], [ -22, %if.end.i.clk_dis_crit_edge ], [ -22, %if.end4.i.clk_dis_crit_edge ]
  %43 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pwm_clk, align 4
  tail call void @clk_disable(ptr noundef %44) #6
  %45 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpt_clk, align 4
  tail call void @clk_disable(ptr noundef %46) #6
  br label %cleanup

cleanup:                                          ; preds = %clk_dis, %if.end34.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %clk_dis ], [ %call31, %if.then30.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_pwm_enable(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -44
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %sti_pwm_lock = getelementptr i8, ptr %chip, i32 48
  tail call void @mutex_lock_nested(ptr noundef %sti_pwm_lock, i32 noundef 0) #6
  %en_count = getelementptr i8, ptr %chip, i32 44
  %2 = ptrtoint ptr %en_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %en_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  %pwm_clk = getelementptr i8, ptr %chip, i32 -40
  %4 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.then
  %cpt_clk = getelementptr i8, ptr %chip, i32 -36
  %6 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpt_clk, align 4
  %call5 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %if.end
  %pwm_out_en = getelementptr i8, ptr %chip, i32 -16
  %8 = ptrtoint ptr %pwm_out_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwm_out_en, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %do.end

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %10 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %11, i32 noundef %call.i) #9
  br label %out

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %entry.if.end13_crit_edge
  %12 = ptrtoint ptr %en_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %en_count, align 4
  br label %out

out:                                              ; preds = %if.end13, %do.end, %if.end.out_crit_edge, %if.then.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end13 ], [ %call2, %if.then.out_crit_edge ], [ %call5, %if.end.out_crit_edge ], [ %call.i, %do.end ]
  tail call void @mutex_unlock(ptr noundef %sti_pwm_lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_pwm_disable(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sti_pwm_lock = getelementptr i8, ptr %chip, i32 48
  tail call void @mutex_lock_nested(ptr noundef %sti_pwm_lock, i32 noundef 0) #6
  %en_count = getelementptr i8, ptr %chip, i32 44
  %0 = ptrtoint ptr %en_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %en_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %en_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pwm_out_en = getelementptr i8, ptr %chip, i32 -16
  %2 = ptrtoint ptr %pwm_out_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwm_out_en, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %pwm_clk = getelementptr i8, ptr %chip, i32 -40
  %4 = ptrtoint ptr %pwm_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwm_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  %cpt_clk = getelementptr i8, ptr %chip, i32 -36
  %6 = ptrtoint ptr %cpt_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpt_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %sti_pwm_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_pwm_sti__188_675_sti_pwm_driver_init6, !1, !"__initcall__kmod_pwm_sti__188_675_sti_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-sti.c", i32 675, i32 1}
!2 = !{ptr @__exitcall_sti_pwm_driver_exit, !1, !"__exitcall_sti_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author189, !4, !"__UNIQUE_ID_author189", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-sti.c", i32 677, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-sti.c", i32 678, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-sti.c", i32 679, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-sti.c", i32 669, i32 11}
!12 = !{ptr @sti_pwm_driver, !13, !"sti_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-sti.c", i32 667, i32 31}
!14 = !{ptr @sti_pwm_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-sti.c", i32 557, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pwm/pwm-sti.c", i32 569, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sti_pwm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sti_pwm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sti_pwm_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-sti.c", i32 586, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-sti.c", i32 593, i32 50}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-sti.c", i32 595, i32 4}
!32 = !{ptr @sti_pwm_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sti_pwm_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-sti.c", i32 601, i32 4}
!36 = !{ptr @sti_pwm_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sti_pwm_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-sti.c", i32 607, i32 50}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-sti.c", i32 609, i32 4}
!42 = !{ptr @sti_pwm_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sti_pwm_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sti_pwm_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-sti.c", i32 615, i32 4}
!46 = !{ptr @sti_pwm_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sti_pwm_probe.__key.21, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-sti.c", i32 638, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sti_pwm_probe.__key.23, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/pwm/pwm-sti.c", i32 639, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sti_pwm_regmap_config, !54, !"sti_pwm_regmap_config", i1 false, i1 false}
!54 = !{!"../drivers/pwm/pwm-sti.c", i32 531, i32 35}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-sti.c", i32 460, i32 4}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sti_pwm_interrupt._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sti_pwm_interrupt._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @sti_pwm_regfields, !61, !"sti_pwm_regfields", i1 false, i1 false}
!61 = !{!"../drivers/pwm/pwm-sti.c", i32 104, i32 31}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-sti.c", i32 483, i32 33}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pwm/pwm-sti.c", i32 487, i32 33}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pwm/pwm-sti.c", i32 492, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sti_pwm_probe_dt._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sti_pwm_probe_dt._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @sti_pwm_ops, !72, !"sti_pwm_ops", i1 false, i1 false}
!72 = !{!"../drivers/pwm/pwm-sti.c", i32 394, i32 29}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pwm/pwm-sti.c", i32 324, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sti_pwm_capture._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @sti_pwm_capture._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pwm/pwm-sti.c", i32 338, i32 3}
!80 = !{ptr @sti_pwm_capture._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sti_pwm_capture._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pwm/pwm-sti.c", i32 382, i32 3}
!84 = !{ptr @sti_pwm_capture._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sti_pwm_capture._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pwm/pwm-sti.c", i32 238, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sti_pwm_config.__UNIQUE_ID_ddebug187, !87, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pwm/pwm-sti.c", i32 132, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sti_pwm_get_prescale._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @sti_pwm_get_prescale._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pwm/pwm-sti.c", i32 273, i32 4}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sti_pwm_enable._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @sti_pwm_enable._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @sti_pwm_of_match, !102, !"sti_pwm_of_match", i1 false, i1 false}
!102 = !{!"../drivers/pwm/pwm-sti.c", i32 661, i32 34}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{i32 0, i32 33}
!114 = !{i64 2148736413, i64 2148736418, i64 2148736431, i64 2148736475, i64 2148736509, i64 2148736530}
