; ModuleID = '/llk/IR_all_yes/drivers/usb/core/quirks.c_pt.bc'
source_filename = "../drivers/usb/core/quirks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.quirk_entry = type { i16, i16, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__param_str_quirks = internal constant [15 x i8] c"usbcore.quirks\00", align 1
@quirks_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @quirks_param_set, ptr @param_get_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@quirks_param_string = internal global { %struct.kparam_string, [24 x i8] } { %struct.kparam_string { i32 128, ptr @quirks_param }, [24 x i8] zeroinitializer }, align 32
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @quirks_param_ops, i16 420, i8 6, i8 0, %union.anon.62 { ptr @quirks_param_string } }, section "__param", align 4
@__UNIQUE_ID_quirks232 = internal constant [89 x i8] c"usbcore.parm=quirks:Add/modify USB quirks by specifying quirks=vendorID:productID:quirks\00", section ".modinfo", align 1
@usb_endpoint_ignore = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 1 }, %struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i32 129 }, %struct.usb_device_id { i16 1027, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 133 }, %struct.usb_device_id { i16 1027, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 133 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@usb_quirk_list = internal constant { [105 x %struct.usb_device_id], [616 x i8] } { [105 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 516, i16 24613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 536, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 536, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1008, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 16192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1054, i16 12320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1060, i16 13571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1130, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2085, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1133, i16 2241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16094, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 1137, i16 341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1204, i16 1318, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1255, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1255, i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1256, i16 26113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1267, i16 137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1267, i16 8632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1410, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1410, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1423, i16 -28076, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1452, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1484, i16 8807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1592, i16 2579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1699, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1725, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 2052, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32768 }, %struct.usb_device_id { i16 3, i16 1891, i16 402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1921, i16 21891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1921, i16 21905, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2284, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2308, i16 24833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24834, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24835, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 13107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 2385, i16 5734, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2417, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 2465, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8192 }, %struct.usb_device_id { i16 3, i16 2652, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2706, i16 145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2821, i16 6112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 3034, i16 1159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 28758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 4310, i16 8704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4661, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4817, i16 5563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 4817, i16 5571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 5398, i16 -31192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 5426, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 6127, i16 29196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 6127, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 6127, i16 -24558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4096 }, %struct.usb_device_id { i16 3, i16 6127, i16 -23673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 6408, i16 4885, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 32 }, %struct.usb_device_id { i16 3, i16 6666, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 128 }, %struct.usb_device_id { i16 3, i16 6720, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16384 }, %struct.usb_device_id { i16 3, i16 6940, i16 6931, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6933, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6966, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8256 }, %struct.usb_device_id { i16 3, i16 7285, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 7649, i16 -16126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17073, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 8256, i16 29184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 9094, i16 12564, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 12569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 13582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 11427, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 -32634, i16 -3675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], [616 x i8] zeroinitializer }, align 32
@usb_amd_resume_quirk_list = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6127, i16 24622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1008, i16 11082, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@usb_detect_quirks.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_detect_quirks\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/usb/core/quirks.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"USB quirks for this device: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_interface_quirk_list = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 1133, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i32 2 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb_detect_interface_quirks.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_detect_interface_quirks\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"USB interface quirks for this device: %x\0A\00", [54 x i8] zeroinitializer }, align 32
@quirk_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @quirk_mutex, i64 52), ptr getelementptr (i8, ptr @quirk_mutex, i64 52) }, ptr @quirk_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@quirk_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@quirk_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@quirks_param = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"quirk_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"quirk_mutex\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.10 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111]
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"quirks_param_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 159, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"quirks_param_string\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 164, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"usb_endpoint_ignore\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 546, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"usb_quirk_list\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 189, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"usb_amd_resume_quirk_list\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 524, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 671, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"usb_interface_quirk_list\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 516, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 692, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"quirk_mutex\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"quirk_list\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 23, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"quirk_count\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 24, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 75, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 89, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"quirks_param\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 26, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [29 x i8] c"../drivers/usb/core/quirks.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 21, i32 8 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_quirks232, ptr @__param_quirks, ptr @quirks_param_ops, ptr @quirks_param_string, ptr @usb_endpoint_ignore, ptr @usb_quirk_list, ptr @usb_amd_resume_quirk_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @usb_interface_quirk_list, ptr @.str.4, ptr @.str.5, ptr @quirk_mutex, ptr @quirk_list, ptr @quirk_count, ptr @.str.6, ptr @.str.7, ptr @quirks_param, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirks_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirks_param_string to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_endpoint_ignore to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_quirk_list to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_amd_resume_quirk_list to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_interface_quirk_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirks_param to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_endpoint_is_ignored(ptr noundef %udev, ptr noundef %intf, ptr nocapture noundef readonly %epd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %epd, i32 0, i32 2
  %call = tail call i32 @usb_match_device(ptr noundef %udev, ptr noundef nonnull @usb_endpoint_ignore) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usb_match_one_id_intf(ptr noundef %udev, ptr noundef %intf, ptr noundef nonnull @usb_endpoint_ignore) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %call.1 = tail call i32 @usb_match_device(ptr noundef %udev, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 1)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %call2.1 = tail call i32 @usb_match_one_id_intf(ptr noundef %udev, ptr noundef %intf, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 1)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end5.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end5.1:                                        ; preds = %if.end.1
  %2 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %3)
  %cmp.1 = icmp eq i8 %3, -127
  br i1 %cmp.1, label %if.end5.1.cleanup_crit_edge, label %if.end5.1.for.inc.1_crit_edge

