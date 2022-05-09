; ModuleID = '/llk/IR_all_yes/drivers/input/tablet/wacom_serial4.c_pt.bc'
source_filename = "../drivers/input/tablet/wacom_serial4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.70 = type { i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.wacom = type { ptr, %struct.completion, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author227 = internal constant [92 x i8] c"wacom_serial4.author=Julian Squires <julian@cipht.net>, Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [64 x i8] c"wacom_serial4.description=Wacom protocol 4 serial tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [54 x i8] c"wacom_serial4.file=drivers/input/tablet/wacom_serial4\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [26 x i8] c"wacom_serial4.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_wacom_serial4__234_617_wacom_drv_init6 = internal global ptr @wacom_drv_init, section ".initcall6.init", align 4
@wacom_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @wacom_serio_ids, i8 0, ptr null, ptr @wacom_interrupt, ptr @wacom_connect, ptr null, ptr null, ptr @wacom_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_wacom_drv_exit = internal global ptr @wacom_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wacom_serial4\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wacom protocol 4 serial tablet driver\00", [58 x i8] zeroinitializer }, align 32
@wacom_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 62 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@wacom_interrupt.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wacom_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/tablet/wacom_serial4.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"throwing away %d bytes of garbage\0A\00", [61 x i8] zeroinitializer }, align 32
@wacom_handle_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 288, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wacom got an unexpected response: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wacom_handle_response\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wacom_handle_response._entry_ptr = internal global ptr @wacom_handle_response._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wacom Cintiq\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Wacom Cintiq II\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wacom Penpartner\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Wacom Graphire\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wacom Digitizer II\00", [45 x i8] zeroinitializer }, align 32
@wacom_handle_model_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 254, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported Wacom model %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wacom_handle_model_response\00", [36 x i8] zeroinitializer }, align 32
@wacom_handle_model_response._entry_ptr = internal global ptr @wacom_handle_model_response._entry, section ".printk_index", align 4
@wacom_handle_model_response._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 260, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s tablet, version %u.%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wacom_handle_model_response._entry_ptr.20 = internal global ptr @wacom_handle_model_response._entry.17, section ".printk_index", align 4
@wacom_handle_configuration_response.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wacom_handle_configuration_response\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Configuration string: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"~R%x,%u,%u,%u,%u\00", [47 x i8] zeroinitializer }, align 32
@wacom_handle_configuration_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 271, ptr @.str.25, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get resolution\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wacom_handle_configuration_response._entry_ptr = internal global ptr @wacom_handle_configuration_response._entry, section ".printk_index", align 4
@wacom_handle_coordinates_response.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wacom_handle_coordinates_response\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Coordinates string: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"~C%u,%u\00", [24 x i8] zeroinitializer }, align 32
@wacom_handle_coordinates_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.3, i32 281, ptr @.str.25, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get max coordinates\0A\00", [33 x i8] zeroinitializer }, align 32
@wacom_handle_coordinates_response._entry_ptr = internal global ptr @wacom_handle_coordinates_response._entry, section ".printk_index", align 4
@tools = internal constant { [4 x %struct.anon.70], [32 x i8] } { [4 x %struct.anon.70] [%struct.anon.70 zeroinitializer, %struct.anon.70 { i32 2, i32 320 }, %struct.anon.70 { i32 10, i32 321 }, %struct.anon.70 { i32 6, i32 326 }], [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OC1\0DIT0\0DSR\0DST\0D\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PH1\0DST\0D\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MU1\0DOC1\0D~M0\0D~M1\0DIT0\0DIN0\0DSR\0DZF1\0DST\0D\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 35, i64 67, i64 82]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 16, i64 17236, i64 17492, i64 17748, i64 19284, i64 20556, i64 21828]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 16, i64 13621, i64 14129, i64 14384]
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"wacom_drv\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 606, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 617, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 610, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"wacom_serio_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 594, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 397, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 287, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 195, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 203, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 206, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 226, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 233, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 246, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 253, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 259, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 267, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 268, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 271, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 278, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 279, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 281, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"tools\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 156, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 533, i32 45 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 87, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 437, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 444, i32 9 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [40 x i8] c"../drivers/input/tablet/wacom_serial4.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 449, i32 9 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_wacom_drv_exit, ptr @__initcall__kmod_wacom_serial4__234_617_wacom_drv_init6, ptr @wacom_drv_exit, ptr @wacom_handle_configuration_response._entry, ptr @wacom_handle_configuration_response._entry_ptr, ptr @wacom_handle_coordinates_response._entry, ptr @wacom_handle_coordinates_response._entry_ptr, ptr @wacom_handle_model_response._entry, ptr @wacom_handle_model_response._entry.17, ptr @wacom_handle_model_response._entry_ptr, ptr @wacom_handle_model_response._entry_ptr.20, ptr @wacom_handle_response._entry, ptr @wacom_handle_response._entry_ptr, ptr @wacom_drv, ptr @.str, ptr @.str.1, ptr @wacom_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @tools, ptr @.str.30, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_handle_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_handle_model_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_handle_model_response._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_handle_configuration_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wacom_handle_coordinates_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tools to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @wacom_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wacom_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @serio_unregister_driver(ptr noundef nonnull @wacom_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %data)
  %tobool.not = icmp sgt i8 %data, -1
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idx = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idx, align 4
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %data)
  %cmp = icmp eq i8 %data, 13
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %data3 = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %data3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool6.not = icmp sgt i8 %4, -1
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wacom_handle_response(ptr noundef %1)
  %idx.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  br label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge, %if.end.thread
  %idx9 = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %6)
  %cmp10 = icmp ugt i32 %6, 30
  br i1 %cmp10, label %do.body, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wacom_interrupt.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wacom_interrupt, %if.then17)) #8
          to label %do.end [label %if.then17], !srcloc !106

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40
  %9 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wacom_interrupt.__UNIQUE_ID_ddebug233, ptr noundef %dev18, ptr noundef nonnull @.str.4, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %11 = call ptr @memset(ptr %idx9, i32 0, i32 36)
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end8.if.end21_crit_edge
  %12 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx9, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %idx9, align 4
  %arrayidx24 = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 %13
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %data, ptr %arrayidx24, align 1
  %15 = load i32, ptr %idx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp26 = icmp eq i32 %15, 7
  br i1 %cmp26, label %land.lhs.true28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end21
  %data22 = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %data22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool33.not = icmp sgt i8 %17, -1
  br i1 %tobool33.not, label %land.lhs.true28.cleanup_crit_edge, label %if.then34

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true28
  %and.i = and i8 %17, 64
  %and5.i = and i8 %17, 32
  %arrayidx8.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 3
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %19 to i32
  %and10.i = lshr i8 %19, 3
  %20 = and i8 %and10.i, 15
  %21 = and i8 %17, 3
  %and15.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %and15.i, 14
  %arrayidx17.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %23 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 7
  %or.i = or i32 %shl19.i, %shl.i
  %arrayidx21.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21.i, align 2
  %conv22.i = zext i8 %25 to i32
  %or23.i = or i32 %or.i, %conv22.i
  %and27.i = shl nuw nsw i32 %conv9.i, 14
  %shl28.i = and i32 %and27.i, 49152
  %arrayidx30.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 4
  %26 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx30.i, align 4
  %conv31.i = zext i8 %27 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 7
  %or33.i = or i32 %shl32.i, %shl28.i
  %arrayidx35.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %29 to i32
  %or37.i = or i32 %or33.i, %conv36.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %tobool.not.i = icmp eq i8 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and5.i)
  %tobool40.not.i = icmp eq i8 %and5.i, 0
  %30 = and i8 %17, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %30)
  %.not.i = icmp eq i8 %30, 96
  br i1 %.not.i, label %if.then.i, label %if.then34.if.end68.i_crit_edge

