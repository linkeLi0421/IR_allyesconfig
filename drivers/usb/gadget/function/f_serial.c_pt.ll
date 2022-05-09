; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_serial.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.f_serial_opts = type { %struct.usb_function_instance, i8 }
%struct.f_gser = type { %struct.gserial, i8, i8 }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__UNIQUE_ID_alias232 = internal constant [32 x i8] c"usb_f_serial.alias=usbfunc:gser\00", section ".modinfo", align 1
@gserusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @gser_alloc_inst, ptr @gser_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_serial__233_392_gsermod_init6 = internal global ptr @gsermod_init, section ".initcall6.init", align 4
@__exitcall_gsermod_exit = internal global ptr @gsermod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file234 = internal constant [59 x i8] c"usb_f_serial.file=drivers/usb/gadget/function/usb_f_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [25 x i8] c"usb_f_serial.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [32 x i8] c"usb_f_serial.author=Al Borchers\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [35 x i8] c"usb_f_serial.author=David Brownell\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gser\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@serial_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @serial_item_ops, ptr null, ptr @acm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@serial_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @serial_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@acm_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @f_serial_attr_console, ptr @f_serial_attr_port_num, ptr null], [20 x i8] zeroinitializer }, align 32
@f_serial_attr_console = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 420, ptr @f_serial_console_show, ptr @f_serial_console_store }, [44 x i8] zeroinitializer }, align 32
@f_serial_attr_port_num = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 292, ptr @f_serial_port_num_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port_num\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@gser_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gser_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@gser_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @gser_string_defs }, [24 x i8] zeroinitializer }, align 32
@gser_string_defs = internal global { [2 x %struct.usb_string], [16 x i8] } { [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.5 }, %struct.usb_string zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Generic Serial\00", [17 x i8] zeroinitializer }, align 32
@gser_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 -1, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@gser_fs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@gser_fs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@gser_hs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@gser_hs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@gser_ss_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@gser_ss_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@gser_fs_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @gser_interface_desc, ptr @gser_fs_in_desc, ptr @gser_fs_out_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@gser_hs_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @gser_interface_desc, ptr @gser_hs_in_desc, ptr @gser_hs_out_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@gser_ss_function = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @gser_interface_desc, ptr @gser_ss_in_desc, ptr @gser_ss_bulk_comp_desc, ptr @gser_ss_out_desc, ptr @gser_ss_bulk_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@gser_bind.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_f_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gser_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/function/f_serial.c\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"generic ttyGS%d: %s speed IN/%s OUT/%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@gser_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 247, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gser_bind._entry_ptr = internal global ptr @gser_bind._entry, section ".printk_index", align 4
@gser_ss_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@gser_set_alt.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.8, ptr @.str.17, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gser_set_alt\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset generic ttyGS%d\0A\00", [41 x i8] zeroinitializer }, align 32
@gser_set_alt.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.8, ptr @.str.18, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"activate generic ttyGS%d\0A\00", [38 x i8] zeroinitializer }, align 32
@gser_disable.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.8, ptr @.str.20, i8 0, i8 44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gser_disable\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"generic ttyGS%d deactivated\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"gserusb_func\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 392, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 332, i32 54 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"serial_func_type\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 302, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"serial_item_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 265, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"acm_attrs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 294, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"f_serial_attr_console\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"f_serial_attr_port_num\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 283, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 292, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 289, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"gser_strings\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 139, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"gser_string_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 134, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"gser_string_defs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 129, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 130, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"gser_interface_desc\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 42, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"gser_fs_in_desc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 55, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"gser_fs_out_desc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 62, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"gser_hs_in_desc\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 78, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"gser_hs_out_desc\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 85, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"gser_ss_in_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 99, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"gser_ss_out_desc\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 106, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"gser_fs_function\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 69, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"gser_hs_function\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 92, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"gser_ss_function\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 118, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 239, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 247, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"gser_ss_bulk_comp_desc\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 113, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 154, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 159, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [42 x i8] c"../drivers/usb/gadget/function/f_serial.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 177, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_gsermod_exit, ptr @__initcall__kmod_usb_f_serial__233_392_gsermod_init6, ptr @gser_bind._entry, ptr @gser_bind._entry_ptr, ptr @gsermod_exit, ptr @gserusb_func, ptr @.str, ptr @.str.1, ptr @serial_func_type, ptr @serial_item_ops, ptr @acm_attrs, ptr @f_serial_attr_console, ptr @f_serial_attr_port_num, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gser_strings, ptr @gser_string_table, ptr @gser_string_defs, ptr @.str.5, ptr @gser_interface_desc, ptr @gser_fs_in_desc, ptr @gser_fs_out_desc, ptr @gser_hs_in_desc, ptr @gser_hs_out_desc, ptr @gser_ss_in_desc, ptr @gser_ss_out_desc, ptr @gser_fs_function, ptr @gser_hs_function, ptr @gser_ss_function, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @gser_ss_bulk_comp_desc, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gserusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_serial_attr_console to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_serial_attr_port_num to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_string_defs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_fs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_fs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_hs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_hs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_ss_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_ss_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_fs_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_hs_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_ss_function to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gser_ss_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gsermod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_function_unregister(ptr noundef nonnull @gserusb_func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gsermod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @gserusb_func) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gser_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gser_free_inst, ptr %free_func_inst, align 8
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @gserial_alloc_line(ptr noundef %port_num) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %2 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @serial_func_type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then4 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gser_alloc(ptr nocapture noundef readonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %fi, i32 0, i32 1
  %1 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_num, align 4
  %port_num2 = getelementptr inbounds %struct.f_gser, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %port_num2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %port_num2, align 1
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %call7.i.i, align 8
  %strings = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %strings to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gser_strings, ptr %strings, align 4
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gser_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gser_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gser_set_alt, ptr %set_alt, align 4
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gser_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gser_free, ptr %free_func, align 4
  %resume = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gser_resume, ptr %resume, align 4
  %suspend = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gser_suspend, ptr %suspend, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gser_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  tail call void @gserial_free_line(i8 noundef zeroext %1) #7
  tail call void @kfree(ptr noundef %f) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_alloc_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_free_line(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_serial_console_show(ptr nocapture noundef readonly %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %call1 = tail call i32 @gserial_get_console(i8 noundef zeroext %1, ptr noundef %page) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_serial_console_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %call1 = tail call i32 @gserial_set_console(i8 noundef zeroext %1, ptr noundef %page, i32 noundef %count) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_get_console(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_set_console(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_serial_port_num_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gser_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %2 = load i8, ptr @gser_string_defs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @usb_string_id(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = trunc i32 %call4 to i8
  store i8 %conv8, ptr @gser_string_defs, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %call10 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.do.end55_crit_edge, label %if.end14

if.end9.do.end55_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end14:                                         ; preds = %if.end9
  %conv15 = trunc i32 %call10 to i8
  %data_id = getelementptr inbounds %struct.f_gser, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %data_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv15, ptr %data_id, align 4
  store i8 %conv15, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @gser_interface_desc, i32 0, i32 2), align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call17 = tail call ptr @usb_ep_autoconfig(ptr noundef %5, ptr noundef nonnull @gser_fs_in_desc) #7
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.end14.do.end55_crit_edge, label %if.end19

if.end14.do.end55_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end19:                                         ; preds = %if.end14
  %in = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %in, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call21 = tail call ptr @usb_ep_autoconfig(ptr noundef %8, ptr noundef nonnull @gser_fs_out_desc) #7
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.do.end55_crit_edge, label %if.end24

if.end19.do.end55_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end24:                                         ; preds = %if.end19
  %out = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %out, align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_fs_in_desc, i32 0, i32 2), align 1
  store i8 %10, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_hs_in_desc, i32 0, i32 2), align 1
  %11 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_fs_out_desc, i32 0, i32 2), align 1
  store i8 %11, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_hs_out_desc, i32 0, i32 2), align 1
  store i8 %10, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_ss_in_desc, i32 0, i32 2), align 1
  store i8 %11, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_ss_out_desc, i32 0, i32 2), align 1
  %call26 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @gser_fs_function, ptr noundef nonnull @gser_hs_function, ptr noundef nonnull @gser_ss_function, ptr noundef nonnull @gser_ss_function) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body, label %if.end24.do.end55_crit_edge

