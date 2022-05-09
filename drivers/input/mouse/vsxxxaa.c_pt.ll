; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/vsxxxaa.c_pt.bc'
source_filename = "../drivers/input/mouse/vsxxxaa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.vsxxxaa = type { ptr, ptr, [15 x i8], i8, i8, i8, i8, [64 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [53 x i8] c"vsxxxaa.author=Jan-Benedict Glaw <jbglaw@lug-owl.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [77 x i8] c"vsxxxaa.description=Driver for DEC VSXXX-AA and -GA mice and VSXXX-AB tablet\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [41 x i8] c"vsxxxaa.file=drivers/input/mouse/vsxxxaa\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [20 x i8] c"vsxxxaa.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vsxxxaa__231_538_vsxxxaa_drv_init6 = internal global ptr @vsxxxaa_drv_init, section ".initcall6.init", align 4
@vsxxxaa_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @vsxxaa_serio_ids, i8 0, ptr null, ptr @vsxxxaa_interrupt, ptr @vsxxxaa_connect, ptr null, ptr null, ptr @vsxxxaa_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_vsxxxaa_drv_exit = internal global ptr @vsxxxaa_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vsxxxaa\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Driver for DEC VSXXX-AA and -GA mice and VSXXX-AB tablet\00", [39 x i8] zeroinitializer }, align 32
@vsxxaa_serio_ids = internal global { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 8 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@vsxxxaa_queue_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s on %s: Dropping a byte of full buffer.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vsxxxaa_queue_byte\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/mouse/vsxxxaa.c\00", [34 x i8] zeroinitializer }, align 32
@vsxxxaa_queue_byte._entry_ptr = internal global ptr @vsxxxaa_queue_byte._entry, section ".printk_index", align 4
@vsxxxaa_parse_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s on %s: Dropping a byte to regain sync with mouse data stream...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vsxxxaa_parse_buffer\00", [43 x i8] zeroinitializer }, align 32
@vsxxxaa_parse_buffer._entry_ptr = internal global ptr @vsxxxaa_parse_buffer._entry, section ".printk_index", align 4
@vsxxxaa_parse_buffer._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Dropping %d bytes now...\0A\00", [36 x i8] zeroinitializer }, align 32
@vsxxxaa_parse_buffer._entry_ptr.9 = internal global ptr @vsxxxaa_parse_buffer._entry.7, section ".printk_index", align 4
@vsxxxaa_check_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Need to drop %d bytes of a broken packet.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vsxxxaa_check_packet\00", [43 x i8] zeroinitializer }, align 32
@vsxxxaa_check_packet._entry_ptr = internal global ptr @vsxxxaa_check_packet._entry, section ".printk_index", align 4
@vsxxxaa_handle_POR_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Your %s on %s reports error=0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vsxxxaa_handle_POR_packet\00", [38 x i8] zeroinitializer }, align 32
@vsxxxaa_handle_POR_packet._entry_ptr = internal global ptr @vsxxxaa_handle_POR_packet._entry, section ".printk_index", align 4
@vsxxxaa_handle_POR_packet._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\015%s on %s: Forcing standard packet format, incremental streaming mode and 72 samples/sec\0A\00", [37 x i8] zeroinitializer }, align 32
@vsxxxaa_handle_POR_packet._entry_ptr.16 = internal global ptr @vsxxxaa_handle_POR_packet._entry.14, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DEC VSXXX-AA/-GA mouse\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DEC VSXXX-AB digitizer\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unknown DEC pointer device (type = 0x%02x)\00", [53 x i8] zeroinitializer }, align 32
@vsxxxaa_detection_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Found %s version 0x%02x from country 0x%02x on port %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vsxxxaa_detection_done\00", [41 x i8] zeroinitializer }, align 32
@vsxxxaa_detection_done._entry_ptr = internal global ptr @vsxxxaa_detection_done._entry, section ".printk_index", align 4
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DEC VSXXX-AA/-GA mouse or VSXXX-AB digitizer\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 160, i64 192]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"vsxxxaa_drv\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 527, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 538, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 531, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"vsxxaa_serio_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 515, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 127, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 392, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 427, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 178, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 355, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 364, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 141, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 146, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 152, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 157, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 469, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [33 x i8] c"../drivers/input/mouse/vsxxxaa.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 471, i32 45 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_vsxxxaa_drv_exit, ptr @__initcall__kmod_vsxxxaa__231_538_vsxxxaa_drv_init6, ptr @vsxxxaa_check_packet._entry, ptr @vsxxxaa_check_packet._entry_ptr, ptr @vsxxxaa_detection_done._entry, ptr @vsxxxaa_detection_done._entry_ptr, ptr @vsxxxaa_drv_exit, ptr @vsxxxaa_handle_POR_packet._entry, ptr @vsxxxaa_handle_POR_packet._entry.14, ptr @vsxxxaa_handle_POR_packet._entry_ptr, ptr @vsxxxaa_handle_POR_packet._entry_ptr.16, ptr @vsxxxaa_parse_buffer._entry, ptr @vsxxxaa_parse_buffer._entry.7, ptr @vsxxxaa_parse_buffer._entry_ptr, ptr @vsxxxaa_parse_buffer._entry_ptr.9, ptr @vsxxxaa_queue_byte._entry, ptr @vsxxxaa_queue_byte._entry_ptr, ptr @vsxxxaa_drv, ptr @.str, ptr @.str.1, ptr @vsxxaa_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxaa_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_queue_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_parse_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_parse_buffer._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_check_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_handle_POR_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_handle_POR_packet._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsxxxaa_detection_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsxxxaa_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @vsxxxaa_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsxxxaa_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serio_unregister_driver(ptr noundef nonnull @vsxxxaa_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsxxxaa_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %count.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp.i = icmp eq i8 %3, 15
  br i1 %cmp.i, label %do.end.i, label %entry.vsxxxaa_queue_byte.exit_crit_edge

