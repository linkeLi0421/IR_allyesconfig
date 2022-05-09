; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-digicolor.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-digicolor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.dc_pinmap = type { ptr, ptr, ptr, ptr, [144 x ptr], %struct.gpio_chip, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_pinctrl_digicolor__223_344_dc_pinctrl_driver_init6 = internal global ptr @dc_pinctrl_driver_init, section ".initcall6.init", align 4
@dc_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dc_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dc_pinctrl_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl-digicolor\00", [46 x i8] zeroinitializer }, align 32
@dc_pinctrl_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GP_%c%c\00", [24 x i8] zeroinitializer }, align 32
@dc_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @dc_get_groups_count, ptr @dc_get_group_name, ptr @dc_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@dc_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @dc_get_functions_count, ptr @dc_get_fname, ptr @dc_get_groups, ptr @dc_set_mux, ptr @dc_pmx_request_gpio, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dc_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pinctrl driver registration failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dc_pinctrl_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/pinctrl/pinctrl-digicolor.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dc_pinctrl_probe._entry_ptr = internal global ptr @dc_pinctrl_probe._entry, section ".printk_index", align 4
@dc_functions = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"client_a\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"client_b\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"client_c\00", [23 x i8] zeroinitializer }, align 32
@dc_gpiochip_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pmap->lock\00", [20 x i8] zeroinitializer }, align 32
@dc_gpiochip_add.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dc_gpiochip_add.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"dc_pinctrl_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 336, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 338, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"dc_pinctrl_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 331, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 300, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"dc_pinctrl_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 77, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"dc_pmxops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 159, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 324, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"dc_functions\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 85, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 86, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 87, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 88, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 89, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 253, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.73 = private constant [39 x i8] c"../drivers/pinctrl/pinctrl-digicolor.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 255, i32 8 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_pinctrl_digicolor__223_344_dc_pinctrl_driver_init6, ptr @dc_pinctrl_probe._entry, ptr @dc_pinctrl_probe._entry_ptr, ptr @dc_pinctrl_driver, ptr @.str, ptr @dc_pinctrl_ids, ptr @.str.1, ptr @dc_pinctrl_ops, ptr @dc_pmxops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dc_functions, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dc_gpiochip_add.__key, ptr @.str.11, ptr @dc_gpiochip_add.lock_key, ptr @dc_gpiochip_add.request_key], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_pinctrl_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_gpiochip_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_gpiochip_add.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_gpiochip_add.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dc_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 984, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1728, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call5.i.i102 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 864, i32 noundef 3520) #7
  %tobool15.not = icmp eq ptr %call5.i.i102, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.cond18.preheader_crit_edge