if.end24.do.end55_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.body:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gser_bind.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gser_bind, %cleanup)) #7
          to label %if.then35 [label %cleanup], !srcloc !94

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_gser, ptr %f, i32 0, i32 2
  %14 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_num, align 1
  %conv37 = zext i8 %15 to i32
  %16 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp.i = icmp ult i32 %21, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i89 = icmp ult i32 %21, 3
  %cond = select i1 %cmp.i89, ptr @.str.12, ptr @.str.11
  %cond46 = select i1 %cmp.i, ptr %cond, ptr @.str.10
  %22 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %name51 = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gser_bind.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv37, ptr noundef nonnull %cond46, ptr noundef %25, ptr noundef %29) #7
  br label %cleanup

do.end55:                                         ; preds = %if.end24.do.end55_crit_edge, %if.end19.do.end55_crit_edge, %if.end14.do.end55_crit_edge, %if.end9.do.end55_crit_edge
  %status.0 = phi i32 [ %call10, %if.end9.do.end55_crit_edge ], [ %call26, %if.end24.do.end55_crit_edge ], [ -19, %if.end19.do.end55_crit_edge ], [ -19, %if.end14.do.end55_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev57 = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.13, ptr noundef %33, i32 noundef %status.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.then35, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %do.end55 ], [ %call4, %if.then.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gser_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_free_all_descriptors(ptr noundef %f) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gser_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %in = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gser_set_alt.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gser_set_alt, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !94

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_gser, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 1
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gser_set_alt.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void @gserial_disconnect(ptr noundef %f) #7
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %12 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end9.do.body17_crit_edge, label %lor.lhs.false

if.end9.do.body17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

lor.lhs.false:                                    ; preds = %if.end9
  %out = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out, align 4
  %desc14 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %desc14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc14, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %lor.lhs.false.do.body17_crit_edge, label %lor.lhs.false.if.end58_crit_edge

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false.do.body17_crit_edge, %if.end9.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gser_set_alt.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gser_set_alt, %do.end38)) #7
          to label %if.then31 [label %do.end38], !srcloc !94

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %dev33 = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  %port_num34 = getelementptr inbounds %struct.f_gser, ptr %f, i32 0, i32 2
  %22 = ptrtoint ptr %port_num34 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_num34, align 1
  %conv35 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gser_set_alt.__UNIQUE_ID_ddebug229, ptr noundef %dev33, ptr noundef nonnull @.str.18, i32 noundef %conv35) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body17
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in, align 4
  %call42 = tail call i32 @config_ep_by_speed(ptr noundef %25, ptr noundef %f, ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %do.end38.if.then50_crit_edge

do.end38.if.then50_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

lor.lhs.false44:                                  ; preds = %do.end38
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %out47 = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %30 = ptrtoint ptr %out47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out47, align 4
  %call48 = tail call i32 @config_ep_by_speed(ptr noundef %29, ptr noundef %f, ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false44.if.end58_crit_edge, label %lor.lhs.false44.if.then50_crit_edge

lor.lhs.false44.if.then50_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

lor.lhs.false44.if.end58_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then50:                                        ; preds = %lor.lhs.false44.if.then50_crit_edge, %do.end38.if.then50_crit_edge
  %32 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in, align 4
  %desc53 = getelementptr inbounds %struct.usb_ep, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %desc53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %desc53, align 4
  %out55 = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %35 = ptrtoint ptr %out55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %out55, align 4
  %desc56 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %desc56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %desc56, align 4
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false44.if.end58_crit_edge, %lor.lhs.false.if.end58_crit_edge
  %port_num60 = getelementptr inbounds %struct.f_gser, ptr %f, i32 0, i32 2
  %38 = ptrtoint ptr %port_num60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_num60, align 1
  %call61 = tail call i32 @gserial_connect(ptr noundef %f, i8 noundef zeroext %39) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then50
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gser_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gser_disable.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gser_disable, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_gser, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gser_disable.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @gserial_disconnect(ptr noundef %f) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gser_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %f) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gser_resume(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gserial_resume(ptr noundef %f) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gser_suspend(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gserial_suspend(ptr noundef %f) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__UNIQUE_ID_alias232, !1, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 392, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_serial__233_392_gsermod_init6, !1, !"__initcall__kmod_usb_f_serial__233_392_gsermod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_gsermod_exit, !1, !"__exitcall_gsermod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 393, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author236, !8, !"__UNIQUE_ID_author236", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 394, i32 1}
!9 = !{ptr @__UNIQUE_ID_author237, !10, !"__UNIQUE_ID_author237", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 395, i32 1}
!11 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gserusb_func, !1, !"gserusb_func", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 332, i32 54}
!15 = !{ptr @serial_func_type, !16, !"serial_func_type", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 302, i32 38}
!17 = !{ptr @serial_item_ops, !18, !"serial_item_ops", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 265, i32 40}
!19 = !{ptr @acm_attrs, !20, !"acm_attrs", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 294, i32 35}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 283, i32 1}
!23 = !{ptr @f_serial_attr_console, !22, !"f_serial_attr_console", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 292, i32 1}
!26 = !{ptr @f_serial_attr_port_num, !25, !"f_serial_attr_port_num", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 289, i32 23}
!29 = !{ptr @gser_strings, !30, !"gser_strings", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 139, i32 35}
!31 = !{ptr @gser_string_table, !32, !"gser_string_table", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 134, i32 34}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 130, i32 10}
!35 = !{ptr @gser_string_defs, !36, !"gser_string_defs", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 129, i32 26}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 239, i32 2}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gser_bind.__UNIQUE_ID_ddebug231, !38, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!43 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 247, i32 2}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gser_bind._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @gser_bind._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @gser_interface_desc, !53, !"gser_interface_desc", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 42, i32 40}
!54 = !{ptr @gser_fs_in_desc, !55, !"gser_fs_in_desc", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 55, i32 39}
!56 = !{ptr @gser_fs_out_desc, !57, !"gser_fs_out_desc", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 62, i32 39}
!58 = !{ptr @gser_hs_in_desc, !59, !"gser_hs_in_desc", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 78, i32 39}
!60 = !{ptr @gser_hs_out_desc, !61, !"gser_hs_out_desc", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 85, i32 39}
!62 = !{ptr @gser_ss_in_desc, !63, !"gser_ss_in_desc", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 99, i32 39}
!64 = !{ptr @gser_ss_out_desc, !65, !"gser_ss_out_desc", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 106, i32 39}
!66 = !{ptr @gser_fs_function, !67, !"gser_fs_function", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 69, i32 38}
!68 = !{ptr @gser_hs_function, !69, !"gser_hs_function", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 92, i32 38}
!70 = !{ptr @gser_ss_function, !71, !"gser_ss_function", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 118, i32 38}
!72 = !{ptr @gser_ss_bulk_comp_desc, !73, !"gser_ss_bulk_comp_desc", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 113, i32 41}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 154, i32 3}
!76 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gser_set_alt.__UNIQUE_ID_ddebug228, !75, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 159, i32 3}
!80 = !{ptr @gser_set_alt.__UNIQUE_ID_ddebug229, !79, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/function/f_serial.c", i32 177, i32 2}
!83 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @gser_disable.__UNIQUE_ID_ddebug230, !82, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148209837, i64 2148209842, i64 2148209855, i64 2148209899, i64 2148209933, i64 2148209954}
!95 = !{i8 0, i8 2}
