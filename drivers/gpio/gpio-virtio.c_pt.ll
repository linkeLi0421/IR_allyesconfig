; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-virtio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.virtio_gpio_config = type { i16, [2 x i8], i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_gpio = type { ptr, %struct.mutex, %struct.gpio_chip, ptr, ptr, ptr, %struct.mutex, %struct.raw_spinlock, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.virtio_gpio_line = type { %struct.mutex, %struct.completion, [108 x i8], %struct.virtio_gpio_request, [120 x i8], %struct.virtio_gpio_response, i32, [120 x i8] }
%struct.virtio_gpio_request = type { i16, i16, i32 }
%struct.virtio_gpio_response = type { i8, i8 }
%struct.vgpio_irq_line = type { i8, i8, i8, i8, i8, i8, [122 x i8], %struct.virtio_gpio_irq_request, [126 x i8], %struct.virtio_gpio_irq_response, [127 x i8] }
%struct.virtio_gpio_irq_request = type { i16 }
%struct.virtio_gpio_irq_response = type { i8 }
%struct.virtio_gpio_response_get_names = type { i8, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_gpio_virtio__231_659_virtio_gpio_driver_init6 = internal global ptr @virtio_gpio_driver_init, section ".initcall6.init", align 4
@virtio_gpio_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr null, ptr @virtio_gpio_probe, ptr null, ptr @virtio_gpio_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_gpio_driver_exit = internal global ptr @virtio_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [69 x i8] c"gpio_virtio.author=Enrico Weigelt, metux IT consult <info@metux.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [58 x i8] c"gpio_virtio.author=Viresh Kumar <viresh.kumar@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [43 x i8] c"gpio_virtio.description=VirtIO GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [42 x i8] c"gpio_virtio.file=drivers/gpio/gpio-virtio\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"gpio_virtio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_virtio\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 41, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@virtio_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Number of GPIOs can't be zero\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virtio_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-virtio.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtio_gpio_probe._entry_ptr = internal global ptr @virtio_gpio_probe._entry, section ".printk_index", align 4
@virtio_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vgpio->lines[i].lock\00", [42 x i8] zeroinitializer }, align 32
@virtio_gpio_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vgpio->lock\00", [19 x i8] zeroinitializer }, align 32
@vgpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.26, ptr null, ptr null, ptr @virtio_gpio_irq_enable, ptr @virtio_gpio_irq_disable, ptr null, ptr @virtio_gpio_irq_mask, ptr null, ptr @virtio_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @virtio_gpio_irq_set_type, ptr null, ptr @virtio_gpio_irq_bus_lock, ptr @virtio_gpio_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@virtio_gpio_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vgpio->irq_lock\00", [47 x i8] zeroinitializer }, align 32
@virtio_gpio_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&vgpio->eventq_lock\00", [44 x i8] zeroinitializer }, align 32
@virtio_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@virtio_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@virtio_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add virtio-gpio controller\0A\00", [58 x i8] zeroinitializer }, align 32
@virtio_gpio_probe._entry_ptr.15 = internal global ptr @virtio_gpio_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@_virtio_gpio_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add request to vq\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_virtio_gpio_req\00", [47 x i8] zeroinitializer }, align 32
@_virtio_gpio_req._entry_ptr = internal global ptr @_virtio_gpio_req._entry, section ".printk_index", align 4
@_virtio_gpio_req._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GPIO request failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@_virtio_gpio_req._entry_ptr.22 = internal global ptr @_virtio_gpio_req._entry.20, section ".printk_index", align 4
@_virtio_gpio_req._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPIO operation returned incorrect len (%u : %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@_virtio_gpio_req._entry_ptr.25 = internal global ptr @_virtio_gpio_req._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virtio-gpio\00", [20 x i8] zeroinitializer }, align 32
@virtio_gpio_irq_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to add request to eventq\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"virtio_gpio_irq_prepare\00", [40 x i8] zeroinitializer }, align 32
@virtio_gpio_irq_prepare._entry_ptr = internal global ptr @virtio_gpio_irq_prepare._entry, section ".printk_index", align 4
@virtio_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported irq type: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"virtio_gpio_irq_set_type\00", [39 x i8] zeroinitializer }, align 32
@virtio_gpio_irq_set_type._entry_ptr = internal global ptr @virtio_gpio_irq_set_type._entry, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"requestq\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eventq\00", [25 x i8] zeroinitializer }, align 32
@__const.virtio_gpio_alloc_vqs.names = private unnamed_addr constant [2 x ptr] [ptr @.str.31, ptr @.str.32], align 8
@__const.virtio_gpio_alloc_vqs.cbs = private unnamed_addr constant [2 x ptr] [ptr @virtio_gpio_request_vq, ptr @virtio_gpio_event_vq], align 8
@virtio_gpio_alloc_vqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to find vqs: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtio_gpio_alloc_vqs\00", [42 x i8] zeroinitializer }, align 32
@virtio_gpio_alloc_vqs._entry_ptr = internal global ptr @virtio_gpio_alloc_vqs._entry, section ".printk_index", align 4
@virtio_gpio_alloc_vqs._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to find requestq vq\0A\00", [36 x i8] zeroinitializer }, align 32
@virtio_gpio_alloc_vqs._entry_ptr.37 = internal global ptr @virtio_gpio_alloc_vqs._entry.35, section ".printk_index", align 4
@virtio_gpio_alloc_vqs._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find eventq vq\0A\00", [38 x i8] zeroinitializer }, align 32
@virtio_gpio_alloc_vqs._entry_ptr.40 = internal global ptr @virtio_gpio_alloc_vqs._entry.38, section ".printk_index", align 4
@virtio_gpio_event_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq with incorrect length (%u : %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtio_gpio_event_vq\00", [43 x i8] zeroinitializer }, align 32
@virtio_gpio_event_vq._entry_ptr = internal global ptr @virtio_gpio_event_vq._entry, section ".printk_index", align 4
@virtio_gpio_event_vq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to handle interrupt: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@virtio_gpio_event_vq._entry_ptr.45 = internal global ptr @virtio_gpio_event_vq._entry.43, section ".printk_index", align 4
@virtio_gpio_get_names._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get GPIO names: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtio_gpio_get_names\00", [42 x i8] zeroinitializer }, align 32
@virtio_gpio_get_names._entry_ptr = internal global ptr @virtio_gpio_get_names._entry, section ".printk_index", align 4
@virtio_gpio_get_names._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gpio_names block is too short (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@virtio_gpio_get_names._entry_ptr.50 = internal global ptr @virtio_gpio_get_names._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"virtio_gpio_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 648, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 655, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 638, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 644, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 558, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 567, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 571, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"vgpio_irq_chip\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 353, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 608, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 609, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 621, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 624, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 451, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 95, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 106, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 112, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 354, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 224, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 310, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 460, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 460, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 470, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 475, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 481, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 413, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 432, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 516, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [30 x i8] c"../drivers/gpio/gpio-virtio.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 532, i32 4 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_virtio_gpio_driver_exit, ptr @__initcall__kmod_gpio_virtio__231_659_virtio_gpio_driver_init6, ptr @_virtio_gpio_req._entry, ptr @_virtio_gpio_req._entry.20, ptr @_virtio_gpio_req._entry.23, ptr @_virtio_gpio_req._entry_ptr, ptr @_virtio_gpio_req._entry_ptr.22, ptr @_virtio_gpio_req._entry_ptr.25, ptr @virtio_gpio_alloc_vqs._entry, ptr @virtio_gpio_alloc_vqs._entry.35, ptr @virtio_gpio_alloc_vqs._entry.38, ptr @virtio_gpio_alloc_vqs._entry_ptr, ptr @virtio_gpio_alloc_vqs._entry_ptr.37, ptr @virtio_gpio_alloc_vqs._entry_ptr.40, ptr @virtio_gpio_driver_exit, ptr @virtio_gpio_event_vq._entry, ptr @virtio_gpio_event_vq._entry.43, ptr @virtio_gpio_event_vq._entry_ptr, ptr @virtio_gpio_event_vq._entry_ptr.45, ptr @virtio_gpio_get_names._entry, ptr @virtio_gpio_get_names._entry.48, ptr @virtio_gpio_get_names._entry_ptr, ptr @virtio_gpio_get_names._entry_ptr.50, ptr @virtio_gpio_irq_prepare._entry, ptr @virtio_gpio_irq_prepare._entry_ptr, ptr @virtio_gpio_irq_set_type._entry, ptr @virtio_gpio_irq_set_type._entry_ptr, ptr @virtio_gpio_probe._entry, ptr @virtio_gpio_probe._entry.13, ptr @virtio_gpio_probe._entry_ptr, ptr @virtio_gpio_probe._entry_ptr.15, ptr @virtio_gpio_driver, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @virtio_gpio_probe.__key, ptr @.str.6, ptr @virtio_gpio_probe.__key.7, ptr @.str.8, ptr @vgpio_irq_chip, ptr @virtio_gpio_probe.__key.9, ptr @.str.10, ptr @virtio_gpio_probe.__key.11, ptr @.str.12, ptr @virtio_gpio_probe.lock_key, ptr @virtio_gpio_probe.request_key, ptr @.str.14, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_virtio_gpio_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_virtio_gpio_req._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_virtio_gpio_req._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_irq_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_alloc_vqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_alloc_vqs._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_alloc_vqs._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_event_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_event_vq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_get_names._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpio_get_names._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_gpio_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %names.i = alloca [2 x ptr], align 8
  %cbs.i = alloca [2 x ptr], align 8
  %vqs.i = alloca [2 x ptr], align 8
  %config = alloca %struct.virtio_gpio_config, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %config) #7
  %0 = getelementptr inbounds %struct.virtio_gpio_config, ptr %config, i32 0, i32 1
  %1 = getelementptr inbounds %struct.virtio_gpio_config, ptr %config, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.virtio_gpio_config, ptr %config, i32 0, i32 2
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %config, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 596, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i, align 8
  %generation.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %generation.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.cond.end.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %7(ptr noundef %vdev) #7
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ 0, %if.end.cond.end.i.i_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 451) #7
  %add.ptr.1.i.i = getelementptr inbounds i8, ptr %config, i32 1
  %add.ptr.5.i.i = getelementptr inbounds i8, ptr %config, i32 5
  %add.ptr.6.i.i = getelementptr inbounds i8, ptr %config, i32 6
  %add.ptr.7.i.i = getelementptr inbounds i8, ptr %config, i32 7
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %cond.end17.i.i.do.body6.i.i_crit_edge, %cond.end.i.i
  %gen.0.i.i = phi i32 [ %cond.i.i, %cond.end.i.i ], [ %cond18.i.i, %cond.end17.i.i.do.body6.i.i_crit_edge ]
  %8 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i.i, align 8
  %get.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get.i.i, align 4
  call void %11(ptr noundef %vdev, i32 noundef 0, ptr noundef nonnull %config, i32 noundef 1) #7
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 8
  %get.1.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %get.1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get.1.i.i, align 4
  call void %15(ptr noundef %vdev, i32 noundef 1, ptr noundef %add.ptr.1.i.i, i32 noundef 1) #7
  %16 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i.i, align 8
  %get.2.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %get.2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get.2.i.i, align 4
  call void %19(ptr noundef %vdev, i32 noundef 2, ptr noundef %0, i32 noundef 1) #7
  %20 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i.i, align 8
  %get.3.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %get.3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get.3.i.i, align 4
  call void %23(ptr noundef %vdev, i32 noundef 3, ptr noundef %1, i32 noundef 1) #7
  %24 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i.i, align 8
  %get.4.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %get.4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get.4.i.i, align 4
  call void %27(ptr noundef %vdev, i32 noundef 4, ptr noundef %2, i32 noundef 1) #7
  %28 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i.i, align 8
  %get.5.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %get.5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get.5.i.i, align 4
  call void %31(ptr noundef %vdev, i32 noundef 5, ptr noundef %add.ptr.5.i.i, i32 noundef 1) #7
  %32 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i.i, align 8
  %get.6.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %get.6.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get.6.i.i, align 4
  call void %35(ptr noundef %vdev, i32 noundef 6, ptr noundef %add.ptr.6.i.i, i32 noundef 1) #7
  %36 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i.i, align 8
  %get.7.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %get.7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get.7.i.i, align 4
  call void %39(ptr noundef %vdev, i32 noundef 7, ptr noundef %add.ptr.7.i.i, i32 noundef 1) #7
  %40 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config.i.i, align 8
  %generation10.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %generation10.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %generation10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %43, null
  br i1 %tobool11.not.i.i, label %do.body6.i.i.cond.end17.i.i_crit_edge, label %cond.true12.i.i

do.body6.i.i.cond.end17.i.i_crit_edge:            ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end17.i.i

cond.true12.i.i:                                  ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 %43(ptr noundef %vdev) #7
  br label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %cond.true12.i.i, %do.body6.i.i.cond.end17.i.i_crit_edge
  %cond18.i.i = phi i32 [ %call15.i.i, %cond.true12.i.i ], [ 0, %do.body6.i.i.cond.end17.i.i_crit_edge ]
  %cmp20.not.i.i = icmp eq i32 %cond18.i.i, %gen.0.i.i
  br i1 %cmp20.not.i.i, label %virtio_cread_bytes.exit, label %cond.end17.i.i.do.body6.i.i_crit_edge

cond.end17.i.i.do.body6.i.i_crit_edge:            ; preds = %cond.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i.i

virtio_cread_bytes.exit:                          ; preds = %cond.end17.i.i
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %2, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %config, align 8
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool4.not = icmp eq i16 %48, 0
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %virtio_cread_bytes.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end6:                                          ; preds = %virtio_cread_bytes.exit
  %conv = zext i16 %49 to i32
  %50 = shl nuw nsw i32 %conv, 9
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %50, i32 noundef 3520) #7
  %lines = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %lines to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i, ptr %lines, align 4
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %do.body14.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14.preheader:                              ; preds = %if.end6
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %do.body14