if.end12.for.cond18.preheader_crit_edge:          ; preds = %if.end12
  br label %for.cond18.preheader

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond18.preheader:                             ; preds = %for.cond18.preheader.for.cond18.preheader_crit_edge, %if.end12.for.cond18.preheader_crit_edge
  %i.0107 = phi i32 [ %inc31, %for.cond18.preheader.for.cond18.preheader_crit_edge ], [ 0, %if.end12.for.cond18.preheader_crit_edge ]
  %mul = shl i32 %i.0107, 3
  %add22 = add nuw nsw i32 %i.0107, 65
  %mul21 = mul i32 %i.0107, 48
  %arrayidx = getelementptr i8, ptr %call5.i.i102, i32 %mul21
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 48)
  %arrayidx25 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %mul
  %2 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %arrayidx25, align 4
  %name27 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %mul, i32 1
  %3 = ptrtoint ptr %name27 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %name27, align 4
  %arrayidx29 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %mul
  %4 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %arrayidx29, align 4
  %add.1 = or i32 %mul, 1
  %mul21.1 = mul nuw nsw i32 %add.1, 6
  %arrayidx.1 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.1
  %call24.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 49)
  %arrayidx25.1 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.1
  %5 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.1, ptr %arrayidx25.1, align 4
  %name27.1 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.1, i32 1
  %6 = ptrtoint ptr %name27.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.1, ptr %name27.1, align 4
  %arrayidx29.1 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.1
  %7 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.1, ptr %arrayidx29.1, align 4
  %add.2 = or i32 %mul, 2
  %mul21.2 = mul nuw nsw i32 %add.2, 6
  %arrayidx.2 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.2
  %call24.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 50)
  %arrayidx25.2 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.2
  %8 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.2, ptr %arrayidx25.2, align 4
  %name27.2 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.2, i32 1
  %9 = ptrtoint ptr %name27.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.2, ptr %name27.2, align 4
  %arrayidx29.2 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.2
  %10 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.2, ptr %arrayidx29.2, align 4
  %add.3 = or i32 %mul, 3
  %mul21.3 = mul nuw nsw i32 %add.3, 6
  %arrayidx.3 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.3
  %call24.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 51)
  %arrayidx25.3 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.3
  %11 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.3, ptr %arrayidx25.3, align 4
  %name27.3 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.3, i32 1
  %12 = ptrtoint ptr %name27.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.3, ptr %name27.3, align 4
  %arrayidx29.3 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.3
  %13 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.3, ptr %arrayidx29.3, align 4
  %add.4 = or i32 %mul, 4
  %mul21.4 = mul nuw nsw i32 %add.4, 6
  %arrayidx.4 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.4
  %call24.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.4, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 52)
  %arrayidx25.4 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.4
  %14 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.4, ptr %arrayidx25.4, align 4
  %name27.4 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.4, i32 1
  %15 = ptrtoint ptr %name27.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.4, ptr %name27.4, align 4
  %arrayidx29.4 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.4
  %16 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.4, ptr %arrayidx29.4, align 4
  %add.5 = or i32 %mul, 5
  %mul21.5 = mul nuw nsw i32 %add.5, 6
  %arrayidx.5 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.5
  %call24.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.5, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 53)
  %arrayidx25.5 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.5
  %17 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.5, ptr %arrayidx25.5, align 4
  %name27.5 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.5, i32 1
  %18 = ptrtoint ptr %name27.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.5, ptr %name27.5, align 4
  %arrayidx29.5 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.5
  %19 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.5, ptr %arrayidx29.5, align 4
  %add.6 = or i32 %mul, 6
  %mul21.6 = mul nuw nsw i32 %add.6, 6
  %arrayidx.6 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.6
  %call24.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.6, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 54)
  %arrayidx25.6 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.6
  %20 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.6, ptr %arrayidx25.6, align 4
  %name27.6 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.6, i32 1
  %21 = ptrtoint ptr %name27.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.6, ptr %name27.6, align 4
  %arrayidx29.6 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.6
  %22 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.6, ptr %arrayidx29.6, align 4
  %add.7 = or i32 %mul, 7
  %mul21.7 = mul nuw nsw i32 %add.7, 6
  %arrayidx.7 = getelementptr i8, ptr %call5.i.i102, i32 %mul21.7
  %call24.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.7, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %add22, i32 noundef 55)
  %arrayidx25.7 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.7
  %23 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.7, ptr %arrayidx25.7, align 4
  %name27.7 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %add.7, i32 1
  %24 = ptrtoint ptr %name27.7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.7, ptr %name27.7, align 4
  %arrayidx29.7 = getelementptr %struct.dc_pinmap, ptr %call.i, i32 0, i32 4, i32 %add.7
  %25 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.7, ptr %arrayidx29.7, align 4
  %inc31 = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc31, 18
  br i1 %exitcond.not, label %for.end32, label %for.cond18.preheader.for.cond18.preheader_crit_edge

for.cond18.preheader.for.cond18.preheader_crit_edge: ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond18.preheader

for.end32:                                        ; preds = %for.cond18.preheader
  %call.i103 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #7
  %tobool35.not = icmp eq ptr %call.i103, null
  br i1 %tobool35.not, label %for.end32.cleanup_crit_edge, label %if.end37

