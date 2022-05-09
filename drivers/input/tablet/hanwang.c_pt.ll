; ModuleID = '/llk/IR_all_yes/drivers/input/tablet/hanwang.c_pt.bc'
source_filename = "../drivers/input/tablet/hanwang.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.hanwang_features = type { i16, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hanwang = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, [64 x i8], [32 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [49 x i8] c"hanwang.author=Xing Wei <weixing@hanwang.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [46 x i8] c"hanwang.description=USB Hanwang tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [42 x i8] c"hanwang.file=drivers/input/tablet/hanwang\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [20 x i8] c"hanwang.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_hanwang__239_446_hanwang_driver_init6 = internal global ptr @hanwang_driver_init, section ".initcall6.init", align 4
@hanwang_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @hanwang_probe, ptr @hanwang_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hanwang_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_hanwang_driver_exit = internal global ptr @hanwang_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hanwang\00", [24 x i8] zeroinitializer }, align 32
@hanwang_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 2903, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 1, i8 2, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@features_array = internal constant { [5 x %struct.hanwang_features], [44 x i8] } { [5 x %struct.hanwang_features] [%struct.hanwang_features { i16 -31448, ptr @.str.2, i32 0, i32 10, i32 22359, i32 13970, i32 63, i32 127, i32 2048 }, %struct.hanwang_features { i16 -31447, ptr @.str.3, i32 0, i32 10, i32 15748, i32 9842, i32 63, i32 127, i32 2048 }, %struct.hanwang_features { i16 -31446, ptr @.str.4, i32 0, i32 10, i32 32512, i32 20320, i32 63, i32 127, i32 2048 }, %struct.hanwang_features { i16 -31743, ptr @.str.5, i32 1, i32 10, i32 26510, i32 16720, i32 63, i32 127, i32 1024 }, %struct.hanwang_features { i16 -31485, ptr @.str.6, i32 2, i32 10, i32 10206, i32 7422, i32 63, i32 127, i32 1024 }], [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hanwang Art Master III 0906\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hanwang Art Master III 0604\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hanwang Art Master III 1308\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hanwang Art Master HD 5012\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hanwang Art Master II\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@hanwang_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 268, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s - urb shutting down with status: %d\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hanwang_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/tablet/hanwang.c\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hanwang_irq._entry_ptr = internal global ptr @hanwang_irq._entry, section ".printk_index", align 4
@hanwang_irq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 272, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - nonzero urb status received: %d\00", [59 x i8] zeroinitializer }, align 32
@hanwang_irq._entry_ptr.15 = internal global ptr @hanwang_irq._entry.13, section ".printk_index", align 4
@hanwang_irq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 279, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - usb_submit_urb failed with result %d\00", [54 x i8] zeroinitializer }, align 32
@hanwang_irq._entry_ptr.18 = internal global ptr @hanwang_irq._entry.16, section ".printk_index", align 4
@hanwang_parse_packet.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.10, ptr @.str.20, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hanwang_parse_packet\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown tablet tool %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@hanwang_parse_packet.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.10, ptr @.str.21, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error packet  %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@hanwang_parse_packet.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.10, ptr @.str.21, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 388, i64 901, i64 10373, i64 10629, i64 10885]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 12]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 128, i64 194]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"hanwang_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 439, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 446, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"hanwang_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 431, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 357, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"features_array\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 75, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 78, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 80, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 82, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 84, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 912, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 267, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 271, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 278, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 156, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [34 x i8] c"../drivers/input/tablet/hanwang.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 236, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_hanwang_driver_exit, ptr @__initcall__kmod_hanwang__239_446_hanwang_driver_init6, ptr @hanwang_driver_exit, ptr @hanwang_irq._entry, ptr @hanwang_irq._entry.13, ptr @hanwang_irq._entry.16, ptr @hanwang_irq._entry_ptr, ptr @hanwang_irq._entry_ptr.15, ptr @hanwang_irq._entry_ptr.18, ptr @hanwang_driver, ptr @.str, ptr @hanwang_ids, ptr @.str.1, ptr @features_array, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hanwang_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hanwang_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_array to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hanwang_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hanwang_irq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hanwang_irq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hanwang_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @hanwang_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hanwang_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @hanwang_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hanwang_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i192 = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 128) #11
  %call3 = tail call ptr @input_allocate_device() #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.fail1_crit_edge, label %if.end6

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end6:                                          ; preds = %if.end
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct.i, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end6.fail1_crit_edge [
    i16 10373, label %if.end6.if.end9_crit_edge
    i16 10629, label %if.then.fold.split.i
    i16 10885, label %if.then.fold.split14.i
    i16 388, label %if.then.fold.split15.i
    i16 901, label %if.then.fold.split16.i
  ]

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end6.fail1_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.then.fold.split.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then.fold.split14.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then.fold.split15.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then.fold.split16.i:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split.i, %if.end6.if.end9_crit_edge
  %arrayidx.lcssa.i = phi ptr [ @features_array, %if.end6.if.end9_crit_edge ], [ getelementptr inbounds ([5 x %struct.hanwang_features], ptr @features_array, i32 0, i32 1), %if.then.fold.split.i ], [ getelementptr inbounds ([5 x %struct.hanwang_features], ptr @features_array, i32 0, i32 2), %if.then.fold.split14.i ], [ getelementptr inbounds ([5 x %struct.hanwang_features], ptr @features_array, i32 0, i32 3), %if.then.fold.split15.i ], [ getelementptr inbounds ([5 x %struct.hanwang_features], ptr @features_array, i32 0, i32 4), %if.then.fold.split16.i ]
  %features.i = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.lcssa.i, ptr %features.i, align 4
  %pkg_len = getelementptr inbounds %struct.hanwang_features, ptr %arrayidx.lcssa.i, i32 0, i32 3
  %11 = ptrtoint ptr %pkg_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkg_len, align 4
  %data_dma = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 1
  %call10 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i192, i32 noundef %12, i32 noundef 3264, ptr noundef %data_dma) #8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %call7.i.i, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end9.fail1_crit_edge, label %if.end14