do.body14:                                        ; preds = %do.body14.do.body14_crit_edge, %do.body14.preheader
  %i.0193 = phi i32 [ %inc, %do.body14.do.body14_crit_edge ], [ 0, %do.body14.preheader ]
  %52 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lines, align 4
  %arrayidx = getelementptr %struct.virtio_gpio_line, ptr %53, i32 %i.0193
  call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @virtio_gpio_probe.__key) #7
  %54 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lines, align 4
  %completion = getelementptr %struct.virtio_gpio_line, ptr %55, i32 %i.0193, i32 1
  %56 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr %struct.virtio_gpio_line, ptr %55, i32 %i.0193, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #7
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.body20, label %do.body14.do.body14_crit_edge

do.body14.do.body14_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

do.body20:                                        ; preds = %do.body14
  %lock21 = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock21, ptr noundef nonnull @.str.8, ptr noundef nonnull @virtio_gpio_probe.__key.7) #7
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %priv, align 8
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %vdev, ptr %call.i, align 4
  %gc = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2
  %free = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 6
  %59 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @virtio_gpio_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 7
  %60 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @virtio_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 8
  %61 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @virtio_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 9
  %62 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @virtio_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 10
  %63 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @virtio_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 12
  %64 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @virtio_gpio_set, ptr %set, align 4
  %ngpio31 = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 20
  %65 = ptrtoint ptr %ngpio31 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %49, ptr %ngpio31, align 4
  %base = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 19
  %66 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %base, align 4
  %init_name.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 3
  %67 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body20.dev_name.exit_crit_edge

