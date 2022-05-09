; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/safe_serial.c_pt.bc'
source_filename = "../drivers/usb/serial/safe_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.74, [0 x i8] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author238 = internal constant [81 x i8] c"safe_serial.author=sl@lineo.com, tbr@lineo.com, Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [53 x i8] c"safe_serial.description=USB Safe Encapsulated Serial\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [48 x i8] c"safe_serial.file=drivers/usb/serial/safe_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"safe_serial.license=GPL\00", section ".modinfo", align 1
@__param_str_safe = internal constant [17 x i8] c"safe_serial.safe\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@safe = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_safe = internal constant %struct.kernel_param { ptr @__param_str_safe, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @safe } }, section "__param", align 4
@__UNIQUE_ID_safetype242 = internal constant [31 x i8] c"safe_serial.parmtype=safe:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_safe243 = internal constant [53 x i8] c"safe_serial.parm=safe:Turn Safe Encapsulation On/Off\00", section ".modinfo", align 1
@__param_str_padded = internal constant [19 x i8] c"safe_serial.padded\00", align 1
@padded = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_padded = internal constant %struct.kernel_param { ptr @__param_str_padded, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @padded } }, section "__param", align 4
@__UNIQUE_ID_paddedtype244 = internal constant [33 x i8] c"safe_serial.parmtype=padded:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_padded245 = internal constant [58 x i8] c"safe_serial.parm=padded:Pad to full wMaxPacketSize On/Off\00", section ".modinfo", align 1
@__initcall__kmod_safe_serial__246_301_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @safe_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"safe_serial\00", [20 x i8] zeroinitializer }, align 32
@id_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 403, i16 1183, i16 -1, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 403, i16 1008, i16 8449, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 403, i16 1245, i16 -32767, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 403, i16 1245, i16 -32766, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 403, i16 1245, i16 -32765, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 403, i16 1245, i16 -32764, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 403, i16 1529, i16 -1, i16 0, i16 0, i8 2, i8 0, i8 0, i8 -1, i8 2, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@safe_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, ptr @safe_startup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @safe_process_read_urb, ptr @safe_prepare_write_buffer }, [72 x i8] zeroinitializer }, align 32
@safe_process_read_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"malformed packet\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"safe_process_read_urb\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/serial/safe_serial.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@safe_process_read_urb._entry_ptr = internal global ptr @safe_process_read_urb._entry, section ".printk_index", align 4
@safe_process_read_urb._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - bad CRC %x\0A\00", [47 x i8] zeroinitializer }, align 32
@safe_process_read_urb._entry_ptr.8 = internal global ptr @safe_process_read_urb._entry.6, section ".printk_index", align 4
@safe_process_read_urb._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - inconsistent lengths %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@safe_process_read_urb._entry_ptr.11 = internal global ptr @safe_process_read_urb._entry.9, section ".printk_index", align 4
@safe_process_read_urb._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - actual: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@safe_process_read_urb._entry_ptr.15 = internal global ptr @safe_process_read_urb._entry.12, section ".printk_index", align 4
@crc10_table = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 563, i16 597, i16 102, i16 665, i16 170, i16 204, i16 767, i16 769, i16 306, i16 340, i16 871, i16 408, i16 939, i16 973, i16 510, i16 49, i16 514, i16 612, i16 87, i16 680, i16 155, i16 253, i16 718, i16 816, i16 259, i16 357, i16 854, i16 425, i16 922, i16 1020, i16 463, i16 98, i16 593, i16 567, i16 4, i16 763, i16 200, i16 174, i16 669, i16 867, i16 336, i16 310, i16 773, i16 506, i16 969, i16 943, i16 412, i16 83, i16 608, i16 518, i16 53, i16 714, i16 249, i16 159, i16 684, i16 850, i16 353, i16 263, i16 820, i16 459, i16 1016, i16 926, i16 429, i16 196, i16 759, i16 657, i16 162, i16 605, i16 110, i16 8, i16 571, i16 965, i16 502, i16 400, i16 931, i16 348, i16 879, i16 777, i16 314, i16 245, i16 710, i16 672, i16 147, i16 620, i16 95, i16 57, i16 522, i16 1012, i16 455, i16 417, i16 914, i16 365, i16 862, i16 824, i16 267, i16 166, i16 661, i16 755, i16 192, i16 575, i16 12, i16 106, i16 601, i16 935, i16 404, i16 498, i16 961, i16 318, i16 781, i16 875, i16 344, i16 151, i16 676, i16 706, i16 241, i16 526, i16 61, i16 91, i16 616, i16 918, i16 421, i16 451, i16 1008, i16 271, i16 828, i16 858, i16 361, i16 392, i16 955, i16 989, i16 494, i16 785, i16 290, i16 324, i16 887, i16 649, i16 186, i16 220, i16 751, i16 16, i16 547, i16 581, i16 118, i16 441, i16 906, i16 1004, i16 479, i16 800, i16 275, i16 373, i16 838, i16 696, i16 139, i16 237, i16 734, i16 33, i16 530, i16 628, i16 71, i16 490, i16 985, i16 959, i16 396, i16 883, i16 320, i16 294, i16 789, i16 747, i16 216, i16 190, i16 653, i16 114, i16 577, i16 551, i16 20, i16 475, i16 1000, i16 910, i16 445, i16 834, i16 369, i16 279, i16 804, i16 730, i16 233, i16 143, i16 700, i16 67, i16 624, i16 534, i16 37, i16 332, i16 895, i16 793, i16 298, i16 981, i16 486, i16 384, i16 947, i16 589, i16 126, i16 24, i16 555, i16 212, i16 743, i16 641, i16 178, i16 381, i16 846, i16 808, i16 283, i16 996, i16 471, i16 433, i16 898, i16 636, i16 79, i16 41, i16 538, i16 229, i16 726, i16 688, i16 131, i16 302, i16 797, i16 891, i16 328, i16 951, i16 388, i16 482, i16 977, i16 559, i16 28, i16 122, i16 585, i16 182, i16 645, i16 739, i16 208, i16 287, i16 812, i16 842, i16 377, i16 902, i16 437, i16 467, i16 992, i16 542, i16 45, i16 75, i16 632, i16 135, i16 692, i16 722, i16 225], [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 75, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"padded\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 76, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 297, i32 41 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 301, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 118, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"safe_device\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 285, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 200, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 206, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 212, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 216, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"crc10_table\00", align 1
@___asan_gen_.74 = private constant [36 x i8] c"../drivers/usb/serial/safe_serial.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 131, i32 20 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_padded245, ptr @__UNIQUE_ID_paddedtype244, ptr @__UNIQUE_ID_safe243, ptr @__UNIQUE_ID_safetype242, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_safe_serial__246_301_usb_serial_module_init6, ptr @__param_padded, ptr @__param_safe, ptr @safe_process_read_urb._entry, ptr @safe_process_read_urb._entry.12, ptr @safe_process_read_urb._entry.6, ptr @safe_process_read_urb._entry.9, ptr @safe_process_read_urb._entry_ptr, ptr @safe_process_read_urb._entry_ptr.11, ptr @safe_process_read_urb._entry_ptr.15, ptr @safe_process_read_urb._entry_ptr.8, ptr @usb_serial_module_exit, ptr @safe, ptr @padded, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @safe_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @crc10_table], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padded to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_process_read_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_process_read_urb._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_process_read_urb._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_process_read_urb._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc10_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safe_startup(ptr nocapture noundef readonly %serial) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %bDeviceClass = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.not = icmp eq i8 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp4.not = icmp eq i8 %9, -1
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceSubClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp9.not = icmp eq i8 %11, 2
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bInterfaceProtocol, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end12.cleanup_crit_edge [
    i8 1, label %if.end12.sw.epilog_crit_edge
    i8 2, label %sw.bb
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr @padded, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end12.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safe_process_read_urb(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %conv = trunc i32 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i8, ptr @safe, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %conv5 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv5)
  %cmp = icmp ult i32 %conv5, 2
  br i1 %cmp, label %do.end, label %if.end4.for.inc.i_crit_edge

if.end4.for.inc.i_crit_edge:                      ; preds = %if.end4
  br label %for.inc.i

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.end4.for.inc.i_crit_edge
  %fcs.addr.04.i = phi i16 [ %xor5.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %if.end4.for.inc.i_crit_edge ]
  %len.addr.03.i = phi i32 [ %dec.i, %for.inc.i.for.inc.i_crit_edge ], [ %conv5, %if.end4.for.inc.i_crit_edge ]
  %sp.addr.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.inc.i_crit_edge ], [ %3, %if.end4.for.inc.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.03.i, -1
  %shl.i = shl i16 %fcs.addr.04.i, 8
  %and.i = and i16 %shl.i, 768
  %7 = lshr i16 %fcs.addr.04.i, 2
  %8 = and i16 %7, 255
  %and2.i = zext i16 %8 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @crc10_table, i32 0, i32 %and2.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %xor.i = xor i16 %10, %and.i
  %incdec.ptr.i = getelementptr i8, ptr %sp.addr.02.i, i32 1
  %11 = ptrtoint ptr %sp.addr.02.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sp.addr.02.i, align 1
  %conv4.i = zext i8 %12 to i16
  %xor5.i = xor i16 %xor.i, %conv4.i
  %cmp.i = icmp ugt i32 %len.addr.03.i, 1
  br i1 %cmp.i, label %for.inc.i.for.inc.i_crit_edge, label %fcs_compute10.exit

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

fcs_compute10.exit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor5.i)
  %tobool10.not = icmp eq i16 %xor5.i, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %fcs_compute10.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  %conv16 = zext i16 %xor5.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %conv16) #8
  br label %cleanup