if.end9.fail1_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %irq, align 8
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end14.fail2_crit_edge, label %if.end19

if.end14.fail2_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end19:                                         ; preds = %if.end14
  %usbdev = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i192, ptr %usbdev, align 4
  %dev20 = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %dev20, align 8
  %phys = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 9
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %20, ptr noundef %devpath.i) #8
  %call24 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.1, i32 noundef 32) #8
  %name = getelementptr inbounds %struct.hanwang, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %features.i, align 4
  %name27 = getelementptr inbounds %struct.hanwang_features, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name27, align 4
  %call28 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %24, i32 noundef 64) #8
  %25 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name, ptr %call3, align 8
  %phys34 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 1
  %26 = ptrtoint ptr %phys34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %phys, ptr %phys34, align 4
  %id35 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3
  %27 = ptrtoint ptr %id35 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 3, ptr %id35, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %28 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %idVendor.i, align 8
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #8
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %vendor.i, align 2
  %32 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idProduct.i, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #8
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %36 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bcdDevice.i, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %version.i, align 2
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 1
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev36, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 31
  %42 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hanwang_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 32
  %43 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hanwang_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 5
  %44 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %evbit, align 4
  %or.i.2 = or i32 %45, 26
  store i32 %or.i.2, ptr %evbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 8
  %46 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %absbit, align 4
  %or.i185.7 = or i32 %47, 218104091
  store i32 %or.i185.7, ptr %absbit, align 4
  %add.ptr.i184.8 = getelementptr %struct.input_dev, ptr %call3, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %add.ptr.i184.8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i184.8, align 4
  %or.i185.8 = or i32 %49, 256
  store i32 %or.i185.8, ptr %add.ptr.i184.8, align 4
  %add.ptr.i189 = getelementptr %struct.input_dev, ptr %call3, i32 0, i32 6, i32 10
  %50 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i189, align 4
  %or.i190.5 = or i32 %51, 6243
  store i32 %or.i190.5, ptr %add.ptr.i189, align 4
  %add.ptr.i189.6 = getelementptr %struct.input_dev, ptr %call3, i32 0, i32 6, i32 8
  %52 = ptrtoint ptr %add.ptr.i189.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i189.6, align 4
  %or.i190.14 = or i32 %53, 511
  store i32 %or.i190.14, ptr %add.ptr.i189.6, align 4
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 9
  %54 = ptrtoint ptr %mscbit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mscbit, align 4
  %or.i191 = or i32 %55, 1
  store i32 %or.i191, ptr %mscbit, align 4
  %56 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %features.i, align 4
  %max_x = getelementptr inbounds %struct.hanwang_features, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_x, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 0, i32 noundef %59, i32 noundef 4, i32 noundef 0) #8
  %60 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %features.i, align 4
  %max_y = getelementptr inbounds %struct.hanwang_features, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 1, i32 noundef 0, i32 noundef %63, i32 noundef 4, i32 noundef 0) #8
  %64 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %features.i, align 4
  %max_tilt_x = getelementptr inbounds %struct.hanwang_features, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %max_tilt_x to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_tilt_x, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 26, i32 noundef 0, i32 noundef %67, i32 noundef 0, i32 noundef 0) #8
  %68 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %features.i, align 4
  %max_tilt_y = getelementptr inbounds %struct.hanwang_features, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %max_tilt_y to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_tilt_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 27, i32 noundef 0, i32 noundef %71, i32 noundef 0, i32 noundef 0) #8
  %72 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %features.i, align 4
  %max_pressure = getelementptr inbounds %struct.hanwang_features, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %max_pressure to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_pressure, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 24, i32 noundef 0, i32 noundef %75, i32 noundef 0, i32 noundef 0) #8
  %76 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur_altsetting, align 4
  %endpoint74 = getelementptr inbounds %struct.usb_host_interface, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %endpoint74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %endpoint74, align 4
  %80 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %irq, align 8
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bEndpointAddress, align 1
  %conv78 = zext i8 %83 to i32
  %84 = ptrtoint ptr %add.ptr.i192 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i192, align 8
  %shl.i194 = shl i32 %85, 8
  %shl1.i = shl nuw nsw i32 %conv78, 15
  %or.i195 = or i32 %shl1.i, %shl.i194
  %or80 = or i32 %or.i195, 1073741952
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call7.i.i, align 8
  %88 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %features.i, align 4
  %pkg_len83 = getelementptr inbounds %struct.hanwang_features, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %pkg_len83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pkg_len83, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %79, i32 0, i32 5
  %92 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bInterval, align 1
  %conv84 = zext i8 %93 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 8
  %94 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr.i192, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 10
  %95 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or80, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 14
  %96 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %87, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 19
  %97 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %91, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 28
  %98 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @hanwang_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 27
  %99 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %100 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i = icmp eq i32 %101, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %101)
  %cmp6.i = icmp ugt i32 %101, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i197, label %if.end19.usb_fill_int_urb.exit_crit_edge