do.body20.dev_name.exit_crit_edge:                ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %70, %if.end.i ], [ %68, %do.body20.dev_name.exit_crit_edge ]
  %71 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %retval.0.i, ptr %gc, align 4
  %parent = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %owner, align 4
  %can_sleep = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 23
  %74 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %can_sleep, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #7
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %75 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %76, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %dev_name.exit.if.end77_crit_edge, label %devm_kcalloc.exit168

dev_name.exit.if.end77_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

devm_kcalloc.exit168:                             ; preds = %dev_name.exit
  %77 = mul nuw nsw i32 %conv, 384
  %call5.i.i165 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %77, i32 noundef 3520) #7
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 8
  %78 = ptrtoint ptr %irq_lines to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call5.i.i165, ptr %irq_lines, align 4
  %tobool43.not = icmp eq ptr %call5.i.i165, null
  br i1 %tobool43.not, label %devm_kcalloc.exit168.cleanup_crit_edge, label %for.body61.preheader

devm_kcalloc.exit168.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body61.preheader:                             ; preds = %devm_kcalloc.exit168
  %irq = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 37
  %parent_handler = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 37, i32 13
  %79 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 37, i32 15
  %80 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 37, i32 16
  %81 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 37, i32 10
  %82 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 37, i32 9
  %83 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @handle_level_irq, ptr %handler, align 4
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @vgpio_irq_chip, ptr %irq, align 4
  %umax197 = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body61.preheader
  %i.1195 = phi i32 [ %inc69, %for.body61.for.body61_crit_edge ], [ 0, %for.body61.preheader ]
  %85 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %irq_lines, align 4
  %arrayidx63 = getelementptr %struct.vgpio_irq_line, ptr %86, i32 %i.1195
  %87 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx63, align 128
  %88 = load ptr, ptr %irq_lines, align 4
  %disabled = getelementptr %struct.vgpio_irq_line, ptr %88, i32 %i.1195, i32 1
  %89 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %disabled, align 1
  %90 = load ptr, ptr %irq_lines, align 4
  %masked = getelementptr %struct.vgpio_irq_line, ptr %90, i32 %i.1195, i32 2
  %91 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %masked, align 2
  %inc69 = add nuw nsw i32 %i.1195, 1
  %exitcond198.not = icmp eq i32 %inc69, %umax197
  br i1 %exitcond198.not, label %do.body71, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

do.body71:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  %irq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @virtio_gpio_probe.__key.9) #7
  %eventq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %eventq_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtio_gpio_probe.__key.11, i16 noundef signext 2) #7
  br label %if.end77

if.end77:                                         ; preds = %do.body71, %dev_name.exit.if.end77_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %names.i) #7
  %92 = load i64, ptr @__const.virtio_gpio_alloc_vqs.names, align 8
  %93 = ptrtoint ptr %names.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %names.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cbs.i) #7
  %94 = load i64, ptr @__const.virtio_gpio_alloc_vqs.cbs, align 8
  %95 = ptrtoint ptr %cbs.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %cbs.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vqs.i) #7
  %96 = ptrtoint ptr %vqs.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 0, ptr %vqs.i, align 8
  %irq_lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 8
  %97 = ptrtoint ptr %irq_lines.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %irq_lines.i, align 4
  %tobool.not.i169 = icmp eq ptr %98, null
  %cond.i = select i1 %tobool.not.i169, i32 1, i32 2
  %99 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i171 = call i32 %102(ptr noundef %vdev, i32 noundef %cond.i, ptr noundef nonnull %vqs.i, ptr noundef nonnull %cbs.i, ptr noundef nonnull %names.i, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %tobool3.not.i = icmp eq i32 %call.i.i171, 0
  br i1 %tobool3.not.i, label %if.end.i172, label %do.end.i

do.end.i:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %call.i.i171) #10
  br label %virtio_gpio_alloc_vqs.exit.thread