if.end17:                                         ; preds = %fcs_compute10.exit
  %sub = add nsw i32 %conv5, -2
  %arrayidx = getelementptr i8, ptr %3, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = lshr i8 %14, 2
  %16 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %16)
  %cmp22 = icmp slt i32 %sub, %16
  br i1 %cmp22, label %do.end27, label %do.end33

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %dev28 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %conv5) #8
  br label %cleanup

do.end33:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %dev34 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %17 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev34, align 4
  %dev35 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef %16) #8
  br label %out

out:                                              ; preds = %do.end33, %if.end.out_crit_edge
  %length.0 = phi i32 [ %16, %do.end33 ], [ %5, %if.end.out_crit_edge ]
  %port37 = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 1
  %conv38 = and i32 %length.0, 255
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port37, ptr noundef %3, i8 noundef zeroext 0, i32 noundef %conv38) #5
  tail call void @tty_flip_buffer_push(ptr noundef %port37) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end27, %do.end14, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safe_prepare_write_buffer(ptr noundef %port, ptr noundef %dest, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @safe, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond.neg60 = select i1 %tobool.not, i32 0, i32 -2
  %cond = select i1 %tobool.not, i32 0, i32 2
  %lock = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %write_fifo = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 22
  %sub = sub i32 %size, %cond
  %call6 = tail call i32 @__kfifo_out(ptr noundef %write_fifo, ptr noundef %dest, i32 noundef %sub) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %1 = load i8, ptr @safe, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool11.not = icmp eq i8 %1, 0
  br i1 %tobool11.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @padded, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool12.not = icmp eq i8 %2, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %dest, i32 %call6
  %.neg = add i32 %cond.neg60, %size
  %sub15 = sub i32 %.neg, %call6
  %3 = call ptr @memset(ptr %add.ptr, i32 48, i32 %sub15)
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %call6, %cond
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %pkt_len.0 = phi i32 [ %size, %if.then13 ], [ %add, %if.else ]
  %call10.tr = trunc i32 %call6 to i8
  %conv17 = shl i8 %call10.tr, 2
  %sub18 = add i32 %pkt_len.0, -2
  %arrayidx = getelementptr i8, ptr %dest, i32 %sub18
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv17, ptr %arrayidx, align 1
  %sub19 = add i32 %pkt_len.0, -1
  %arrayidx20 = getelementptr i8, ptr %dest, i32 %sub19
  %5 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkt_len.0)
  %cmp1.i = icmp sgt i32 %pkt_len.0, 0
  br i1 %cmp1.i, label %if.end16.for.inc.i_crit_edge, label %if.end16.fcs_compute10.exit_crit_edge

