; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-meson-gpio.c_pt.bc'
source_filename = "../drivers/irqchip/irq-meson-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_gpio_irq_params = type { i32, i8, i32, i32, i32, i32, %struct.irq_ctl_ops }
%struct.irq_ctl_ops = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.meson_gpio_irq_controller = type { ptr, ptr, [8 x i32], [1 x i32], %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_irq_meson_gpio__184_524_meson_gpio_intc_driver_init6 = internal global ptr @meson_gpio_intc_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author185 = internal constant [59 x i8] c"irq_meson_gpio.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [51 x i8] c"irq_meson_gpio.file=drivers/irqchip/irq-meson-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [30 x i8] c"irq_meson_gpio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [46 x i8] c"irq_meson_gpio.alias=platform:meson-gpio-intc\00", section ".modinfo", align 1
@meson_gpio_intc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @meson_gpio_intc_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_gpio_intc\00", [16 x i8] zeroinitializer }, align 32
@meson_gpio_intc_irqchip_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gpio_irq_of_init }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@meson_gpio_irq_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013irq_meson_gpio: missing parent interrupt node\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_gpio_irq_of_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-meson-gpio.c\00", [63 x i8] zeroinitializer }, align 32
@meson_gpio_irq_of_init._entry_ptr = internal global ptr @meson_gpio_irq_of_init._entry, section ".printk_index", align 4
@meson_gpio_irq_of_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013irq_meson_gpio: unable to obtain parent domain\0A\00", [46 x i8] zeroinitializer }, align 32
@meson_gpio_irq_of_init._entry_ptr.6 = internal global ptr @meson_gpio_irq_of_init._entry.4, section ".printk_index", align 4
@meson_gpio_irq_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctl->lock\00", [21 x i8] zeroinitializer }, align 32
@meson_gpio_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_gpio_irq_domain_alloc, ptr @meson_gpio_irq_domain_free, ptr null, ptr null, ptr @meson_gpio_irq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@meson_gpio_irq_of_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013irq_meson_gpio: failed to add domain\0A\00", [56 x i8] zeroinitializer }, align 32
@meson_gpio_irq_of_init._entry_ptr.10 = internal global ptr @meson_gpio_irq_of_init._entry.8, section ".printk_index", align 4
@meson_gpio_irq_of_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016irq_meson_gpio: %d to %d gpio interrupt mux initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_gpio_irq_of_init._entry_ptr.13 = internal global ptr @meson_gpio_irq_of_init._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@meson_irq_gpio_matches = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxbb_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxl_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm1_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-a1-gpio-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a1_params }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amlogic,channel-interrupts\00", [37 x i8] zeroinitializer }, align 32
@meson_gpio_irq_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013irq_meson_gpio: can't get %d channel interrupts\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_gpio_irq_parse_dt\00", [40 x i8] zeroinitializer }, align 32
@meson_gpio_irq_parse_dt._entry_ptr = internal global ptr @meson_gpio_irq_parse_dt._entry, section ".printk_index", align 4
@meson8_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 134, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, [32 x i8] zeroinitializer }, align 32
@meson8b_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 119, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, [32 x i8] zeroinitializer }, align 32
@gxbb_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 133, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, [32 x i8] zeroinitializer }, align 32
@gxl_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 110, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, [32 x i8] zeroinitializer }, align 32
@axg_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 100, i8 0, i32 0, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, [32 x i8] zeroinitializer }, align 32
@sm1_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 100, i8 1, i32 8, i32 0, i32 16, i32 255, %struct.irq_ctl_ops { ptr @meson8_gpio_irq_sel_pin, ptr @meson_gpio_irq_init_dummy } }, [32 x i8] zeroinitializer }, align 32
@a1_params = internal constant { %struct.meson_gpio_irq_params, [32 x i8] } { %struct.meson_gpio_irq_params { i32 62, i8 1, i32 16, i32 8, i32 0, i32 127, %struct.irq_ctl_ops { ptr @meson_a1_gpio_irq_sel_pin, ptr @meson_a1_gpio_irq_init } }, [32 x i8] zeroinitializer }, align 32
@meson_gpio_irq_domain_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013irq_meson_gpio: failed to allocate gic irq %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_gpio_irq_domain_alloc\00", [36 x i8] zeroinitializer }, align 32
@meson_gpio_irq_domain_alloc._entry_ptr = internal global ptr @meson_gpio_irq_domain_alloc._entry, section ".printk_index", align 4
@meson_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @meson_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [56 x i8] zeroinitializer }, align 32
@meson_gpio_irq_request_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013irq_meson_gpio: No channel available\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"meson_gpio_irq_request_channel\00", [33 x i8] zeroinitializer }, align 32
@meson_gpio_irq_request_channel._entry_ptr = internal global ptr @meson_gpio_irq_request_channel._entry, section ".printk_index", align 4
@meson_gpio_irq_request_channel.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_meson_gpio\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hwirq %lu assigned to channel %d - irq %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"irq_meson_gpio: hwirq %lu assigned to channel %d - irq %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson-gpio-irqchip\00", [45 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"meson_gpio_intc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 524, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [36 x i8] c"meson_gpio_intc_irqchip_match_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 522, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 472, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 478, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 486, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"meson_gpio_irq_domain_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 433, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 504, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 509, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"meson_irq_gpio_matches\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 124, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 451, i32 9 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 456, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"meson8_params\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 94, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"meson8b_params\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 98, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"gxbb_params\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 102, i32 43 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"gxl_params\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 106, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"axg_params\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 110, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"sm1_params\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 114, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"a1_params\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 120, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 403, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"meson_gpio_irq_chip\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 334, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 213, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 236, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [36 x i8] c"../drivers/irqchip/irq-meson-gpio.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 335, i32 12 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__initcall__kmod_irq_meson_gpio__184_524_meson_gpio_intc_driver_init6, ptr @meson_gpio_irq_domain_alloc._entry, ptr @meson_gpio_irq_domain_alloc._entry_ptr, ptr @meson_gpio_irq_of_init._entry, ptr @meson_gpio_irq_of_init._entry.11, ptr @meson_gpio_irq_of_init._entry.4, ptr @meson_gpio_irq_of_init._entry.8, ptr @meson_gpio_irq_of_init._entry_ptr, ptr @meson_gpio_irq_of_init._entry_ptr.10, ptr @meson_gpio_irq_of_init._entry_ptr.13, ptr @meson_gpio_irq_of_init._entry_ptr.6, ptr @meson_gpio_irq_parse_dt._entry, ptr @meson_gpio_irq_parse_dt._entry_ptr, ptr @meson_gpio_irq_request_channel._entry, ptr @meson_gpio_irq_request_channel._entry_ptr, ptr @meson_gpio_intc_driver, ptr @.str, ptr @meson_gpio_intc_irqchip_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @meson_gpio_irq_of_init.__key, ptr @.str.7, ptr @meson_gpio_irq_domain_ops, ptr @.str.9, ptr @.str.12, ptr @meson_irq_gpio_matches, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @meson8_params, ptr @meson8b_params, ptr @gxbb_params, ptr @gxl_params, ptr @axg_params, ptr @sm1_params, ptr @a1_params, ptr @.str.17, ptr @.str.18, ptr @meson_gpio_irq_chip, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_intc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_intc_irqchip_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_of_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_of_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_of_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irq_gpio_matches to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxbb_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxl_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a1_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_domain_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gpio_irq_request_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_intc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_gpio_intc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_irq_of_init(ptr noundef %node, ptr noundef %parent) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %tobool2.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool2.not, label %do.end6, label %irq_find_host.exit.if.end9_crit_edge

irq_find_host.exit.if.end9_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end6:                                          ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end9:                                          ; preds = %irq_find_host.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %d.0.i66 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end9_crit_edge ], [ %call.i.i.i, %if.end.if.end9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #13
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.body14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @meson_gpio_irq_of_init.__key, i16 noundef signext 3) #9
  %call18 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %base, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.body14.free_ctl_crit_edge, label %if.end22