entry.vsxxxaa_queue_byte.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_queue_byte.exit

do.end.i:                                         ; preds = %entry
  %name.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 7
  %phys.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i, ptr noundef %phys.i) #10
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not.i.i = icmp ugt i8 %5, 1
  br i1 %cmp.not.i.i, label %if.else.i.i, label %do.end.i.vsxxxaa_drop_bytes.exit.i_crit_edge

do.end.i.vsxxxaa_drop_bytes.exit.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_drop_bytes.exit.i

if.else.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 2
  %add.ptr.i.i = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 1
  %6 = call ptr @memmove(ptr %buf.i.i, ptr %add.ptr.i.i, i32 14)
  %conv8.i.i = add i8 %5, -1
  br label %vsxxxaa_drop_bytes.exit.i

vsxxxaa_drop_bytes.exit.i:                        ; preds = %if.else.i.i, %do.end.i.vsxxxaa_drop_bytes.exit.i_crit_edge
  %storemerge.i.i = phi i8 [ %conv8.i.i, %if.else.i.i ], [ 0, %do.end.i.vsxxxaa_drop_bytes.exit.i_crit_edge ]
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge.i.i, ptr %count.i, align 1
  br label %vsxxxaa_queue_byte.exit

vsxxxaa_queue_byte.exit:                          ; preds = %vsxxxaa_drop_bytes.exit.i, %entry.vsxxxaa_queue_byte.exit_crit_edge
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count.i, align 1
  %inc.i = add i8 %9, 1
  store i8 %inc.i, ptr %count.i, align 1
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %data, ptr %arrayidx.i, align 1
  %buf1.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not200201.i = icmp eq i8 %11, 0
  br i1 %cmp.not200201.i, label %vsxxxaa_queue_byte.exit.vsxxxaa_parse_buffer.exit_crit_edge, label %land.rhs.lr.ph.lr.ph.i

vsxxxaa_queue_byte.exit.vsxxxaa_parse_buffer.exit_crit_edge: ; preds = %vsxxxaa_queue_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_parse_buffer.exit

land.rhs.lr.ph.lr.ph.i:                           ; preds = %vsxxxaa_queue_byte.exit
  %name.i3 = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 7
  %phys.i4 = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 8
  %add.ptr.i.i5 = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 1
  %arrayidx.i91.i = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 2
  %arrayidx6.i92.i = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 4
  %arrayidx10.i.i = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 3
  %add.ptr.i.i95.i = getelementptr %struct.vsxxxaa, ptr %1, i32 0, i32 2, i32 5
  %version.i.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 4
  %country.i.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 5
  %type.i.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 6
  %serio.i.i = getelementptr inbounds %struct.vsxxxaa, ptr %1, i32 0, i32 1
  br label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %do.cond41.i.land.rhs.lr.ph.i_crit_edge, %land.rhs.lr.ph.lr.ph.i
  %12 = phi i8 [ %11, %land.rhs.lr.ph.lr.ph.i ], [ %128, %do.cond41.i.land.rhs.lr.ph.i_crit_edge ]
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp4.i14 = icmp sgt i8 %14, -1
  br i1 %cmp4.i14, label %land.rhs.lr.ph.i.do.end.i8_crit_edge, label %land.rhs.lr.ph.i.while.end.i_crit_edge

land.rhs.lr.ph.i.while.end.i_crit_edge:           ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

land.rhs.lr.ph.i.do.end.i8_crit_edge:             ; preds = %land.rhs.lr.ph.i
  br label %do.end.i8

do.end.i8:                                        ; preds = %vsxxxaa_drop_bytes.exit.i10.do.end.i8_crit_edge, %land.rhs.lr.ph.i.do.end.i8_crit_edge
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i3, ptr noundef %phys.i4) #10
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.not.i.i7 = icmp ugt i8 %16, 1
  br i1 %cmp.not.i.i7, label %vsxxxaa_drop_bytes.exit.i10, label %do.end42.loopexit.i