if.then34.if.end68.i_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 6
  %31 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx42.i, align 2
  %33 = and i8 %32, 127
  %and44.i = zext i8 %33 to i32
  %extra_z_bits.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %extra_z_bits.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %extra_z_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 0
  %shl47.i = shl nuw nsw i32 %and44.i, 1
  %and51.i = lshr i32 %conv9.i, 2
  %36 = and i32 %and51.i, 1
  %or53.i = or i32 %shl47.i, %36
  %z.0.i = select i1 %cmp.not.i, i32 %and44.i, i32 %or53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp55.i = icmp ugt i32 %35, 1
  %shl58.i = shl nuw nsw i32 %z.0.i, 1
  %37 = lshr i8 %17, 2
  %38 = and i8 %37, 1
  %39 = zext i8 %38 to i32
  %or64.i = or i32 %shl58.i, %39
  %z.1.i = select i1 %cmp55.i, i32 %or64.i, i32 %z.0.i
  %shl67.i = shl i32 64, %35
  %xor.i = xor i32 %z.1.i, %shl67.i
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then.i, %if.then34.if.end68.i_crit_edge
  %z.2.i = phi i32 [ %xor.i, %if.then.i ], [ -1, %if.then34.if.end68.i_crit_edge ]
  br i1 %tobool40.not.i, label %if.end68.i.if.end76.i_crit_edge, label %if.then70.i

if.end68.i.if.end76.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %eraser_mask.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %eraser_mask.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %eraser_mask.i, align 1
  %and73192.i = and i8 %41, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and73192.i)
  %tobool74.not.i = icmp eq i8 %and73192.i, 0
  %cond.i = select i1 %tobool74.not.i, i32 1, i32 2
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end76.i_crit_edge
  %tool.0.i = phi i32 [ %cond.i, %if.then70.i ], [ 3, %if.end68.i.if.end76.i_crit_edge ]
  %tool77.i = getelementptr inbounds %struct.wacom, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %tool77.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tool77.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tool.0.i, i32 %43)
  %cmp78.not.i = icmp eq i32 %tool.0.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp82.not.i = icmp eq i32 %43, 0
  %or.cond193.i = or i1 %cmp78.not.i, %cmp82.not.i
  br i1 %or.cond193.i, label %if.end76.i.if.end88.i_crit_edge, label %if.then84.i

if.end76.i.if.end88.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then84.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %input_id.i = getelementptr [4 x %struct.anon.70], ptr @tools, i32 0, i32 %43, i32 1
  %46 = ptrtoint ptr %input_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %input_id.i, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef %47, i32 noundef 0) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then84.i, %if.end76.i.if.end88.i_crit_edge
  %50 = ptrtoint ptr %tool77.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %tool.0.i, ptr %tool77.i, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %input_id92.i = getelementptr [4 x %struct.anon.70], ptr @tools, i32 0, i32 %tool.0.i, i32 1
  %53 = ptrtoint ptr %input_id92.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %input_id92.i, align 4
  %and.lobit.i = lshr exact i8 %and.i, 6
  %55 = zext i8 %and.lobit.i to i32
  tail call void @input_event(ptr noundef %52, i32 noundef 1, i32 noundef %54, i32 noundef %55) #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  br i1 %tobool.not.i, label %if.end88.i.cond.end.i_crit_edge, label %cond.true.i

if.end88.i.cond.end.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx91.i = getelementptr [4 x %struct.anon.70], ptr @tools, i32 0, i32 %tool.0.i
  %58 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx91.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end88.i.cond.end.i_crit_edge
  %cond98.i = phi i32 [ %59, %cond.true.i ], [ 0, %if.end88.i.cond.end.i_crit_edge ]
  tail call void @input_event(ptr noundef %57, i32 noundef 3, i32 noundef 40, i32 noundef %cond98.i) #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %61, i32 noundef 3, i32 noundef 0, i32 noundef %or23.i) #8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %63, i32 noundef 3, i32 noundef 1, i32 noundef %or37.i) #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %65, i32 noundef 3, i32 noundef 24, i32 noundef %z.2.i) #8
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %conv115.i = zext i8 %20 to i32
  %and116.i = and i32 %conv115.i, 1
  br i1 %tobool40.not.i, label %if.else113.i, label %if.then103.i

if.then103.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %67, i32 noundef 1, i32 noundef 330, i32 noundef %and116.i) #8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %and109.i = lshr i32 %conv115.i, 1
  %and109.lobit.i = and i32 %and109.i, 1
  tail call void @input_event(ptr noundef %69, i32 noundef 1, i32 noundef 331, i32 noundef %and109.lobit.i) #8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %and112.i = lshr i32 %conv115.i, 2
  %and112.lobit.i = and i32 %and112.i, 1
  tail call void @input_event(ptr noundef %71, i32 noundef 1, i32 noundef 332, i32 noundef %and112.lobit.i) #8
  br label %wacom_handle_packet.exit