if.end19.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i197:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %102 = tail call i32 @llvm.smax.i32(i32 %conv84, i32 1) #8
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 16) #8
  %sub.i = add nsw i32 %103, -1
  %shl.i196 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i197, %if.end19.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i196, %if.then.i197 ], [ %conv84, %if.end19.usb_fill_int_urb.exit_crit_edge ]
  %104 = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 25
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %interval.sink.i, ptr %104, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 23
  %106 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %start_frame.i, align 4
  %107 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_dma, align 4
  %109 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %irq, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %110, i32 0, i32 15
  %111 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %108, ptr %transfer_dma, align 4
  %112 = load ptr, ptr %irq, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %112, i32 0, i32 13
  %113 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %transfer_flags, align 4
  %or88 = or i32 %114, 4
  store i32 %or88, ptr %transfer_flags, align 4
  %115 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev20, align 8
  %call90 = tail call i32 @input_register_device(ptr noundef %116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %fail3

if.end93:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i198 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %117 = ptrtoint ptr %driver_data.i.i198 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i, ptr %driver_data.i.i198, align 4
  br label %cleanup

fail3:                                            ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %irq, align 8
  tail call void @usb_free_urb(ptr noundef %119) #8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end14.fail2_crit_edge
  %error.0 = phi i32 [ %call90, %fail3 ], [ -12, %if.end14.fail2_crit_edge ]
  %120 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %features.i, align 4
  %pkg_len96 = getelementptr inbounds %struct.hanwang_features, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %pkg_len96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pkg_len96, align 4
  %124 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call7.i.i, align 8
  %126 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i192, i32 noundef %123, ptr noundef %125, i32 noundef %127) #8
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end9.fail1_crit_edge, %if.end6.fail1_crit_edge, %if.end.fail1_crit_edge
  %error.1 = phi i32 [ %error.0, %fail2 ], [ -12, %if.end.fail1_crit_edge ], [ -12, %if.end9.fail1_crit_edge ], [ -6, %if.end6.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call3) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end93, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %fail1 ], [ 0, %if.end93 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hanwang_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #8
  %irq = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %5) #8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %features = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %features, align 4
  %pkg_len = getelementptr inbounds %struct.hanwang_features, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %pkg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pkg_len, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %data_dma = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %11, ptr noundef %13, i32 noundef %15) #8
  tail call void @kfree(ptr noundef %1) #8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hanwang_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usbdev = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev, align 4
  %irq = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq, align 4
  %dev1 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dev1, align 4
  %7 = load ptr, ptr %irq, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hanwang_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hanwang_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %usbdev = getelementptr inbounds %struct.hanwang, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %do.end6 [
    i32 0, label %sw.bb
    i32 -104, label %entry.do.end_crit_edge
    i32 -2, label %entry.do.end_crit_edge23
    i32 -108, label %entry.do.end_crit_edge24
  ]