if.end5.1.for.inc.1_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end5.1.cleanup_crit_edge:                      ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %if.end5.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call.2 = tail call i32 @usb_match_device(ptr noundef %udev, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 2)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %call2.2 = tail call i32 @usb_match_one_id_intf(ptr noundef %udev, ptr noundef %intf, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 2)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool3.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool3.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end5.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end5.2:                                        ; preds = %if.end.2
  %4 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %5)
  %cmp.2 = icmp eq i8 %5, -123
  br i1 %cmp.2, label %if.end5.2.cleanup_crit_edge, label %if.end5.2.for.inc.2_crit_edge

if.end5.2.for.inc.2_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end5.2.cleanup_crit_edge:                      ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %if.end5.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %call.3 = tail call i32 @usb_match_device(ptr noundef %udev, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 3)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool1.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %call2.3 = tail call i32 @usb_match_one_id_intf(ptr noundef %udev, ptr noundef %intf, ptr noundef getelementptr inbounds ([5 x %struct.usb_device_id], ptr @usb_endpoint_ignore, i32 0, i32 3)) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool3.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool3.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.end5.3

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end5.3:                                        ; preds = %if.end.3
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %7)
  %cmp.3 = icmp eq i8 %7, -123
  br i1 %cmp.3, label %if.end5.3.cleanup_crit_edge, label %if.end5.3.for.inc.3_crit_edge