if.else113.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %67, i32 noundef 1, i32 noundef 272, i32 noundef %and116.i) #8
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %and119.i = lshr i32 %conv115.i, 1
  %and119.lobit.i = and i32 %and119.i, 1
  tail call void @input_event(ptr noundef %73, i32 noundef 1, i32 noundef 273, i32 noundef %and119.lobit.i) #8
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %and122.i = lshr i32 %conv115.i, 2
  %and122.lobit.i = and i32 %and122.i, 1
  tail call void @input_event(ptr noundef %75, i32 noundef 1, i32 noundef 274, i32 noundef %and122.lobit.i) #8
  %arrayidx124.i = getelementptr %struct.wacom, ptr %1, i32 0, i32 13, i32 6
  %76 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx124.i, align 2
  %conv125.i = zext i8 %77 to i32
  %and126.i = lshr i32 %conv125.i, 4
  %78 = and i32 %and126.i, 3
  %and131.i = and i32 %conv125.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  %sub.i = sub nsw i32 0, %78
  %spec.select.i = select i1 %tobool132.not.i, i32 %78, i32 %sub.i
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %80, i32 noundef 2, i32 noundef 8, i32 noundef %spec.select.i) #8
  br label %wacom_handle_packet.exit

wacom_handle_packet.exit:                         ; preds = %if.else113.i, %if.then103.i
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %wacom_handle_packet.exit, %if.then7
  %idx9.sink = phi ptr [ %idx9, %wacom_handle_packet.exit ], [ %idx.i, %if.then7 ]
  %83 = call ptr @memset(ptr %idx9.sink, i32 0, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true28.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wacom_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #11
  %call1 = tail call ptr @input_allocate_device() #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.free_device_crit_edge, label %if.end

entry.free_device_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_device

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %extra_z_bits = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %extra_z_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %extra_z_bits, align 4
  %eraser_mask = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %eraser_mask to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %eraser_mask, align 1
  %idx = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idx, align 8
  %tool = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %tool to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tool, align 4
  %phys = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 14
  %phys3 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef %phys3)
  %phys8 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %phys8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %phys, ptr %phys8, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 62, ptr %vendor, align 2
  %extra = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %extra, align 1
  %conv = zext i8 %10 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %product, align 4
  %dev12 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev12, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %13 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 14, ptr %evbit, align 8
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 40, ptr noundef %absbit) #8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 320, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 321, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 326, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 330, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 331, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 272, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 273, ptr noundef %keybit) #8
  tail call void @_set_bit(i32 noundef 274, ptr noundef %keybit) #8
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call30 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end.free_device_crit_edge

if.end.free_device_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_device

if.end33:                                         ; preds = %if.end
  %expect.i.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 35, ptr %expect.i.i, align 8
  %cmd_done.i.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %cmd_done.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cmd_done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #8
  %write.i.i.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %17 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %if.end33.close_serio_crit_edge, label %serio_write.exit.i.i.i

if.end33.close_serio_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i.i:                           ; preds = %if.end33
  %call.i.i.i.i = tail call i32 %18(ptr noundef %serio, i8 noundef zeroext 126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.1.i, label %serio_write.exit.i.i.i.close_serio_crit_edge

serio_write.exit.i.i.i.close_serio_crit_edge:     ; preds = %serio_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

land.rhs.i.i.1.i:                                 ; preds = %serio_write.exit.i.i.i
  %19 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i.1.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.1.i, label %land.rhs.i.i.1.i.close_serio_crit_edge, label %serio_write.exit.i.i.1.i

land.rhs.i.i.1.i.close_serio_crit_edge:           ; preds = %land.rhs.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i.1.i:                         ; preds = %land.rhs.i.i.1.i
  %call.i.i.i.1.i = tail call i32 %20(ptr noundef %serio, i8 noundef zeroext 35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1.i)
  %tobool.not.i.i.1.i = icmp eq i32 %call.i.i.i.1.i, 0
  br i1 %tobool.not.i.i.1.i, label %if.end.i.i, label %serio_write.exit.i.i.1.i.close_serio_crit_edge

serio_write.exit.i.i.1.i.close_serio_crit_edge:   ; preds = %serio_write.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

if.end.i.i:                                       ; preds = %serio_write.exit.i.i.1.i
  %call2.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.wacom_send_and_wait.exit.i_crit_edge

if.end.i.i.wacom_send_and_wait.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wacom_send_and_wait.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wacom_handle_response(ptr noundef nonnull %call7.i.i) #8
  br label %wacom_send_and_wait.exit.i

wacom_send_and_wait.exit.i:                       ; preds = %if.then3.i.i, %if.end.i.i.wacom_send_and_wait.exit.i_crit_edge
  %21 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %expect.i.i, align 8
  %result.i.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %wacom_send_and_wait.exit.i.close_serio_crit_edge

wacom_send_and_wait.exit.i.close_serio_crit_edge: ; preds = %wacom_send_and_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

if.end.i:                                         ; preds = %wacom_send_and_wait.exit.i
  %res_x.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %res_x.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i, label %if.end.i.if.then3.i_crit_edge, label %land.lhs.true.i

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %res_y.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %res_y.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res_y.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i = icmp eq i32 %27, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.then3.i_crit_edge, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

land.lhs.true.i.if.then3.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %land.lhs.true.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %28 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 82, ptr %expect.i.i, align 8
  %29 = ptrtoint ptr %cmd_done.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmd_done.i.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #8
  %30 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i41.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i41.i, label %if.then3.i.close_serio_crit_edge, label %serio_write.exit.i.i46.i

if.then3.i.close_serio_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i46.i:                         ; preds = %if.then3.i
  %call.i.i.i43.i = tail call i32 %31(ptr noundef %serio, i8 noundef zeroext 126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43.i)
  %tobool.not.i.i45.i = icmp eq i32 %call.i.i.i43.i, 0
  br i1 %tobool.not.i.i45.i, label %land.rhs.i.i40.1.i, label %serio_write.exit.i.i46.i.close_serio_crit_edge

serio_write.exit.i.i46.i.close_serio_crit_edge:   ; preds = %serio_write.exit.i.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

land.rhs.i.i40.1.i:                               ; preds = %serio_write.exit.i.i46.i
  %32 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i41.1.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i41.1.i, label %land.rhs.i.i40.1.i.close_serio_crit_edge, label %serio_write.exit.i.i46.1.i

land.rhs.i.i40.1.i.close_serio_crit_edge:         ; preds = %land.rhs.i.i40.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i46.1.i:                       ; preds = %land.rhs.i.i40.1.i
  %call.i.i.i43.1.i = tail call i32 %33(ptr noundef %serio, i8 noundef zeroext 82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43.1.i)
  %tobool.not.i.i45.1.i = icmp eq i32 %call.i.i.i43.1.i, 0
  br i1 %tobool.not.i.i45.1.i, label %land.rhs.i.i40.2.i, label %serio_write.exit.i.i46.1.i.close_serio_crit_edge

serio_write.exit.i.i46.1.i.close_serio_crit_edge: ; preds = %serio_write.exit.i.i46.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

land.rhs.i.i40.2.i:                               ; preds = %serio_write.exit.i.i46.1.i
  %34 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i41.2.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i41.2.i, label %land.rhs.i.i40.2.i.close_serio_crit_edge, label %serio_write.exit.i.i46.2.i

land.rhs.i.i40.2.i.close_serio_crit_edge:         ; preds = %land.rhs.i.i40.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i46.2.i:                       ; preds = %land.rhs.i.i40.2.i
  %call.i.i.i43.2.i = tail call i32 %35(ptr noundef %serio, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43.2.i)
  %tobool.not.i.i45.2.i = icmp eq i32 %call.i.i.i43.2.i, 0
  br i1 %tobool.not.i.i45.2.i, label %if.end.i49.i, label %serio_write.exit.i.i46.2.i.close_serio_crit_edge

serio_write.exit.i.i46.2.i.close_serio_crit_edge: ; preds = %serio_write.exit.i.i46.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

if.end.i49.i:                                     ; preds = %serio_write.exit.i.i46.2.i
  %call2.i47.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i47.i)
  %cmp.i48.i = icmp eq i32 %call2.i47.i, 0
  br i1 %cmp.i48.i, label %if.then3.i50.i, label %if.end.i49.i.wacom_send_and_wait.exit54.i_crit_edge