if.end16.fcs_compute10.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %fcs_compute10.exit

if.end16.for.inc.i_crit_edge:                     ; preds = %if.end16
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.end16.for.inc.i_crit_edge
  %fcs.addr.04.i = phi i16 [ %xor5.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %if.end16.for.inc.i_crit_edge ]
  %len.addr.03.i = phi i32 [ %dec.i, %for.inc.i.for.inc.i_crit_edge ], [ %pkt_len.0, %if.end16.for.inc.i_crit_edge ]
  %sp.addr.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.inc.i_crit_edge ], [ %dest, %if.end16.for.inc.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.03.i, -1
  %shl.i = shl i16 %fcs.addr.04.i, 8
  %and.i = and i16 %shl.i, 768
  %6 = lshr i16 %fcs.addr.04.i, 2
  %7 = and i16 %6, 255
  %and2.i = zext i16 %7 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @crc10_table, i32 0, i32 %and2.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %xor.i = xor i16 %9, %and.i
  %incdec.ptr.i = getelementptr i8, ptr %sp.addr.02.i, i32 1
  %10 = ptrtoint ptr %sp.addr.02.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sp.addr.02.i, align 1
  %conv4.i = zext i8 %11 to i16
  %xor5.i = xor i16 %xor.i, %conv4.i
  %cmp.i = icmp ugt i32 %len.addr.03.i, 1
  br i1 %cmp.i, label %for.inc.i.for.inc.i_crit_edge, label %fcs_compute10.exit.loopexit

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

fcs_compute10.exit.loopexit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.le = trunc i16 %xor5.i to i8
  %extract.le = lshr i16 %xor.i, 8
  %extract.t59.le = trunc i16 %extract.le to i8
  br label %fcs_compute10.exit

fcs_compute10.exit:                               ; preds = %fcs_compute10.exit.loopexit, %if.end16.fcs_compute10.exit_crit_edge
  %fcs.addr.0.lcssa.i.off0 = phi i8 [ 0, %if.end16.fcs_compute10.exit_crit_edge ], [ %extract.t.le, %fcs_compute10.exit.loopexit ]
  %fcs.addr.0.lcssa.i.off8 = phi i8 [ 0, %if.end16.fcs_compute10.exit_crit_edge ], [ %extract.t59.le, %fcs_compute10.exit.loopexit ]
  %conv26 = or i8 %fcs.addr.0.lcssa.i.off8, %conv17
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv26, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %fcs.addr.0.lcssa.i.off0, ptr %arrayidx20, align 1
  br label %cleanup

cleanup:                                          ; preds = %fcs_compute10.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %pkt_len.0, %fcs_compute10.exit ], [ %call6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/safe_serial.c", i32 81, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../drivers/usb/serial/safe_serial.c", i32 82, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../drivers/usb/serial/safe_serial.c", i32 83, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__param_safe, !8, !"__param_safe", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/safe_serial.c", i32 85, i32 1}
!9 = !{ptr @__UNIQUE_ID_safetype242, !8, !"__UNIQUE_ID_safetype242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_safe243, !11, !"__UNIQUE_ID_safe243", i1 false, i1 false}
!11 = !{!"../drivers/usb/serial/safe_serial.c", i32 86, i32 1}
!12 = !{ptr @__param_padded, !13, !"__param_padded", i1 false, i1 false}
!13 = !{!"../drivers/usb/serial/safe_serial.c", i32 88, i32 1}
!14 = !{ptr @__UNIQUE_ID_paddedtype244, !13, !"__UNIQUE_ID_paddedtype244", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_padded245, !16, !"__UNIQUE_ID_padded245", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/safe_serial.c", i32 89, i32 1}
!17 = !{ptr @__initcall__kmod_safe_serial__246_301_usb_serial_module_init6, !18, !"__initcall__kmod_safe_serial__246_301_usb_serial_module_init6", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/safe_serial.c", i32 301, i32 1}
!19 = !{ptr @__exitcall_usb_serial_module_exit, !18, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_safe, !8, !"__param_str_safe", i1 false, i1 false}
!21 = !{ptr @safe, !22, !"safe", i1 false, i1 false}
!22 = !{!"../drivers/usb/serial/safe_serial.c", i32 75, i32 13}
!23 = !{ptr @__param_str_padded, !13, !"__param_str_padded", i1 false, i1 false}
!24 = !{ptr @padded, !25, !"padded", i1 false, i1 false}
!25 = !{!"../drivers/usb/serial/safe_serial.c", i32 76, i32 13}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @id_table, !28, !"id_table", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/safe_serial.c", i32 118, i32 35}
!29 = !{ptr @serial_drivers, !30, !"serial_drivers", i1 false, i1 false}
!30 = !{!"../drivers/usb/serial/safe_serial.c", i32 297, i32 41}
!31 = !{ptr @safe_device, !32, !"safe_device", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/safe_serial.c", i32 285, i32 33}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/safe_serial.c", i32 200, i32 3}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @safe_process_read_urb._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @safe_process_read_urb._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/serial/safe_serial.c", i32 206, i32 3}
!43 = !{ptr @safe_process_read_urb._entry.6, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @safe_process_read_urb._entry_ptr.8, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/serial/safe_serial.c", i32 212, i32 3}
!47 = !{ptr @safe_process_read_urb._entry.9, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @safe_process_read_urb._entry_ptr.11, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/serial/safe_serial.c", i32 216, i32 2}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @safe_process_read_urb._entry.12, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @safe_process_read_urb._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @crc10_table, !55, !"crc10_table", i1 false, i1 false}
!55 = !{!"../drivers/usb/serial/safe_serial.c", i32 131, i32 20}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