if.end.i172:                                      ; preds = %if.end77
  %103 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vqs.i, align 8
  %tobool4.not.i = icmp eq ptr %104, null
  br i1 %tobool4.not.i, label %if.end.i172.out.i_crit_edge, label %if.end10.i

if.end.i172.out.i_crit_edge:                      ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end10.i:                                       ; preds = %if.end.i172
  %request_vq.i = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 4
  %105 = ptrtoint ptr %request_vq.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %request_vq.i, align 4
  %106 = ptrtoint ptr %irq_lines.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %irq_lines.i, align 4
  %tobool13.not.i = icmp eq ptr %107, null
  br i1 %tobool13.not.i, label %if.end10.i.if.end81_crit_edge, label %land.lhs.true.i

if.end10.i.if.end81_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true.i:                                  ; preds = %if.end10.i
  %arrayidx14.i = getelementptr inbounds [2 x ptr], ptr %vqs.i, i32 0, i32 1
  %108 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %109, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.out.i_crit_edge, label %land.lhs.true.i.if.end81_crit_edge

land.lhs.true.i.if.end81_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

out.i:                                            ; preds = %land.lhs.true.i.out.i_crit_edge, %if.end.i172.out.i_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.36, %if.end.i172.out.i_crit_edge ], [ @.str.39, %land.lhs.true.i.out.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.39.sink.i) #10
  %110 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vqs.i, align 8
  %tobool24.not.i = icmp eq ptr %111, null
  br i1 %tobool24.not.i, label %lor.lhs.false.i, label %out.i.if.then27.i_crit_edge

out.i.if.then27.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %out.i
  %arrayidx25.i = getelementptr inbounds [2 x ptr], ptr %vqs.i, i32 0, i32 1
  %112 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx25.i, align 4
  %tobool26.not.i = icmp eq ptr %113, null
  br i1 %tobool26.not.i, label %lor.lhs.false.i.virtio_gpio_alloc_vqs.exit.thread_crit_edge, label %lor.lhs.false.i.if.then27.i_crit_edge

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

lor.lhs.false.i.virtio_gpio_alloc_vqs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpio_alloc_vqs.exit.thread

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %out.i.if.then27.i_crit_edge
  call void @virtio_reset_device(ptr noundef %vdev) #7
  %114 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %config.i.i, align 8
  %del_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %del_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %del_vqs.i.i, align 4
  call void %117(ptr noundef %vdev) #7
  br label %virtio_gpio_alloc_vqs.exit.thread

virtio_gpio_alloc_vqs.exit.thread:                ; preds = %if.then27.i, %lor.lhs.false.i.virtio_gpio_alloc_vqs.exit.thread_crit_edge, %do.end.i
  %retval.0.i173.ph = phi i32 [ -19, %lor.lhs.false.i.virtio_gpio_alloc_vqs.exit.thread_crit_edge ], [ -19, %if.then27.i ], [ %call.i.i171, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbs.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %names.i) #7
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true.i.if.end81_crit_edge, %if.end10.i.if.end81_crit_edge
  %arrayidx22.i = getelementptr inbounds [2 x ptr], ptr %vqs.i, i32 0, i32 1
  %118 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx22.i, align 4
  %event_vq.i = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 5
  %120 = ptrtoint ptr %event_vq.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %event_vq.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbs.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %names.i) #7
  %121 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config.i.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %get_status.i, align 4
  %call.i174 = call zeroext i8 %124(ptr noundef %vdev) #7
  %125 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config.i.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %tobool.not.i175 = icmp eq ptr %128, null
  br i1 %tobool.not.i175, label %if.end81.do.body.i_crit_edge, label %if.then.i

if.end81.do.body.i_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void %128(ptr noundef %vdev) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end81.do.body.i_crit_edge
  %129 = and i8 %call.i174, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool4.not.i176 = icmp eq i8 %129, 0
  br i1 %tobool4.not.i176, label %virtio_device_ready.exit, label %do.body8.i, !prof !123

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %130 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %config.i.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i174, 4
  call void %133(ptr noundef %vdev, i8 noundef zeroext %or.i) #7
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.virtio_device, ptr %135, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i177 = icmp eq i32 %45, 0
  br i1 %tobool.not.i177, label %virtio_device_ready.exit.virtio_gpio_get_names.exit_crit_edge, label %if.end.i179

virtio_device_ready.exit.virtio_gpio_get_names.exit_crit_edge: ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpio_get_names.exit

if.end.i179:                                      ; preds = %virtio_device_ready.exit
  %add.i = add i32 %46, 1
  %call.i.i178 = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef %add.i, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i.i178, null
  br i1 %tobool2.not.i, label %if.end.i179.virtio_gpio_get_names.exit_crit_edge, label %if.end4.i

if.end.i179.virtio_gpio_get_names.exit_crit_edge: ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpio_get_names.exit

if.end4.i:                                        ; preds = %if.end.i179
  %value.i = getelementptr inbounds %struct.virtio_gpio_response_get_names, ptr %call.i.i178, i32 0, i32 1
  %call5.i = call fastcc i32 @_virtio_gpio_req(ptr noundef nonnull %call.i, i16 noundef zeroext 1, i16 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %call.i.i178, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %do.end.i180

do.end.i180:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.46, i32 noundef %call5.i) #10
  br label %virtio_gpio_get_names.exit

if.end8.i:                                        ; preds = %if.end4.i
  %136 = shl nuw nsw i32 %conv, 2
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef %136, i32 noundef 3520) #7
  %tobool10.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.virtio_gpio_get_names.exit_crit_edge, label %if.end12.i

if.end8.i.virtio_gpio_get_names.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpio_get_names.exit