entry.do.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.do.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hanwang_parse_packet(ptr noundef %1)
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge23, %entry.do.end_crit_edge24
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %5) #12
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %5) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end6, %sw.bb
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hanwang_parse_packet(ptr nocapture noundef %hanwang) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hanwang to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hanwang, align 4
  %dev = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %usbdev = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 3
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev, align 4
  %features = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 5
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %features, align 4
  %type3 = getelementptr inbounds %struct.hanwang_features, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_tool = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 6
  %10 = ptrtoint ptr %current_tool to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 320, ptr %current_tool, align 4
  %current_id = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %11 = ptrtoint ptr %current_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %current_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %13, label %do.body192 [
    i8 2, label %sw.bb
    i8 12, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %1, i32 1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %16, label %sw.default37 [
    i8 -128, label %sw.bb6
    i8 0, label %sw.bb13
    i8 -62, label %sw.bb20
  ]

sw.bb6:                                           ; preds = %sw.bb
  br i1 %cmp, label %sw.bb6.sw.epilog83_crit_edge, label %if.then9

sw.bb6.sw.epilog83_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog83

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %current_id10 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %18 = ptrtoint ptr %current_id10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %current_id10, align 4
  %current_tool11 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 6
  %19 = ptrtoint ptr %current_tool11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_tool11, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %20, i32 noundef 0) #8
  br label %sw.epilog83

sw.bb13:                                          ; preds = %sw.bb
  br i1 %cmp, label %if.then16, label %sw.bb13.sw.epilog83_crit_edge

sw.bb13.sw.epilog83_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog83

if.then16:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %current_id17 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %21 = ptrtoint ptr %current_id17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %current_id17, align 4
  %current_tool18 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 6
  %22 = ptrtoint ptr %current_tool18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_tool18, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %23, i32 noundef 0) #8
  br label %sw.epilog83

sw.bb20:                                          ; preds = %sw.bb
  %arrayidx21 = getelementptr i8, ptr %1, i32 3
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  %26 = and i8 %25, -16
  %and = zext i8 %26 to i32
  %27 = add nsw i32 %and, -32
  %28 = lshr exact i32 %27, 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %28, label %sw.default [
    i32 0, label %sw.bb20.sw.bb23_crit_edge
    i32 1, label %sw.bb20.sw.bb23_crit_edge345
    i32 8, label %sw.bb20.sw.bb26_crit_edge
    i32 9, label %sw.bb20.sw.bb26_crit_edge346
  ]

sw.bb20.sw.bb26_crit_edge346:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

sw.bb20.sw.bb26_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

sw.bb20.sw.bb23_crit_edge345:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

sw.bb20.sw.bb23_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb20.sw.bb23_crit_edge, %sw.bb20.sw.bb23_crit_edge345
  %current_id24 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %30 = ptrtoint ptr %current_id24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %current_id24, align 4
  %current_tool25 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 6
  %31 = ptrtoint ptr %current_tool25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 320, ptr %current_tool25, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 320, i32 noundef 1) #8
  br label %sw.epilog83

sw.bb26:                                          ; preds = %sw.bb20.sw.bb26_crit_edge, %sw.bb20.sw.bb26_crit_edge346
  %current_id27 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %32 = ptrtoint ptr %current_id27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %current_id27, align 4
  %current_tool28 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 6
  %33 = ptrtoint ptr %current_tool28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 321, ptr %current_tool28, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 321, i32 noundef 1) #8
  br label %sw.epilog83

