; ModuleID = '/llk/IR_all_yes/drivers/media/cec/platform/stm32/stm32-cec.c_pt.bc'
source_filename = "../drivers/media/cec/platform/stm32/stm32-cec.c"
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
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_cec = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.cec_msg, %struct.cec_msg, i32 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__initcall__kmod_stm32_cec__232_377_stm32_cec_driver_init6 = internal global ptr @stm32_cec_driver_init, section ".initcall6.init", align 4
@stm32_cec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_cec_probe, ptr @stm32_cec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_cec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_cec_driver_exit = internal global ptr @stm32_cec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [62 x i8] c"stm32_cec.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [56 x i8] c"stm32_cec.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [76 x i8] c"stm32_cec.description=STMicroelectronics STM32 Consumer Electronics Control\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [58 x i8] c"stm32_cec.file=drivers/media/cec/platform/stm32/stm32-cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"stm32_cec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-cec\00", [22 x i8] zeroinitializer }, align 32
@stm32_cec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_cec_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@stm32_cec_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"stm32_cec:273:(&stm32_cec_regmap_cfg)->lock\00", [52 x i8] zeroinitializer }, align 32
@stm32_cec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot get cec clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_cec_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/cec/platform/stm32/stm32-cec.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_cec_probe._entry_ptr = internal global ptr @stm32_cec_probe._entry, section ".printk_index", align 4
@stm32_cec_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to prepare cec clock\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_cec_probe._entry_ptr.10 = internal global ptr @stm32_cec_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi-cec\00", [23 x i8] zeroinitializer }, align 32
@stm32_cec_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 314, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't prepare hdmi-cec clock\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_cec_probe._entry_ptr.14 = internal global ptr @stm32_cec_probe._entry.12, section ".printk_index", align 4
@stm32_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @stm32_cec_adap_enable, ptr null, ptr null, ptr @stm32_cec_adap_log_addr, ptr @stm32_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stm32_cec_adap_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 181, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fail to enable cec clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_cec_adap_enable\00", [42 x i8] zeroinitializer }, align 32
@stm32_cec_adap_enable._entry_ptr = internal global ptr @stm32_cec_adap_enable._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"stm32_cec_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 368, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 372, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"stm32_cec_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 362, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"stm32_cec_regmap_cfg\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 247, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 272, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 293, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 300, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 304, i32 47 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 314, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"stm32_cec_adap_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 241, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [48 x i8] c"../drivers/media/cec/platform/stm32/stm32-cec.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 181, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_stm32_cec_driver_exit, ptr @__initcall__kmod_stm32_cec__232_377_stm32_cec_driver_init6, ptr @stm32_cec_adap_enable._entry, ptr @stm32_cec_adap_enable._entry_ptr, ptr @stm32_cec_driver_exit, ptr @stm32_cec_probe._entry, ptr @stm32_cec_probe._entry.12, ptr @stm32_cec_probe._entry.8, ptr @stm32_cec_probe._entry_ptr, ptr @stm32_cec_probe._entry_ptr.10, ptr @stm32_cec_probe._entry_ptr.14, ptr @stm32_cec_driver, ptr @.str, ptr @stm32_cec_of_match, ptr @stm32_cec_probe._key, ptr @.str.1, ptr @stm32_cec_regmap_cfg, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @stm32_cec_adap_ops, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_cec_adap_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_cec_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_cec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_cec_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.stm32_cec, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %call3, ptr noundef nonnull @stm32_cec_regmap_cfg, ptr noundef nonnull @stm32_cec_probe._key, ptr noundef nonnull @.str.2) #5
  %regmap = getelementptr inbounds %struct.stm32_cec, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i140 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.stm32_cec, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call16, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call23 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call16, ptr noundef nonnull @stm32_cec_irq_handler, ptr noundef nonnull @stm32_cec_irq_thread, i32 noundef 0, ptr noundef %6, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %clk_cec = getelementptr inbounds %struct.stm32_cec, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk_cec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %clk_cec, align 8
  %cmp.i141 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end26
  %cmp34.not = icmp eq ptr %call28, inttoptr (i32 -517 to ptr)
  br i1 %cmp34.not, label %if.then31.if.end37_crit_edge, label %do.end

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.then31.if.end37_crit_edge
  %8 = ptrtoint ptr %clk_cec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_cec, align 8
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end26
  %call42 = tail call i32 @clk_prepare(ptr noundef %call28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  %clk_hdmi_cec = getelementptr inbounds %struct.stm32_cec, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %clk_hdmi_cec to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call51, ptr %clk_hdmi_cec, align 4
  %cmp.i142 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %land.lhs.true, label %if.then61

land.lhs.true:                                    ; preds = %if.end49
  %cmp56 = icmp eq ptr %call51, inttoptr (i32 -517 to ptr)
  br i1 %cmp56, label %land.lhs.true.err_unprepare_cec_clk_crit_edge, label %land.lhs.true.if.end71_crit_edge

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

land.lhs.true.err_unprepare_cec_clk_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unprepare_cec_clk

if.then61:                                        ; preds = %if.end49
  %call63 = tail call i32 @clk_prepare(ptr noundef %call51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then61.if.end71_crit_edge, label %do.end68

if.then61.if.end71_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %err_unprepare_cec_clk

if.end71:                                         ; preds = %if.then61.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge
  %call72 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @stm32_cec_adap_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str, i32 noundef 255, i8 noundef zeroext 4) #5
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call72, ptr %call.i, align 8
  %cmp.i.i.not = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %call72 to i32
  br i1 %cmp.i.i.not, label %if.end71.err_unprepare_hdmi_cec_clk_crit_edge, label %if.end77

if.end71.err_unprepare_hdmi_cec_clk_crit_edge:    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unprepare_hdmi_cec_clk

if.end77:                                         ; preds = %if.end71
  %call80 = tail call i32 @cec_register_adapter(ptr noundef %call72, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %err_delete_adapter

if.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @cec_hw_init(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_delete_adapter:                               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  tail call void @cec_delete_adapter(ptr noundef %16) #5
  br label %err_unprepare_hdmi_cec_clk

err_unprepare_hdmi_cec_clk:                       ; preds = %err_delete_adapter, %if.end71.err_unprepare_hdmi_cec_clk_crit_edge
  %ret.0 = phi i32 [ %13, %if.end71.err_unprepare_hdmi_cec_clk_crit_edge ], [ %call80, %err_delete_adapter ]
  %17 = ptrtoint ptr %clk_hdmi_cec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_hdmi_cec, align 4
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %err_unprepare_cec_clk

err_unprepare_cec_clk:                            ; preds = %err_unprepare_hdmi_cec_clk, %do.end68, %land.lhs.true.err_unprepare_cec_clk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_unprepare_hdmi_cec_clk ], [ %call63, %do.end68 ], [ -517, %land.lhs.true.err_unprepare_cec_clk_crit_edge ]
  %19 = ptrtoint ptr %clk_cec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_cec, align 8
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unprepare_cec_clk, %if.end83, %do.end47, %if.end37, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then12 ], [ %10, %if.end37 ], [ %call42, %do.end47 ], [ %ret.1, %err_unprepare_cec_clk ], [ 0, %if.end83 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_cec = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_cec, align 8
  tail call void @clk_unprepare(ptr noundef %3) #5
  %clk_hdmi_cec = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_hdmi_cec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_hdmi_cec, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @cec_unregister_adapter(ptr noundef %7) #5
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_irq_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %irq_status = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 7
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef %irq_status) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 16, i32 noundef 8135, i32 noundef 8135, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_irq_thread(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_status = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 7
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_status, align 4
  %and = and i32 %1, 8064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %and.i = and i32 %1, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 8
  %call.i.i = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i64 noundef %call.i.i) #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %and1.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 8
  %call.i49.i = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i49.i) #5
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 8
  %call.i50.i = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %7, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i50.i) #5
  br label %if.end