if.end.i49.i.wacom_send_and_wait.exit54.i_crit_edge: ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wacom_send_and_wait.exit54.i

if.then3.i50.i:                                   ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wacom_handle_response(ptr noundef nonnull %call7.i.i) #8
  br label %wacom_send_and_wait.exit54.i

wacom_send_and_wait.exit54.i:                     ; preds = %if.then3.i50.i, %if.end.i49.i.wacom_send_and_wait.exit54.i_crit_edge
  %36 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %expect.i.i, align 8
  %37 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool5.not.i = icmp eq i32 %38, 0
  br i1 %tobool5.not.i, label %wacom_send_and_wait.exit54.i.if.end8.i_crit_edge, label %wacom_send_and_wait.exit54.i.close_serio_crit_edge

wacom_send_and_wait.exit54.i.close_serio_crit_edge: ; preds = %wacom_send_and_wait.exit54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

wacom_send_and_wait.exit54.i.if.end8.i_crit_edge: ; preds = %wacom_send_and_wait.exit54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %wacom_send_and_wait.exit54.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge
  %max_x.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool9.not.i = icmp eq i32 %40, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.then12.i_crit_edge, label %land.lhs.true10.i

if.end8.i.if.then12.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

land.lhs.true10.i:                                ; preds = %if.end8.i
  %max_y.i = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_y.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool11.not.i = icmp eq i32 %42, 0
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.then12.i_crit_edge, label %land.lhs.true10.i.if.end17.i_crit_edge

land.lhs.true10.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

land.lhs.true10.i.if.then12.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then12.i:                                      ; preds = %land.lhs.true10.i.if.then12.i_crit_edge, %if.end8.i.if.then12.i_crit_edge
  %43 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 67, ptr %expect.i.i, align 8
  %44 = ptrtoint ptr %cmd_done.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cmd_done.i.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #8
  %45 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i62.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i62.i, label %if.then12.i.close_serio_crit_edge, label %serio_write.exit.i.i67.i

if.then12.i.close_serio_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i67.i:                         ; preds = %if.then12.i
  %call.i.i.i64.i = tail call i32 %46(ptr noundef %serio, i8 noundef zeroext 126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64.i)
  %tobool.not.i.i66.i = icmp eq i32 %call.i.i.i64.i, 0
  br i1 %tobool.not.i.i66.i, label %land.rhs.i.i61.1.i, label %serio_write.exit.i.i67.i.close_serio_crit_edge

serio_write.exit.i.i67.i.close_serio_crit_edge:   ; preds = %serio_write.exit.i.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

land.rhs.i.i61.1.i:                               ; preds = %serio_write.exit.i.i67.i
  %47 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i62.1.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i62.1.i, label %land.rhs.i.i61.1.i.close_serio_crit_edge, label %serio_write.exit.i.i67.1.i

land.rhs.i.i61.1.i.close_serio_crit_edge:         ; preds = %land.rhs.i.i61.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i67.1.i:                       ; preds = %land.rhs.i.i61.1.i
  %call.i.i.i64.1.i = tail call i32 %48(ptr noundef %serio, i8 noundef zeroext 67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64.1.i)
  %tobool.not.i.i66.1.i = icmp eq i32 %call.i.i.i64.1.i, 0
  br i1 %tobool.not.i.i66.1.i, label %land.rhs.i.i61.2.i, label %serio_write.exit.i.i67.1.i.close_serio_crit_edge

serio_write.exit.i.i67.1.i.close_serio_crit_edge: ; preds = %serio_write.exit.i.i67.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

land.rhs.i.i61.2.i:                               ; preds = %serio_write.exit.i.i67.1.i
  %49 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i62.2.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i62.2.i, label %land.rhs.i.i61.2.i.close_serio_crit_edge, label %serio_write.exit.i.i67.2.i

land.rhs.i.i61.2.i.close_serio_crit_edge:         ; preds = %land.rhs.i.i61.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i67.2.i:                       ; preds = %land.rhs.i.i61.2.i
  %call.i.i.i64.2.i = tail call i32 %50(ptr noundef %serio, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64.2.i)
  %tobool.not.i.i66.2.i = icmp eq i32 %call.i.i.i64.2.i, 0
  br i1 %tobool.not.i.i66.2.i, label %if.end.i70.i, label %serio_write.exit.i.i67.2.i.close_serio_crit_edge

serio_write.exit.i.i67.2.i.close_serio_crit_edge: ; preds = %serio_write.exit.i.i67.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