vsxxxaa_drop_bytes.exit.i10:                      ; preds = %do.end.i8
  %17 = call ptr @memmove(ptr %buf1.i, ptr %add.ptr.i.i5, i32 14)
  %conv8.i.i9 = add i8 %16, -1
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.i.i9, ptr %count.i, align 1
  %19 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf1.i, align 1
  %cmp4.i = icmp sgt i8 %20, -1
  br i1 %cmp4.i, label %vsxxxaa_drop_bytes.exit.i10.do.end.i8_crit_edge, label %vsxxxaa_drop_bytes.exit.i10.while.end.i_crit_edge

vsxxxaa_drop_bytes.exit.i10.while.end.i_crit_edge: ; preds = %vsxxxaa_drop_bytes.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

vsxxxaa_drop_bytes.exit.i10.do.end.i8_crit_edge:  ; preds = %vsxxxaa_drop_bytes.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i8

while.end.i:                                      ; preds = %vsxxxaa_drop_bytes.exit.i10.while.end.i_crit_edge, %land.rhs.lr.ph.i.while.end.i_crit_edge
  %.lcssa12 = phi i8 [ %12, %land.rhs.lr.ph.i.while.end.i_crit_edge ], [ %conv8.i.i9, %vsxxxaa_drop_bytes.exit.i10.while.end.i_crit_edge ]
  %.lcssa = phi i8 [ %14, %land.rhs.lr.ph.i.while.end.i_crit_edge ], [ %20, %vsxxxaa_drop_bytes.exit.i10.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.lcssa12)
  %cmp.not.i64.i = icmp ult i8 %.lcssa12, 3
  br i1 %cmp.not.i64.i, label %while.end.i.vsxxxaa_parse_buffer.exit_crit_edge, label %vsxxxaa_smells_like_packet.exit.i

while.end.i.vsxxxaa_parse_buffer.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_parse_buffer.exit

vsxxxaa_smells_like_packet.exit.i:                ; preds = %while.end.i
  %21 = and i8 %.lcssa, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %cmp4.i.not.i = icmp eq i8 %21, -128
  br i1 %cmp4.i.not.i, label %for.body.i.preheader.i, label %if.else.i

for.body.i.preheader.i:                           ; preds = %vsxxxaa_smells_like_packet.exit.i
  %22 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp8.i.i = icmp slt i8 %23, 0
  br i1 %cmp8.i.i, label %vsxxxaa_check_packet.exit.thread.i, label %for.inc.i.i

vsxxxaa_check_packet.exit.thread.i:               ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i210.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0) #10
  br label %if.then12.i

for.inc.i.i:                                      ; preds = %for.body.i.preheader.i
  %24 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i91.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp8.i.1.i = icmp slt i8 %25, 0
  br i1 %cmp8.i.1.i, label %for.inc.i.i.do.end37.i_crit_edge, label %for.inc.i.i.if.then12.i_crit_edge

for.inc.i.i.if.then12.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

for.inc.i.i.do.end37.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

if.then12.i:                                      ; preds = %for.inc.i.i.if.then12.i_crit_edge, %vsxxxaa_check_packet.exit.thread.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i5, align 1
  %30 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf1.i, align 1
  %32 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i91.i, align 1
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.not.i.i.i = icmp ugt i8 %35, 3
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then12.i.vsxxxaa_handle_REL_packet.exit.i_crit_edge

if.then12.i.vsxxxaa_handle_REL_packet.exit.i_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_handle_REL_packet.exit.i

if.else.i.i.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = call ptr @memmove(ptr %buf1.i, ptr %arrayidx10.i.i, i32 12)
  %conv8.i.i.i = add i8 %35, -3
  br label %vsxxxaa_handle_REL_packet.exit.i

vsxxxaa_handle_REL_packet.exit.i:                 ; preds = %if.else.i.i.i, %if.then12.i.vsxxxaa_handle_REL_packet.exit.i_crit_edge
  %storemerge.i.i.i = phi i8 [ %conv8.i.i.i, %if.else.i.i.i ], [ 0, %if.then12.i.vsxxxaa_handle_REL_packet.exit.i_crit_edge ]
  %conv4.i.i = zext i8 %31 to i32
  %and24.i.i = and i32 %conv4.i.i, 1
  %37 = and i32 %conv4.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool13.not.i.i = icmp eq i32 %37, 0
  %38 = and i8 %33, 127
  %and8.i.i = zext i8 %38 to i32
  %39 = sub nsw i32 0, %and8.i.i
  %40 = select i1 %tobool13.not.i.i, i32 %and8.i.i, i32 %39
  %41 = and i32 %conv4.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp eq i32 %41, 0
  %42 = and i8 %29, 127
  %and.i.i = zext i8 %42 to i32
  %43 = sub nsw i32 0, %and.i.i
  %44 = select i1 %tobool.not.i.i, i32 %43, i32 %and.i.i
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge.i.i.i, ptr %count.i, align 1
  %and18.i.i = lshr i32 %conv4.i.i, 2
  %and18.lobit.i.i = and i32 %and18.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 272, i32 noundef %and18.lobit.i.i) #7
  %and21.i.i = lshr i32 %conv4.i.i, 1
  %and21.lobit.i.i = and i32 %and21.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 274, i32 noundef %and21.lobit.i.i) #7
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 273, i32 noundef %and24.i.i) #7
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  tail call void @input_event(ptr noundef %27, i32 noundef 2, i32 noundef 0, i32 noundef %44) #7
  tail call void @input_event(ptr noundef %27, i32 noundef 2, i32 noundef 1, i32 noundef %40) #7
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %do.cond41thread-pre-split.i