if.end10.i:                                       ; preds = %if.end5.i
  %and11.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end27.i_crit_edge, label %if.then13.i

if.end10.i.if.end27.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then13.i:                                      ; preds = %if.end10.i
  %tx_cnt.i = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 10
  %8 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_cnt.i, align 8
  %len.i = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp ult i32 %9, %11
  br i1 %cmp.i, label %if.then14.i, label %if.then13.i.if.end17.i_crit_edge

if.then13.i.if.end17.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 5
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %inc.i = add nuw i32 %9, 1
  %14 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i, ptr %tx_cnt.i, align 8
  %arrayidx.i = getelementptr %struct.stm32_cec, ptr %arg, i32 0, i32 9, i32 6, i32 %9
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %16 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 8, i32 noundef %conv.i) #5
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then13.i.if.end17.i_crit_edge
  %17 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_cnt.i, align 8
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp21.i = icmp eq i32 %18, %20
  br i1 %cmp21.i, label %if.then23.i, label %if.end17.i.if.end27.i_crit_edge

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap24.i = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 5
  %21 = ptrtoint ptr %regmap24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap24.i, align 4
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end27.i_crit_edge, %if.end10.i.if.end27.i_crit_edge
  %23 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_status, align 4
  %and29.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end_crit_edge, label %if.then31.i

if.end27.i.if.end_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arg, align 8
  %call.i52.i = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %26, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i52.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then31.i, %if.end27.i.if.end_crit_edge, %if.then8.i, %if.then3.i, %if.then.i, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_status, align 4
  %and3 = and i32 %28, 71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %and.i16 = and i32 %28, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %if.end.i18, label %if.then5.if.end17.sink.split.i_crit_edge

if.then5.if.end17.sink.split.i_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.sink.split.i

if.end.i18:                                       ; preds = %if.then5
  %and2.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i18.if.end9.i_crit_edge, label %if.then4.i