if.end12.i:                                       ; preds = %if.end8.i
  %sub.i = add i32 %46, -1
  %arrayidx.i = getelementptr i8, ptr %value.i, i32 %sub.i
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %arrayidx.i, align 1
  %add.ptr18.i = getelementptr i8, ptr %value.i, i32 %46
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12.i
  %i.060.i = phi i32 [ 0, %if.end12.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %str.059.i = phi ptr [ %value.i, %if.end12.i ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr ptr, ptr %call5.i.i.i, i32 %i.060.i
  %138 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %str.059.i, ptr %arrayidx15.i, align 4
  %call16.i = call i32 @strlen(ptr noundef %str.059.i) #11
  %add17.i = add i32 %call16.i, 1
  %add.ptr.i = getelementptr i8, ptr %str.059.i, i32 %add17.i
  %cmp19.i = icmp ugt ptr %add.ptr.i, %add.ptr18.i
  br i1 %cmp19.i, label %do.end24.i, label %for.inc.i

do.end24.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.49, i32 noundef %i.060.i) #10
  br label %virtio_gpio_get_names.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.virtio_gpio_get_names.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.virtio_gpio_get_names.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtio_gpio_get_names.exit

virtio_gpio_get_names.exit:                       ; preds = %for.inc.i.virtio_gpio_get_names.exit_crit_edge, %do.end24.i, %if.end8.i.virtio_gpio_get_names.exit_crit_edge, %do.end.i180, %if.end.i179.virtio_gpio_get_names.exit_crit_edge, %virtio_device_ready.exit.virtio_gpio_get_names.exit_crit_edge
  %retval.0.i181 = phi ptr [ null, %do.end.i180 ], [ null, %do.end24.i ], [ null, %virtio_device_ready.exit.virtio_gpio_get_names.exit_crit_edge ], [ null, %if.end.i179.virtio_gpio_get_names.exit_crit_edge ], [ null, %if.end8.i.virtio_gpio_get_names.exit_crit_edge ], [ %call5.i.i.i, %for.inc.i.virtio_gpio_get_names.exit_crit_edge ]
  %names = getelementptr inbounds %struct.virtio_gpio, ptr %call.i, i32 0, i32 2, i32 22
  %139 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %retval.0.i181, ptr %names, align 4
  %call85 = call i32 @gpiochip_add_data_with_key(ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @virtio_gpio_probe.lock_key, ptr noundef nonnull @virtio_gpio_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %virtio_gpio_get_names.exit.cleanup_crit_edge, label %if.then87

virtio_gpio_get_names.exit.cleanup_crit_edge:     ; preds = %virtio_gpio_get_names.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %virtio_gpio_get_names.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @virtio_reset_device(ptr noundef %vdev) #7
  %140 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %config.i.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %del_vqs.i, align 4
  call void %143(ptr noundef %vdev) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %virtio_gpio_get_names.exit.cleanup_crit_edge, %virtio_gpio_alloc_vqs.exit.thread, %devm_kcalloc.exit168.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit168.cleanup_crit_edge ], [ %call85, %if.then87 ], [ 0, %virtio_gpio_get_names.exit.cleanup_crit_edge ], [ %retval.0.i173.ph, %virtio_gpio_alloc_vqs.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %gc = getelementptr inbounds %struct.virtio_gpio, ptr %1, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %gc) #7
  tail call void @virtio_reset_device(ptr noundef %vdev) #7
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %del_vqs.i, align 4
  tail call void %5(ptr noundef %vdev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_free(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %conv = trunc i32 %gpio to i16
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %gpio, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom.i, i32 5
  %call.i = tail call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 3, i16 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null, ptr noundef %res1.i, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_get_direction(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %direction = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %direction) #7
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %direction, align 1, !annotation !125
  %conv = trunc i32 %gpio to i16
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %gpio, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %2, i32 %idxprom.i, i32 5
  %call.i = call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 2, i16 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull %direction, ptr noundef %res1.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %direction, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %switch.selectcmp = icmp eq i8 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch.selectcmp7 = icmp eq i8 %4, 2
  %switch.select8 = select i1 %switch.selectcmp7, i32 1, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %switch.select8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %direction) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_direction_input(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %conv = trunc i32 %gpio to i16
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %gpio, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom.i, i32 5
  %call.i = tail call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 3, i16 noundef zeroext %conv, i8 noundef zeroext 2, ptr noundef null, ptr noundef %res1.i, i32 noundef 2) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_direction_output(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %conv = trunc i32 %gpio to i16
  %conv1 = trunc i32 %value to i8
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %gpio, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom.i, i32 5
  %call.i = tail call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 5, i16 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef null, ptr noundef %res1.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lines.i, align 4
  %res1.i11 = getelementptr %struct.virtio_gpio_line, ptr %3, i32 %idxprom.i, i32 5
  %call.i12 = tail call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 3, i16 noundef zeroext %conv, i8 noundef zeroext 1, ptr noundef null, ptr noundef %res1.i11, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !125
  %conv = trunc i32 %gpio to i16
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %gpio, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %2, i32 %idxprom.i, i32 5
  %call.i = call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 4, i16 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull %value, ptr noundef %res1.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  %conv2 = zext i8 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv2, %cond.false ], [ %call.i, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %conv = trunc i32 %gpio to i16
  %conv1 = trunc i32 %value to i8
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %gpio, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom.i, i32 5
  %call.i = tail call fastcc i32 @_virtio_gpio_req(ptr noundef %call, i16 noundef zeroext 5, i16 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef null, ptr noundef %res1.i, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_virtio_gpio_req(ptr noundef %vgpio, i16 noundef zeroext %type, i16 noundef zeroext %gpio, i8 noundef zeroext %txvalue, ptr noundef writeonly %rxvalue, ptr noundef %response, i32 noundef %rxlen) unnamed_addr #2 align 64 {
entry:
  %sgs = alloca [2 x ptr], align 4
  %req_sg = alloca %struct.scatterlist, align 4
  %res_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lines = getelementptr inbounds %struct.virtio_gpio, ptr %vgpio, i32 0, i32 3
  %0 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lines, align 4
  %idxprom = zext i16 %gpio to i32
  %arrayidx = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom
  %req1 = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #7
  %2 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg) #7
  %3 = call ptr @memset(ptr %req_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %res_sg) #7
  %4 = call ptr @memset(ptr %res_sg, i32 255, i32 20)
  %5 = ptrtoint ptr %vgpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vgpio, align 4
  %dev2 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #7
  %7 = tail call i16 @llvm.bswap.i16(i16 %type)
  %8 = ptrtoint ptr %req1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %req1, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %gpio)
  %gpio4 = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom, i32 3, i32 1
  %10 = ptrtoint ptr %gpio4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %gpio4, align 2
  %conv = zext i8 %txvalue to i32
  %11 = shl nuw i32 %conv, 24
  %value = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom, i32 3, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %value, align 4
  call void @sg_init_one(ptr noundef nonnull %req_sg, ptr noundef %req1, i32 noundef 8) #7
  call void @sg_init_one(ptr noundef nonnull %res_sg, ptr noundef %response, i32 noundef %rxlen) #7
  %13 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_sg, ptr %sgs, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %res_sg, ptr %2, align 4
  %rxlen7 = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom, i32 6
  %15 = ptrtoint ptr %rxlen7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rxlen7, align 4
  %completion = getelementptr %struct.virtio_gpio_line, ptr %1, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %completion, align 4
  %lock8 = getelementptr inbounds %struct.virtio_gpio, ptr %vgpio, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock8, i32 noundef 0) #7
  %request_vq = getelementptr inbounds %struct.virtio_gpio, ptr %vgpio, i32 0, i32 4
  %17 = ptrtoint ptr %request_vq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request_vq, align 4
  %call = call i32 @virtqueue_add_sgs(ptr noundef %18, ptr noundef nonnull %sgs, i32 noundef 1, i32 noundef 1, ptr noundef %arrayidx, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18) #10
  call void @mutex_unlock(ptr noundef %lock8) #7
  br label %out

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %request_vq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %request_vq, align 4
  %call11 = call zeroext i1 @virtqueue_kick(ptr noundef %20) #7
  call void @mutex_unlock(ptr noundef %lock8) #7
  call void @wait_for_completion(ptr noundef %completion) #7
  %21 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not = icmp eq i8 %22, 0
  br i1 %cmp.not, label %if.end23, label %do.end21, !prof !123

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21, i32 noundef %idxprom) #10
  br label %out