if.else.i:                                        ; preds = %vsxxxaa_smells_like_packet.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.lcssa12)
  %cmp.not.i69.i = icmp ult i8 %.lcssa12, 5
  br i1 %cmp.not.i69.i, label %if.else20.i, label %vsxxxaa_smells_like_packet.exit74.i

vsxxxaa_smells_like_packet.exit74.i:              ; preds = %if.else.i
  %46 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %vsxxxaa_smells_like_packet.exit74.i.vsxxxaa_parse_buffer.exit_crit_edge [
    i8 -64, label %for.body.i81.preheader.i
    i8 -96, label %vsxxxaa_smells_like_packet.exit74.i.for.body.i116.preheader.i_crit_edge
  ]

vsxxxaa_smells_like_packet.exit74.i.for.body.i116.preheader.i_crit_edge: ; preds = %vsxxxaa_smells_like_packet.exit74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i116.preheader.i

vsxxxaa_smells_like_packet.exit74.i.vsxxxaa_parse_buffer.exit_crit_edge: ; preds = %vsxxxaa_smells_like_packet.exit74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_parse_buffer.exit

for.body.i81.preheader.i:                         ; preds = %vsxxxaa_smells_like_packet.exit74.i
  %47 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp8.i80.i = icmp slt i8 %48, 0
  br i1 %cmp8.i80.i, label %vsxxxaa_check_packet.exit89.i, label %for.inc.i87.i

for.inc.i87.i:                                    ; preds = %for.body.i81.preheader.i
  %49 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i91.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp8.i80.1.i = icmp slt i8 %50, 0
  br i1 %cmp8.i80.1.i, label %for.inc.i87.i.do.end37.i_crit_edge, label %for.inc.i87.1.i

for.inc.i87.i.do.end37.i_crit_edge:               ; preds = %for.inc.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

for.inc.i87.1.i:                                  ; preds = %for.inc.i87.i
  %51 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp8.i80.2.i = icmp slt i8 %52, 0
  br i1 %cmp8.i80.2.i, label %for.inc.i87.1.i.do.end37.i_crit_edge, label %for.inc.i87.2.i

for.inc.i87.1.i.do.end37.i_crit_edge:             ; preds = %for.inc.i87.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

for.inc.i87.2.i:                                  ; preds = %for.inc.i87.1.i
  %53 = ptrtoint ptr %arrayidx6.i92.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx6.i92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp8.i80.3.i = icmp slt i8 %54, 0
  br i1 %cmp8.i80.3.i, label %for.inc.i87.2.i.do.end37.i_crit_edge, label %for.inc.i87.2.i.if.then18.i_crit_edge

for.inc.i87.2.i.if.then18.i_crit_edge:            ; preds = %for.inc.i87.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

for.inc.i87.2.i.do.end37.i_crit_edge:             ; preds = %for.inc.i87.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

vsxxxaa_check_packet.exit89.i:                    ; preds = %for.body.i81.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0) #10
  br label %if.then18.i

if.then18.i:                                      ; preds = %vsxxxaa_check_packet.exit89.i, %for.inc.i87.2.i.if.then18.i_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %57 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i91.i, align 1
  %59 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i.i5, align 1
  %61 = ptrtoint ptr %arrayidx6.i92.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx6.i92.i, align 1
  %63 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx10.i.i, align 1
  %65 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buf1.i, align 1
  %67 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %68)
  %cmp.not.i.i94.i = icmp ugt i8 %68, 5
  br i1 %cmp.not.i.i94.i, label %if.else.i.i97.i, label %if.then18.i.vsxxxaa_handle_ABS_packet.exit.i_crit_edge

if.then18.i.vsxxxaa_handle_ABS_packet.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_handle_ABS_packet.exit.i

if.else.i.i97.i:                                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = call ptr @memmove(ptr %buf1.i, ptr %add.ptr.i.i95.i, i32 10)
  %conv8.i.i96.i = add i8 %68, -5
  br label %vsxxxaa_handle_ABS_packet.exit.i