if.end.i18.if.end9.i_crit_edge:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i, align 4, !annotation !58
  %regmap.i19 = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 5
  %30 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i19, align 4
  %call.i20 = call i32 @regmap_read(ptr noundef %31, i32 noundef 12, ptr noundef nonnull %val.i) #5
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  %conv.i21 = trunc i32 %33 to i8
  %len8.i = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len8.i, align 8
  %inc.i22 = add i32 %35, 1
  store i32 %inc.i22, ptr %len8.i, align 8
  %arrayidx.i23 = getelementptr %struct.stm32_cec, ptr %arg, i32 0, i32 8, i32 6, i32 %35
  %36 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i21, ptr %arrayidx.i23, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i18.if.end9.i_crit_edge
  %37 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_status, align 4
  %and11.i24 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i24)
  %tobool12.not.i25 = icmp eq i32 %and11.i24, 0
  br i1 %tobool12.not.i25, label %if.end9.i.if.end7_crit_edge, label %if.then13.i27

if.end9.i.if.end7_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then13.i27:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arg, align 8
  %rx_msg14.i = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 8
  %call.i.i26 = call i64 @ktime_get() #5
  call void @cec_received_msg_ts(ptr noundef %40, ptr noundef %rx_msg14.i, i64 noundef %call.i.i26) #5
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then13.i27, %if.then5.if.end17.sink.split.i_crit_edge
  %len.i28 = getelementptr inbounds %struct.stm32_cec, ptr %arg, i32 0, i32 8, i32 2
  %41 = ptrtoint ptr %len.i28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %len.i28, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end17.sink.split.i, %if.end9.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %42 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %irq_status, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cec_hw_init(ptr nocapture noundef readonly %cec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.stm32_cec, ptr %cec, i32 0, i32 5
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 20, i32 noundef 8135, i32 noundef 8135, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef -2147483144, i32 noundef -2147483144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %clk_cec = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_cec, align 8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %clk_hdmi_cec = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clk_hdmi_cec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_hdmi_cec, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %7) #5
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %3) #5
  %clk_hdmi_cec6 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk_hdmi_cec6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_hdmi_cec6, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %.sink18 = phi i32 [ 0, %if.else ], [ 1, %if.end ]
  %ret.0 = phi i32 [ 0, %if.else ], [ %call, %if.end ]
  %regmap7 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap7, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef %.sink18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %logical_addr) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = zext i8 %logical_addr to i32
  %shl1 = shl i32 65536, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !58
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 2100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 202) #5
  %regmap = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1065 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1065)
  %tobool.not66 = icmp eq i32 %call1065, 0
  br i1 %tobool.not66, label %entry.lor.lhs.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %lor.lhs.false.for.end_crit_edge, label %land.lhs.true

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call15 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then24

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val) #5
  br label %for.end

if.then24:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then24.lor.lhs.false_crit_edge, label %if.then24.for.end_crit_edge

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then24.lor.lhs.false_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %if.then24.for.end_crit_edge, %if.then19, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %logical_addr)
  %cmp35 = icmp eq i8 %logical_addr, -1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i58 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef 2147418112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end42

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i59 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef %shl1, i32 noundef %shl1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then37
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tx_msg = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 9
  %2 = call ptr @memcpy(ptr %tx_msg, ptr %msg, i32 56)
  %tx_cnt = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tx_cnt, align 8
  %len = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap2 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap2, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap2, align 4
  %msg6 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 9, i32 6
  %12 = ptrtoint ptr %msg6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg6, align 8
  %conv = zext i8 %13 to i32
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef %conv) #5
  %14 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_cnt, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %tx_cnt, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_stm32_cec__232_377_stm32_cec_driver_init6, !1, !"__initcall__kmod_stm32_cec__232_377_stm32_cec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 377, i32 1}
!2 = !{ptr @__exitcall_stm32_cec_driver_exit, !1, !"__exitcall_stm32_cec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 379, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 380, i32 1}
!7 = !{ptr @__UNIQUE_ID_description235, !8, !"__UNIQUE_ID_description235", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 381, i32 1}
!9 = !{ptr @__UNIQUE_ID_file236, !10, !"__UNIQUE_ID_file236", i1 false, i1 false}
!10 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 382, i32 1}
!11 = !{ptr @__UNIQUE_ID_license237, !10, !"__UNIQUE_ID_license237", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 372, i32 12}
!14 = !{ptr @stm32_cec_driver, !15, !"stm32_cec_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 368, i32 31}
!16 = !{ptr @stm32_cec_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 272, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 293, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @stm32_cec_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_cec_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 300, i32 3}
!30 = !{ptr @stm32_cec_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stm32_cec_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 304, i32 47}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 314, i32 4}
!36 = !{ptr @stm32_cec_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_cec_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @stm32_cec_regmap_cfg, !39, !"stm32_cec_regmap_cfg", i1 false, i1 false}
!39 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 247, i32 35}
!40 = !{ptr @stm32_cec_adap_ops, !41, !"stm32_cec_adap_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 241, i32 34}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 181, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @stm32_cec_adap_enable._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm32_cec_adap_enable._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @stm32_cec_of_match, !48, !"stm32_cec_of_match", i1 false, i1 false}
!48 = !{!"../drivers/media/cec/platform/stm32/stm32-cec.c", i32 362, i32 34}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