if.end5.3.for.inc.3_crit_edge:                    ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end5.3.cleanup_crit_edge:                      ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %if.end5.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.end5.3.cleanup_crit_edge, %if.end5.2.cleanup_crit_edge, %if.end5.1.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %tobool.not.lcssa = phi i1 [ true, %if.end5.cleanup_crit_edge ], [ true, %if.end5.1.cleanup_crit_edge ], [ true, %if.end5.2.cleanup_crit_edge ], [ true, %if.end5.3.cleanup_crit_edge ], [ false, %for.inc.3 ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id_intf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_detect_quirks(ptr noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb_detect_static_quirks(ptr noundef %udev, ptr noundef nonnull @usb_quirk_list)
  %quirks = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 36
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %quirks, align 8
  %level.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 26
  %1 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.i = icmp eq i8 %2, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 12
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i, align 8
  %amd_resume_bug.i = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %amd_resume_bug.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %amd_resume_bug.i, align 4
  %6 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp2.not.i = icmp eq i16 %6, 0
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @usb_detect_static_quirks(ptr noundef %udev, ptr noundef nonnull @usb_amd_resume_quirk_list)
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirks, align 8
  %or = or i32 %8, %call2
  store i32 %or, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 7
  %9 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idVendor.i, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 8
  %12 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  tail call void @mutex_lock_nested(ptr noundef nonnull @quirk_mutex, i32 noundef 0) #5
  %15 = load i32, ptr @quirk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp20.not.i = icmp eq i32 %15, 0
  br i1 %cmp20.not.i, label %if.end.usb_detect_dynamic_quirks.exit_crit_edge, label %for.body.lr.ph.i

if.end.usb_detect_dynamic_quirks.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_detect_dynamic_quirks.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %16 = load ptr, ptr @quirk_list, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.quirk_entry, ptr %16, i32 %i.021.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %18)
  %cmp4.i = icmp eq i16 %11, %18
  br i1 %cmp4.i, label %land.lhs.true.i33, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i33:                                ; preds = %for.body.i
  %pid8.i = getelementptr %struct.quirk_entry, ptr %16, i32 %i.021.i, i32 1
  %19 = ptrtoint ptr %pid8.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pid8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %20)
  %cmp10.i = icmp eq i16 %14, %20
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i33.for.inc.i_crit_edge

land.lhs.true.i33.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #7
  %flags13.i = getelementptr %struct.quirk_entry, ptr %16, i32 %i.021.i, i32 2
  %21 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags13.i, align 4
  br label %usb_detect_dynamic_quirks.exit

for.inc.i:                                        ; preds = %land.lhs.true.i33.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.usb_detect_dynamic_quirks.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.usb_detect_dynamic_quirks.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_detect_dynamic_quirks.exit

