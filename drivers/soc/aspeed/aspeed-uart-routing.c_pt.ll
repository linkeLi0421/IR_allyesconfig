; ModuleID = '/llk/IR_all_yes/drivers/soc/aspeed/aspeed-uart-routing.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-uart-routing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.aspeed_uart_routing = type { ptr, ptr }
%struct.aspeed_uart_routing_selector = type { %struct.device_attribute, i8, i8, i8, [0 x ptr] }

@__initcall__kmod_aspeed_uart_routing__170_598_aspeed_uart_routing_driver_init6 = internal global ptr @aspeed_uart_routing_driver_init, section ".initcall6.init", align 4
@aspeed_uart_routing_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_uart_routing_probe, ptr @aspeed_uart_routing_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_uart_routing_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_uart_routing_driver_exit = internal global ptr @aspeed_uart_routing_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [56 x i8] c"aspeed_uart_routing.author=Oskar Senft <osk@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [71 x i8] c"aspeed_uart_routing.author=Chia-Wei Wang <chiawei_wang@aspeedtech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [64 x i8] c"aspeed_uart_routing.file=drivers/soc/aspeed/aspeed-uart-routing\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [35 x i8] c"aspeed_uart_routing.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [72 x i8] c"aspeed_uart_routing.description=Driver to configure Aspeed UART routing\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspeed-uart-routing\00", [44 x i8] zeroinitializer }, align 32
@aspeed_uart_routing_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-uart-routing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_uart_routing_attr_group }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-uart-routing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_uart_routing_attr_group }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-uart-routing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_uart_routing_attr_group }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@aspeed_uart_routing_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cannot get regmap\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed_uart_routing_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/soc/aspeed/aspeed-uart-routing.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_uart_routing_probe._entry_ptr = internal global ptr @aspeed_uart_routing_probe._entry, section ".printk_index", align 4
@aspeed_uart_routing_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"module loaded\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aspeed_uart_routing_probe._entry_ptr.9 = internal global ptr @aspeed_uart_routing_probe._entry.6, section ".printk_index", align 4
@ast2500_uart_routing_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ast2500_uart_routing_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ast2600_uart_routing_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ast2600_uart_routing_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ast2500_uart_routing_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @ast2500_io6_sel, ptr @ast2500_uart5_sel, ptr @ast2500_uart4_sel, ptr @ast2500_uart3_sel, ptr @ast2500_uart2_sel, ptr @ast2500_uart1_sel, ptr @ast2500_io5_sel, ptr @ast2500_io4_sel, ptr @ast2500_io3_sel, ptr @ast2500_io2_sel, ptr @ast2500_io1_sel, ptr null], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io6\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart5\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io1\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io2\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io3\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io4\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"io5\00", [28 x i8] zeroinitializer }, align 32
@ast2500_io6_sel = internal global { { %struct.device_attribute, i8, i8, i8, [11 x ptr] }, [52 x i8] } { { %struct.device_attribute, i8, i8, i8, [11 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -104, i8 15, i8 8, [11 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null] }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[unknown(%d)]\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@aspeed_uart_routing_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 529, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid value \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed_uart_routing_store\00", [38 x i8] zeroinitializer }, align 32
@aspeed_uart_routing_store._entry_ptr = internal global ptr @aspeed_uart_routing_store._entry, section ".printk_index", align 4
@ast2500_uart5_sel = internal global { { %struct.device_attribute, i8, i8, i8, [11 x ptr] }, [52 x i8] } { { %struct.device_attribute, i8, i8, i8, [11 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 15, i8 28, [11 x ptr] [ptr @.str.20, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.10, ptr null] }, [52 x i8] zeroinitializer }, align 32
@ast2500_uart4_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 25, [9 x ptr] [ptr @.str.19, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_uart3_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 22, [9 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.16, ptr @.str.17, ptr @.str.14, ptr @.str.11, ptr @.str.12, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_uart2_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 19, [9 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.16, ptr @.str.13, ptr @.str.14, ptr @.str.11, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_uart1_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 16, [9 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_io5_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 12, [9 x ptr] [ptr @.str.15, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_io4_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 9, [9 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_io3_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 6, [9 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_io2_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 3, [9 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.11, ptr @.str.18, ptr @.str.19, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2500_io1_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 0, [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.10, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_uart_routing_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @ast2600_uart10_sel, ptr @ast2600_io10_sel, ptr @ast2600_uart4_sel, ptr @ast2600_uart3_sel, ptr @ast2600_uart2_sel, ptr @ast2600_uart1_sel, ptr @ast2600_io4_sel, ptr @ast2600_io3_sel, ptr @ast2600_io2_sel, ptr @ast2600_io1_sel, ptr null], [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart10\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"io10\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@ast2600_uart10_sel = internal global { { %struct.device_attribute, i8, i8, i8, [11 x ptr] }, [52 x i8] } { { %struct.device_attribute, i8, i8, i8, [11 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -104, i8 15, i8 12, [11 x ptr] [ptr @.str.39, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.40, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr null] }, [52 x i8] zeroinitializer }, align 32
@ast2600_io10_sel = internal global { { %struct.device_attribute, i8, i8, i8, [12 x ptr] }, [48 x i8] } { { %struct.device_attribute, i8, i8, i8, [12 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -104, i8 15, i8 8, [12 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.40, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.40, ptr @.str.38, ptr null] }, [48 x i8] zeroinitializer }, align 32
@ast2600_uart4_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 25, [9 x ptr] [ptr @.str.19, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_uart3_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 22, [9 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.16, ptr @.str.17, ptr @.str.14, ptr @.str.11, ptr @.str.12, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_uart2_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 19, [9 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.16, ptr @.str.13, ptr @.str.14, ptr @.str.11, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_uart1_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 16, [9 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_io4_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 9, [9 x ptr] [ptr @.str.14, ptr @.str.38, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_io3_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 6, [9 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.38, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_io2_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 3, [9 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.38, ptr @.str.11, ptr @.str.18, ptr @.str.19, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@ast2600_io1_sel = internal global { { %struct.device_attribute, i8, i8, i8, [9 x ptr] }, [60 x i8] } { { %struct.device_attribute, i8, i8, i8, [9 x ptr] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aspeed_uart_routing_show, ptr @aspeed_uart_routing_store }, i8 -100, i8 7, i8 0, [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.38, ptr @.str.18, ptr @.str.19, ptr @.str.39, ptr null] }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"aspeed_uart_routing_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 589, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 591, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"aspeed_uart_routing_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 579, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 552, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 564, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [32 x i8] c"ast2500_uart_routing_attr_group\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 284, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant [32 x i8] c"ast2600_uart_routing_attr_group\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 488, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"ast2500_uart_routing_attrs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 269, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 68, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 73, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 74, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 75, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 76, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 77, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 78, i32 7 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 79, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 80, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 81, i32 7 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 82, i32 7 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"ast2500_io6_sel\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 67, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 506, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 508, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 512, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 514, i32 33 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 529, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"ast2500_uart5_sel\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 87, i32 44 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"ast2500_uart4_sel\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 107, i32 44 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"ast2500_uart3_sel\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 125, i32 44 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"ast2500_uart2_sel\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 143, i32 44 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"ast2500_uart1_sel\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 161, i32 44 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"ast2500_io5_sel\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 179, i32 44 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"ast2500_io4_sel\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 197, i32 44 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"ast2500_io3_sel\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 215, i32 44 }
@___asan_gen_.177 = private unnamed_addr constant [16 x i8] c"ast2500_io2_sel\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 233, i32 44 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"ast2500_io1_sel\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 251, i32 44 }
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"ast2600_uart_routing_attrs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 474, i32 26 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 290, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 295, i32 7 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 300, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"ast2600_uart10_sel\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 289, i32 44 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"ast2600_io10_sel\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 309, i32 44 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"ast2600_uart4_sel\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 330, i32 44 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"ast2600_uart3_sel\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 348, i32 44 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"ast2600_uart2_sel\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 366, i32 44 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"ast2600_uart1_sel\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 384, i32 44 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"ast2600_io4_sel\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 402, i32 44 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"ast2600_io3_sel\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 420, i32 44 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"ast2600_io2_sel\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 438, i32 44 }
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"ast2600_io1_sel\00", align 1
@___asan_gen_.223 = private constant [44 x i8] c"../drivers/soc/aspeed/aspeed-uart-routing.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 456, i32 44 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_aspeed_uart_routing_driver_exit, ptr @__initcall__kmod_aspeed_uart_routing__170_598_aspeed_uart_routing_driver_init6, ptr @aspeed_uart_routing_driver_exit, ptr @aspeed_uart_routing_probe._entry, ptr @aspeed_uart_routing_probe._entry.6, ptr @aspeed_uart_routing_probe._entry_ptr, ptr @aspeed_uart_routing_probe._entry_ptr.9, ptr @aspeed_uart_routing_store._entry, ptr @aspeed_uart_routing_store._entry_ptr, ptr @aspeed_uart_routing_driver, ptr @.str, ptr @aspeed_uart_routing_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @ast2500_uart_routing_attr_group, ptr @ast2600_uart_routing_attr_group, ptr @ast2500_uart_routing_attrs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ast2500_io6_sel, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ast2500_uart5_sel, ptr @ast2500_uart4_sel, ptr @ast2500_uart3_sel, ptr @ast2500_uart2_sel, ptr @ast2500_uart1_sel, ptr @ast2500_io5_sel, ptr @ast2500_io4_sel, ptr @ast2500_io3_sel, ptr @ast2500_io2_sel, ptr @ast2500_io1_sel, ptr @ast2600_uart_routing_attrs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @ast2600_uart10_sel, ptr @ast2600_io10_sel, ptr @ast2600_uart4_sel, ptr @ast2600_uart3_sel, ptr @ast2600_uart2_sel, ptr @ast2600_uart1_sel, ptr @ast2600_io4_sel, ptr @ast2600_io3_sel, ptr @ast2600_io2_sel, ptr @ast2600_io1_sel], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_uart_routing_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_uart_routing_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_uart_routing_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_uart_routing_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart_routing_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart_routing_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart_routing_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_io6_sel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_uart_routing_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart5_sel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart4_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart3_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart2_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_uart1_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_io5_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_io4_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_io3_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_io2_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_io1_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart_routing_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart10_sel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_io10_sel to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart4_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart3_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart2_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_uart1_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_io4_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_io3_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_io2_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_io1_sel to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_uart_routing_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_uart_routing_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_uart_routing_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %attr_grp = getelementptr inbounds %struct.aspeed_uart_routing, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %attr_grp, align 4
  %call12 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %attr_grp = getelementptr inbounds %struct.aspeed_uart_routing, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %attr_grp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr_grp, align 4
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !131
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %reg = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 4
  %conv = zext i8 %6 to i32
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shift = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift, align 2
  %conv2 = zext i8 %10 to i32
  %shr = ashr i32 %8, %conv2
  %mask = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mask, align 1
  %conv3 = zext i8 %12 to i32
  %and = and i32 %shr, %conv3
  store i32 %and, ptr %val, align 4
  %arrayidx44 = getelementptr %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 4, i32 0
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx44, align 4
  %cmp.not45 = icmp eq ptr %14, null
  br i1 %cmp.not45, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %15 = phi ptr [ %19, %for.body.for.body_crit_edge ], [ %14, %entry.for.body_crit_edge ]
  %len.047 = phi i32 [ %len.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pos.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.046, i32 %17)
  %cmp5 = icmp eq i32 %pos.046, %17
  %.str.22..str.23 = select i1 %cmp5, ptr @.str.22, ptr @.str.23
  %call9 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.047, ptr noundef nonnull %.str.22..str.23, ptr noundef nonnull %15) #5
  %len.1 = add i32 %call9, %len.047
  %inc = add i32 %pos.046, 1
  %arrayidx = getelementptr %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 4, i32 %inc
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.1, %for.body.for.end_crit_edge ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %pos.0.lcssa)
  %cmp14.not = icmp slt i32 %21, %pos.0.lcssa
  br i1 %cmp14.not, label %for.end.if.end19_crit_edge, label %if.then16

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.0.lcssa, ptr noundef nonnull @.str.24, i32 noundef %21) #5
  %add18 = add i32 %call17, %len.0.lcssa
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end.if.end19_crit_edge
  %len.2 = phi i32 [ %add18, %if.then16 ], [ %len.0.lcssa, %for.end.if.end19_crit_edge ]
  %call20 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.2, ptr noundef nonnull @.str.25) #5
  %add21 = add i32 %call20, %len.2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %add21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_uart_routing_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %options = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 4
  %call1 = tail call i32 @match_string(ptr noundef %options, i32 noundef -1, ptr noundef %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %buf) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reg = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg, align 4
  %conv = zext i8 %5 to i32
  %mask = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv2 = zext i8 %7 to i32
  %shift = getelementptr inbounds %struct.aspeed_uart_routing_selector, ptr %attr, i32 0, i32 3
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 2
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv2, %conv3
  %and = and i32 %call1, %conv2
  %shl8 = shl i32 %and, %conv3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv, i32 noundef %shl, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_aspeed_uart_routing__170_598_aspeed_uart_routing_driver_init6, !1, !"__initcall__kmod_aspeed_uart_routing__170_598_aspeed_uart_routing_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 598, i32 1}
!2 = !{ptr @__exitcall_aspeed_uart_routing_driver_exit, !1, !"__exitcall_aspeed_uart_routing_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 600, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 601, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 602, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description175, !11, !"__UNIQUE_ID_description175", i1 false, i1 false}
!11 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 603, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 591, i32 11}
!14 = !{ptr @aspeed_uart_routing_driver, !15, !"aspeed_uart_routing_driver", i1 false, i1 false}
!15 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 589, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 552, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @aspeed_uart_routing_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @aspeed_uart_routing_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 564, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aspeed_uart_routing_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @aspeed_uart_routing_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @aspeed_uart_routing_table, !30, !"aspeed_uart_routing_table", i1 false, i1 false}
!30 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 579, i32 34}
!31 = !{ptr @ast2500_uart_routing_attr_group, !32, !"ast2500_uart_routing_attr_group", i1 false, i1 false}
!32 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 284, i32 37}
!33 = !{ptr @ast2500_uart_routing_attrs, !34, !"ast2500_uart_routing_attrs", i1 false, i1 false}
!34 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 269, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 68, i32 14}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 73, i32 7}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 74, i32 7}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 75, i32 7}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 76, i32 7}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 77, i32 7}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 78, i32 7}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 79, i32 7}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 80, i32 7}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 81, i32 7}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 82, i32 7}
!57 = !{ptr @ast2500_io6_sel, !58, !"ast2500_io6_sel", i1 false, i1 false}
!58 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 67, i32 44}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 506, i32 35}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 508, i32 35}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 512, i32 34}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 514, i32 33}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 529, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @aspeed_uart_routing_store._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @aspeed_uart_routing_store._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ast2500_uart5_sel, !73, !"ast2500_uart5_sel", i1 false, i1 false}
!73 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 87, i32 44}
!74 = !{ptr @ast2500_uart4_sel, !75, !"ast2500_uart4_sel", i1 false, i1 false}
!75 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 107, i32 44}
!76 = !{ptr @ast2500_uart3_sel, !77, !"ast2500_uart3_sel", i1 false, i1 false}
!77 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 125, i32 44}
!78 = !{ptr @ast2500_uart2_sel, !79, !"ast2500_uart2_sel", i1 false, i1 false}
!79 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 143, i32 44}
!80 = !{ptr @ast2500_uart1_sel, !81, !"ast2500_uart1_sel", i1 false, i1 false}
!81 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 161, i32 44}
!82 = !{ptr @ast2500_io5_sel, !83, !"ast2500_io5_sel", i1 false, i1 false}
!83 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 179, i32 44}
!84 = !{ptr @ast2500_io4_sel, !85, !"ast2500_io4_sel", i1 false, i1 false}
!85 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 197, i32 44}
!86 = !{ptr @ast2500_io3_sel, !87, !"ast2500_io3_sel", i1 false, i1 false}
!87 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 215, i32 44}
!88 = !{ptr @ast2500_io2_sel, !89, !"ast2500_io2_sel", i1 false, i1 false}
!89 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 233, i32 44}
!90 = !{ptr @ast2500_io1_sel, !91, !"ast2500_io1_sel", i1 false, i1 false}
!91 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 251, i32 44}
!92 = !{ptr @ast2600_uart_routing_attr_group, !93, !"ast2600_uart_routing_attr_group", i1 false, i1 false}
!93 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 488, i32 37}
!94 = !{ptr @ast2600_uart_routing_attrs, !95, !"ast2600_uart_routing_attrs", i1 false, i1 false}
!95 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 474, i32 26}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 290, i32 14}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 295, i32 7}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 300, i32 4}
!102 = !{ptr @ast2600_uart10_sel, !103, !"ast2600_uart10_sel", i1 false, i1 false}
!103 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 289, i32 44}
!104 = !{ptr @ast2600_io10_sel, !105, !"ast2600_io10_sel", i1 false, i1 false}
!105 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 309, i32 44}
!106 = !{ptr @ast2600_uart4_sel, !107, !"ast2600_uart4_sel", i1 false, i1 false}
!107 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 330, i32 44}
!108 = !{ptr @ast2600_uart3_sel, !109, !"ast2600_uart3_sel", i1 false, i1 false}
!109 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 348, i32 44}
!110 = !{ptr @ast2600_uart2_sel, !111, !"ast2600_uart2_sel", i1 false, i1 false}
!111 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 366, i32 44}
!112 = !{ptr @ast2600_uart1_sel, !113, !"ast2600_uart1_sel", i1 false, i1 false}
!113 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 384, i32 44}
!114 = !{ptr @ast2600_io4_sel, !115, !"ast2600_io4_sel", i1 false, i1 false}
!115 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 402, i32 44}
!116 = !{ptr @ast2600_io3_sel, !117, !"ast2600_io3_sel", i1 false, i1 false}
!117 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 420, i32 44}
!118 = !{ptr @ast2600_io2_sel, !119, !"ast2600_io2_sel", i1 false, i1 false}
!119 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 438, i32 44}
!120 = !{ptr @ast2600_io1_sel, !121, !"ast2600_io1_sel", i1 false, i1 false}
!121 = !{!"../drivers/soc/aspeed/aspeed-uart-routing.c", i32 456, i32 44}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