if.end.i70.i:                                     ; preds = %serio_write.exit.i.i67.2.i
  %call2.i68.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i68.i)
  %cmp.i69.i = icmp eq i32 %call2.i68.i, 0
  br i1 %cmp.i69.i, label %if.then3.i71.i, label %if.end.i70.i.wacom_send_and_wait.exit75.i_crit_edge

if.end.i70.i.wacom_send_and_wait.exit75.i_crit_edge: ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wacom_send_and_wait.exit75.i

if.then3.i71.i:                                   ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wacom_handle_response(ptr noundef nonnull %call7.i.i) #8
  br label %wacom_send_and_wait.exit75.i

wacom_send_and_wait.exit75.i:                     ; preds = %if.then3.i71.i, %if.end.i70.i.wacom_send_and_wait.exit75.i_crit_edge
  %51 = ptrtoint ptr %expect.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %expect.i.i, align 8
  %52 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool14.not.i = icmp eq i32 %53, 0
  br i1 %tobool14.not.i, label %wacom_send_and_wait.exit75.i.if.end17.i_crit_edge, label %wacom_send_and_wait.exit75.i.close_serio_crit_edge

wacom_send_and_wait.exit75.i.close_serio_crit_edge: ; preds = %wacom_send_and_wait.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

wacom_send_and_wait.exit75.i.if.end17.i_crit_edge: ; preds = %wacom_send_and_wait.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %wacom_send_and_wait.exit75.i.if.end17.i_crit_edge, %land.lhs.true10.i.if.end17.i_crit_edge
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %version.i.i = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17236, i16 %57)
  %switch.selectcmp.i.i = icmp eq i16 %57, 17236
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.39, ptr @.str.40
  call void @__sanitizer_cov_trace_const_cmp2(i16 20556, i16 %57)
  %switch.selectcmp2.i.i = icmp eq i16 %57, 20556
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, ptr @.str.38, ptr %switch.select.i.i
  br label %land.rhs.i.i79.i

land.rhs.i.i79.i:                                 ; preds = %serio_write.exit.i.i85.i.land.rhs.i.i79.i_crit_edge, %if.end17.i
  %command.addr.05.i.i77.i = phi ptr [ %switch.select3.i.i, %if.end17.i ], [ %incdec.ptr.i.i83.i, %serio_write.exit.i.i85.i.land.rhs.i.i79.i_crit_edge ]
  %58 = ptrtoint ptr %command.addr.05.i.i77.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %command.addr.05.i.i77.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool1.not.i.i78.i = icmp eq i8 %59, 0
  br i1 %tobool1.not.i.i78.i, label %if.end37, label %for.body.i.i81.i

for.body.i.i81.i:                                 ; preds = %land.rhs.i.i79.i
  %60 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write.i.i.i.i, align 8
  %tobool.not.i.i.i80.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i80.i, label %for.body.i.i81.i.close_serio_crit_edge, label %serio_write.exit.i.i85.i

for.body.i.i81.i.close_serio_crit_edge:           ; preds = %for.body.i.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i85.i:                         ; preds = %for.body.i.i81.i
  %call.i.i.i82.i = tail call i32 %61(ptr noundef %serio, i8 noundef zeroext %59) #8
  %incdec.ptr.i.i83.i = getelementptr i8, ptr %command.addr.05.i.i77.i, i32 1
  %tobool.not.i.i84.i = icmp eq i32 %call.i.i.i82.i, 0
  br i1 %tobool.not.i.i84.i, label %serio_write.exit.i.i85.i.land.rhs.i.i79.i_crit_edge, label %serio_write.exit.i.i85.i.close_serio_crit_edge

serio_write.exit.i.i85.i.close_serio_crit_edge:   ; preds = %serio_write.exit.i.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

serio_write.exit.i.i85.i.land.rhs.i.i79.i_crit_edge: ; preds = %serio_write.exit.i.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i79.i

if.end37:                                         ; preds = %land.rhs.i.i79.i
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %propbit) #8
  %flags = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 8
  %and = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then40, label %if.end37.if.end43_crit_edge

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %propbit, align 4
  %or.i = or i32 %65, 1
  store i32 %or.i, ptr %propbit, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 8
  %and45 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %if.then47

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i, align 4
  %or.i125 = or i32 %69, 4096
  store i32 %or.i125, ptr %add.ptr.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end43.if.end50_crit_edge
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 8
  %and52 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end56_crit_edge, label %if.then54

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %72 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %relbit, align 4
  %or.i126 = or i32 %73, 256
  store i32 %or.i126, ptr %relbit, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end50.if.end56_crit_edge
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %76 = ptrtoint ptr %res_x.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %res_x.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %75) #8
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 26
  %78 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i127 = icmp eq ptr %79, null
  br i1 %tobool.not.i127, label %if.end56.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end56.input_abs_set_res.exit_crit_edge:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i = getelementptr %struct.input_absinfo, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end56.input_abs_set_res.exit_crit_edge
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call7.i.i, align 8
  %res_y = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 8
  %83 = ptrtoint ptr %res_y to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %res_y, align 8
  tail call void @input_alloc_absinfo(ptr noundef %82) #8
  %absinfo.i129 = getelementptr inbounds %struct.input_dev, ptr %82, i32 0, i32 26
  %85 = ptrtoint ptr %absinfo.i129 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %absinfo.i129, align 8
  %tobool.not.i130 = icmp eq ptr %86, null
  br i1 %tobool.not.i130, label %input_abs_set_res.exit.input_abs_set_res.exit134_crit_edge, label %if.then.i132

input_abs_set_res.exit.input_abs_set_res.exit134_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit134

if.then.i132:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i131 = getelementptr %struct.input_absinfo, ptr %86, i32 1, i32 5
  %87 = ptrtoint ptr %resolution.i131 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %resolution.i131, align 4
  br label %input_abs_set_res.exit134