usb_detect_dynamic_quirks.exit:                   ; preds = %for.inc.i.usb_detect_dynamic_quirks.exit_crit_edge, %if.then.i, %if.end.usb_detect_dynamic_quirks.exit_crit_edge
  %flags.0.i = phi i32 [ %22, %if.then.i ], [ 0, %if.end.usb_detect_dynamic_quirks.exit_crit_edge ], [ 0, %for.inc.i.usb_detect_dynamic_quirks.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  %23 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirks, align 8
  %xor = xor i32 %24, %flags.0.i
  store i32 %xor, ptr %quirks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool7.not = icmp eq i32 %xor, 0
  br i1 %tobool7.not, label %usb_detect_dynamic_quirks.exit.if.end16_crit_edge, label %do.body

usb_detect_dynamic_quirks.exit.if.end16_crit_edge: ; preds = %usb_detect_dynamic_quirks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body:                                          ; preds = %usb_detect_dynamic_quirks.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_detect_quirks.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_detect_quirks, %if.then13)) #5
          to label %if.end16 [label %if.then13], !srcloc !50

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %25 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_detect_quirks.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %26) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.body, %usb_detect_dynamic_quirks.exit.if.end16_crit_edge
  %27 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks, align 8
  %and = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %persist_enabled = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 28
  %29 = ptrtoint ptr %persist_enabled to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load = load i16, ptr %persist_enabled, align 1
  %bf.set = or i16 %bf.load, 16384
  store i16 %bf.set, ptr %persist_enabled, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_detect_static_quirks(ptr noundef %udev, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not15 = icmp eq i16 %1, 0
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bNumConfigurations.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 13
  %config.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %quirks.019 = phi i32 [ 0, %for.body.lr.ph ], [ %quirks.1, %for.inc.for.body_crit_edge ]
  %id.addr.016 = phi ptr [ %id, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @usb_match_device(ptr noundef %udev, ptr noundef %id.addr.016) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %id.addr.016 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id.addr.016, align 4
  %4 = and i16 %3, 896
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool3.not = icmp eq i16 %4, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %bNumConfigurations.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumConfigurations.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp41.not.i = icmp eq i8 %6, 0
  br i1 %cmp41.not.i, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc19.i, %for.inc18.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 8
  %bNumInterfaces.i = getelementptr %struct.usb_host_config, ptr %8, i32 %i.042.i, i32 0, i32 3
  %9 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumInterfaces.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp438.not.i = icmp eq i8 %10, 0
  br i1 %cmp438.not.i, label %for.body.i.for.inc18.i_crit_edge, label %for.body.i.for.body6.i_crit_edge

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %j.039.i = phi i32 [ %inc.i, %for.inc.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.usb_host_config, ptr %8, i32 %i.042.i, i32 4, i32 %j.039.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.i = icmp eq i32 %14, 0
  br i1 %cmp8.i, label %for.body6.i.for.inc.i_crit_edge, label %if.end.i

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body6.i
  %altsetting.i = getelementptr inbounds %struct.usb_interface_cache, ptr %12, i32 0, i32 2
  %call.i = tail call i32 @usb_match_one_id_intf(ptr noundef %udev, ptr noundef %altsetting.i, ptr noundef %id.addr.016) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body6.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.039.i, 1
  %15 = ptrtoint ptr %bNumInterfaces.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumInterfaces.i, align 4
  %conv3.i = zext i8 %16 to i32
  %cmp4.i = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp4.i, label %for.inc.i.for.body6.i_crit_edge, label %for.inc.i.for.inc18.i_crit_edge

for.inc.i.for.inc18.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc18.i

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i

for.inc18.i:                                      ; preds = %for.inc.i.for.inc18.i_crit_edge, %for.body.i.for.inc18.i_crit_edge
  %inc19.i = add nuw nsw i32 %i.042.i, 1
  %17 = ptrtoint ptr %bNumConfigurations.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bNumConfigurations.i, align 1
  %conv.i = zext i8 %18 to i32
  %cmp.i = icmp ult i32 %inc19.i, %conv.i
  br i1 %cmp.i, label %for.inc18.i.for.body.i_crit_edge, label %for.inc18.i.for.inc_crit_edge

for.inc18.i.for.inc_crit_edge:                    ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id.addr.016, i32 0, i32 12
  %19 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_info, align 4
  %or = or i32 %20, %quirks.019
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.inc18.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %quirks.1 = phi i32 [ %or, %if.end6 ], [ %quirks.019, %for.body.for.inc_crit_edge ], [ %quirks.019, %land.lhs.true.for.inc_crit_edge ], [ %quirks.019, %for.inc18.i.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.usb_device_id, ptr %id.addr.016, i32 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %quirks.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %quirks.1, %for.inc.for.end_crit_edge ]
  ret i32 %quirks.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_detect_interface_quirks(ptr noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb_detect_static_quirks(ptr noundef %udev, ptr noundef nonnull @usb_interface_quirk_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_detect_interface_quirks.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_detect_interface_quirks, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !50

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_detect_interface_quirks.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %quirks6 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 36
  %0 = ptrtoint ptr %quirks6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks6, align 8
  %or = or i32 %1, %call
  store i32 %or, ptr %quirks6, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_release_quirk_list() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @quirk_mutex, i32 noundef 0) #5
  %0 = load ptr, ptr @quirk_list, align 4
  tail call void @kfree(ptr noundef %0) #5
  store ptr null, ptr @quirk_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirks_param_set(ptr noundef %value, ptr noundef %kp) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  %vid = alloca i16, align 2
  %pid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #5
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %p, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid) #5
  %1 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %vid, align 2, !annotation !51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pid) #5
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %pid, align 2, !annotation !51
  %call = tail call noalias ptr @kstrdup(ptr noundef %value, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @param_set_copystring(ptr noundef nonnull %call, ptr noundef %kp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @quirk_mutex, i32 noundef 0) #5
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  store i32 0, ptr @quirk_count, align 4
  %5 = load ptr, ptr @quirk_list, align 4
  tail call void @kfree(ptr noundef %5) #5
  store ptr null, ptr @quirk_list, align 4
  br label %unlock

if.end7:                                          ; preds = %if.end4
  store i32 1, ptr @quirk_count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %inc145 = phi i32 [ 1, %if.end7 ], [ %inc144, %for.inc ]
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc13, %for.inc ]
  %arrayidx = getelementptr i8, ptr %call, i32 %i.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 44, label %if.then11
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %inc145, 1
  store i32 %inc, ptr @quirk_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.cond.for.inc_crit_edge
  %inc144 = phi i32 [ %inc145, %for.cond.for.inc_crit_edge ], [ %inc, %if.then11 ]
  %inc13 = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr @quirk_list, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %for.end.if.end16_crit_edge, label %if.then15

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %9) #5
  store ptr null, ptr @quirk_list, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end.if.end16_crit_edge
  %10 = load i32, ptr @quirk_count, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 8) #5
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !52

