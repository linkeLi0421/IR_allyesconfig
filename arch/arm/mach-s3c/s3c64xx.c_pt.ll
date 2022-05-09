; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/s3c64xx.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pwm_variant = type { i8, i8, i8, i8, i8 }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.cpu_table = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c24xx_uart_resources = type { ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@xtal_f = internal unnamed_addr global i32 12000000, section ".data..ro_after_init", align 4
@xusbxti_f = internal unnamed_addr global i32 48000000, section ".data..ro_after_init", align 4
@s3c64xx_pwm_variant = internal global { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 -32, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@__const.s3c64xx_timer_init.timer_irqs = private unnamed_addr constant [5 x i32] [i32 55, i32 56, i32 57, i32 59, i32 60], align 4
@s3c_iodesc = internal global [10 x %struct.map_desc] [%struct.map_desc { i32 -166723584, i32 516111, i32 4096, i32 0 }, %struct.map_desc { i32 -165675008, i32 458752, i32 4096, i32 0 }, %struct.map_desc { i32 -150974464, i32 520197, i32 4096, i32 0 }, %struct.map_desc { i32 -167772160, i32 463360, i32 16384, i32 0 }, %struct.map_desc { i32 -167706624, i32 463616, i32 16384, i32 0 }, %struct.map_desc { i32 -164626432, i32 520198, i32 16384, i32 0 }, %struct.map_desc { i32 -162529280, i32 520200, i32 4096, i32 0 }, %struct.map_desc { i32 -161480704, i32 475400, i32 4096, i32 0 }, %struct.map_desc { i32 -163577856, i32 516100, i32 4096, i32 0 }, %struct.map_desc { i32 -160432128, i32 508160, i32 1024, i32 0 }], section ".init.data", align 4
@samsung_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@cpu_ids = internal global [2 x %struct.cpu_table] [%struct.cpu_table { i32 910163968, i32 -4096, ptr @s3c6400_map_io, ptr @s3c64xx_init_uarts, ptr null, ptr @s3c6400_init, ptr @name_s3c6400 }, %struct.cpu_table { i32 910229504, i32 -4096, ptr @s3c6410_map_io, ptr @s3c64xx_init_uarts, ptr null, ptr @s3c6410_init, ptr @name_s3c6410 }], section ".init.data", align 4
@__initcall__kmod_s3c64xx__234_218_s3c64xx_dev_init1 = internal global ptr @s3c64xx_dev_init, section ".initcall1.init", align 4
@s3c64xx_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: initialising interrupts\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c64xx_init_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-s3c/s3c64xx.c\00", [36 x i8] zeroinitializer }, align 32
@s3c64xx_init_irq._entry_ptr = internal global ptr @s3c64xx_init_irq._entry, section ".printk_index", align 4
@__initcall__kmod_s3c64xx__235_427_s3c64xx_init_irq_eint3 = internal global ptr @s3c64xx_init_irq_eint, section ".initcall3.init", align 4
@name_s3c6400 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S3C6400\00", [24 x i8] zeroinitializer }, align 32
@name_s3c6410 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S3C6410\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c6400-uart\00", [19 x i8] zeroinitializer }, align 32
@s3c64xx_uart_resources = external dso_local global [0 x %struct.s3c24xx_uart_resources], align 4
@s3c64xx_subsys = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.4, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@s3c64xx_dev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_subsys, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c64xx-core\00", [19 x i8] zeroinitializer }, align 32
@s3c_irq_eint = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr @s3c_irq_eint_ack, ptr @s3c_irq_eint_mask, ptr @s3c_irq_eint_maskack, ptr @s3c_irq_eint_unmask, ptr null, ptr null, ptr null, ptr @s3c_irq_eint_set_type, ptr @s3c_irqext_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s3c-eint\00", [23 x i8] zeroinitializer }, align 32
@s3c_irq_eint_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014No edge setting!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c_irq_eint_set_type\00", [42 x i8] zeroinitializer }, align 32
@s3c_irq_eint_set_type._entry_ptr = internal global ptr @s3c_irq_eint_set_type._entry, section ".printk_index", align 4
@s3c_irq_eint_set_type._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013No such irq type %d\00", [42 x i8] zeroinitializer }, align 32
@s3c_irq_eint_set_type._entry_ptr.10 = internal global ptr @s3c_irq_eint_set_type._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"s3c64xx_pwm_variant\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 169, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 236, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"name_s3c6400\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 75, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"name_s3c6410\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 76, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 70, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"s3c64xx_subsys\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 160, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"s3c64xx_dev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 165, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 161, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"s3c_irq_eint\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 352, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 353, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 295, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [31 x i8] c"../arch/arm/mach-s3c/s3c64xx.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 319, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_s3c64xx__234_218_s3c64xx_dev_init1, ptr @__initcall__kmod_s3c64xx__235_427_s3c64xx_init_irq_eint3, ptr @s3c64xx_init_irq._entry, ptr @s3c64xx_init_irq._entry_ptr, ptr @s3c_irq_eint_set_type._entry, ptr @s3c_irq_eint_set_type._entry.8, ptr @s3c_irq_eint_set_type._entry_ptr, ptr @s3c_irq_eint_set_type._entry_ptr.10, ptr @s3c64xx_pwm_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @name_s3c6400, ptr @name_s3c6410, ptr @.str.3, ptr @s3c64xx_subsys, ptr @s3c64xx_dev, ptr @.str.4, ptr @s3c_irq_eint, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_pwm_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_s3c6400 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_s3c6410 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_subsys to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_irq_eint to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_irq_eint_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_irq_eint_set_type._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s3c64xx_set_xtal_freq(i32 noundef %freq) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %freq, ptr @xtal_f, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s3c64xx_set_xusbxti_freq(i32 noundef %freq) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %freq, ptr @xusbxti_f, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s3c64xx_set_timer_source(i32 noundef %event, i32 noundef %source) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %event
  %shl1 = shl nuw i32 1, %source
  %or = or i32 %shl1, %shl
  %0 = trunc i32 %or to i8
  %1 = and i8 %0, 31
  %conv2 = xor i8 %1, 31
  store i8 %conv2, ptr getelementptr inbounds (%struct.samsung_pwm_variant, ptr @s3c64xx_pwm_variant, i32 0, i32 3), align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c64xx_timer_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  %timer_irqs = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %timer_irqs) #7
  %0 = call ptr @memcpy(ptr %timer_irqs, ptr @__const.s3c64xx_timer_init.timer_irqs, i32 20)
  call void @samsung_pwm_clocksource_init(ptr noundef nonnull inttoptr (i32 -164626432 to ptr), ptr noundef nonnull %timer_irqs, ptr noundef nonnull @s3c64xx_pwm_variant) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timer_irqs) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_pwm_clocksource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c64xx_init_io(ptr noundef %mach_desc, i32 noundef %size) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @s3c_iodesc, i32 noundef 10) #7
  tail call void @iotable_init(ptr noundef %mach_desc, i32 noundef %size) #7
  tail call void @s3c64xx_init_cpu() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %0 = load i32, ptr @samsung_cpu_id, align 4
  tail call void @s3c_init_cpu(i32 noundef %0, ptr noundef nonnull @cpu_ids, i32 noundef 2) #7
  tail call void @samsung_pwm_set_platdata(ptr noundef nonnull @s3c64xx_pwm_variant) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_init_cpu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_init_cpu(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_pwm_set_platdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_dev_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %1 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %1, -4096
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %lor.lhs.false.return_crit_edge [
    i32 910163968, label %lor.lhs.false.if.end_crit_edge
    i32 910229504, label %lor.lhs.false.if.end_crit_edge11
  ]

lor.lhs.false.if.end_crit_edge11:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge11
  %call5 = tail call i32 @subsys_system_register(ptr noundef nonnull @s3c64xx_subsys, ptr noundef null) #7
  %call6 = tail call i32 @device_register(ptr noundef nonnull @s3c64xx_dev) #7
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c64xx_init_irq(i32 noundef %vic0_valid, i32 noundef %vic1_valid) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xtal_f, align 4
  %1 = load i32, ptr @xusbxti_f, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %2 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 910163968, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 910163968
  tail call void @s3c64xx_clk_init(ptr noundef null, i32 noundef %0, i32 noundef %1, i1 noundef zeroext %cmp.i, ptr noundef nonnull inttoptr (i32 -166723584 to ptr)) #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  tail call void @vic_init(ptr noundef nonnull inttoptr (i32 -167772160 to ptr), i32 noundef 32, i32 noundef %vic0_valid, i32 noundef 4) #7
  tail call void @vic_init(ptr noundef nonnull inttoptr (i32 -167706624 to ptr), i32 noundef 64, i32 noundef %vic1_valid, i32 noundef 1392640000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_clk_init(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vic_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_init_irq_eint() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %1 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %1, -4096
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and.i, label %lor.lhs.false.cleanup_crit_edge [
    i32 910163968, label %lor.lhs.false.for.body.preheader_crit_edge
    i32 910229504, label %lor.lhs.false.for.body.preheader_crit_edge16
  ]

lor.lhs.false.for.body.preheader_crit_edge16:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %lor.lhs.false.for.body.preheader_crit_edge16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %irq.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 101, %for.body.preheader ]
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq.015, ptr noundef nonnull @s3c_irq_eint, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  %sub = add nsw i32 %irq.015, -101
  %shl = shl nuw nsw i32 1, %sub
  %3 = inttoptr i32 %shl to ptr
  %call5 = tail call i32 @irq_set_chip_data(i32 noundef %irq.015, ptr noundef nonnull %3) #7
  tail call void @irq_modify_status(i32 noundef %irq.015, i32 noundef 2048, i32 noundef 0) #7
  %inc = add nuw nsw i32 %irq.015, 1
  %exitcond.not = icmp eq i32 %inc, 129
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__irq_set_handler(i32 noundef 32, ptr noundef nonnull @s3c_irq_demux_eint0_3, i32 noundef 1, ptr noundef null) #7
  tail call void @__irq_set_handler(i32 noundef 33, ptr noundef nonnull @s3c_irq_demux_eint4_11, i32 noundef 1, ptr noundef null) #7
  tail call void @__irq_set_handler(i32 noundef 64, ptr noundef nonnull @s3c_irq_demux_eint12_19, i32 noundef 1, ptr noundef null) #7
  tail call void @__irq_set_handler(i32 noundef 65, ptr noundef nonnull @s3c_irq_demux_eint20_27, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6400_map_io() #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_init_uarts(ptr noundef %cfg, i32 noundef %no) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c24xx_init_uartdevs(ptr noundef nonnull @.str.3, ptr noundef nonnull @s3c64xx_uart_resources, ptr noundef %cfg, i32 noundef %no) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c6400_init() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_map_io() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c6410_init() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c24xx_init_uartdevs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_demux_eint0_3(ptr nocapture noundef readnone %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr)) #7, !srcloc !54
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %0, 15
  %and3.i = and i32 %and.i, %neg.i
  %and6.i = and i32 %and3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @generic_handle_irq(i32 noundef 101) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %2 = and i32 %and3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.1 = icmp eq i32 %2, 0
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.1 = tail call i32 @generic_handle_irq(i32 noundef 102) #7
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %3 = and i32 %and3.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.2 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.2 = tail call i32 @generic_handle_irq(i32 noundef 103) #7
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and3.i)
  %tobool.not.i.3 = icmp ult i32 %and3.i, 8
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.3 = tail call i32 @generic_handle_irq(i32 noundef 104) #7
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_demux_eint4_11(ptr nocapture noundef readnone %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr)) #7, !srcloc !54
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %0, %neg.i
  %2 = and i32 %and.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @generic_handle_irq(i32 noundef 105) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = and i32 %and.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.1 = tail call i32 @generic_handle_irq(i32 noundef 106) #7
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %4 = and i32 %and.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.2 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.2 = tail call i32 @generic_handle_irq(i32 noundef 107) #7
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %5 = and i32 %and.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.3 = icmp eq i32 %5, 0
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.3 = tail call i32 @generic_handle_irq(i32 noundef 108) #7
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %6 = and i32 %and.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.4 = icmp eq i32 %6, 0
  br i1 %tobool.not.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.4 = tail call i32 @generic_handle_irq(i32 noundef 109) #7
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %if.end.i.3.if.end.i.4_crit_edge
  %7 = and i32 %and.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.5 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.5 = tail call i32 @generic_handle_irq(i32 noundef 110) #7
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %if.end.i.4.if.end.i.5_crit_edge
  %8 = and i32 %and.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.6 = icmp eq i32 %8, 0
  br i1 %tobool.not.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.6 = tail call i32 @generic_handle_irq(i32 noundef 111) #7
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %if.end.i.5.if.end.i.6_crit_edge
  %9 = and i32 %and.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.7 = icmp eq i32 %9, 0
  br i1 %tobool.not.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.7

if.then.i.7:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.7 = tail call i32 @generic_handle_irq(i32 noundef 112) #7
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i.7, %if.end.i.6.if.end.i.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_demux_eint12_19(ptr nocapture noundef readnone %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr)) #7, !srcloc !54
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %0, %neg.i
  %2 = and i32 %and.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @generic_handle_irq(i32 noundef 113) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = and i32 %and.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.1 = tail call i32 @generic_handle_irq(i32 noundef 114) #7
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %4 = and i32 %and.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.2 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.2 = tail call i32 @generic_handle_irq(i32 noundef 115) #7
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %5 = and i32 %and.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.3 = icmp eq i32 %5, 0
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.3 = tail call i32 @generic_handle_irq(i32 noundef 116) #7
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %6 = and i32 %and.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.4 = icmp eq i32 %6, 0
  br i1 %tobool.not.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.4 = tail call i32 @generic_handle_irq(i32 noundef 117) #7
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %if.end.i.3.if.end.i.4_crit_edge
  %7 = and i32 %and.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.5 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.5 = tail call i32 @generic_handle_irq(i32 noundef 118) #7
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %if.end.i.4.if.end.i.5_crit_edge
  %8 = and i32 %and.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.6 = icmp eq i32 %8, 0
  br i1 %tobool.not.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.6 = tail call i32 @generic_handle_irq(i32 noundef 119) #7
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %if.end.i.5.if.end.i.6_crit_edge
  %9 = and i32 %and.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.7 = icmp eq i32 %9, 0
  br i1 %tobool.not.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.7