do.body14.free_ctl_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ctl

if.end22:                                         ; preds = %do.body14
  %call.i = call ptr @of_match_node(ptr noundef nonnull @meson_irq_gpio_matches, ptr noundef %node) #9
  %tobool.not.i62 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i62, label %if.end22.free_channel_irqs_crit_edge, label %if.end.i

if.end22.free_channel_irqs_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_channel_irqs

if.end.i:                                         ; preds = %if.end22
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call7.i.i, align 8
  %channel_irqs.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %call7.i.i, i32 0, i32 2
  %call1.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef %channel_irqs.i, i32 noundef 8, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end26

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 8) #12
  br label %free_channel_irqs

if.end26:                                         ; preds = %if.end.i
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %gpio_irq_init.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %12, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %gpio_irq_init.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_irq_init.i, align 4
  call void %14(ptr noundef nonnull %call7.i.i) #9
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %tobool.not.i63 = icmp eq ptr %node, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i63, ptr null, ptr %fwnode.i
  %call28 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i66, i32 noundef 0, i32 noundef %18, ptr noundef %spec.select.i, ptr noundef nonnull @meson_gpio_irq_domain_ops, ptr noundef nonnull %call7.i.i) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %do.end33, label %do.end39

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %free_channel_irqs

do.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %22, i32 noundef 8) #12
  br label %cleanup