vsxxxaa_handle_ABS_packet.exit.i:                 ; preds = %if.else.i.i97.i, %if.then18.i.vsxxxaa_handle_ABS_packet.exit.i_crit_edge
  %storemerge.i.i98.i = phi i8 [ %conv8.i.i96.i, %if.else.i.i97.i ], [ 0, %if.then18.i.vsxxxaa_handle_ABS_packet.exit.i_crit_edge ]
  %conv15.i.i = zext i8 %66 to i32
  %70 = and i8 %62, 63
  %and8.i99.i = zext i8 %70 to i32
  %shl9.neg48.i.i = mul nsw i32 %and8.i99.i, -64
  %71 = and i8 %64, 63
  %and12.i.i = zext i8 %71 to i32
  %or13.neg.i.i = xor i32 %and12.i.i, 1023
  %sub.i100.i = add nsw i32 %or13.neg.i.i, %shl9.neg48.i.i
  %72 = and i8 %58, 63
  %and.i101.i = zext i8 %72 to i32
  %shl.i.i = shl nuw nsw i32 %and.i101.i, 6
  %73 = and i8 %60, 63
  %and5.i.i = zext i8 %73 to i32
  %or.i.i = or i32 %shl.i.i, %and5.i.i
  %74 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %storemerge.i.i98.i, ptr %count.i, align 1
  %and16.i.i = lshr i32 %conv15.i.i, 1
  %and16.lobit.i.i = and i32 %and16.i.i, 1
  tail call void @input_event(ptr noundef %56, i32 noundef 1, i32 noundef 272, i32 noundef %and16.lobit.i.i) #7
  %and19.i.i = lshr i32 %conv15.i.i, 2
  %and19.lobit.i.i = and i32 %and19.i.i, 1
  tail call void @input_event(ptr noundef %56, i32 noundef 1, i32 noundef 274, i32 noundef %and19.lobit.i.i) #7
  %and22.i.i = lshr i32 %conv15.i.i, 3
  %and22.lobit.i.i = and i32 %and22.i.i, 1
  tail call void @input_event(ptr noundef %56, i32 noundef 1, i32 noundef 273, i32 noundef %and22.lobit.i.i) #7
  %and25.i.i = lshr i32 %conv15.i.i, 4
  %and25.lobit.i.i = and i32 %and25.i.i, 1
  tail call void @input_event(ptr noundef %56, i32 noundef 1, i32 noundef 330, i32 noundef %and25.lobit.i.i) #7
  tail call void @input_event(ptr noundef %56, i32 noundef 3, i32 noundef 0, i32 noundef %or.i.i) #7
  tail call void @input_event(ptr noundef %56, i32 noundef 3, i32 noundef 1, i32 noundef %sub.i100.i) #7
  tail call void @input_event(ptr noundef %56, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %do.cond41thread-pre-split.i

if.else20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.lcssa12)
  %cmp.not.i104.not.i = icmp eq i8 %.lcssa12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %21)
  %cmp4.i106.not.i = icmp eq i8 %21, -96
  %or.cond = select i1 %cmp.not.i104.not.i, i1 %cmp4.i106.not.i, i1 false
  br i1 %or.cond, label %if.else20.i.for.body.i116.preheader.i_crit_edge, label %if.else20.i.vsxxxaa_parse_buffer.exit_crit_edge

if.else20.i.vsxxxaa_parse_buffer.exit_crit_edge:  ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_parse_buffer.exit

if.else20.i.for.body.i116.preheader.i_crit_edge:  ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i116.preheader.i

for.body.i116.preheader.i:                        ; preds = %if.else20.i.for.body.i116.preheader.i_crit_edge, %vsxxxaa_smells_like_packet.exit74.i.for.body.i116.preheader.i_crit_edge
  %75 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr.i.i5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp8.i115.i = icmp slt i8 %76, 0
  br i1 %cmp8.i115.i, label %vsxxxaa_check_packet.exit124.i, label %for.inc.i122.i

for.inc.i122.i:                                   ; preds = %for.body.i116.preheader.i
  %77 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i91.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp8.i115.1.i = icmp slt i8 %78, 0
  br i1 %cmp8.i115.1.i, label %for.inc.i122.i.do.end37.i_crit_edge, label %for.inc.i122.1.i

for.inc.i122.i.do.end37.i_crit_edge:              ; preds = %for.inc.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

for.inc.i122.1.i:                                 ; preds = %for.inc.i122.i
  %79 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp8.i115.2.i = icmp slt i8 %80, 0
  br i1 %cmp8.i115.2.i, label %for.inc.i122.1.i.do.end37.i_crit_edge, label %for.inc.i122.1.i.if.then26.i_crit_edge

for.inc.i122.1.i.if.then26.i_crit_edge:           ; preds = %for.inc.i122.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

for.inc.i122.1.i.do.end37.i_crit_edge:            ; preds = %for.inc.i122.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

vsxxxaa_check_packet.exit124.i:                   ; preds = %for.body.i116.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0) #10
  br label %if.then26.i

if.then26.i:                                      ; preds = %vsxxxaa_check_packet.exit124.i, %for.inc.i122.1.i.if.then26.i_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %buf1.i, align 1
  %85 = and i8 %84, 15
  %86 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %version.i.i, align 4
  %87 = ptrtoint ptr %add.ptr.i.i5 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr.i.i5, align 1
  %89 = lshr i8 %88, 4
  %90 = and i8 %89, 7
  %91 = ptrtoint ptr %country.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %country.i.i, align 1
  %92 = and i8 %88, 15
  %93 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %type.i.i, align 2
  %94 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i91.i, align 1
  %96 = and i8 %95, 127
  %97 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp.not.i.i127.i = icmp ugt i8 %98, 4
  br i1 %cmp.not.i.i127.i, label %if.else.i.i130.i, label %if.then26.i.vsxxxaa_drop_bytes.exit.i.i_crit_edge