kcalloc.exit.thread:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  store ptr null, ptr @quirk_list, align 4
  br label %if.then19

if.end7.i.i:                                      ; preds = %if.end16
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #8
  store ptr %call8.i.i, ptr @quirk_list, align 4
  %tobool18.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool18.not, label %if.end7.i.i.if.then19_crit_edge, label %land.rhs.preheader

if.end7.i.i.if.then19_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.then19:                                        ; preds = %if.end7.i.i.if.then19_crit_edge, %kcalloc.exit.thread
  store i32 0, ptr @quirk_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

land.rhs.preheader:                               ; preds = %if.end7.i.i
  %14 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %p, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.end80.land.rhs_crit_edge, %land.rhs.preheader
  %i.1147 = phi i32 [ %inc81, %for.end80.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %15 = phi ptr [ %.pr, %for.end80.land.rhs_crit_edge ], [ %call, %land.rhs.preheader ]
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool24.not = icmp eq i8 %17, 0
  br i1 %tobool24.not, label %land.rhs.for.end86_crit_edge, label %for.body25

land.rhs.for.end86_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

for.body25:                                       ; preds = %land.rhs
  %call26 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.6) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %for.body25.for.end86_crit_edge, label %if.end29

for.body25.for.end86_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

if.end29:                                         ; preds = %for.body25
  %call30 = call i32 @kstrtou16(ptr noundef nonnull %call26, i32 noundef 16, ptr noundef nonnull %vid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.for.end86_crit_edge

if.end29.for.end86_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

if.end33:                                         ; preds = %if.end29
  %call34 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.6) #5
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.for.end86_crit_edge, label %if.end37

if.end33.for.end86_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

if.end37:                                         ; preds = %if.end33
  %call38 = call i32 @kstrtou16(ptr noundef nonnull %call34, i32 noundef 16, ptr noundef nonnull %pid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.for.end86_crit_edge

if.end37.for.end86_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

if.end41:                                         ; preds = %if.end37
  %call42 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.7) #5
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.for.end86_crit_edge, label %lor.lhs.false

if.end41.for.end86_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

lor.lhs.false:                                    ; preds = %if.end41
  %18 = ptrtoint ptr %call42 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool44.not = icmp eq i8 %19, 0
  br i1 %tobool44.not, label %lor.lhs.false.for.end86_crit_edge, label %lor.lhs.false.for.cond47_crit_edge

lor.lhs.false.for.cond47_crit_edge:               ; preds = %lor.lhs.false
  br label %for.cond47

lor.lhs.false.for.end86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

for.cond47:                                       ; preds = %for.inc79, %lor.lhs.false.for.cond47_crit_edge
  %20 = phi i8 [ %.pr143, %for.inc79 ], [ %19, %lor.lhs.false.for.cond47_crit_edge ]
  %flags.0 = phi i32 [ %flags.1, %for.inc79 ], [ 0, %lor.lhs.false.for.cond47_crit_edge ]
  %field.0 = phi ptr [ %incdec.ptr, %for.inc79 ], [ %call42, %lor.lhs.false.for.cond47_crit_edge ]
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %20, label %for.cond47.for.inc79_crit_edge [
    i8 0, label %for.end80
    i8 97, label %sw.bb
    i8 98, label %sw.bb51
    i8 99, label %sw.bb53
    i8 100, label %sw.bb55
    i8 101, label %sw.bb57
    i8 102, label %sw.bb59
    i8 103, label %sw.bb61
    i8 104, label %sw.bb63
    i8 105, label %sw.bb65
    i8 106, label %sw.bb67
    i8 107, label %sw.bb69
    i8 108, label %sw.bb71
    i8 109, label %sw.bb73
    i8 110, label %sw.bb75
    i8 111, label %sw.bb77
  ]