input_abs_set_res.exit134:                        ; preds = %if.then.i132, %input_abs_set_res.exit.input_abs_set_res.exit134_crit_edge
  %88 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call7.i.i, align 8
  %90 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_x.i, align 4
  tail call void @input_set_abs_params(ptr noundef %89, i32 noundef 0, i32 noundef 0, i32 noundef %91, i32 noundef 0, i32 noundef 0) #8
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %max_y = getelementptr inbounds %struct.wacom, ptr %call7.i.i, i32 0, i32 10
  %94 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_y, align 8
  tail call void @input_set_abs_params(ptr noundef %93, i32 noundef 1, i32 noundef 0, i32 noundef %95, i32 noundef 0, i32 noundef 0) #8
  %96 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call7.i.i, align 8
  %98 = ptrtoint ptr %extra_z_bits to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %extra_z_bits, align 4
  %add = add i32 %99, 7
  %notmask = shl nsw i32 -1, %add
  %sub = xor i32 %notmask, -1
  tail call void @input_set_abs_params(ptr noundef %97, i32 noundef 24, i32 noundef -1, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #8
  %100 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call7.i.i, align 8
  %call64 = tail call i32 @input_register_device(ptr noundef %101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %input_abs_set_res.exit134.cleanup_crit_edge, label %input_abs_set_res.exit134.close_serio_crit_edge

input_abs_set_res.exit134.close_serio_crit_edge:  ; preds = %input_abs_set_res.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_serio

input_abs_set_res.exit134.cleanup_crit_edge:      ; preds = %input_abs_set_res.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

close_serio:                                      ; preds = %input_abs_set_res.exit134.close_serio_crit_edge, %serio_write.exit.i.i85.i.close_serio_crit_edge, %for.body.i.i81.i.close_serio_crit_edge, %wacom_send_and_wait.exit75.i.close_serio_crit_edge, %serio_write.exit.i.i67.2.i.close_serio_crit_edge, %land.rhs.i.i61.2.i.close_serio_crit_edge, %serio_write.exit.i.i67.1.i.close_serio_crit_edge, %land.rhs.i.i61.1.i.close_serio_crit_edge, %serio_write.exit.i.i67.i.close_serio_crit_edge, %if.then12.i.close_serio_crit_edge, %wacom_send_and_wait.exit54.i.close_serio_crit_edge, %serio_write.exit.i.i46.2.i.close_serio_crit_edge, %land.rhs.i.i40.2.i.close_serio_crit_edge, %serio_write.exit.i.i46.1.i.close_serio_crit_edge, %land.rhs.i.i40.1.i.close_serio_crit_edge, %serio_write.exit.i.i46.i.close_serio_crit_edge, %if.then3.i.close_serio_crit_edge, %wacom_send_and_wait.exit.i.close_serio_crit_edge, %serio_write.exit.i.i.1.i.close_serio_crit_edge, %land.rhs.i.i.1.i.close_serio_crit_edge, %serio_write.exit.i.i.i.close_serio_crit_edge, %if.end33.close_serio_crit_edge
  %err.0 = phi i32 [ %call64, %input_abs_set_res.exit134.close_serio_crit_edge ], [ %call.i.i.i.1.i, %serio_write.exit.i.i.1.i.close_serio_crit_edge ], [ -1, %land.rhs.i.i.1.i.close_serio_crit_edge ], [ %call.i.i.i.i, %serio_write.exit.i.i.i.close_serio_crit_edge ], [ -1, %if.end33.close_serio_crit_edge ], [ %call.i.i.i43.2.i, %serio_write.exit.i.i46.2.i.close_serio_crit_edge ], [ -1, %land.rhs.i.i40.2.i.close_serio_crit_edge ], [ %call.i.i.i43.1.i, %serio_write.exit.i.i46.1.i.close_serio_crit_edge ], [ -1, %land.rhs.i.i40.1.i.close_serio_crit_edge ], [ %call.i.i.i43.i, %serio_write.exit.i.i46.i.close_serio_crit_edge ], [ -1, %if.then3.i.close_serio_crit_edge ], [ %call.i.i.i64.2.i, %serio_write.exit.i.i67.2.i.close_serio_crit_edge ], [ -1, %land.rhs.i.i61.2.i.close_serio_crit_edge ], [ %call.i.i.i64.1.i, %serio_write.exit.i.i67.1.i.close_serio_crit_edge ], [ -1, %land.rhs.i.i61.1.i.close_serio_crit_edge ], [ %call.i.i.i64.i, %serio_write.exit.i.i67.i.close_serio_crit_edge ], [ -1, %if.then12.i.close_serio_crit_edge ], [ %53, %wacom_send_and_wait.exit75.i.close_serio_crit_edge ], [ %38, %wacom_send_and_wait.exit54.i.close_serio_crit_edge ], [ %23, %wacom_send_and_wait.exit.i.close_serio_crit_edge ], [ -1, %for.body.i.i81.i.close_serio_crit_edge ], [ %call.i.i.i82.i, %serio_write.exit.i.i85.i.close_serio_crit_edge ]
  tail call void @serio_close(ptr noundef %serio) #8
  br label %free_device

free_device:                                      ; preds = %close_serio, %if.end.free_device_crit_edge, %entry.free_device_crit_edge
  %err.1 = phi i32 [ %call30, %if.end.free_device_crit_edge ], [ %err.0, %close_serio ], [ -12, %entry.free_device_crit_edge ]
  %driver_data.i.i135 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %102 = ptrtoint ptr %driver_data.i.i135 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %driver_data.i.i135, align 4
  tail call void @input_free_device(ptr noundef %call1) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_device, %input_abs_set_res.exit134.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_device ], [ 0, %input_abs_set_res.exit134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wacom_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wacom_handle_response(ptr noundef %wacom) unnamed_addr #2 align 64 {
entry:
  %skip.i = alloca i32, align 4
  %major_v.i = alloca i32, align 4
  %minor_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %1)
  %cmp.not = icmp eq i8 %1, 126
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.wacom, ptr %wacom, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %expect = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 3
  %4 = ptrtoint ptr %expect to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %expect, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6.not = icmp eq i8 %3, %5
  br i1 %cmp6.not, label %if.else, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wacom, align 4
  %dev8 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.5, ptr noundef %data) #12
  %result = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %result, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %result10 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 2
  %9 = ptrtoint ptr %result10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %result10, align 4
  %10 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.else.if.end_crit_edge [
    i8 35, label %sw.bb
    i8 82, label %sw.bb14
    i8 67, label %sw.bb15
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb:                                            ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major_v.i) #8
  %11 = ptrtoint ptr %major_v.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %major_v.i, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor_v.i) #8
  %12 = ptrtoint ptr %minor_v.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %minor_v.i, align 4, !annotation !107
  %call.i = tail call ptr @strrchr(ptr noundef %data, i32 noundef 86) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.if.then2.i_crit_edge, label %if.then.i

sw.bb.if.then2.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

if.then.i:                                        ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %call1.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %major_v.i, ptr noundef nonnull %minor_v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1.i)
  %phi.cmp.i = icmp eq i32 %call1.i, 2
  br i1 %phi.cmp.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.if.then2.i_crit_edge