if.then.i.7:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.7 = tail call i32 @generic_handle_irq(i32 noundef 120) #7
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i.7, %if.end.i.6.if.end.i.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_demux_eint20_27(ptr nocapture noundef readnone %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr)) #7, !srcloc !54
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %0, %neg.i
  %2 = and i32 %and.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @generic_handle_irq(i32 noundef 121) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = and i32 %and.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.1 = tail call i32 @generic_handle_irq(i32 noundef 122) #7
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %4 = and i32 %and.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.2 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.2 = tail call i32 @generic_handle_irq(i32 noundef 123) #7
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %5 = and i32 %and.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.3 = icmp eq i32 %5, 0
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.3 = tail call i32 @generic_handle_irq(i32 noundef 124) #7
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %6 = and i32 %and.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.4 = icmp eq i32 %6, 0
  br i1 %tobool.not.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.4 = tail call i32 @generic_handle_irq(i32 noundef 125) #7
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %if.end.i.3.if.end.i.4_crit_edge
  %7 = and i32 %and.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.5 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.5 = tail call i32 @generic_handle_irq(i32 noundef 126) #7
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %if.end.i.4.if.end.i.5_crit_edge
  %8 = and i32 %and.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.6 = icmp eq i32 %8, 0
  br i1 %tobool.not.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.6 = tail call i32 @generic_handle_irq(i32 noundef 127) #7
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %if.end.i.5.if.end.i.6_crit_edge
  %9 = and i32 %and.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.7 = icmp eq i32 %9, 0
  br i1 %tobool.not.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.7