for.cond47.for.inc79_crit_edge:                   ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79

sw.bb:                                            ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %flags.0, 1
  br label %for.inc79

sw.bb51:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or52 = or i32 %flags.0, 2
  br label %for.inc79

sw.bb53:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or54 = or i32 %flags.0, 4
  br label %for.inc79

sw.bb55:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or56 = or i32 %flags.0, 8
  br label %for.inc79

sw.bb57:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or58 = or i32 %flags.0, 16
  br label %for.inc79

sw.bb59:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or60 = or i32 %flags.0, 32
  br label %for.inc79

sw.bb61:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or62 = or i32 %flags.0, 64
  br label %for.inc79

sw.bb63:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or64 = or i32 %flags.0, 128
  br label %for.inc79

sw.bb65:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or66 = or i32 %flags.0, 256
  br label %for.inc79

sw.bb67:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or68 = or i32 %flags.0, 512
  br label %for.inc79

sw.bb69:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or70 = or i32 %flags.0, 1024
  br label %for.inc79

sw.bb71:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or72 = or i32 %flags.0, 2048
  br label %for.inc79

sw.bb73:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or74 = or i32 %flags.0, 4096
  br label %for.inc79

sw.bb75:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or76 = or i32 %flags.0, 8192
  br label %for.inc79

sw.bb77:                                          ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #7
  %or78 = or i32 %flags.0, 16384
  br label %for.inc79

for.inc79:                                        ; preds = %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb, %for.cond47.for.inc79_crit_edge
  %flags.1 = phi i32 [ %or78, %sw.bb77 ], [ %or76, %sw.bb75 ], [ %or74, %sw.bb73 ], [ %or72, %sw.bb71 ], [ %or70, %sw.bb69 ], [ %or68, %sw.bb67 ], [ %or66, %sw.bb65 ], [ %or64, %sw.bb63 ], [ %or62, %sw.bb61 ], [ %or60, %sw.bb59 ], [ %or58, %sw.bb57 ], [ %or56, %sw.bb55 ], [ %or54, %sw.bb53 ], [ %or52, %sw.bb51 ], [ %or, %sw.bb ], [ %flags.0, %for.cond47.for.inc79_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %field.0, i32 1
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr143 = load i8, ptr %incdec.ptr, align 1
  br label %for.cond47

for.end80:                                        ; preds = %for.cond47
  %23 = load ptr, ptr @quirk_list, align 4
  %inc81 = add i32 %i.1147, 1
  %arrayidx82 = getelementptr %struct.quirk_entry, ptr %23, i32 %i.1147
  %24 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid, align 2
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pid, align 2
  %28 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %25, ptr %arrayidx82, align 4
  %.compoundliteral.sroa.2.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 2
  %29 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx82.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %27, ptr %.compoundliteral.sroa.2.0.arrayidx82.sroa_idx, align 2
  %.compoundliteral.sroa.3.0.arrayidx82.sroa_idx = getelementptr inbounds i8, ptr %arrayidx82, i32 4
  %30 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx82.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags.0, ptr %.compoundliteral.sroa.3.0.arrayidx82.sroa_idx, align 4
  %31 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %p, align 4
  %tobool22.not = icmp eq ptr %.pr, null
  br i1 %tobool22.not, label %for.end80.for.end86_crit_edge, label %for.end80.land.rhs_crit_edge

for.end80.land.rhs_crit_edge:                     ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end80.for.end86_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

for.end86:                                        ; preds = %for.end80.for.end86_crit_edge, %lor.lhs.false.for.end86_crit_edge, %if.end41.for.end86_crit_edge, %if.end37.for.end86_crit_edge, %if.end33.for.end86_crit_edge, %if.end29.for.end86_crit_edge, %for.body25.for.end86_crit_edge, %land.rhs.for.end86_crit_edge
  %i.1.lcssa.ph = phi i32 [ %i.1147, %land.rhs.for.end86_crit_edge ], [ %i.1147, %for.body25.for.end86_crit_edge ], [ %i.1147, %if.end29.for.end86_crit_edge ], [ %i.1147, %if.end33.for.end86_crit_edge ], [ %i.1147, %if.end37.for.end86_crit_edge ], [ %i.1147, %lor.lhs.false.for.end86_crit_edge ], [ %i.1147, %if.end41.for.end86_crit_edge ], [ %inc81, %for.end80.for.end86_crit_edge ]
  %32 = load i32, ptr @quirk_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa.ph, i32 %32)
  %cmp87 = icmp ult i32 %i.1.lcssa.ph, %32
  br i1 %cmp87, label %if.then89, label %for.end86.unlock_crit_edge