for.end32.cleanup_crit_edge:                      ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %for.end32
  %26 = ptrtoint ptr %call.i103 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str, ptr %call.i103, align 4
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i103, i32 0, i32 6
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i103, i32 0, i32 3
  %28 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dc_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i103, i32 0, i32 4
  %29 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dc_pmxops, ptr %pmxops, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i103, i32 0, i32 2
  %30 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 144, ptr %npins, align 4
  %pins39 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i103, i32 0, i32 1
  %31 = ptrtoint ptr %pins39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i, ptr %pins39, align 4
  %desc = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i103, ptr %desc, align 4
  %dev41 = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %dev41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %dev41, align 4
  %call43 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull %call.i103, ptr noundef nonnull %call.i) #7
  %pctl = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call43, ptr %pctl, align 4
  %cmp.i104 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end, label %if.end50

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %35 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pctl, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  %chip1.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %chip1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str, ptr %chip1.i, align 4
  %39 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev41, align 4
  %parent.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %parent.i, align 4
  %request.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 5
  %42 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gpiochip_generic_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 6
  %43 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @gpiochip_generic_free, ptr %free.i, align 4
  %direction_input.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 8
  %44 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dc_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 9
  %45 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @dc_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 10
  %46 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @dc_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 12
  %47 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @dc_gpio_set, ptr %set.i, align 4
  %base.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 19
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %base.i, align 4
  %ngpio.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 20
  %49 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 144, ptr %ngpio.i, align 4
  %of_gpio_n_cells.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 5, i32 40
  %50 = ptrtoint ptr %of_gpio_n_cells.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %of_gpio_n_cells.i, align 4
  %lock.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @dc_gpiochip_add.__key, i16 noundef signext 3) #7
  %call2.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip1.i, ptr noundef nonnull %call.i, ptr noundef nonnull @dc_gpiochip_add.lock_key, ptr noundef nonnull @dc_gpiochip_add.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i105 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i105, label %if.end50.cleanup_crit_edge, label %if.end.i

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end50
  %51 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev41, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %56, %if.end.i.i ], [ %54, %if.end.i.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 @gpiochip_add_pin_range(ptr noundef %chip1.i, ptr noundef %retval.0.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %dev_name.exit.i.cleanup_crit_edge

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiochip_remove(ptr noundef %chip1.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %dev_name.exit.i.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end, %for.end32.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %37, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %for.end32.cleanup_crit_edge ], [ %call5.i, %if.then7.i ], [ %call2.i, %if.end50.cleanup_crit_edge ], [ 0, %dev_name.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dc_get_groups_count(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 144
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dc_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %desc = getelementptr inbounds %struct.dc_pinmap, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %desc = getelementptr inbounds %struct.dc_pinmap, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins1 = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %selector
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %pins, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dc_get_functions_count(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dc_get_fname(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @dc_functions, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %pin_names = getelementptr inbounds %struct.dc_pinmap, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pin_names, ptr %groups, align 4
  %1 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 144, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %div.i = sdiv i32 %group, 8
  %0 = mul i32 %div.i, 8
  %rem.i.decomposed = sub i32 %group, %0
  %mul.i = shl nsw i32 %rem.i.decomposed, 1
  %mul1.i = shl nsw i32 %div.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i.decomposed)
  %cmp.i = icmp sgt i32 %rem.i.decomposed, 3
  %sub.i = add nsw i32 %mul.i, -8
  %bit_off.0 = select i1 %cmp.i, i32 %sub.i, i32 %mul.i
  %reg_off.0.v = select i1 %cmp.i, i32 33, i32 32
  %reg_off.0 = add i32 %reg_off.0.v, %mul1.i
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg_off.0
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !47
  %shl = shl i32 3, %bit_off.0
  %4 = trunc i32 %shl to i8
  %5 = xor i8 %4, -1
  %conv2 = and i8 %3, %5
  %shl3 = shl i32 %selector, %bit_off.0
  %6 = trunc i32 %shl3 to i8
  %conv5 = or i8 %conv2, %6
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 %reg_off.0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %conv5) #7, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_pmx_request_gpio(ptr noundef %pcdev, ptr nocapture noundef readnone %range, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #7
  %div.i = sdiv i32 %offset, 8
  %0 = mul i32 %div.i, 8
  %rem.i.decomposed = sub i32 %offset, %0
  %mul.i = shl nsw i32 %rem.i.decomposed, 1
  %mul1.i = shl nsw i32 %div.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i.decomposed)
  %cmp.i = icmp sgt i32 %rem.i.decomposed, 3
  %sub.i = add nsw i32 %mul.i, -8
  %bit_off.0 = select i1 %cmp.i, i32 %sub.i, i32 %mul.i
  %reg_off.0.v = select i1 %cmp.i, i32 33, i32 32
  %reg_off.0 = add i32 %reg_off.0.v, %mul1.i
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg_off.0
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !47
  %conv = zext i8 %3 to i32
  %shl = shl i32 3, %bit_off.0
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %. = select i1 %cmp.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = add i32 %gpio, 32
  %add = and i32 %0, -8
  %add1 = or i32 %add, 2
  %rem = and i32 %gpio, 7
  %lock = getelementptr inbounds %struct.dc_pinmap, ptr %call, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add1
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !47
  %shl = shl nuw nsw i32 1, %rem
  %4 = trunc i32 %shl to i8
  %5 = xor i8 %4, -1
  %conv10 = and i8 %3, %5
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 %add1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %conv10) #7, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = add i32 %gpio, 32
  %add = and i32 %0, -8
  %add1 = or i32 %add, 2
  %rem = and i32 %gpio, 7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %add1.i = or i32 %add, 3
  %lock.i = getelementptr inbounds %struct.dc_pinmap, ptr %call.i, i32 0, i32 6
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add1.i
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl11.i = shl nuw nsw i32 1, %rem
  %4 = trunc i32 %shl11.i to i8
  %conv10.i = or i8 %3, %4
  %5 = xor i8 %4, -1
  %conv13.i = and i8 %3, %5
  %output.0.i = select i1 %tobool.not.i, i8 %conv13.i, i8 %conv10.i
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %7, i32 %add1.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 %output.0.i) #7, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  %lock = getelementptr inbounds %struct.dc_pinmap, ptr %call, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !47
  %conv10 = or i8 %10, %4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 %add1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %conv10) #7, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_gpio_get(ptr noundef %chip, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = add i32 %gpio, 32
  %add = and i32 %0, -8
  %add1 = or i32 %add, 6
  %rem = and i32 %gpio, 7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add1
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !47
  %conv = zext i8 %3 to i32
  %4 = lshr i32 %conv, %rem
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dc_gpio_set(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = add i32 %gpio, 32
  %add = and i32 %0, -8
  %add1 = or i32 %add, 3
  %rem = and i32 %gpio, 7
  %lock = getelementptr inbounds %struct.dc_pinmap, ptr %call, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add1
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl11 = shl nuw nsw i32 1, %rem
  %4 = trunc i32 %shl11 to i8
  %conv10 = or i8 %3, %4
  %5 = xor i8 %4, -1
  %conv13 = and i8 %3, %5
  %output.0 = select i1 %tobool.not, i8 %conv13, i8 %conv10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 %add1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %output.0) #7, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_pinctrl_digicolor__223_344_dc_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_digicolor__223_344_dc_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 344, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 338, i32 11}
!4 = !{ptr @dc_pinctrl_driver, !5, !"dc_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 336, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 300, i32 29}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 324, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dc_pinctrl_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @dc_pinctrl_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @dc_pinctrl_ops, !17, !"dc_pinctrl_ops", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 77, i32 33}
!18 = !{ptr @dc_pmxops, !19, !"dc_pmxops", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 159, i32 32}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 86, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 87, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 88, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 89, i32 2}
!28 = !{ptr @dc_functions, !29, !"dc_functions", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 85, i32 26}
!30 = !{ptr @dc_gpiochip_add.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 253, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dc_gpiochip_add.lock_key, !34, !"lock_key", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 255, i32 8}
!35 = !{ptr @dc_gpiochip_add.request_key, !34, !"request_key", i1 false, i1 false}
!36 = !{ptr @dc_pinctrl_ids, !37, !"dc_pinctrl_ids", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-digicolor.c", i32 331, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 4951520}
!48 = !{i64 4951125}