if.then26.i.vsxxxaa_drop_bytes.exit.i.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_drop_bytes.exit.i.i

if.else.i.i130.i:                                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = call ptr @memmove(ptr %buf1.i, ptr %arrayidx6.i92.i, i32 11)
  %conv8.i.i129.i = add i8 %98, -4
  br label %vsxxxaa_drop_bytes.exit.i.i

vsxxxaa_drop_bytes.exit.i.i:                      ; preds = %if.else.i.i130.i, %if.then26.i.vsxxxaa_drop_bytes.exit.i.i_crit_edge
  %storemerge.i.i131.i = phi i8 [ %conv8.i.i129.i, %if.else.i.i130.i ], [ 0, %if.then26.i.vsxxxaa_drop_bytes.exit.i.i_crit_edge ]
  %100 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %storemerge.i.i131.i, ptr %count.i, align 1
  %trunc.i.i = trunc i8 %88 to i4
  %101 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.24)
  switch i4 %trunc.i.i, label %sw.default.i.i.i [
    i4 2, label %sw.bb.i.i.i
    i4 4, label %sw.bb1.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %vsxxxaa_drop_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 @strlcpy(ptr noundef %name.i3, ptr noundef nonnull @.str.17, i32 noundef 64) #7
  br label %vsxxxaa_detection_done.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %vsxxxaa_drop_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i.i = tail call i32 @strlcpy(ptr noundef %name.i3, ptr noundef nonnull @.str.18, i32 noundef 64) #7
  br label %vsxxxaa_detection_done.exit.i.i

sw.default.i.i.i:                                 ; preds = %vsxxxaa_drop_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i80.i.i = zext i8 %92 to i32
  %call9.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i3, i32 noundef 64, ptr noundef nonnull @.str.19, i32 noundef %conv.i80.i.i) #7
  br label %vsxxxaa_detection_done.exit.i.i

vsxxxaa_detection_done.exit.i.i:                  ; preds = %sw.default.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %102 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %version.i.i, align 4
  %conv12.i.i.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %country.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %country.i.i, align 1
  %conv13.i.i.i = zext i8 %105 to i32
  %call15.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i3, i32 noundef %conv12.i.i.i, i32 noundef %conv13.i.i.i, ptr noundef %phys.i4) #10
  %conv25.i.i = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %96)
  %cmp.i132.i = icmp ult i8 %96, 32
  br i1 %cmp.i132.i, label %if.then.i.i, label %vsxxxaa_detection_done.exit.i.i.do.end37.i.i_crit_edge

vsxxxaa_detection_done.exit.i.i.do.end37.i.i_crit_edge: ; preds = %vsxxxaa_detection_done.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i.i

if.then.i.i:                                      ; preds = %vsxxxaa_detection_done.exit.i.i
  %conv17.i.i = zext i8 %84 to i32
  %and24.i133.i = and i32 %conv17.i.i, 1
  %and18.i134.i = lshr i32 %conv17.i.i, 2
  %and18.lobit.i135.i = and i32 %and18.i134.i, 1
  tail call void @input_event(ptr noundef %82, i32 noundef 1, i32 noundef 272, i32 noundef %and18.lobit.i135.i) #7
  %and21.i136.i = lshr i32 %conv17.i.i, 1
  %and21.lobit.i137.i = and i32 %and21.i136.i, 1
  tail call void @input_event(ptr noundef %82, i32 noundef 1, i32 noundef 274, i32 noundef %and21.lobit.i137.i) #7
  tail call void @input_event(ptr noundef %82, i32 noundef 1, i32 noundef 273, i32 noundef %and24.i133.i) #7
  tail call void @input_event(ptr noundef %82, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  tail call void @input_event(ptr noundef %82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp28.not.i.i = icmp eq i8 %96, 0
  br i1 %cmp28.not.i.i, label %if.then.i.i.do.end37.i.i_crit_edge, label %do.end.i.i

if.then.i.i.do.end37.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i3, ptr noundef %phys.i4, i32 noundef %conv25.i.i) #10
  br label %do.end37.i.i

do.end37.i.i:                                     ; preds = %do.end.i.i, %if.then.i.i.do.end37.i.i_crit_edge, %vsxxxaa_detection_done.exit.i.i.do.end37.i.i_crit_edge
  %call43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i3, ptr noundef %phys.i4) #10
  %106 = ptrtoint ptr %serio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %serio.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.serio, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.i.i, label %do.end37.i.i.while.body.i.i.preheader_crit_edge, label %if.then.i.i.i

do.end37.i.i.while.body.i.i.preheader_crit_edge:  ; preds = %do.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.preheader

if.then.i.i.i:                                    ; preds = %do.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i85.i.i = tail call i32 %109(ptr noundef %107, i8 noundef zeroext 83) #7
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.then.i.i.i, %do.end37.i.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %__ms.096.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 50, %while.body.i.i.preheader ]
  %dec.i.i = add nsw i32 %__ms.096.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #7
  %tobool.not.i139.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i139.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %111 = ptrtoint ptr %serio.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %serio.i.i, align 4
  %write.i86.i.i = getelementptr inbounds %struct.serio, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %write.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write.i86.i.i, align 8
  %tobool.not.i87.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i87.i.i, label %while.end.i.i.while.body51.i.i.preheader_crit_edge, label %if.then.i89.i.i