for.end86.unlock_crit_edge:                       ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.then89:                                        ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %i.1.lcssa.ph, ptr @quirk_count, align 4
  br label %unlock

unlock:                                           ; preds = %if.then89, %for.end86.unlock_crit_edge, %if.then6
  call void @mutex_unlock(ptr noundef nonnull @quirk_mutex) #5
  call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then19, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %unlock ], [ -12, %if.then19 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pid) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_copystring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__param_quirks, !1, !"__param_quirks", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/quirks.c", i32 169, i32 1}
!2 = !{ptr @__UNIQUE_ID_quirks232, !3, !"__UNIQUE_ID_quirks232", i1 false, i1 false}
!3 = !{!"../drivers/usb/core/quirks.c", i32 170, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/core/quirks.c", i32 671, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @usb_detect_quirks.__UNIQUE_ID_ddebug233, !5, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/core/quirks.c", i32 692, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @usb_detect_interface_quirks.__UNIQUE_ID_ddebug234, !11, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!14 = !{ptr @quirk_list, !15, !"quirk_list", i1 false, i1 false}
!15 = !{!"../drivers/usb/core/quirks.c", i32 23, i32 28}
!16 = !{ptr @__param_str_quirks, !1, !"__param_str_quirks", i1 false, i1 false}
!17 = !{ptr @quirks_param_ops, !18, !"quirks_param_ops", i1 false, i1 false}
!18 = !{!"../drivers/usb/core/quirks.c", i32 159, i32 38}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/core/quirks.c", i32 75, i32 22}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/core/quirks.c", i32 89, i32 22}
!23 = !{ptr @quirk_count, !24, !"quirk_count", i1 false, i1 false}
!24 = !{!"../drivers/usb/core/quirks.c", i32 24, i32 21}
!25 = !{ptr @quirks_param_string, !26, !"quirks_param_string", i1 false, i1 false}
!26 = !{!"../drivers/usb/core/quirks.c", i32 164, i32 29}
!27 = !{ptr @quirks_param, !28, !"quirks_param", i1 false, i1 false}
!28 = !{!"../drivers/usb/core/quirks.c", i32 26, i32 13}
!29 = !{ptr @usb_endpoint_ignore, !30, !"usb_endpoint_ignore", i1 false, i1 false}
!30 = !{!"../drivers/usb/core/quirks.c", i32 546, i32 35}
!31 = !{ptr @usb_quirk_list, !32, !"usb_quirk_list", i1 false, i1 false}
!32 = !{!"../drivers/usb/core/quirks.c", i32 189, i32 35}
!33 = !{ptr @usb_amd_resume_quirk_list, !34, !"usb_amd_resume_quirk_list", i1 false, i1 false}
!34 = !{!"../drivers/usb/core/quirks.c", i32 524, i32 35}
!35 = !{ptr @usb_interface_quirk_list, !36, !"usb_interface_quirk_list", i1 false, i1 false}
!36 = !{!"../drivers/usb/core/quirks.c", i32 516, i32 35}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/core/quirks.c", i32 21, i32 8}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @quirk_mutex, !38, !"quirk_mutex", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148732506, i64 2148732511, i64 2148732524, i64 2148732568, i64 2148732602, i64 2148732623}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