free_channel_irqs:                                ; preds = %do.end33, %do.end.i, %if.end22.free_channel_irqs_crit_edge
  %ret.0 = phi i32 [ -19, %do.end33 ], [ -19, %if.end22.free_channel_irqs_crit_edge ], [ %call1.i, %do.end.i ]
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %24) #9
  br label %free_ctl

free_ctl:                                         ; preds = %free_channel_irqs, %do.body14.free_ctl_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_channel_irqs ], [ -12, %do.body14.free_ctl_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_ctl, %do.end39, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %ret.1, %free_ctl ], [ 0, %do.end39 ], [ -6, %do.end6 ], [ -19, %do.end ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson8_gpio_irq_sel_pin(ptr noundef %ctl, i32 noundef %channel, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp = icmp ult i32 %channel, 4
  %cond = select i1 %cmp, i32 4, i32 8
  %rem = shl i32 %channel, 3
  %mul = and i32 %rem, 24
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %pin_sel_mask = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pin_sel_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin_sel_mask, align 4
  %shl = shl i32 %3, %mul
  %shl1 = shl i32 %hwirq, %mul
  %lock.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %base.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !87
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %7, %neg.i
  %or.i = or i32 %and.i, %shl1
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %10, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %8) #9, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @meson_gpio_irq_init_dummy(ptr nocapture noundef %ctl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_a1_gpio_irq_sel_pin(ptr noundef %ctl, i32 noundef %channel, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = shl i32 %channel, 4
  %0 = and i32 %rem, 16
  %1 = shl i32 %channel, 1
  %2 = add i32 %1, 4
  %add = and i32 %2, -4
  %3 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl, align 4
  %pin_sel_mask = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %pin_sel_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pin_sel_mask, align 4
  %shl1 = shl i32 %6, %0
  %shl2 = shl i32 %hwirq, %0
  %lock.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %base.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !87
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %neg.i = xor i32 %shl1, -1
  %and.i = and i32 %10, %neg.i
  %or.i = or i32 %and.i, %shl2
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %11) #9, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_a1_gpio_irq_init(ptr noundef %ctl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %base.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !87
  %3 = or i32 %2, 128
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  %channel_hwirq = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_hwirq) #9
  %2 = ptrtoint ptr %channel_hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %channel_hwirq, align 4, !annotation !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !90

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 389, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end21:                                         ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  %cmp.i.i.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end21.cleanup_crit_edge, label %is_of_node.exit.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_of_node.exit.i:                                ; preds = %if.end21
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %6, @of_fwnode_ops
  br i1 %cmp.i.i, label %land.lhs.true.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %if.end24, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.i
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %param.i, align 4
  %arrayidx2.i = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  %call25 = call fastcc i32 @meson_gpio_irq_request_channel(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %channel_hwirq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %channel_hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel_hwirq, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #9
  %17 = getelementptr inbounds i8, ptr %fwspec.i, i32 20
  %18 = call ptr @memset(ptr %17, i32 255, i32 52)
  %parent.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 4
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fwnode.i, align 4
  %23 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %fwspec.i, align 4
  %param_count.i55 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 1
  %24 = ptrtoint ptr %param_count.i55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %param_count.i55, align 4
  %param.i56 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2
  %25 = ptrtoint ptr %param.i56 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %param.i56, align 4
  %arrayidx3.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %16, ptr %arrayidx3.i, align 4
  %and1.i.i = and i32 %12, -16
  %and2.i.i = and i32 %12, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  %type.addr.0.v.i.i = select i1 %tobool.not.i.i, i32 1, i32 4
  %type.addr.0.i.i = or i32 %type.addr.0.v.i.i, %and1.i.i
  %arrayidx5.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %type.addr.0.i.i, ptr %arrayidx5.i, align 4
  %call6.i = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %fwspec.i) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp30 = icmp slt i32 %call6.i, 0
  br i1 %cmp30, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %14, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %29) #12
  %channel_irqs.i.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %1, i32 0, i32 2
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %channel_irqs.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %channel_map.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %1, i32 0, i32 3
  call void @_clear_bit(i32 noundef %sub.ptr.div.i.i, ptr noundef %channel_map.i) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %10, ptr noundef nonnull @meson_gpio_irq_chip, ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end34, %if.end24.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %is_of_node.exit.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6.i, %do.end34 ], [ 0, %if.end37 ], [ %call25, %if.end24.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %is_of_node.exit.i.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_hwirq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_gpio_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !90

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 422, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1) #9
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #9
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %channel_irqs.i.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %1, i32 0, i32 2
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %channel_irqs.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %channel_map.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %sub.ptr.div.i.i, ptr noundef %channel_map.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_gpio_irq_domain_translate(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %land.lhs.true, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hwirq, align 4
  %arrayidx2 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_gpio_irq_request_channel(ptr noundef %ctl, i32 noundef %hwirq, ptr nocapture noundef %channel_hwirq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %channel_map = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 3
  %call5 = tail call i32 @_find_first_zero_bit_be(ptr noundef %channel_map, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call5)
  %cmp6 = icmp ugt i32 %call5, 7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %call5, ptr noundef %channel_map) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %ops = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  tail call void %3(ptr noundef %ctl, i32 noundef %call5, i32 noundef %hwirq) #9
  %arrayidx = getelementptr %struct.meson_gpio_irq_controller, ptr %ctl, i32 0, i32 2, i32 %call5
  %4 = ptrtoint ptr %channel_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %channel_hwirq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_gpio_irq_request_channel.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_gpio_irq_request_channel, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !91

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %channel_hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel_hwirq, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @meson_gpio_irq_request_channel.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.23, i32 noundef %hwirq, i32 noundef %call5, i32 noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ 0, %if.then22 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gpio_irq_set_type(ptr noundef %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %channel_irqs.i.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %3, i32 0, i32 2
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %channel_irqs.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  %and.i = and i32 %type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %support_edge_both.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %support_edge_both.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %support_edge_both.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge_both_offset.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %edge_both_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edge_both_offset.i, align 4
  %add.i = add i32 %11, %sub.ptr.div.i.i
  %shl.i = shl nuw i32 1, %add.i
  br label %if.end

if.else.i:                                        ; preds = %entry
  %and3.i = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.then5.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %edge_single_offset.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %edge_single_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %edge_single_offset.i, align 4
  %add6.i = add i32 %13, %sub.ptr.div.i.i
  %shl7.i = shl nuw i32 1, %add6.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.else.i.if.end9.i_crit_edge
  %val.0.i = phi i32 [ %shl7.i, %if.then5.i ], [ 0, %if.else.i.if.end9.i_crit_edge ]
  %and10.i = and i32 %type, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end_crit_edge, label %if.then12.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %pol_low_offset.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %pol_low_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pol_low_offset.i, align 4
  %add13.i = add i32 %15, %sub.ptr.div.i.i
  %shl14.i = shl nuw i32 1, %add13.i
  %or15.i = or i32 %shl14.i, %val.0.i
  br label %if.end

if.end:                                           ; preds = %if.then12.i, %if.end9.i.if.end_crit_edge, %if.end.i
  %val.1.i = phi i32 [ %shl.i, %if.end.i ], [ %or15.i, %if.then12.i ], [ %val.0.i, %if.end9.i.if.end_crit_edge ]
  %edge_single_offset18.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %edge_single_offset18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %edge_single_offset18.i, align 4
  %add19.i = add i32 %17, %sub.ptr.div.i.i
  %shl20.i = shl nuw i32 1, %add19.i
  %pol_low_offset21.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %pol_low_offset21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pol_low_offset21.i, align 4
  %add22.i = add i32 %19, %sub.ptr.div.i.i
  %shl23.i = shl nuw i32 1, %add22.i
  %or24.i = or i32 %shl23.i, %shl20.i
  %edge_both_offset25.i = getelementptr inbounds %struct.meson_gpio_irq_params, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %edge_both_offset25.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %edge_both_offset25.i, align 4
  %add26.i = add i32 %21, %sub.ptr.div.i.i
  %shl27.i = shl nuw i32 1, %add26.i
  %or28.i = or i32 %or24.i, %shl27.i
  %lock.i.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %3, i32 0, i32 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %base.i.i = getelementptr inbounds %struct.meson_gpio_irq_controller, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !87
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %neg.i.i = xor i32 %or28.i, -1
  %and.i.i = and i32 %25, %neg.i.i
  %or.i.i = or i32 %and.i.i, %val.1.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #9
  %and1.i = and i32 %type, -16
  %and2.i = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i10 = icmp eq i32 %and2.i, 0
  %type.addr.0.v.i = select i1 %tobool.not.i10, i32 1, i32 4
  %type.addr.0.i = or i32 %type.addr.0.v.i, %and1.i
  %call3 = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef %type.addr.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_irq_meson_gpio__184_524_meson_gpio_intc_driver_init6, !1, !"__initcall__kmod_irq_meson_gpio__184_524_meson_gpio_intc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 524, i32 1}
!2 = !{ptr @__UNIQUE_ID_author185, !3, !"__UNIQUE_ID_author185", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 526, i32 1}
!4 = !{ptr @__UNIQUE_ID_file186, !5, !"__UNIQUE_ID_file186", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 527, i32 1}
!6 = !{ptr @__UNIQUE_ID_license187, !5, !"__UNIQUE_ID_license187", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias188, !8, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!8 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 528, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @meson_gpio_intc_driver, !1, !"meson_gpio_intc_driver", i1 false, i1 false}
!11 = !{ptr @meson_gpio_intc_irqchip_match_table, !12, !"meson_gpio_intc_irqchip_match_table", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 522, i32 1}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 472, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @meson_gpio_irq_of_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @meson_gpio_irq_of_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 478, i32 3}
!21 = !{ptr @meson_gpio_irq_of_init._entry.4, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @meson_gpio_irq_of_init._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @meson_gpio_irq_of_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 486, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 504, i32 3}
!28 = !{ptr @meson_gpio_irq_of_init._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @meson_gpio_irq_of_init._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 509, i32 2}
!32 = !{ptr @meson_gpio_irq_of_init._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_gpio_irq_of_init._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 451, i32 9}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 456, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @meson_gpio_irq_parse_dt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @meson_gpio_irq_parse_dt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @meson_irq_gpio_matches, !42, !"meson_irq_gpio_matches", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 124, i32 34}
!43 = !{ptr @meson8_params, !44, !"meson8_params", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 94, i32 43}
!45 = !{ptr @meson8b_params, !46, !"meson8b_params", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 98, i32 43}
!47 = !{ptr @gxbb_params, !48, !"gxbb_params", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 102, i32 43}
!49 = !{ptr @gxl_params, !50, !"gxl_params", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 106, i32 43}
!51 = !{ptr @axg_params, !52, !"axg_params", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 110, i32 43}
!53 = !{ptr @sm1_params, !54, !"sm1_params", i1 false, i1 false}
!54 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 114, i32 43}
!55 = !{ptr @a1_params, !56, !"a1_params", i1 false, i1 false}
!56 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 120, i32 43}
!57 = !{ptr @meson_gpio_irq_domain_ops, !58, !"meson_gpio_irq_domain_ops", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 433, i32 36}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 403, i32 3}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @meson_gpio_irq_domain_alloc._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @meson_gpio_irq_domain_alloc._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 213, i32 3}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @meson_gpio_irq_request_channel._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @meson_gpio_irq_request_channel._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 236, i32 2}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @meson_gpio_irq_request_channel.__UNIQUE_ID_ddebug183, !70, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!73 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 335, i32 12}
!76 = !{ptr @meson_gpio_irq_chip, !77, !"meson_gpio_irq_chip", i1 false, i1 false}
!77 = !{!"../drivers/irqchip/irq-meson-gpio.c", i32 334, i32 24}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 697692}
!88 = !{i64 697274}
!89 = !{!"auto-init"}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2148164431, i64 2148164436, i64 2148164449, i64 2148164493, i64 2148164527, i64 2148164548}
!92 = !{i8 0, i8 2}