if.then.i.if.then2.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i.if.then2.i_crit_edge, %sw.bb.if.then2.i_crit_edge
  %13 = ptrtoint ptr %minor_v.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %minor_v.i, align 4
  %14 = ptrtoint ptr %major_v.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %major_v.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i.if.end3.i_crit_edge
  %arrayidx.i = getelementptr %struct.wacom, ptr %wacom, i32 0, i32 13, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %16 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx6.i = getelementptr %struct.wacom, ptr %wacom, i32 0, i32 13, i32 3
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %18 to i16
  %or.i = or i16 %shl.i, %conv7.i
  %19 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %or.i, label %do.end.i [
    i16 20556, label %if.end3.i.sw.bb.i_crit_edge
    i16 17492, label %if.end3.i.sw.bb.i_crit_edge43
    i16 17236, label %sw.bb38.i
    i16 17748, label %sw.bb46.i
    i16 19284, label %if.end3.i.sw.bb56.i_crit_edge
    i16 21828, label %if.end3.i.sw.bb56.i_crit_edge44
  ]

if.end3.i.sw.bb56.i_crit_edge44:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56.i

if.end3.i.sw.bb56.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56.i

if.end3.i.sw.bb.i_crit_edge43:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end3.i.sw.bb.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end3.i.sw.bb.i_crit_edge, %if.end3.i.sw.bb.i_crit_edge43
  %conv10.i = zext i8 %16 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %conv14.i = zext i8 %18 to i32
  %or15.i = or i32 %shl11.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20556, i32 %or15.i)
  %cmp16.i = icmp eq i32 %or15.i, 20556
  %20 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wacom, align 4
  %.str.10..str.11.i = select i1 %cmp16.i, ptr @.str.10, ptr @.str.11
  %..i = select i1 %cmp16.i, i16 20556, i16 17492
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.str.10..str.11.i, ptr %21, align 8
  %23 = load ptr, ptr %wacom, align 4
  %version24.i = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %version24.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %..i, ptr %version24.i, align 2
  %res_x.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 7
  %25 = ptrtoint ptr %res_x.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 508, ptr %res_x.i, align 4
  %res_y.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 8
  %26 = ptrtoint ptr %res_y.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 508, ptr %res_y.i, align 4
  %arrayidx27.i = getelementptr %struct.wacom, ptr %wacom, i32 0, i32 13, i32 5
  %27 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %28 to i16
  %shl29.i = shl nuw i16 %conv28.i, 8
  %arrayidx31.i = getelementptr %struct.wacom, ptr %wacom, i32 0, i32 13, i32 6
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx31.i, align 2
  %conv32.i = zext i8 %30 to i16
  %or33.i = or i16 %shl29.i, %conv32.i
  %31 = zext i16 %or33.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %or33.i, label %sw.bb.i.sw.epilog.i_crit_edge [
    i16 14129, label %sw.bb34.i
    i16 13621, label %sw.bb.i.sw.bb37.i_crit_edge
    i16 14384, label %sw.bb.i.sw.bb37.i_crit_edge45
  ]

sw.bb.i.sw.bb37.i_crit_edge45:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb37.i

sw.bb.i.sw.bb37.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb37.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb34.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %res_x.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2540, ptr %res_x.i, align 4
  %33 = ptrtoint ptr %res_y.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2540, ptr %res_y.i, align 4
  br label %sw.bb37.i

sw.bb37.i:                                        ; preds = %sw.bb34.i, %sw.bb.i.sw.bb37.i_crit_edge, %sw.bb.i.sw.bb37.i_crit_edge45
  %extra_z_bits.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 5
  %34 = ptrtoint ptr %extra_z_bits.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %extra_z_bits.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb37.i, %sw.bb.i.sw.epilog.i_crit_edge
  %flags.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 6
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %flags.i, align 4
  br label %do.end76.i

sw.bb38.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wacom, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.12, ptr %37, align 8
  %39 = load ptr, ptr %wacom, align 4
  %version43.i = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %version43.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 17236, ptr %version43.i, align 2
  %res_x44.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 7
  %41 = ptrtoint ptr %res_x44.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1000, ptr %res_x44.i, align 4
  %res_y45.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 8
  %42 = ptrtoint ptr %res_y45.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1000, ptr %res_y45.i, align 4
  br label %do.end76.i

sw.bb46.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wacom, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.13, ptr %44, align 8
  %46 = load ptr, ptr %wacom, align 4
  %version51.i = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %version51.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 17748, ptr %version51.i, align 2
  %res_x52.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 7
  %48 = ptrtoint ptr %res_x52.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1016, ptr %res_x52.i, align 4
  %res_y53.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 8
  %49 = ptrtoint ptr %res_y53.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1016, ptr %res_y53.i, align 4
  %max_x.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 9
  %50 = ptrtoint ptr %max_x.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5103, ptr %max_x.i, align 4
  %max_y.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 10
  %51 = ptrtoint ptr %max_y.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3711, ptr %max_y.i, align 4
  %extra_z_bits54.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 5
  %52 = ptrtoint ptr %extra_z_bits54.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %extra_z_bits54.i, align 4
  %eraser_mask.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 4
  %53 = ptrtoint ptr %eraser_mask.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %eraser_mask.i, align 1
  %flags55.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 6
  %54 = ptrtoint ptr %flags55.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %flags55.i, align 4
  br label %do.end76.i

sw.bb56.i:                                        ; preds = %if.end3.i.sw.bb56.i_crit_edge, %if.end3.i.sw.bb56.i_crit_edge44
  %55 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wacom, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.14, ptr %56, align 8
  %58 = load ptr, ptr %wacom, align 4
  %version61.i = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %version61.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 21828, ptr %version61.i, align 2
  %60 = ptrtoint ptr %major_v.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %major_v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp62.i = icmp eq i32 %61, 1
  br i1 %cmp62.i, label %land.lhs.true.i, label %sw.bb56.i.do.end76.i_crit_edge

sw.bb56.i.do.end76.i_crit_edge:                   ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76.i

land.lhs.true.i:                                  ; preds = %sw.bb56.i
  %62 = ptrtoint ptr %minor_v.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %minor_v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp64.i = icmp slt i32 %63, 3
  br i1 %cmp64.i, label %if.then66.i, label %land.lhs.true.i.do.end76.i_crit_edge

land.lhs.true.i.do.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end76.i