sw.default:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %current_id29 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %34 = ptrtoint ptr %current_id29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %current_id29, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hanwang_parse_packet.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hanwang_parse_packet, %if.then32)) #8
          to label %sw.epilog83 [label %if.then32], !srcloc !73

if.then32:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %conv35 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hanwang_parse_packet.__UNIQUE_ID_ddebug236, ptr noundef %dev33, ptr noundef nonnull @.str.20, i32 noundef %conv35) #8
  br label %sw.epilog83

sw.default37:                                     ; preds = %sw.bb
  %37 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %9, label %sw.default37.sw.epilog59_crit_edge [
    i32 0, label %sw.bb38
    i32 1, label %sw.default37.sw.bb49_crit_edge
    i32 2, label %sw.default37.sw.bb49_crit_edge347
  ]

sw.default37.sw.bb49_crit_edge347:                ; preds = %sw.default37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.default37.sw.bb49_crit_edge:                   ; preds = %sw.default37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.default37.sw.epilog59_crit_edge:               ; preds = %sw.default37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog59

sw.bb38:                                          ; preds = %sw.default37
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx39 = getelementptr i8, ptr %1, i32 6
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv40, 3
  %arrayidx41 = getelementptr i8, ptr %1, i32 7
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx41, align 1
  %42 = lshr i8 %41, 5
  %43 = and i8 %42, 6
  %44 = zext i8 %43 to i32
  %or = or i32 %shl, %44
  %45 = and i8 %16, 1
  %and46 = zext i8 %45 to i32
  %or47 = or i32 %or, %and46
  br label %sw.epilog59

sw.bb49:                                          ; preds = %sw.default37.sw.bb49_crit_edge, %sw.default37.sw.bb49_crit_edge347
  %arrayidx50 = getelementptr i8, ptr %1, i32 7
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx50, align 1
  %48 = lshr i8 %47, 6
  %49 = zext i8 %48 to i32
  %arrayidx53 = getelementptr i8, ptr %1, i32 6
  %50 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %51 to i32
  %shl55 = shl nuw nsw i32 %conv54, 2
  %or56 = or i32 %shl55, %49
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.bb49, %sw.bb38, %sw.default37.sw.epilog59_crit_edge
  %p.0 = phi i32 [ %or56, %sw.bb49 ], [ %or47, %sw.bb38 ], [ 0, %sw.default37.sw.epilog59_crit_edge ]
  %arrayidx60 = getelementptr i8, ptr %1, i32 2
  %52 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx60, align 2
  %conv62 = zext i16 %53 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %conv62) #8
  %arrayidx63 = getelementptr i8, ptr %1, i32 4
  %54 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx63, align 2
  %conv65 = zext i16 %55 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %conv65) #8
  %conv66 = and i32 %p.0, 65535
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %conv66) #8
  %arrayidx67 = getelementptr i8, ptr %1, i32 7
  %56 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx67, align 1
  %58 = and i8 %57, 63
  %and69 = zext i8 %58 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 26, i32 noundef %and69) #8
  %arrayidx70 = getelementptr i8, ptr %1, i32 8
  %59 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx70, align 1
  %61 = and i8 %60, 127
  %and72 = zext i8 %61 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 27, i32 noundef %and72) #8
  %62 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx4, align 1
  %64 = lshr i8 %63, 1
  %.lobit = and i8 %64, 1
  %65 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 331, i32 noundef %65) #8
  br i1 %cmp, label %if.else, label %if.then78

if.then78:                                        ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4, align 1
  %68 = lshr i8 %67, 2
  %.lobit339 = and i8 %68, 1
  %69 = zext i8 %.lobit339 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 332, i32 noundef %69) #8
  br label %sw.epilog83

if.else:                                          ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 320, i32 noundef 1) #8
  br label %sw.epilog83

sw.epilog83:                                      ; preds = %if.else, %if.then78, %if.then32, %sw.default, %sw.bb26, %sw.bb23, %if.then16, %sw.bb13.sw.epilog83_crit_edge, %if.then9, %sw.bb6.sw.epilog83_crit_edge
  %current_id84 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %70 = ptrtoint ptr %current_id84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %current_id84, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 40, i32 noundef %71) #8
  %72 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %features, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %73, align 4
  %conv86 = zext i16 %75 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 0, i32 noundef %conv86) #8
  br label %sw.epilog211