if.then.i.7:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.7 = tail call i32 @generic_handle_irq(i32 noundef 128) #7
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i.7, %if.end.i.6.if.end.i.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_eint_ack(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %2 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr), i32 %2) #7, !srcloc !55
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_eint_mask(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %1 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_data, align 4
  %3 = ptrtoint ptr %2 to i32
  %or = or i32 %0, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr), i32 %or) #7, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_eint_maskack(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %1 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %or.i = or i32 %0, %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr), i32 %or.i) #7, !srcloc !55
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr), i32 %6) #7, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_irq_eint_unmask(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr)) #7, !srcloc !54
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %1 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_data, align 4
  %3 = ptrtoint ptr %2 to i32
  %neg = xor i32 %3, -1
  %and = and i32 %0, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526944 to ptr), i32 %and) #7, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_irq_eint_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %sub = add i32 %1, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %cmp = icmp sgt i32 %sub, 27
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 16
  %. = select i1 %cmp1, ptr inttoptr (i32 -162526976 to ptr), ptr inttoptr (i32 -162526972 to ptr)
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %do.end11 [
    i32 0, label %do.end
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 8, label %sw.bb7
    i32 4, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %type) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %do.end, %if.end.sw.epilog_crit_edge
  %newvalue.0 = phi i32 [ 1, %sw.bb8 ], [ 0, %sw.bb7 ], [ 6, %sw.bb6 ], [ 2, %sw.bb5 ], [ 0, %do.end ], [ 4, %if.end.sw.epilog_crit_edge ]
  %sub17 = add i32 %1, -117
  %shift.0.in.in = select i1 %cmp1, i32 %sub, i32 %sub17
  %shift.0.in = sdiv i32 %shift.0.in.in, 2
  %shift.0 = shl i32 %shift.0.in, 2
  %shl = shl i32 7, %shift.0
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %.) #7, !srcloc !54
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %shl22 = shl i32 %newvalue.0, %shift.0
  %or = or i32 %and, %shl22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %., i32 %or) #7, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub)
  %cmp26 = icmp ult i32 %sub, 23
  %.58 = select i1 %cmp26, i32 12, i32 13
  %.sink = select i1 %cmp1, i32 43, i32 %.58
  %pin_val.0 = select i1 %cmp1, i32 -14, i32 -13
  %add30 = add nsw i32 %1, %.sink
  %call36 = tail call i32 @s3c_gpio_cfgpin(i32 noundef %add30, i32 noundef %pin_val.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end11 ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_irqext_wake(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_cfgpin(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_s3c64xx__234_218_s3c64xx_dev_init1, !1, !"__initcall__kmod_s3c64xx__234_218_s3c64xx_dev_init1", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 218, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 236, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @s3c64xx_init_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @s3c64xx_init_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_s3c64xx__235_427_s3c64xx_init_irq_eint3, !9, !"__initcall__kmod_s3c64xx__235_427_s3c64xx_init_irq_eint3", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 427, i32 1}
!10 = !{ptr @xtal_f, !11, !"xtal_f", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 53, i32 22}
!12 = !{ptr @xusbxti_f, !13, !"xusbxti_f", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 54, i32 22}
!14 = !{ptr @s3c64xx_pwm_variant, !15, !"s3c64xx_pwm_variant", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 169, i32 35}
!16 = !{ptr @s3c_iodesc, !17, !"s3c_iodesc", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 106, i32 24}
!18 = !{ptr @cpu_ids, !19, !"cpu_ids", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 78, i32 25}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 70, i32 24}
!22 = !{ptr @name_s3c6400, !23, !"name_s3c6400", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 75, i32 19}
!24 = !{ptr @name_s3c6410, !25, !"name_s3c6410", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 76, i32 19}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 161, i32 11}
!28 = !{ptr @s3c64xx_subsys, !29, !"s3c64xx_subsys", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 160, i32 24}
!30 = !{ptr @s3c64xx_dev, !31, !"s3c64xx_dev", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 165, i32 22}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 353, i32 11}
!34 = !{ptr @s3c_irq_eint, !35, !"s3c_irq_eint", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 352, i32 24}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 295, i32 3}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @s3c_irq_eint_set_type._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @s3c_irq_eint_set_type._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-s3c/s3c64xx.c", i32 319, i32 3}
!43 = !{ptr @s3c_irq_eint_set_type._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @s3c_irq_eint_set_type._entry_ptr.10, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 4624724}
!55 = !{i64 4624306}