if.then66.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %extra_z_bits67.i = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 5
  %64 = ptrtoint ptr %extra_z_bits67.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %extra_z_bits67.i, align 4
  br label %do.end76.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wacom, align 4
  %dev70.i = getelementptr inbounds %struct.input_dev, ptr %66, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70.i, ptr noundef nonnull @.str.15, ptr noundef %data) #12
  %67 = ptrtoint ptr %result10 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -19, ptr %result10, align 4
  br label %wacom_handle_model_response.exit

do.end76.i:                                       ; preds = %if.then66.i, %land.lhs.true.i.do.end76.i_crit_edge, %sw.bb56.i.do.end76.i_crit_edge, %sw.bb46.i, %sw.bb38.i, %sw.epilog.i
  %68 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wacom, align 4
  %dev78.i = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 40
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %72 = ptrtoint ptr %major_v.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %major_v.i, align 4
  %74 = ptrtoint ptr %minor_v.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %minor_v.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev78.i, ptr noundef nonnull @.str.18, ptr noundef %71, i32 noundef %73, i32 noundef %75) #12
  br label %wacom_handle_model_response.exit

wacom_handle_model_response.exit:                 ; preds = %do.end76.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor_v.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major_v.i) #8
  br label %if.end

sw.bb14:                                          ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip.i) #8
  %76 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %skip.i, align 4, !annotation !107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wacom_handle_configuration_response.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wacom_handle_response, %if.then.i28)) #8
          to label %do.end.i31 [label %if.then.i28], !srcloc !106

if.then.i28:                                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wacom, align 4
  %dev3.i = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wacom_handle_configuration_response.__UNIQUE_ID_ddebug231, ptr noundef %dev3.i, ptr noundef nonnull @.str.22, ptr noundef %data) #8
  br label %do.end.i31

do.end.i31:                                       ; preds = %if.then.i28, %sw.bb14
  %res_x.i29 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 7
  %res_y.i30 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 8
  %call6.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %data, ptr noundef nonnull @.str.23, ptr noundef nonnull %skip.i, ptr noundef nonnull %skip.i, ptr noundef nonnull %skip.i, ptr noundef %res_x.i29, ptr noundef %res_y.i30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call6.i, 5
  br i1 %cmp.not.i, label %do.end.i31.wacom_handle_configuration_response.exit_crit_edge, label %do.end10.i

do.end.i31.wacom_handle_configuration_response.exit_crit_edge: ; preds = %do.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %wacom_handle_configuration_response.exit

do.end10.i:                                       ; preds = %do.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wacom, align 4
  %dev12.i = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12.i, ptr noundef nonnull @.str.24) #12
  br label %wacom_handle_configuration_response.exit

wacom_handle_configuration_response.exit:         ; preds = %do.end10.i, %do.end.i31.wacom_handle_configuration_response.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip.i) #8
  br label %if.end

sw.bb15:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wacom_handle_coordinates_response.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wacom_handle_response, %if.then.i34)) #8
          to label %do.end.i40 [label %if.then.i34], !srcloc !106

if.then.i34:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wacom, align 4
  %dev3.i32 = getelementptr inbounds %struct.input_dev, ptr %82, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wacom_handle_coordinates_response.__UNIQUE_ID_ddebug232, ptr noundef %dev3.i32, ptr noundef nonnull @.str.27, ptr noundef %data) #8
  br label %do.end.i40

do.end.i40:                                       ; preds = %if.then.i34, %sw.bb15
  %max_x.i36 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 9
  %max_y.i37 = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 10
  %call6.i38 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %data, ptr noundef nonnull @.str.28, ptr noundef %max_x.i36, ptr noundef %max_y.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6.i38)
  %cmp.not.i39 = icmp eq i32 %call6.i38, 2
  br i1 %cmp.not.i39, label %do.end.i40.if.end_crit_edge, label %do.end10.i42

do.end.i40.if.end_crit_edge:                      ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end10.i42:                                     ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %wacom to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wacom, align 4
  %dev12.i41 = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12.i41, ptr noundef nonnull @.str.29) #12
  br label %if.end

if.end:                                           ; preds = %do.end10.i42, %do.end.i40.if.end_crit_edge, %wacom_handle_configuration_response.exit, %wacom_handle_model_response.exit, %if.else.if.end_crit_edge, %do.end
  %cmd_done = getelementptr inbounds %struct.wacom, ptr %wacom, i32 0, i32 1
  call void @complete(ptr noundef %cmd_done) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 112, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 113, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 114, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_wacom_serial4__234_617_wacom_drv_init6, !8, !"__initcall__kmod_wacom_serial4__234_617_wacom_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 617, i32 1}
!9 = !{ptr @__exitcall_wacom_drv_exit, !8, !"__exitcall_wacom_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 610, i32 17}
!13 = !{ptr @wacom_drv, !14, !"wacom_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 606, i32 28}
!15 = !{ptr @wacom_serio_ids, !16, !"wacom_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 594, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 397, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wacom_interrupt.__UNIQUE_ID_ddebug233, !18, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 287, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @wacom_handle_response._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @wacom_handle_response._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 195, i32 21}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 203, i32 23}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 206, i32 23}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 226, i32 22}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 233, i32 22}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 246, i32 22}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 253, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wacom_handle_model_response._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @wacom_handle_model_response._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 259, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wacom_handle_model_response._entry.17, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @wacom_handle_model_response._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 267, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wacom_handle_configuration_response.__UNIQUE_ID_ddebug231, !52, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 268, i32 26}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 271, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @wacom_handle_configuration_response._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @wacom_handle_configuration_response._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 278, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @wacom_handle_coordinates_response.__UNIQUE_ID_ddebug232, !63, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 279, i32 26}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 281, i32 3}
!70 = !{ptr @wacom_handle_coordinates_response._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wacom_handle_coordinates_response._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @tools, !73, !"tools", i1 false, i1 false}
!73 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 156, i32 3}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 533, i32 45}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 494, i32 42}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 495, i32 7}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 501, i32 8}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 502, i32 8}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 509, i32 8}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 510, i32 8}
!88 = !{ptr @init_completion.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/completion.h", i32 87, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 437, i32 9}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 444, i32 9}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/tablet/wacom_serial4.c", i32 449, i32 9}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148329530, i64 2148329535, i64 2148329548, i64 2148329592, i64 2148329626, i64 2148329647}
!107 = !{!"auto-init"}