sw.bb87:                                          ; preds = %if.end
  %current_id88 = getelementptr inbounds %struct.hanwang, ptr %hanwang, i32 0, i32 7
  %76 = ptrtoint ptr %current_id88 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 15, ptr %current_id88, align 4
  %77 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %9, label %sw.bb87.sw.epilog189_crit_edge [
    i32 0, label %sw.bb89
    i32 1, label %sw.bb109
    i32 2, label %do.body170
  ]

sw.bb87.sw.epilog189_crit_edge:                   ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog189

sw.bb89:                                          ; preds = %sw.bb87
  %arrayidx90 = getelementptr i8, ptr %1, i32 1
  %78 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool92.not = icmp eq i8 %79, 0
  br i1 %tobool92.not, label %lor.lhs.false, label %sw.bb89.lor.end_crit_edge

sw.bb89.lor.end_crit_edge:                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.lhs.false:                                    ; preds = %sw.bb89
  %arrayidx93 = getelementptr i8, ptr %1, i32 2
  %80 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool95.not = icmp eq i8 %81, 0
  br i1 %tobool95.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx96 = getelementptr i8, ptr %1, i32 3
  %82 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool98 = icmp ne i8 %83, 0
  %phi.cast338 = zext i1 %tobool98 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %sw.bb89.lor.end_crit_edge
  %84 = phi i32 [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %sw.bb89.lor.end_crit_edge ], [ %phi.cast338, %lor.rhs ]
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 325, i32 noundef %84) #8
  %85 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx90, align 1
  %conv100 = zext i8 %86 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 8, i32 noundef %conv100) #8
  %arrayidx101 = getelementptr i8, ptr %1, i32 2
  %87 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.i323 = icmp ne i8 %88, 0
  %lnot.ext.i324 = zext i1 %tobool.i323 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 256, i32 noundef %lnot.ext.i324) #8
  %arrayidx105 = getelementptr i8, ptr %1, i32 3
  %89 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx105, align 1
  %91 = and i8 %90, 1
  %92 = zext i8 %91 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 257, i32 noundef %92) #8
  %93 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx105, align 1
  %95 = lshr i8 %94, 1
  %96 = and i8 %95, 1
  %97 = zext i8 %96 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 258, i32 noundef %97) #8
  %98 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx105, align 1
  %100 = lshr i8 %99, 2
  %101 = and i8 %100, 1
  %102 = zext i8 %101 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 259, i32 noundef %102) #8
  %103 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx105, align 1
  %105 = lshr i8 %104, 3
  %106 = and i8 %105, 1
  %107 = zext i8 %106 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 260, i32 noundef %107) #8
  %108 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx105, align 1
  %110 = lshr i8 %109, 4
  %111 = and i8 %110, 1
  %112 = zext i8 %111 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 261, i32 noundef %112) #8
  %113 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx105, align 1
  %115 = lshr i8 %114, 5
  %116 = and i8 %115, 1
  %117 = zext i8 %116 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 262, i32 noundef %117) #8
  %118 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx105, align 1
  %120 = lshr i8 %119, 6
  %121 = and i8 %120, 1
  %122 = zext i8 %121 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 263, i32 noundef %122) #8
  %123 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx105, align 1
  %125 = lshr i8 %124, 7
  br label %sw.epilog189.sink.split

sw.bb109:                                         ; preds = %sw.bb87
  %arrayidx110 = getelementptr i8, ptr %1, i32 1
  %126 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool112.not = icmp eq i8 %127, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %sw.bb109.lor.end133_crit_edge

sw.bb109.lor.end133_crit_edge:                    ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end133

lor.lhs.false113:                                 ; preds = %sw.bb109
  %arrayidx114 = getelementptr i8, ptr %1, i32 2
  %128 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool116.not = icmp eq i8 %129, 0
  br i1 %tobool116.not, label %lor.lhs.false117, label %lor.lhs.false113.lor.end133_crit_edge

lor.lhs.false113.lor.end133_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end133

lor.lhs.false117:                                 ; preds = %lor.lhs.false113
  %arrayidx118 = getelementptr i8, ptr %1, i32 3
  %130 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool120.not = icmp eq i8 %131, 0
  br i1 %tobool120.not, label %lor.lhs.false121, label %lor.lhs.false117.lor.end133_crit_edge

lor.lhs.false117.lor.end133_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end133