while.end.i.i.while.body51.i.i.preheader_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body51.i.i.preheader

if.then.i89.i.i:                                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i88.i.i = tail call i32 %114(ptr noundef %112, i8 noundef zeroext 82) #7
  br label %while.body51.i.i.preheader

while.body51.i.i.preheader:                       ; preds = %if.then.i89.i.i, %while.end.i.i.while.body51.i.i.preheader_crit_edge
  br label %while.body51.i.i

while.body51.i.i:                                 ; preds = %while.body51.i.i.while.body51.i.i_crit_edge, %while.body51.i.i.preheader
  %__ms47.097.i.i = phi i32 [ %dec49.i.i, %while.body51.i.i.while.body51.i.i_crit_edge ], [ 50, %while.body51.i.i.preheader ]
  %dec49.i.i = add nsw i32 %__ms47.097.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #7
  %tobool50.not.i.i = icmp eq i32 %dec49.i.i, 0
  br i1 %tobool50.not.i.i, label %while.end52.i.i, label %while.body51.i.i.while.body51.i.i_crit_edge

while.body51.i.i.while.body51.i.i_crit_edge:      ; preds = %while.body51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body51.i.i

while.end52.i.i:                                  ; preds = %while.body51.i.i
  %116 = ptrtoint ptr %serio.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %serio.i.i, align 4
  %write.i91.i.i = getelementptr inbounds %struct.serio, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %write.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write.i91.i.i, align 8
  %tobool.not.i92.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i92.i.i, label %while.end52.i.i.do.cond41thread-pre-split.i_crit_edge, label %if.then.i94.i.i

while.end52.i.i.do.cond41thread-pre-split.i_crit_edge: ; preds = %while.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond41thread-pre-split.i

if.then.i94.i.i:                                  ; preds = %while.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i93.i.i = tail call i32 %119(ptr noundef %117, i8 noundef zeroext 76) #7
  br label %do.cond41thread-pre-split.i

do.end37.i:                                       ; preds = %for.inc.i122.1.i.do.end37.i_crit_edge, %for.inc.i122.i.do.end37.i_crit_edge, %for.inc.i87.2.i.do.end37.i_crit_edge, %for.inc.i87.1.i.do.end37.i_crit_edge, %for.inc.i87.i.do.end37.i_crit_edge, %for.inc.i.i.do.end37.i_crit_edge
  %.sink.i = phi i32 [ 1, %for.inc.i.i.do.end37.i_crit_edge ], [ 3, %for.inc.i87.2.i.do.end37.i_crit_edge ], [ 2, %for.inc.i87.1.i.do.end37.i_crit_edge ], [ 1, %for.inc.i87.i.do.end37.i_crit_edge ], [ 2, %for.inc.i122.1.i.do.end37.i_crit_edge ], [ 1, %for.inc.i122.i.do.end37.i_crit_edge ]
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %.sink.i) #10
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %.sink.i) #10
  %120 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %count.i, align 1
  %conv.i141.i = zext i8 %121 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %conv.i141.i)
  %cmp.not.i142.i = icmp ult i32 %.sink.i, %conv.i141.i
  br i1 %cmp.not.i142.i, label %if.else.i147.i, label %do.end37.i.vsxxxaa_drop_bytes.exit149.i_crit_edge

do.end37.i.vsxxxaa_drop_bytes.exit149.i_crit_edge: ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_drop_bytes.exit149.i

if.else.i147.i:                                   ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i144.i = getelementptr i8, ptr %buf1.i, i32 %.sink.i
  %sub.i145.i = xor i32 %.sink.i, 15
  %122 = call ptr @memmove(ptr %buf1.i, ptr %add.ptr.i144.i, i32 %sub.i145.i)
  %123 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %count.i, align 1
  %125 = trunc i32 %.sink.i to i8
  %conv8.i146.i = sub i8 %124, %125
  br label %vsxxxaa_drop_bytes.exit149.i

vsxxxaa_drop_bytes.exit149.i:                     ; preds = %if.else.i147.i, %do.end37.i.vsxxxaa_drop_bytes.exit149.i_crit_edge
  %storemerge.i148.i = phi i8 [ %conv8.i146.i, %if.else.i147.i ], [ 0, %do.end37.i.vsxxxaa_drop_bytes.exit149.i_crit_edge ]
  %126 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %storemerge.i148.i, ptr %count.i, align 1
  br label %do.cond41.i

do.cond41thread-pre-split.i:                      ; preds = %if.then.i94.i.i, %while.end52.i.i.do.cond41thread-pre-split.i_crit_edge, %vsxxxaa_handle_ABS_packet.exit.i, %vsxxxaa_handle_REL_packet.exit.i
  %127 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %.pr.i = load i8, ptr %count.i, align 1
  br label %do.cond41.i