if.end23:                                         ; preds = %if.end
  %23 = ptrtoint ptr %rxlen7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxlen7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %rxlen)
  %cmp25.not = icmp eq i32 %24, %rxlen
  br i1 %cmp25.not, label %if.end38, label %do.end36, !prof !123

do.end36:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24, i32 noundef %rxlen, i32 noundef %24) #10
  br label %out

if.end38:                                         ; preds = %if.end23
  %tobool39.not = icmp eq ptr %rxvalue, null
  br i1 %tobool39.not, label %if.end38.out_crit_edge, label %if.then40

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %value41 = getelementptr inbounds %struct.virtio_gpio_response, ptr %response, i32 0, i32 1
  %25 = ptrtoint ptr %value41 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value41, align 1
  %27 = ptrtoint ptr %rxvalue to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %rxvalue, align 1
  br label %out

out:                                              ; preds = %if.then40, %if.end38.out_crit_edge, %do.end36, %do.end21, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ -22, %do.end21 ], [ -22, %do.end36 ], [ 0, %if.then40 ], [ 0, %if.end38.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %arrayidx) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %res_sg) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %eventq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %eventq_lock) #7
  %disabled = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %disabled, align 1
  %masked = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 2
  %7 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %masked, align 2
  %queue_pending = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 5
  %8 = ptrtoint ptr %queue_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %queue_pending, align 1
  tail call void @_raw_spin_unlock(ptr noundef %eventq_lock) #7
  %update_pending = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 4
  %9 = ptrtoint ptr %update_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %update_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %eventq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %eventq_lock) #7
  %disabled = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %disabled, align 1
  %masked = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 2
  %7 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %masked, align 2
  %queue_pending = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 5
  %8 = ptrtoint ptr %queue_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %queue_pending, align 1
  tail call void @_raw_spin_unlock(ptr noundef %eventq_lock) #7
  %update_pending = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 4
  %9 = ptrtoint ptr %update_pending to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %update_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %eventq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %eventq_lock) #7
  %masked = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 2
  %6 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %masked, align 2
  tail call void @_raw_spin_unlock(ptr noundef %eventq_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %eventq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %eventq_lock) #7
  %masked = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 2
  %6 = ptrtoint ptr %masked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %masked, align 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %conv = trunc i32 %8 to i16
  tail call fastcc void @virtio_gpio_irq_prepare(ptr noundef %call1, i16 noundef zeroext %conv)
  tail call void @_raw_spin_unlock(ptr noundef %eventq_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge14
    i32 3, label %entry.sw.epilog_crit_edge15
    i32 8, label %entry.sw.epilog_crit_edge16
    i32 4, label %entry.sw.epilog_crit_edge17
  ]

entry.sw.epilog_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call1, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %type) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge14, %entry.sw.epilog_crit_edge15, %entry.sw.epilog_crit_edge16, %entry.sw.epilog_crit_edge17
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 8
  %5 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.vgpio_irq_line, ptr %6, i32 %8
  %conv = trunc i32 %type to i8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 128
  %update_pending = getelementptr %struct.vgpio_irq_line, ptr %6, i32 %8, i32 4
  %10 = ptrtoint ptr %update_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_lines, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %disabled = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i8 [ %9, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %update_pending = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 4
  %10 = ptrtoint ptr %update_pending to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %update_pending, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %cond.end.if.end25_crit_edge, label %if.then

cond.end.if.end25_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %cond.end
  %12 = ptrtoint ptr %update_pending to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %update_pending, align 4
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %conv7 = trunc i32 %14 to i16
  %lines.i = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 3
  %15 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lines.i, align 4
  %idxprom.i = and i32 %14, 65535
  %res1.i = getelementptr %struct.virtio_gpio_line, ptr %16, i32 %idxprom.i, i32 5
  %call.i = tail call fastcc i32 @_virtio_gpio_req(ptr noundef %call1, i16 noundef zeroext 6, i16 noundef zeroext %conv7, i8 noundef zeroext %cond, ptr noundef null, ptr noundef %res1.i, i32 noundef 2) #7
  %eventq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 7
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eventq_lock) #7
  %queue_pending = getelementptr %struct.vgpio_irq_line, ptr %3, i32 %5, i32 5
  %17 = ptrtoint ptr %queue_pending to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %queue_pending, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not = icmp eq i8 %18, 0
  br i1 %tobool11.not, label %if.then.do.body16_crit_edge, label %if.then12