lor.lhs.false121:                                 ; preds = %lor.lhs.false117
  %arrayidx122 = getelementptr i8, ptr %1, i32 4
  %132 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool124.not = icmp eq i8 %133, 0
  br i1 %tobool124.not, label %lor.lhs.false125, label %lor.lhs.false121.lor.end133_crit_edge

lor.lhs.false121.lor.end133_crit_edge:            ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end133

lor.lhs.false125:                                 ; preds = %lor.lhs.false121
  %arrayidx126 = getelementptr i8, ptr %1, i32 5
  %134 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool128.not = icmp eq i8 %135, 0
  br i1 %tobool128.not, label %lor.rhs129, label %lor.lhs.false125.lor.end133_crit_edge

lor.lhs.false125.lor.end133_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end133

lor.rhs129:                                       ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx130 = getelementptr i8, ptr %1, i32 6
  %136 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool132 = icmp ne i8 %137, 0
  %phi.cast = zext i1 %tobool132 to i32
  br label %lor.end133

lor.end133:                                       ; preds = %lor.rhs129, %lor.lhs.false125.lor.end133_crit_edge, %lor.lhs.false121.lor.end133_crit_edge, %lor.lhs.false117.lor.end133_crit_edge, %lor.lhs.false113.lor.end133_crit_edge, %sw.bb109.lor.end133_crit_edge
  %138 = phi i32 [ 1, %lor.lhs.false125.lor.end133_crit_edge ], [ 1, %lor.lhs.false121.lor.end133_crit_edge ], [ 1, %lor.lhs.false117.lor.end133_crit_edge ], [ 1, %lor.lhs.false113.lor.end133_crit_edge ], [ 1, %sw.bb109.lor.end133_crit_edge ], [ %phi.cast, %lor.rhs129 ]
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 325, i32 noundef %138) #8
  %139 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx110, align 1
  %141 = and i8 %140, 31
  %and137 = zext i8 %141 to i32
  %shl138 = shl nuw nsw i32 %and137, 8
  %arrayidx139 = getelementptr i8, ptr %1, i32 2
  %142 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %143 to i32
  %or141 = or i32 %shl138, %conv140
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 3, i32 noundef %or141) #8
  %arrayidx142 = getelementptr i8, ptr %1, i32 3
  %144 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx142, align 1
  %146 = and i8 %145, 31
  %and144 = zext i8 %146 to i32
  %shl145 = shl nuw nsw i32 %and144, 8
  %arrayidx146 = getelementptr i8, ptr %1, i32 4
  %147 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %148 to i32
  %or148 = or i32 %shl145, %conv147
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 4, i32 noundef %or148) #8
  %arrayidx149 = getelementptr i8, ptr %1, i32 5
  %149 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx149, align 1
  %151 = and i8 %150, 1
  %152 = zext i8 %151 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 256, i32 noundef %152) #8
  %arrayidx162 = getelementptr i8, ptr %1, i32 6
  %153 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx149, align 1
  %155 = and i8 %154, 1
  %156 = zext i8 %155 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 257, i32 noundef %156) #8
  %157 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx162, align 1
  %159 = and i8 %158, 1
  %160 = zext i8 %159 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 261, i32 noundef %160) #8
  %161 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx149, align 1
  %163 = lshr i8 %162, 1
  %164 = and i8 %163, 1
  %165 = zext i8 %164 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 258, i32 noundef %165) #8
  %166 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx162, align 1
  %168 = lshr i8 %167, 1
  %169 = and i8 %168, 1
  %170 = zext i8 %169 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 262, i32 noundef %170) #8
  %171 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx149, align 1
  %173 = lshr i8 %172, 2
  %174 = and i8 %173, 1
  %175 = zext i8 %174 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 259, i32 noundef %175) #8
  %176 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx162, align 1
  %178 = lshr i8 %177, 2
  %179 = and i8 %178, 1
  %180 = zext i8 %179 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 263, i32 noundef %180) #8
  %181 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx149, align 1
  %183 = lshr i8 %182, 3
  %184 = and i8 %183, 1
  %185 = zext i8 %184 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 260, i32 noundef %185) #8
  %186 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx162, align 1
  %188 = lshr i8 %187, 3
  %189 = and i8 %188, 1
  br label %sw.epilog189.sink.split