do.cond41.i:                                      ; preds = %do.cond41thread-pre-split.i, %vsxxxaa_drop_bytes.exit149.i
  %128 = phi i8 [ %.pr.i, %do.cond41thread-pre-split.i ], [ %storemerge.i148.i, %vsxxxaa_drop_bytes.exit149.i ]
  %cmp.not200.i = icmp eq i8 %128, 0
  br i1 %cmp.not200.i, label %do.cond41.i.vsxxxaa_parse_buffer.exit_crit_edge, label %do.cond41.i.land.rhs.lr.ph.i_crit_edge

do.cond41.i.land.rhs.lr.ph.i_crit_edge:           ; preds = %do.cond41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.lr.ph.i

do.cond41.i.vsxxxaa_parse_buffer.exit_crit_edge:  ; preds = %do.cond41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsxxxaa_parse_buffer.exit

do.end42.loopexit.i:                              ; preds = %do.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %count.i, align 1
  br label %vsxxxaa_parse_buffer.exit

vsxxxaa_parse_buffer.exit:                        ; preds = %do.end42.loopexit.i, %do.cond41.i.vsxxxaa_parse_buffer.exit_crit_edge, %if.else20.i.vsxxxaa_parse_buffer.exit_crit_edge, %vsxxxaa_smells_like_packet.exit74.i.vsxxxaa_parse_buffer.exit_crit_edge, %while.end.i.vsxxxaa_parse_buffer.exit_crit_edge, %vsxxxaa_queue_byte.exit.vsxxxaa_parse_buffer.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsxxxaa_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #11
  %call1 = tail call ptr @input_allocate_device() #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %serio3 = getelementptr inbounds %struct.vsxxxaa, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %serio, ptr %serio3, align 4
  %name = getelementptr inbounds %struct.vsxxxaa, ptr %call7.i.i, i32 0, i32 7
  %call4 = tail call i32 @strlcat(ptr noundef %name, ptr noundef nonnull @.str.22, i32 noundef 64) #7
  %phys = getelementptr inbounds %struct.vsxxxaa, ptr %call7.i.i, i32 0, i32 8
  %phys6 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %phys6)
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %call1, align 8
  %phys14 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %phys14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phys, ptr %phys14, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 19, ptr %id, align 4
  %dev15 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev15, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %7 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %evbit, align 4
  %or.i79 = or i32 %8, 14
  store i32 %or.i79, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %or.i84 = or i32 %10, 458752
  store i32 %or.i84, ptr %add.ptr.i, align 4
  %add.ptr.i85 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i85, align 4
  %or.i86 = or i32 %12, 1024
  store i32 %or.i86, ptr %add.ptr.i85, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %13 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %relbit, align 4
  %or.i88 = or i32 %14, 3
  store i32 %or.i88, ptr %relbit, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #7
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call32 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.end35:                                         ; preds = %if.end
  %write.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end35.serio_write.exit_crit_edge, label %if.then.i

if.end35.serio_write.exit_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %17(ptr noundef %serio, i8 noundef zeroext 84) #7
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %if.end35.serio_write.exit_crit_edge
  %call37 = tail call i32 @input_register_device(ptr noundef nonnull %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %serio_write.exit.cleanup_crit_edge, label %fail3

serio_write.exit.cleanup_crit_edge:               ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail3:                                            ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serio_close(ptr noundef %serio) #7
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.0 = phi i32 [ %call32, %if.end.fail2_crit_edge ], [ %call37, %fail3 ]
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %serio_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %serio_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsxxxaa_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #7
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 76, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 77, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 78, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_vsxxxaa__231_538_vsxxxaa_drv_init6, !8, !"__initcall__kmod_vsxxxaa__231_538_vsxxxaa_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 538, i32 1}
!9 = !{ptr @__exitcall_vsxxxaa_drv_exit, !8, !"__exitcall_vsxxxaa_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 531, i32 17}
!13 = !{ptr @vsxxxaa_drv, !14, !"vsxxxaa_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 527, i32 28}
!15 = !{ptr @vsxxaa_serio_ids, !16, !"vsxxaa_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 515, i32 31}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 127, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @vsxxxaa_queue_byte._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @vsxxxaa_queue_byte._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 392, i32 4}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vsxxxaa_parse_buffer._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @vsxxxaa_parse_buffer._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 427, i32 4}
!30 = !{ptr @vsxxxaa_parse_buffer._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vsxxxaa_parse_buffer._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 178, i32 4}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vsxxxaa_check_packet._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @vsxxxaa_check_packet._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 355, i32 4}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vsxxxaa_handle_POR_packet._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vsxxxaa_handle_POR_packet._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 364, i32 2}
!44 = !{ptr @vsxxxaa_handle_POR_packet._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vsxxxaa_handle_POR_packet._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 141, i32 24}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 146, i32 24}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 152, i32 5}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 157, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vsxxxaa_detection_done._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @vsxxxaa_detection_done._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 469, i32 23}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/mouse/vsxxxaa.c", i32 471, i32 45}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