if.then.do.body16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %queue_pending to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %queue_pending, align 1
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  %conv15 = trunc i32 %21 to i16
  tail call fastcc void @virtio_gpio_irq_prepare(ptr noundef %call1, i16 noundef zeroext %conv15)
  br label %do.body16

do.body16:                                        ; preds = %if.then12, %if.then.do.body16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eventq_lock, i32 noundef %call10) #7
  br label %if.end25

if.end25:                                         ; preds = %do.body16, %cond.end.if.end25_crit_edge
  %irq_lock = getelementptr inbounds %struct.virtio_gpio, ptr %call1, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %irq_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_gpio_irq_prepare(ptr nocapture noundef readonly %vgpio, i16 noundef zeroext %gpio) unnamed_addr #2 align 64 {
entry:
  %sgs = alloca [2 x ptr], align 4
  %req_sg = alloca %struct.scatterlist, align 4
  %res_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %vgpio, i32 0, i32 8
  %0 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_lines, align 4
  %idxprom = zext i16 %gpio to i32
  %arrayidx = getelementptr %struct.vgpio_irq_line, ptr %1, i32 %idxprom
  %ireq1 = getelementptr %struct.vgpio_irq_line, ptr %1, i32 %idxprom, i32 7
  %ires2 = getelementptr %struct.vgpio_irq_line, ptr %1, i32 %idxprom, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #7
  %2 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg) #7
  %3 = call ptr @memset(ptr %req_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %res_sg) #7
  %queued = getelementptr %struct.vgpio_irq_line, ptr %1, i32 %idxprom, i32 3
  %4 = call ptr @memset(ptr %res_sg, i32 255, i32 20)
  %5 = ptrtoint ptr %queued to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %queued, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %masked = getelementptr %struct.vgpio_irq_line, ptr %1, i32 %idxprom, i32 2
  %7 = ptrtoint ptr %masked to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %masked, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %lor.rhs, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %disabled = getelementptr %struct.vgpio_irq_line, ptr %1, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disabled, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end26, label %lor.rhs.do.end_crit_edge, !prof !123

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 213, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %11 = tail call i16 @llvm.bswap.i16(i16 %gpio)
  %12 = ptrtoint ptr %ireq1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ireq1, align 2
  call void @sg_init_one(ptr noundef nonnull %req_sg, ptr noundef %ireq1, i32 noundef 2) #7
  call void @sg_init_one(ptr noundef nonnull %res_sg, ptr noundef %ires2, i32 noundef 1) #7
  %13 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_sg, ptr %sgs, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %res_sg, ptr %2, align 4
  %event_vq = getelementptr inbounds %struct.virtio_gpio, ptr %vgpio, i32 0, i32 5
  %15 = ptrtoint ptr %event_vq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event_vq, align 4
  %call = call i32 @virtqueue_add_sgs(ptr noundef %16, ptr noundef nonnull %sgs, i32 noundef 1, i32 noundef 1, ptr noundef %arrayidx, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %vgpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vgpio, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %queued to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %queued, align 1
  %20 = ptrtoint ptr %event_vq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %event_vq, align 4
  %call38 = call zeroext i1 @virtqueue_kick(ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end34, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %res_sg) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_request_vq(ptr noundef %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !125
  %call4 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #7
  %tobool.not5 = icmp eq ptr %call4, null
  br i1 %tobool.not5, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret void

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = phi ptr [ %call, %if.end.if.end_crit_edge ], [ %call4, %entry.if.end_crit_edge ]
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %rxlen = getelementptr inbounds %struct.virtio_gpio_line, ptr %call6, i32 0, i32 6
  %3 = ptrtoint ptr %rxlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rxlen, align 4
  %completion = getelementptr inbounds %struct.virtio_gpio_line, ptr %call6, i32 0, i32 1
  call void @complete(ptr noundef %completion) #7
  %call = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.then_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpio_event_vq(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %len, align 4, !annotation !125
  %event_vq = getelementptr inbounds %struct.virtio_gpio, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %event_vq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event_vq, align 4
  %call61 = call ptr @virtqueue_get_buf(ptr noundef %8, ptr noundef nonnull %len) #7
  %tobool.not62 = icmp eq ptr %call61, null
  br i1 %tobool.not62, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %irq_lines = getelementptr inbounds %struct.virtio_gpio, ptr %3, i32 0, i32 8
  %ngpio = getelementptr inbounds %struct.virtio_gpio, ptr %3, i32 0, i32 2, i32 20
  %eventq_lock.i = getelementptr inbounds %struct.virtio_gpio, ptr %3, i32 0, i32 7
  %domain = getelementptr inbounds %struct.virtio_gpio, ptr %3, i32 0, i32 2, i32 37, i32 1
  br label %if.end

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %call63 = phi ptr [ %call61, %if.end.lr.ph ], [ %call, %while.cond.backedge.if.end_crit_edge ]
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.41, i32 noundef %10, i32 noundef 1) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end46, %if.end39.while.cond.backedge_crit_edge, %ignore_irq.exit, %if.end25.i, %if.then3.i, %do.end
  %11 = ptrtoint ptr %event_vq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event_vq, align 4
  %call = call ptr @virtqueue_get_buf(ptr noundef %12, ptr noundef nonnull %len) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.end_crit_edge

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %irq_lines to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_lines, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call63 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 384
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %conv)
  %cmp5.not = icmp slt i32 %sub.ptr.div, %conv
  br i1 %cmp5.not, label %if.end4.if.end24_crit_edge, label %do.end18, !prof !123

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end18:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 425, i32 noundef 9, ptr noundef null) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %if.end4.if.end24_crit_edge
  call void @_raw_spin_lock(ptr noundef %eventq_lock.i) #7
  %queued.i = getelementptr inbounds %struct.vgpio_irq_line, ptr %call63, i32 0, i32 3
  %17 = ptrtoint ptr %queued.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %queued.i, align 1
  %masked.i = getelementptr inbounds %struct.vgpio_irq_line, ptr %call63, i32 0, i32 2
  %18 = ptrtoint ptr %masked.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %masked.i, align 2, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end24.ignore_irq.exit_crit_edge, !prof !127