do.body170:                                       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hanwang_parse_packet.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hanwang_parse_packet, %if.then182)) #8
          to label %cleanup [label %if.then182], !srcloc !73

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #10
  %dev183 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %1, align 1
  %conv185 = zext i8 %191 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hanwang_parse_packet.__UNIQUE_ID_ddebug237, ptr noundef %dev183, ptr noundef nonnull @.str.21, i32 noundef %conv185) #8
  br label %cleanup

sw.epilog189.sink.split:                          ; preds = %lor.end133, %lor.end
  %.sink344 = phi i8 [ %189, %lor.end133 ], [ %125, %lor.end ]
  %192 = zext i8 %.sink344 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 264, i32 noundef %192) #8
  br label %sw.epilog189

sw.epilog189:                                     ; preds = %sw.epilog189.sink.split, %sw.bb87.sw.epilog189_crit_edge
  %193 = ptrtoint ptr %current_id88 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %current_id88, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 40, i32 noundef %194) #8
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 0, i32 noundef -1) #8
  br label %sw.epilog211

do.body192:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hanwang_parse_packet.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hanwang_parse_packet, %if.then204)) #8
          to label %sw.epilog211 [label %if.then204], !srcloc !73

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  %dev205 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %1, align 1
  %conv207 = zext i8 %196 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hanwang_parse_packet.__UNIQUE_ID_ddebug238, ptr noundef %dev205, ptr noundef nonnull @.str.21, i32 noundef %conv207) #8
  br label %sw.epilog211

sw.epilog211:                                     ; preds = %if.then204, %do.body192, %sw.epilog189, %sw.epilog83
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog211, %if.then182, %do.body170
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/input/tablet/hanwang.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/input/tablet/hanwang.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/input/tablet/hanwang.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_hanwang__239_446_hanwang_driver_init6, !8, !"__initcall__kmod_hanwang__239_446_hanwang_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/tablet/hanwang.c", i32 446, i32 1}
!9 = !{ptr @__exitcall_hanwang_driver_exit, !8, !"__exitcall_hanwang_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hanwang_driver, !12, !"hanwang_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/tablet/hanwang.c", i32 439, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/tablet/hanwang.c", i32 357, i32 25}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/tablet/hanwang.c", i32 76, i32 12}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/tablet/hanwang.c", i32 78, i32 12}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/tablet/hanwang.c", i32 80, i32 12}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/tablet/hanwang.c", i32 82, i32 12}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/tablet/hanwang.c", i32 84, i32 12}
!25 = !{ptr @features_array, !26, !"features_array", i1 false, i1 false}
!26 = !{!"../drivers/input/tablet/hanwang.c", i32 75, i32 38}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/usb.h", i32 912, i32 31}
!29 = distinct !{null, !30, !"hw_eventtypes", i1 false, i1 false}
!30 = !{!"../drivers/input/tablet/hanwang.c", i32 88, i32 18}
!31 = distinct !{null, !32, !"hw_absevents", i1 false, i1 false}
!32 = !{!"../drivers/input/tablet/hanwang.c", i32 92, i32 18}
!33 = distinct !{null, !34, !"hw_btnevents", i1 false, i1 false}
!34 = !{!"../drivers/input/tablet/hanwang.c", i32 97, i32 18}
!35 = distinct !{null, !36, !"hw_mscevents", i1 false, i1 false}
!36 = !{!"../drivers/input/tablet/hanwang.c", i32 103, i32 18}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/tablet/hanwang.c", i32 267, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hanwang_irq._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @hanwang_irq._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/tablet/hanwang.c", i32 271, i32 3}
!47 = !{ptr @hanwang_irq._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hanwang_irq._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/tablet/hanwang.c", i32 278, i32 3}
!51 = !{ptr @hanwang_irq._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hanwang_irq._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/tablet/hanwang.c", i32 156, i32 5}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hanwang_parse_packet.__UNIQUE_ID_ddebug236, !54, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/tablet/hanwang.c", i32 236, i32 4}
!59 = !{ptr @hanwang_parse_packet.__UNIQUE_ID_ddebug237, !58, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!60 = !{ptr @hanwang_parse_packet.__UNIQUE_ID_ddebug238, !61, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!61 = !{!"../drivers/input/tablet/hanwang.c", i32 245, i32 3}
!62 = !{ptr @hanwang_ids, !63, !"hanwang_ids", i1 false, i1 false}
!63 = !{!"../drivers/input/tablet/hanwang.c", i32 431, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148701140, i64 2148701145, i64 2148701158, i64 2148701202, i64 2148701236, i64 2148701257}