if.end24.ignore_irq.exit_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_irq.exit

lor.lhs.false.i:                                  ; preds = %if.end24
  %disabled.i = getelementptr inbounds %struct.vgpio_irq_line, ptr %call63, i32 0, i32 1
  %20 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %disabled.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.ignore_irq.exit_crit_edge, !prof !127

lor.lhs.false.i.ignore_irq.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ignore_irq.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ires.i = getelementptr inbounds %struct.vgpio_irq_line, ptr %call63, i32 0, i32 9
  %22 = ptrtoint ptr %ires.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ires.i, align 128
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %23, label %if.end25.i [
    i8 0, label %if.then3.i
    i8 1, label %if.end39
  ], !prof !128

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = trunc i32 %sub.ptr.div to i16
  call fastcc void @virtio_gpio_irq_prepare(ptr noundef %3, i16 noundef zeroext %conv4.i) #7
  call void @_raw_spin_unlock(ptr noundef %eventq_lock.i) #7
  br label %while.cond.backedge

if.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 390, i32 noundef 9, ptr noundef null) #7
  call void @_raw_spin_unlock(ptr noundef %eventq_lock.i) #7
  br label %while.cond.backedge

ignore_irq.exit:                                  ; preds = %lor.lhs.false.i.ignore_irq.exit_crit_edge, %if.end24.ignore_irq.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %eventq_lock.i) #7
  br label %while.cond.backedge

if.end39:                                         ; preds = %if.end.i
  call void @_raw_spin_unlock(ptr noundef %eventq_lock.i) #7
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  %call41 = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %sub.ptr.div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.while.cond.backedge_crit_edge, label %do.end46

if.end39.while.cond.backedge_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.44, i32 noundef %call41) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_gpio_virtio__231_659_virtio_gpio_driver_init6, !1, !"__initcall__kmod_gpio_virtio__231_659_virtio_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-virtio.c", i32 659, i32 1}
!2 = !{ptr @__exitcall_virtio_gpio_driver_exit, !1, !"__exitcall_virtio_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-virtio.c", i32 661, i32 1}
!5 = !{ptr @__UNIQUE_ID_author233, !6, !"__UNIQUE_ID_author233", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-virtio.c", i32 662, i32 1}
!7 = !{ptr @__UNIQUE_ID_description234, !8, !"__UNIQUE_ID_description234", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-virtio.c", i32 663, i32 1}
!9 = !{ptr @__UNIQUE_ID_file235, !10, !"__UNIQUE_ID_file235", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-virtio.c", i32 664, i32 1}
!11 = !{ptr @__UNIQUE_ID_license236, !10, !"__UNIQUE_ID_license236", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-virtio.c", i32 655, i32 12}
!14 = !{ptr @virtio_gpio_driver, !15, !"virtio_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-virtio.c", i32 648, i32 29}
!16 = !{ptr @id_table, !17, !"id_table", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-virtio.c", i32 638, i32 38}
!18 = !{ptr @features, !19, !"features", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-virtio.c", i32 644, i32 27}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-virtio.c", i32 558, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @virtio_gpio_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @virtio_gpio_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @virtio_gpio_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-virtio.c", i32 567, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @virtio_gpio_probe.__key.7, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-virtio.c", i32 571, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @virtio_gpio_probe.__key.9, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-virtio.c", i32 608, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @virtio_gpio_probe.__key.11, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-virtio.c", i32 609, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @virtio_gpio_probe.lock_key, !41, !"lock_key", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-virtio.c", i32 621, i32 8}
!42 = !{ptr @virtio_gpio_probe.request_key, !41, !"request_key", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-virtio.c", i32 624, i32 3}
!45 = !{ptr @virtio_gpio_probe._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @virtio_gpio_probe._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/virtio_config.h", i32 451, i32 2}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-virtio.c", i32 95, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @_virtio_gpio_req._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @_virtio_gpio_req._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-virtio.c", i32 106, i32 3}
!59 = !{ptr @_virtio_gpio_req._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @_virtio_gpio_req._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-virtio.c", i32 112, i32 3}
!63 = !{ptr @_virtio_gpio_req._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @_virtio_gpio_req._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-virtio.c", i32 354, i32 12}
!67 = !{ptr @vgpio_irq_chip, !68, !"vgpio_irq_chip", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-virtio.c", i32 353, i32 24}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-virtio.c", i32 224, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @virtio_gpio_irq_prepare._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @virtio_gpio_irq_prepare._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpio/gpio-virtio.c", i32 310, i32 3}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @virtio_gpio_irq_set_type._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @virtio_gpio_irq_set_type._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpio/gpio-virtio.c", i32 460, i32 33}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpio/gpio-virtio.c", i32 460, i32 45}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-virtio.c", i32 470, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @virtio_gpio_alloc_vqs._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @virtio_gpio_alloc_vqs._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-virtio.c", i32 475, i32 3}
!90 = !{ptr @virtio_gpio_alloc_vqs._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @virtio_gpio_alloc_vqs._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpio/gpio-virtio.c", i32 481, i32 3}
!94 = !{ptr @virtio_gpio_alloc_vqs._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @virtio_gpio_alloc_vqs._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpio/gpio-virtio.c", i32 413, i32 4}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @virtio_gpio_event_vq._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @virtio_gpio_event_vq._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpio/gpio-virtio.c", i32 432, i32 4}
!103 = !{ptr @virtio_gpio_event_vq._entry.43, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @virtio_gpio_event_vq._entry_ptr.45, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpio/gpio-virtio.c", i32 516, i32 3}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @virtio_gpio_get_names._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @virtio_gpio_get_names._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpio/gpio-virtio.c", i32 532, i32 4}
!112 = !{ptr @virtio_gpio_get_names._entry.48, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @virtio_gpio_get_names._entry_ptr.50, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2154185675, i64 2154186169, i64 2154185712, i64 2154185768, i64 2154185802, i64 2154185826, i64 2154185867, i64 2154185888, i64 2154185916, i64 2154185950}
!125 = !{!"auto-init"}
!126 = !{i8 0, i8 2}
!127 = !{!"branch_weights", i32 2146410443, i32 1073205}
!128 = !{!"branch_weights", i32 2096103, i32 2097151, i32 -102759400}
