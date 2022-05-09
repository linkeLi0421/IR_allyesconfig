; ModuleID = '/llk/IR_all_yes/drivers/media/usb/go7007/go7007-usb.c_pt.bc'
source_filename = "../drivers/media/usb/go7007/go7007-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.go7007_usb_board = type { i32, %struct.go7007_board_info }
%struct.go7007_board_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x %struct.go_i2c], i32, [4 x %struct.anon.84], i32, i32, [3 x %struct.anon.85] }
%struct.go_i2c = type { ptr, i8, i32, i32 }
%struct.anon.84 = type { i32, i32, ptr }
%struct.anon.85 = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.go7007_hpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.go7007_usb = type { ptr, %struct.mutex, ptr, [8 x ptr], [8 x ptr], ptr }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.103], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.103 = type { i8, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_assume_endura = internal constant [25 x i8] c"go7007_usb.assume_endura\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@assume_endura = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_assume_endura = internal constant %struct.kernel_param { ptr @__param_str_assume_endura, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @assume_endura } }, section "__param", align 4
@__UNIQUE_ID_assume_enduratype303 = internal constant [38 x i8] c"go7007_usb.parmtype=assume_endura:int\00", section ".modinfo", align 1
@__UNIQUE_ID_assume_endura304 = internal constant [77 x i8] c"go7007_usb.parm=assume_endura:when probing fails, hardware is a Pelco Endura\00", section ".modinfo", align 1
@__initcall__kmod_go7007_usb__312_1352_go7007_usb_driver_init6 = internal global ptr @go7007_usb_driver_init, section ".initcall6.init", align 4
@go7007_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @go7007_usb_probe, ptr @go7007_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @go7007_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_go7007_usb_driver_exit = internal global ptr @go7007_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file313 = internal constant [52 x i8] c"go7007_usb.file=drivers/media/usb/go7007/go7007-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [26 x i8] c"go7007_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"go7007_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"go7007\00", [25 x i8] zeroinitializer }, align 32
@go7007_usb_id_table = internal constant { [13 x %struct.usb_device_id], [72 x i8] } { [13 x %struct.usb_device_id] [%struct.usb_device_id { i16 911, i16 3761, i16 28679, i16 512, i16 512, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 0, i32 4 }, %struct.usb_device_id { i16 15, i16 3761, i16 28679, i16 514, i16 514, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 15, i16 3761, i16 28679, i16 516, i16 516, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 911, i16 3761, i16 28679, i16 517, i16 517, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 0, i32 5 }, %struct.usb_device_id { i16 15, i16 3761, i16 28679, i16 520, i16 520, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 911, i16 3761, i16 28679, i16 521, i16 521, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 0, i32 6 }, %struct.usb_device_id { i16 15, i16 3761, i16 28679, i16 528, i16 528, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 15, i16 2363, i16 -24318, i16 1, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 15, i16 2363, i16 -24316, i16 1, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 15, i16 4349, i16 -8704, i16 1, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 15, i16 6467, i16 8784, i16 1, i16 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 15, i16 1761, i16 1801, i16 516, i16 516, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@go7007_usb_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"go7007_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/go7007/go7007-usb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"probing new GO7007 USB board\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"go7007_usb: probing new GO7007 USB board\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WIS Matrix II or compatible\00", [36 x i8] zeroinitializer }, align 32
@board_matrix_ii = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 1, %struct.go7007_board_info { i32 3, i32 7, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 257, i32 48000, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.47, i8 -128, i32 32, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 2, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.48 }, %struct.anon.84 { i32 9, i32 0, ptr @.str.49 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 1, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WIS Matrix Reloaded or compatible\00", [62 x i8] zeroinitializer }, align 32
@board_matrix_reload = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 1, %struct.go7007_board_info { i32 3, i32 7, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65793, i32 48000, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.50, i8 -128, i32 37, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 2, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.48 }, %struct.anon.84 { i32 9, i32 0, ptr @.str.49 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 1, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WIS Matrix Revolution or compatible\00", [60 x i8] zeroinitializer }, align 32
@board_matrix_revolution = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 1, %struct.go7007_board_info { i32 3, i32 7, i32 448, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65793, i32 48000, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.51, i8 -128, i32 68, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 2, [4 x %struct.anon.84] [%struct.anon.84 { i32 2, i32 0, ptr @.str.48 }, %struct.anon.84 { i32 8, i32 0, ptr @.str.49 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 0, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WIS Star Trek or compatible\00", [36 x i8] zeroinitializer }, align 32
@board_star_trek = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 3, %struct.go7007_board_info { i32 1, i32 7, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 257, i32 0, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.47, i8 -128, i32 32, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 2, [4 x %struct.anon.84] [%struct.anon.84 { i32 1, i32 0, ptr @.str.48 }, %struct.anon.84 { i32 8, i32 0, ptr @.str.49 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 1, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WIS XMen or compatible\00", [41 x i8] zeroinitializer }, align 32
@board_xmen = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 0, %struct.go7007_board_info { i32 2, i32 0, i32 4, i32 320, i32 240, i32 30030, i32 0, i32 0, i32 198887, i32 8000, i32 48, i32 1, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.52, i8 0, i32 33, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 1, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.53 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 0, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WIS XMen II or compatible\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WIS XMen III or compatible\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Plextor PX-M402U\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Plextor PX-TV402U (unknown tuner)\00", [62 x i8] zeroinitializer }, align 32
@board_px_tv402u = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 3, %struct.go7007_board_info { i32 5, i32 7, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 257, i32 0, i32 8, i32 2, i32 5, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.47, i8 -128, i32 32, i32 0 }, %struct.go_i2c { ptr @.str.54, i8 64, i32 26, i32 0 }, %struct.go_i2c { ptr @.str.55, i8 0, i32 96, i32 0 }, %struct.go_i2c { ptr @.str.55, i8 0, i32 67, i32 0 }, %struct.go_i2c { ptr @.str.56, i8 0, i32 68, i32 0 }], i32 3, [4 x %struct.anon.84] [%struct.anon.84 { i32 3, i32 0, ptr @.str.57 }, %struct.anon.84 { i32 1, i32 1, ptr @.str.48 }, %struct.anon.84 { i32 8, i32 1, ptr @.str.49 }, %struct.anon.84 zeroinitializer], i32 1, i32 2, [3 x %struct.anon.85] [%struct.anon.85 { i32 2, ptr @.str.57 }, %struct.anon.85 { i32 1, ptr @.str.58 }, %struct.anon.85 zeroinitializer] } }, [36 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1092, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"The Lifeview TV Walker Ultra is not supported. Sorry!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr = internal global ptr @go7007_usb_probe._entry, section ".printk_index", align 4
@go7007_usb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1100, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sensoray 2250 found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr.21 = internal global ptr @go7007_usb_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sensoray 2250/2251\00", [45 x i8] zeroinitializer }, align 32
@board_sensoray_2250 = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 3, %struct.go7007_board_info { i32 1, i32 7, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65793, i32 48000, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.59, i8 -64, i32 67, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 2, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.48 }, %struct.anon.84 { i32 1, i32 0, ptr @.str.49 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 0, i32 3, [3 x %struct.anon.85] [%struct.anon.85 { i32 0, ptr @.str.58 }, %struct.anon.85 { i32 1, ptr @.str.60 }, %struct.anon.85 { i32 2, ptr @.str.61 }] } }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADS Tech DVD Xpress DX2\00", [40 x i8] zeroinitializer }, align 32
@board_ads_usbav_709 = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 1, %struct.go7007_board_info { i32 3, i32 7, i32 448, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65793, i32 48000, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.62, i8 -128, i32 68, i32 0 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 2, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.48 }, %struct.anon.84 { i32 10, i32 0, ptr @.str.49 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 0, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1110, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown board ID %d!\0A\00", [42 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr.26 = internal global ptr @go7007_usb_probe._entry.24, section ".printk_index", align 4
@go7007_usb_ezusb_hpi_ops = internal constant { %struct.go7007_hpi_ops, [32 x i8] } { %struct.go7007_hpi_ops { ptr @go7007_usb_interface_reset, ptr @go7007_usb_ezusb_write_interrupt, ptr @go7007_usb_read_interrupt, ptr @go7007_usb_stream_start, ptr @go7007_usb_stream_stop, ptr @go7007_usb_send_firmware, ptr null, ptr @go7007_usb_release }, [32 x i8] zeroinitializer }, align 32
@go7007_usb_onboard_hpi_ops = internal constant { %struct.go7007_hpi_ops, [32 x i8] } { %struct.go7007_hpi_ops { ptr @go7007_usb_interface_reset, ptr @go7007_usb_onboard_write_interrupt, ptr @go7007_usb_read_interrupt, ptr @go7007_usb_stream_start, ptr @go7007_usb_stream_stop, ptr @go7007_usb_send_firmware, ptr null, ptr @go7007_usb_release }, [32 x i8] zeroinitializer }, align 32
@go7007_usb_adap_templ = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @go7007_usb_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"WIS GO7007SB EZ-USB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@go7007_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&usb->i2c_lock\00", [17 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1173, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: i2c_add_adapter failed\0A\00", [33 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr.30 = internal global ptr @go7007_usb_probe._entry.28, section ".printk_index", align 4
@board_endura = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 0, %struct.go7007_board_info { i32 0, i32 0, i32 192, i32 0, i32 0, i32 0, i32 8, i32 0, i32 65793, i32 8000, i32 48, i32 8, i32 0, [5 x %struct.go_i2c] zeroinitializer, i32 1, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.53 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 0, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pelco Endura\00", [19 x i8] zeroinitializer }, align 32
@board_adlink_mpg24 = internal constant { %struct.go7007_usb_board, [36 x i8] } { %struct.go7007_usb_board { i32 0, %struct.go7007_board_info { i32 2, i32 0, i32 448, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65793, i32 48000, i32 8, i32 2, i32 1, [5 x %struct.go_i2c] [%struct.go_i2c { ptr @.str.93, i8 -128, i32 0, i32 16 }, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer, %struct.go_i2c zeroinitializer], i32 1, [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, ptr @.str.48 }, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer, %struct.anon.84 zeroinitializer], i32 0, i32 0, [3 x %struct.anon.85] zeroinitializer } }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Adlink PCI-MPG24, channel #%d\00", [34 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1225, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPIO read failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr.35 = internal global ptr @go7007_usb_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Plextor PX-TV402U-EU\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Plextor PX-TV402U-JP\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Plextor PX-TV402U-NA\00", [43 x i8] zeroinitializer }, align 32
@go7007_usb_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.39, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to detect tuner type!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"go7007_usb: unable to detect tuner type!\0A\00", [54 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 1256, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO write failed!\0A\00", [44 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr.43 = internal global ptr @go7007_usb_probe._entry.41, section ".printk_index", align 4
@go7007_usb_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 1265, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [174 x i8], [50 x i8] } { [174 x i8] c"*** WARNING ***  This device must be connected to a USB 2.0 port! Attempting to capture video through a USB 1.1 port will result in stream corruption, even at low bitrates!\0A\00", [50 x i8] zeroinitializer }, align 32
@go7007_usb_probe._entry_ptr.46 = internal global ptr @go7007_usb_probe._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7115\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7113\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw9903\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7640\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Camera\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uda1342\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sony-btf-mpx\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s2250\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Boost\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw9906\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@go7007_usb_interface_reset.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"go7007_usb_interface_reset\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resetting EZ-USB buffers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"go7007_usb: resetting EZ-USB buffers\0A\00", [58 x i8] zeroinitializer }, align 32
@go7007_usb_interface_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.3, i32 669, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to reset the USB interface\0A\00", [61 x i8] zeroinitializer }, align 32
@go7007_usb_interface_reset._entry_ptr = internal global ptr @go7007_usb_interface_reset._entry, section ".printk_index", align 4
@go7007_usb_ezusb_write_interrupt.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"go7007_usb_ezusb_write_interrupt\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WriteInterrupt: %04x %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"go7007_usb: WriteInterrupt: %04x %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@go7007_usb_ezusb_write_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.68, ptr @.str.3, i32 701, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"device is hung, status reg = 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@go7007_usb_ezusb_write_interrupt._entry_ptr = internal global ptr @go7007_usb_ezusb_write_interrupt._entry, section ".printk_index", align 4
@go7007_usb_ezusb_write_interrupt._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 717, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error in WriteInterrupt: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@go7007_usb_ezusb_write_interrupt._entry_ptr.74 = internal global ptr @go7007_usb_ezusb_write_interrupt._entry.72, section ".printk_index", align 4
@go7007_usb_read_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 779, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to submit interrupt urb: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"go7007_usb_read_interrupt\00", [38 x i8] zeroinitializer }, align 32
@go7007_usb_read_interrupt._entry_ptr = internal global ptr @go7007_usb_read_interrupt._entry, section ".printk_index", align 4
@go7007_usb_stream_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 839, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error submitting video urb %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"go7007_usb_stream_start\00", [40 x i8] zeroinitializer }, align 32
@go7007_usb_stream_start._entry_ptr = internal global ptr @go7007_usb_stream_start._entry, section ".printk_index", align 4
@go7007_usb_stream_start._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 849, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error submitting audio urb %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@go7007_usb_stream_start._entry_ptr.81 = internal global ptr @go7007_usb_stream_start._entry.79, section ".printk_index", align 4
@go7007_usb_send_firmware.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"go7007_usb_send_firmware\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DownloadBuffer sending %d bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"go7007_usb: DownloadBuffer sending %d bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@go7007_usb_onboard_write_interrupt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.69, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"go7007_usb_onboard_write_interrupt\00", [61 x i8] zeroinitializer }, align 32
@go7007_usb_onboard_write_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.85, ptr @.str.3, i32 739, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@go7007_usb_onboard_write_interrupt._entry_ptr = internal global ptr @go7007_usb_onboard_write_interrupt._entry, section ".printk_index", align 4
@go7007_usb_readinterrupt_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 754, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error in read interrupt: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"go7007_usb_readinterrupt_complete\00", [62 x i8] zeroinitializer }, align 32
@go7007_usb_readinterrupt_complete._entry_ptr = internal global ptr @go7007_usb_readinterrupt_complete._entry, section ".printk_index", align 4
@go7007_usb_readinterrupt_complete._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 760, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"short read in interrupt pipe!\0A\00", [33 x i8] zeroinitializer }, align 32
@go7007_usb_readinterrupt_complete._entry_ptr.90 = internal global ptr @go7007_usb_readinterrupt_complete._entry.88, section ".printk_index", align 4
@go7007_usb_readinterrupt_complete.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.3, ptr @.str.91, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ReadInterrupt: %04x %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"go7007_usb: ReadInterrupt: %04x %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@go7007_usb_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @go7007_usb_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @go7007_usb_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw2804\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@go7007_usb_read_video_pipe_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 795, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error in video pipe: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"go7007_usb_read_video_pipe_complete\00", [60 x i8] zeroinitializer }, align 32
@go7007_usb_read_video_pipe_complete._entry_ptr = internal global ptr @go7007_usb_read_video_pipe_complete._entry, section ".printk_index", align 4
@go7007_usb_read_video_pipe_complete._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 799, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"short read in video pipe!\0A\00", [37 x i8] zeroinitializer }, align 32
@go7007_usb_read_video_pipe_complete._entry_ptr.98 = internal global ptr @go7007_usb_read_video_pipe_complete._entry.96, section ".printk_index", align 4
@go7007_usb_read_video_pipe_complete._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 805, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@go7007_usb_read_video_pipe_complete._entry_ptr.100 = internal global ptr @go7007_usb_read_video_pipe_complete._entry.99, section ".printk_index", align 4
@go7007_usb_read_audio_pipe_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 817, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error in audio pipe: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"go7007_usb_read_audio_pipe_complete\00", [60 x i8] zeroinitializer }, align 32
@go7007_usb_read_audio_pipe_complete._entry_ptr = internal global ptr @go7007_usb_read_audio_pipe_complete._entry, section ".printk_index", align 4
@go7007_usb_read_audio_pipe_complete._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 821, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"short read in audio pipe!\0A\00", [37 x i8] zeroinitializer }, align 32
@go7007_usb_read_audio_pipe_complete._entry_ptr.105 = internal global ptr @go7007_usb_read_audio_pipe_complete._entry.103, section ".printk_index", align 4
@go7007_usb_read_audio_pipe_complete._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 828, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@go7007_usb_read_audio_pipe_complete._entry_ptr.107 = internal global ptr @go7007_usb_read_audio_pipe_complete._entry.106, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 13, i64 14]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"assume_endura\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 24, i32 21 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"go7007_usb_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1345, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1352, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1346, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"go7007_usb_id_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 506, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1052, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1056, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"board_matrix_ii\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 64, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1060, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"board_matrix_reload\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 104, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1064, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant [24 x i8] c"board_matrix_revolution\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 296, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1068, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"board_star_trek\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 141, i32 38 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1072, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"board_xmen\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 262, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1076, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1080, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1084, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1088, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"board_px_tv402u\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 188, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1092, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1100, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1101, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c"board_sensoray_2250\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 418, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1105, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c"board_ads_usbav_709\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 469, i32 38 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1109, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [25 x i8] c"go7007_usb_ezusb_hpi_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 927, i32 36 }
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"go7007_usb_onboard_hpi_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 937, i32 36 }
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"go7007_usb_adap_templ\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1032, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1169, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1173, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"board_endura\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 362, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1198, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant [19 x i8] c"board_adlink_mpg24\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 386, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1211, i32 6 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1225, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1232, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1239, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1245, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1249, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1256, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1265, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 84, i32 13 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 93, i32 14 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 97, i32 14 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 121, i32 13 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 314, i32 13 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 283, i32 13 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 290, i32 14 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 212, i32 13 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 217, i32 13 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 225, i32 13 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 234, i32 14 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 256, i32 14 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 434, i32 13 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 459, i32 14 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 463, i32 14 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 487, i32 13 }
@___asan_gen_.337 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 912, i32 31 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 655, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 669, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 683, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 701, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 717, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 779, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 839, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 849, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 885, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 728, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 739, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 754, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 760, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 765, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [16 x i8] c"go7007_usb_algo\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1027, i32 35 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 403, i32 13 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 795, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 799, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 805, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 816, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 821, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.475 = private constant [41 x i8] c"../drivers/media/usb/go7007/go7007-usb.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 828, i32 3 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_assume_endura304, ptr @__UNIQUE_ID_assume_enduratype303, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_go7007_usb_driver_exit, ptr @__initcall__kmod_go7007_usb__312_1352_go7007_usb_driver_init6, ptr @__param_assume_endura, ptr @go7007_usb_driver_exit, ptr @go7007_usb_ezusb_write_interrupt._entry, ptr @go7007_usb_ezusb_write_interrupt._entry.72, ptr @go7007_usb_ezusb_write_interrupt._entry_ptr, ptr @go7007_usb_ezusb_write_interrupt._entry_ptr.74, ptr @go7007_usb_interface_reset._entry, ptr @go7007_usb_interface_reset._entry_ptr, ptr @go7007_usb_onboard_write_interrupt._entry, ptr @go7007_usb_onboard_write_interrupt._entry_ptr, ptr @go7007_usb_probe._entry, ptr @go7007_usb_probe._entry.18, ptr @go7007_usb_probe._entry.24, ptr @go7007_usb_probe._entry.28, ptr @go7007_usb_probe._entry.33, ptr @go7007_usb_probe._entry.41, ptr @go7007_usb_probe._entry.44, ptr @go7007_usb_probe._entry_ptr, ptr @go7007_usb_probe._entry_ptr.21, ptr @go7007_usb_probe._entry_ptr.26, ptr @go7007_usb_probe._entry_ptr.30, ptr @go7007_usb_probe._entry_ptr.35, ptr @go7007_usb_probe._entry_ptr.43, ptr @go7007_usb_probe._entry_ptr.46, ptr @go7007_usb_read_audio_pipe_complete._entry, ptr @go7007_usb_read_audio_pipe_complete._entry.103, ptr @go7007_usb_read_audio_pipe_complete._entry.106, ptr @go7007_usb_read_audio_pipe_complete._entry_ptr, ptr @go7007_usb_read_audio_pipe_complete._entry_ptr.105, ptr @go7007_usb_read_audio_pipe_complete._entry_ptr.107, ptr @go7007_usb_read_interrupt._entry, ptr @go7007_usb_read_interrupt._entry_ptr, ptr @go7007_usb_read_video_pipe_complete._entry, ptr @go7007_usb_read_video_pipe_complete._entry.96, ptr @go7007_usb_read_video_pipe_complete._entry.99, ptr @go7007_usb_read_video_pipe_complete._entry_ptr, ptr @go7007_usb_read_video_pipe_complete._entry_ptr.100, ptr @go7007_usb_read_video_pipe_complete._entry_ptr.98, ptr @go7007_usb_readinterrupt_complete._entry, ptr @go7007_usb_readinterrupt_complete._entry.88, ptr @go7007_usb_readinterrupt_complete._entry_ptr, ptr @go7007_usb_readinterrupt_complete._entry_ptr.90, ptr @go7007_usb_stream_start._entry, ptr @go7007_usb_stream_start._entry.79, ptr @go7007_usb_stream_start._entry_ptr, ptr @go7007_usb_stream_start._entry_ptr.81, ptr @assume_endura, ptr @go7007_usb_driver, ptr @.str, ptr @.str.1, ptr @go7007_usb_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @board_matrix_ii, ptr @.str.7, ptr @board_matrix_reload, ptr @.str.8, ptr @board_matrix_revolution, ptr @.str.9, ptr @board_star_trek, ptr @.str.10, ptr @board_xmen, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @board_px_tv402u, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @board_sensoray_2250, ptr @.str.23, ptr @board_ads_usbav_709, ptr @.str.25, ptr @go7007_usb_ezusb_hpi_ops, ptr @go7007_usb_onboard_hpi_ops, ptr @go7007_usb_adap_templ, ptr @go7007_usb_probe.__key, ptr @.str.27, ptr @.str.29, ptr @board_endura, ptr @.str.31, ptr @board_adlink_mpg24, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @go7007_usb_algo, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.101, ptr @.str.102, ptr @.str.104], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assume_endura to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_id_table to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_matrix_ii to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_matrix_reload to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_matrix_revolution to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_star_trek to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_xmen to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_px_tv402u to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_sensoray_2250 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_ads_usbav_709 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_ezusb_hpi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_onboard_hpi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_adap_templ to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_endura to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_adlink_mpg24 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_interface_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_ezusb_write_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_ezusb_write_interrupt._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_stream_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_stream_start._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_onboard_write_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_readinterrupt_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_readinterrupt_complete._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_video_pipe_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_video_pipe_complete._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_video_pipe_complete._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_audio_pipe_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_audio_pipe_complete._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_usb_read_audio_pipe_complete._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @go7007_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @go7007_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @go7007_usb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  %channel = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_probe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !254

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_probe.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end24 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 7, label %sw.bb5
    i32 2, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 8, label %sw.bb10
    i32 9, label %sw.bb11
    i32 10, label %do.end15
    i32 13, label %do.end19
    i32 14, label %sw.bb21
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %cleanup

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.19) #13
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.25, i32 noundef %3) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %do.end19, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %do.end.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.23, %sw.bb21 ], [ @.str.22, %do.end19 ], [ @.str.14, %sw.bb11 ], [ @.str.13, %sw.bb10 ], [ @.str.12, %sw.bb9 ], [ @.str.11, %sw.bb8 ], [ @.str.10, %sw.bb7 ], [ @.str.9, %sw.bb6 ], [ @.str.8, %sw.bb5 ], [ @.str.7, %sw.bb4 ], [ @.str.6, %do.end.sw.epilog_crit_edge ]
  %board.0 = phi ptr [ @board_ads_usbav_709, %sw.bb21 ], [ @board_sensoray_2250, %do.end19 ], [ @board_px_tv402u, %sw.bb11 ], [ @board_matrix_ii, %sw.bb10 ], [ @board_xmen, %sw.bb9 ], [ @board_xmen, %sw.bb8 ], [ @board_xmen, %sw.bb7 ], [ @board_star_trek, %sw.bb6 ], [ @board_matrix_revolution, %sw.bb5 ], [ @board_matrix_reload, %sw.bb4 ], [ @board_matrix_ii, %do.end.sw.epilog_crit_edge ]
  %main_info = getelementptr inbounds %struct.go7007_usb_board, ptr %board.0, i32 0, i32 1
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call28 = tail call ptr @go7007_alloc(ptr noundef %main_info, ptr noundef %dev27) #10
  %cmp = icmp eq ptr %call28, null
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end30

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 168) #14
  %cmp32 = icmp eq ptr %call7.i.i, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call28) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %board.0, ptr %call7.i.i, align 8
  %usbdev36 = getelementptr inbounds %struct.go7007_usb, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %usbdev36, align 8
  %bus_info = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 1
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef %11, ptr noundef %devpath.i) #10
  %12 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_info, align 4
  %board_id = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 3
  %14 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %board_id, align 8
  %name39 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 6
  %call41 = tail call i32 @strscpy(ptr noundef %name39, ptr noundef nonnull %name.0, i32 noundef 64) #10
  %15 = ptrtoint ptr %board.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %board.0, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  %spec.select526 = select i1 %tobool42.not, ptr @go7007_usb_onboard_hpi_ops, ptr @go7007_usb_ezusb_hpi_ops
  %17 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 63
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select526, ptr %17, align 8
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 64
  %19 = ptrtoint ptr %hpi_context to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %hpi_context, align 4
  %20 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usbdev36, align 8
  %arrayidx = getelementptr %struct.usb_device, ptr %21, i32 0, i32 21, i32 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %tobool47.not = icmp eq ptr %23, null
  br i1 %tobool47.not, label %if.end34.allocfail_crit_edge, label %if.end49

if.end34.allocfail_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end49:                                         ; preds = %if.end34
  %call50 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %intr_urb = getelementptr inbounds %struct.go7007_usb, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %intr_urb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call50, ptr %intr_urb, align 4
  %cmp52 = icmp eq ptr %call50, null
  br i1 %cmp52, label %if.end49.allocfail_crit_edge, label %if.end54

if.end49.allocfail_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end54:                                         ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i485 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 4) #14
  %26 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intr_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i485, ptr %transfer_buffer, align 4
  %29 = load ptr, ptr %intr_urb, align 4
  %transfer_buffer58 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer58, align 4
  %cmp59 = icmp eq ptr %31, null
  br i1 %cmp59, label %if.end54.allocfail_crit_edge, label %if.end61

if.end54.allocfail_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end61:                                         ; preds = %if.end54
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bmAttributes.i, align 1
  %34 = and i8 %33, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp63 = icmp eq i8 %34, 2
  %35 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usbdev36, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i = shl i32 %38, 8
  br i1 %cmp63, label %if.then64, label %if.else72

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %or69 = or i32 %shl.i, -1073610624
  %dev1.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %40 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or69, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @go7007_usb_readinterrupt_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call28, ptr %context4.i, align 4
  br label %if.end81

if.else72:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %or78 = or i32 %shl.i, 1073873024
  %dev1.i488 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 8
  %44 = ptrtoint ptr %dev1.i488 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %36, ptr %dev1.i488, align 4
  %pipe2.i489 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 10
  %45 = ptrtoint ptr %pipe2.i489 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or78, ptr %pipe2.i489, align 4
  %transfer_buffer_length.i491 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 19
  %46 = ptrtoint ptr %transfer_buffer_length.i491 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %transfer_buffer_length.i491, align 4
  %complete.i492 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 28
  %47 = ptrtoint ptr %complete.i492 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @go7007_usb_readinterrupt_complete, ptr %complete.i492, align 4
  %context4.i493 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %48 = ptrtoint ptr %context4.i493 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call28, ptr %context4.i493, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 4
  %49 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp.i = icmp eq i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp6.i = icmp ugt i32 %50, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  %spec.select.i = select i1 %or.cond.i, i32 128, i32 8
  %51 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 25
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i, ptr %51, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 23
  %53 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else72, %if.then64
  %v4l2_dev = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %board_info = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 2
  %55 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board_info, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %and83 = and i32 %58, 2
  %call84 = tail call i32 @go7007_boot_encoder(ptr noundef nonnull %call28, i32 noundef %and83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end81.allocfail_crit_edge, label %if.end87

if.end81.allocfail_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end87:                                         ; preds = %if.end81
  %59 = ptrtoint ptr %board.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %board.0, align 4
  %and89 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end108_crit_edge, label %if.then91

if.end87.if.end108_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then91:                                        ; preds = %if.end87
  %i2c_adapter = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 62
  %61 = call ptr @memcpy(ptr %i2c_adapter, ptr @go7007_usb_adap_templ, i32 1360)
  %i2c_lock = getelementptr inbounds %struct.go7007_usb, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @go7007_usb_probe.__key) #10
  %62 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call28, align 8
  %parent = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 62, i32 9, i32 1
  %64 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %parent, align 8
  %driver_data.i.i494 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 62, i32 9, i32 8
  %65 = ptrtoint ptr %driver_data.i.i494 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call28, ptr %driver_data.i.i494, align 4
  %call100 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end105, label %if.end107

do.end105:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.29) #13
  br label %allocfail

if.end107:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  %i2c_adapter_online = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 61
  %68 = ptrtoint ptr %i2c_adapter_online to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %i2c_adapter_online, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end87.if.end108_crit_edge
  %69 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %board_id, align 8
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %70, label %if.end108.if.end146_crit_edge [
    i32 4, label %if.end108.land.lhs.true_crit_edge
    i32 6, label %if.end108.land.lhs.true_crit_edge530
  ]

if.end108.land.lhs.true_crit_edge530:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end108.land.lhs.true_crit_edge:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end108.if.end146_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

land.lhs.true:                                    ; preds = %if.end108.land.lhs.true_crit_edge, %if.end108.land.lhs.true_crit_edge530
  %i2c_adapter_online113 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 61
  %72 = ptrtoint ptr %i2c_adapter_online113 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i2c_adapter_online113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool114.not = icmp eq i32 %73, 0
  br i1 %tobool114.not, label %land.lhs.true.if.end146thread-pre-split_crit_edge, label %if.then115

land.lhs.true.if.end146thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146thread-pre-split

if.then115:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #10
  %74 = call ptr @memset(ptr %data, i32 255, i32 34)
  %i2c_adapter116 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 62
  %call117 = call i32 @i2c_smbus_xfer(ptr noundef %i2c_adapter116, i16 noundef zeroext 33, i16 noundef zeroext -28672, i8 noundef zeroext 1, i8 noundef zeroext 10, i32 noundef 2, ptr noundef nonnull %data) #10
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %76)
  %cmp118.not = icmp eq i8 %76, 118
  br i1 %cmp118.not, label %if.then115.if.end145_crit_edge, label %if.then120

if.then115.if.end145_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then120:                                       ; preds = %if.then115
  %77 = load i32, ptr @assume_endura, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool121.not = icmp eq i32 %77, 0
  br i1 %tobool121.not, label %if.else130, label %if.then122

if.then122:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 11, ptr %board_id, align 8
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @board_endura, ptr %call7.i.i, align 8
  %80 = ptrtoint ptr %board_info to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr getelementptr inbounds (%struct.go7007_usb_board, ptr @board_endura, i32 0, i32 1), ptr %board_info, align 4
  %call129 = call i32 @strscpy(ptr noundef %name39, ptr noundef nonnull @.str.31, i32 noundef 64) #10
  br label %if.end144

if.else130:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %channel) #10
  %81 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %channel, align 2, !annotation !255
  %call131 = call i32 @go7007_read_addr(ptr noundef nonnull %call28, i16 noundef zeroext 15489, ptr noundef nonnull %channel) #10
  %82 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %channel, align 2
  %84 = and i16 %83, 3
  store i16 %84, ptr %channel, align 2
  %85 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 12, ptr %board_id, align 8
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @board_adlink_mpg24, ptr %call7.i.i, align 8
  %87 = ptrtoint ptr %board_info to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr getelementptr inbounds (%struct.go7007_usb_board, ptr @board_adlink_mpg24, i32 0, i32 1), ptr %board_info, align 4
  %conv139 = zext i16 %84 to i32
  %channel_number = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 5
  %88 = ptrtoint ptr %channel_number to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv139, ptr %channel_number, align 8
  %call143 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name39, i32 noundef 64, ptr noundef nonnull @.str.32, i32 noundef %conv139)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %channel) #10
  br label %if.end144

if.end144:                                        ; preds = %if.else130, %if.then122
  %board.1 = phi ptr [ @board_endura, %if.then122 ], [ @board_adlink_mpg24, %if.else130 ]
  call void @go7007_update_board(ptr noundef nonnull %call28) #10
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.then115.if.end145_crit_edge
  %board.2 = phi ptr [ %board.1, %if.end144 ], [ %board.0, %if.then115.if.end145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #10
  br label %if.end146thread-pre-split

if.end146thread-pre-split:                        ; preds = %if.end145, %land.lhs.true.if.end146thread-pre-split_crit_edge
  %board.3.ph = phi ptr [ %board.0, %land.lhs.true.if.end146thread-pre-split_crit_edge ], [ %board.2, %if.end145 ]
  %89 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr = load i32, ptr %board_id, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.end146thread-pre-split, %if.end108.if.end146_crit_edge
  %90 = phi i32 [ %.pr, %if.end146thread-pre-split ], [ %70, %if.end108.if.end146_crit_edge ]
  %board.3 = phi ptr [ %board.3.ph, %if.end146thread-pre-split ], [ %board.0, %if.end108.if.end146_crit_edge ]
  %91 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %board_info, align 4
  %num_i2c_devs148 = getelementptr inbounds %struct.go7007_board_info, ptr %92, i32 0, i32 12
  %93 = ptrtoint ptr %num_i2c_devs148 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_i2c_devs148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %90)
  %cmp150 = icmp eq i32 %90, 9
  br i1 %cmp150, label %if.then152, label %if.end146.if.end209_crit_edge

if.end146.if.end209_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.then152:                                       ; preds = %if.end146
  %usb_buf = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 27
  %95 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hpi_context, align 4
  %usbdev7.i = getelementptr inbounds %struct.go7007_usb, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %usbdev7.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %usbdev7.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i1.i = shl i32 %100, 8
  %or10.i = or i32 %shl.i1.i, -2147483520
  %call15.i = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or10.i, i8 noundef zeroext 65, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %usb_buf, i16 noundef zeroext 3, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp155 = icmp slt i32 %call15.i, 0
  br i1 %cmp155, label %do.end160, label %if.end162

do.end160:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call28, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.34) #13
  br label %allocfail

if.end162:                                        ; preds = %if.then152
  %103 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %usb_buf, align 4
  %105 = lshr i8 %104, 6
  %106 = zext i8 %105 to i32
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %106, label %do.body183 [
    i32 1, label %sw.bb166
    i32 2, label %sw.bb170
    i32 3, label %sw.bb176
  ]

sw.bb166:                                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %tuner_type = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 4
  %108 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 89, ptr %tuner_type, align 4
  %std = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 31
  %109 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 255, ptr %std, align 8
  %call169 = call i32 @strscpy(ptr noundef %name39, ptr noundef nonnull @.str.36, i32 noundef 64) #10
  br label %sw.epilog199

sw.bb170:                                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %tuner_type171 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 4
  %110 = ptrtoint ptr %tuner_type171 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 90, ptr %tuner_type171, align 4
  %std172 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 31
  %111 = ptrtoint ptr %std172 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 8192, ptr %std172, align 8
  %sub = add i32 %94, -2
  %call175 = call i32 @strscpy(ptr noundef %name39, ptr noundef nonnull @.str.37, i32 noundef 64) #10
  br label %sw.epilog199

sw.bb176:                                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %tuner_type177 = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 4
  %112 = ptrtoint ptr %tuner_type177 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 91, ptr %tuner_type177, align 4
  %sub178 = add i32 %94, -2
  %call181 = call i32 @strscpy(ptr noundef %name39, ptr noundef nonnull @.str.38, i32 noundef 64) #10
  br label %sw.epilog199

do.body183:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_probe, %if.then195)) #10
          to label %sw.epilog199 [label %if.then195], !srcloc !254

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_probe.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.40) #10
  br label %sw.epilog199

sw.epilog199:                                     ; preds = %if.then195, %do.body183, %sw.bb176, %sw.bb170, %sw.bb166
  %num_i2c_devs.0 = phi i32 [ %94, %if.then195 ], [ %sub178, %sw.bb176 ], [ %sub, %sw.bb170 ], [ %94, %sw.bb166 ], [ %94, %do.body183 ]
  %113 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hpi_context, align 4
  %usbdev7.i496 = getelementptr inbounds %struct.go7007_usb, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %usbdev7.i496 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %usbdev7.i496, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i1.i497 = shl i32 %118, 8
  %or10.i498 = or i32 %shl.i1.i497, -2147483648
  %call15.i499 = call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or10.i498, i8 noundef zeroext 64, i8 noundef zeroext 64, i16 noundef zeroext 32514, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i499)
  %cmp201 = icmp slt i32 %call15.i499, 0
  br i1 %cmp201, label %do.end206, label %sw.epilog199.if.end209_crit_edge

sw.epilog199.if.end209_crit_edge:                 ; preds = %sw.epilog199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

do.end206:                                        ; preds = %sw.epilog199
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call28, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.42) #13
  br label %allocfail

if.end209:                                        ; preds = %sw.epilog199.if.end209_crit_edge, %if.end146.if.end209_crit_edge
  %num_i2c_devs.1 = phi i32 [ %num_i2c_devs.0, %sw.epilog199.if.end209_crit_edge ], [ %94, %if.end146.if.end209_crit_edge ]
  %121 = ptrtoint ptr %board.3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %board.3, align 4
  %and211 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end209.if.end221_crit_edge, label %land.lhs.true213

if.end209.if.end221_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true213:                                 ; preds = %if.end209
  %speed = getelementptr i8, ptr %1, i32 -100
  %123 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp214.not = icmp eq i32 %124, 3
  br i1 %cmp214.not, label %land.lhs.true213.if.end221_crit_edge, label %do.end219

land.lhs.true213.if.end221_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

do.end219:                                        ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call28, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.45) #13
  br label %if.end221

if.end221:                                        ; preds = %do.end219, %land.lhs.true213.if.end221_crit_edge, %if.end209.if.end221_crit_edge
  %127 = ptrtoint ptr %board.3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %board.3, align 4
  %and223 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  %129 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %usbdev36, align 8
  br i1 %tobool224.not, label %if.else236, label %if.then225

if.then225:                                       ; preds = %if.end221
  %arrayidx228 = getelementptr %struct.usb_device, ptr %130, i32 0, i32 21, i32 6
  %131 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx228, align 8
  %tobool229.not = icmp eq ptr %132, null
  br i1 %tobool229.not, label %if.then225.allocfail_crit_edge, label %if.then225.if.end247_crit_edge

if.then225.if.end247_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then225.allocfail_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.else236:                                       ; preds = %if.end221
  %arrayidx239 = getelementptr %struct.usb_device, ptr %130, i32 0, i32 21, i32 1
  %133 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx239, align 4
  %tobool240.not = icmp eq ptr %134, null
  br i1 %tobool240.not, label %if.else236.allocfail_crit_edge, label %if.else236.if.end247_crit_edge

if.else236.if.end247_crit_edge:                   ; preds = %if.else236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.else236.allocfail_crit_edge:                   ; preds = %if.else236
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end247:                                        ; preds = %if.else236.if.end247_crit_edge, %if.then225.if.end247_crit_edge
  %.sink = phi i32 [ 196608, %if.then225.if.end247_crit_edge ], [ 32768, %if.else236.if.end247_crit_edge ]
  %v_urb_len.0 = phi i32 [ 1024, %if.then225.if.end247_crit_edge ], [ 512, %if.else236.if.end247_crit_edge ]
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %130, align 8
  %shl.i502 = shl i32 %136, 8
  %or.i503 = or i32 %shl.i502, %.sink
  %video_pipe.0 = or i32 %or.i503, -1073741696
  br label %for.body

for.body:                                         ; preds = %if.end268.for.body_crit_edge, %if.end247
  %i.0521 = phi i32 [ 0, %if.end247 ], [ %inc, %if.end268.for.body_crit_edge ]
  %call250 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %arrayidx251 = getelementptr %struct.go7007_usb, ptr %call7.i.i, i32 0, i32 3, i32 %i.0521
  %137 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call250, ptr %arrayidx251, align 4
  %cmp254 = icmp eq ptr %call250, null
  br i1 %cmp254, label %for.body.allocfail_crit_edge, label %if.end8.i

for.body.allocfail_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end8.i:                                        ; preds = %for.body
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %v_urb_len.0, i32 noundef 3264) #15
  %138 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx251, align 4
  %transfer_buffer261 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 14
  %140 = ptrtoint ptr %transfer_buffer261 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call9.i, ptr %transfer_buffer261, align 4
  %141 = load ptr, ptr %arrayidx251, align 4
  %transfer_buffer264 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %transfer_buffer264 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %transfer_buffer264, align 4
  %cmp265 = icmp eq ptr %143, null
  br i1 %cmp265, label %if.end8.i.allocfail_crit_edge, label %if.end268

if.end8.i.allocfail_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end268:                                        ; preds = %if.end8.i
  %144 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %usbdev36, align 8
  %dev1.i504 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 8
  %146 = ptrtoint ptr %dev1.i504 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %dev1.i504, align 4
  %pipe2.i505 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 10
  %147 = ptrtoint ptr %pipe2.i505 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %video_pipe.0, ptr %pipe2.i505, align 4
  %transfer_buffer_length.i507 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 19
  %148 = ptrtoint ptr %transfer_buffer_length.i507 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %v_urb_len.0, ptr %transfer_buffer_length.i507, align 4
  %complete.i508 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 28
  %149 = ptrtoint ptr %complete.i508 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @go7007_usb_read_video_pipe_complete, ptr %complete.i508, align 4
  %context4.i509 = getelementptr inbounds %struct.urb, ptr %141, i32 0, i32 27
  %150 = ptrtoint ptr %context4.i509 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call28, ptr %context4.i509, align 4
  %inc = add nuw nsw i32 %i.0521, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end268.for.body_crit_edge

if.end268.for.body_crit_edge:                     ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end268
  %151 = ptrtoint ptr %board.3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %board.3, align 4
  %and276 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %for.end.if.end326_crit_edge, label %land.lhs.true278

for.end.if.end326_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end326

land.lhs.true278:                                 ; preds = %for.end
  %main_info279 = getelementptr inbounds %struct.go7007_usb_board, ptr %board.3, i32 0, i32 1
  %153 = ptrtoint ptr %main_info279 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %main_info279, align 4
  %and281 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %land.lhs.true278.if.end326_crit_edge, label %if.then283

land.lhs.true278.if.end326_crit_edge:             ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end326

if.then283:                                       ; preds = %land.lhs.true278
  %155 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %usbdev36, align 8
  %arrayidx286 = getelementptr %struct.usb_device, ptr %156, i32 0, i32 21, i32 8
  %157 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx286, align 8
  %tobool287.not = icmp eq ptr %158, null
  br i1 %tobool287.not, label %if.then283.allocfail_crit_edge, label %if.then283.for.body293_crit_edge

if.then283.for.body293_crit_edge:                 ; preds = %if.then283
  br label %for.body293

if.then283.allocfail_crit_edge:                   ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

for.body293:                                      ; preds = %if.end312.for.body293_crit_edge, %if.then283.for.body293_crit_edge
  %i.1522 = phi i32 [ %inc324, %if.end312.for.body293_crit_edge ], [ 0, %if.then283.for.body293_crit_edge ]
  %call294 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %arrayidx295 = getelementptr %struct.go7007_usb, ptr %call7.i.i, i32 0, i32 4, i32 %i.1522
  %159 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call294, ptr %arrayidx295, align 4
  %cmp298 = icmp eq ptr %call294, null
  br i1 %cmp298, label %for.body293.allocfail_crit_edge, label %if.end301

for.body293.allocfail_crit_edge:                  ; preds = %for.body293
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end301:                                        ; preds = %for.body293
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %160 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i483 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %160, i32 noundef 3264, i32 noundef 4096) #14
  %161 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx295, align 4
  %transfer_buffer305 = getelementptr inbounds %struct.urb, ptr %162, i32 0, i32 14
  %163 = ptrtoint ptr %transfer_buffer305 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call7.i483, ptr %transfer_buffer305, align 4
  %164 = load ptr, ptr %arrayidx295, align 4
  %transfer_buffer308 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 14
  %165 = ptrtoint ptr %transfer_buffer308 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %transfer_buffer308, align 4
  %cmp309 = icmp eq ptr %166, null
  br i1 %cmp309, label %if.end301.allocfail_crit_edge, label %if.end312

if.end301.allocfail_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end312:                                        ; preds = %if.end301
  %167 = ptrtoint ptr %usbdev36 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %usbdev36, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %shl.i510 = shl i32 %170, 8
  %or319 = or i32 %shl.i510, -1073479552
  %dev1.i512 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 8
  %171 = ptrtoint ptr %dev1.i512 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %dev1.i512, align 4
  %pipe2.i513 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 10
  %172 = ptrtoint ptr %pipe2.i513 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or319, ptr %pipe2.i513, align 4
  %transfer_buffer_length.i515 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 19
  %173 = ptrtoint ptr %transfer_buffer_length.i515 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4096, ptr %transfer_buffer_length.i515, align 4
  %complete.i516 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 28
  %174 = ptrtoint ptr %complete.i516 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @go7007_usb_read_audio_pipe_complete, ptr %complete.i516, align 4
  %context4.i517 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 27
  %175 = ptrtoint ptr %context4.i517 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call28, ptr %context4.i517, align 4
  %inc324 = add nuw nsw i32 %i.1522, 1
  %exitcond524.not = icmp eq i32 %inc324, 8
  br i1 %exitcond524.not, label %if.end312.if.end326_crit_edge, label %if.end312.for.body293_crit_edge

if.end312.for.body293_crit_edge:                  ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body293

if.end312.if.end326_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end326

if.end326:                                        ; preds = %if.end312.if.end326_crit_edge, %land.lhs.true278.if.end326_crit_edge, %for.end.if.end326_crit_edge
  %call327 = call i32 @go7007_register_encoder(ptr noundef %call28, i32 noundef %num_i2c_devs.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %cmp328 = icmp slt i32 %call327, 0
  br i1 %cmp328, label %if.end326.allocfail_crit_edge, label %if.end331

if.end326.allocfail_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocfail

if.end331:                                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.go7007, ptr %call28, i32 0, i32 20
  %176 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %status, align 8
  br label %cleanup

allocfail:                                        ; preds = %if.end326.allocfail_crit_edge, %if.end301.allocfail_crit_edge, %for.body293.allocfail_crit_edge, %if.then283.allocfail_crit_edge, %if.end8.i.allocfail_crit_edge, %for.body.allocfail_crit_edge, %if.else236.allocfail_crit_edge, %if.then225.allocfail_crit_edge, %do.end206, %do.end160, %do.end105, %if.end81.allocfail_crit_edge, %if.end54.allocfail_crit_edge, %if.end49.allocfail_crit_edge, %if.end34.allocfail_crit_edge
  call void @go7007_usb_release(ptr noundef %call28)
  call void @kfree(ptr noundef %call28) #10
  br label %cleanup

cleanup:                                          ; preds = %allocfail, %if.end331, %if.then33, %sw.epilog.cleanup_crit_edge, %do.end24, %do.end15
  %retval.0 = phi i32 [ -19, %do.end24 ], [ -12, %if.then33 ], [ -12, %allocfail ], [ 0, %if.end331 ], [ -19, %do.end15 ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_usb_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue_lock = getelementptr i8, ptr %1, i32 2584
  tail call void @mutex_lock_nested(ptr noundef %queue_lock, i32 noundef 0) #10
  %serialize_lock = getelementptr i8, ptr %1, i32 484
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock, i32 noundef 0) #10
  %audio_enabled = getelementptr i8, ptr %1, i32 576
  %2 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1480
  %call2 = tail call i32 @go7007_snd_remove(ptr noundef %add.ptr.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr i8, ptr %1, i32 344
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %status, align 8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #10
  %vdev = getelementptr i8, ptr %1, i32 -1360
  tail call void @video_unregister_device(ptr noundef %vdev) #10
  tail call void @mutex_unlock(ptr noundef %serialize_lock) #10
  tail call void @mutex_unlock(ptr noundef %queue_lock) #10
  %call6 = tail call i32 @v4l2_device_put(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @go7007_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_usb_readinterrupt_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %5, label %land.lhs.true [
    i32 0, label %if.else6
    i32 -108, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %status2 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp3.not = icmp eq i32 %8, 2
  br i1 %cmp3.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.86, i32 noundef %5) #13
  br label %cleanup

if.else6:                                         ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp7.not = icmp eq i32 %12, %14
  br i1 %cmp7.not, label %if.else13, label %do.end11

do.end11:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.89) #13
  br label %cleanup

if.else13:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %interrupt_available = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 65
  %17 = ptrtoint ptr %interrupt_available to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %interrupt_available, align 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %3, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %interrupt_data = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 68
  %21 = ptrtoint ptr %interrupt_data to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %interrupt_data, align 2
  %arrayidx14 = getelementptr i16, ptr %3, i32 1
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx14, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %interrupt_value = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 67
  %25 = ptrtoint ptr %interrupt_value to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %interrupt_value, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_readinterrupt_complete.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_readinterrupt_complete, %if.then19)) #10
          to label %cleanup [label %if.then19], !srcloc !254

if.then19:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %interrupt_value to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %interrupt_value, align 8
  %conv = zext i16 %27 to i32
  %28 = ptrtoint ptr %interrupt_data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %interrupt_data, align 2
  %conv22 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_readinterrupt_complete.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %conv22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else13, %do.end11, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %interrupt_waitq28 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 66
  tail call void @__wake_up(ptr noundef %interrupt_waitq28, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_boot_encoder(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_read_addr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @go7007_update_board(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_usb_read_video_pipe_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %streaming.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 50, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %frame_waitq = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 57
  tail call void @__wake_up(ptr noundef %frame_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.94, i32 noundef %3) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.97) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  tail call void @go7007_parse_video_stream(ptr noundef %1, ptr noundef %14, i32 noundef %8) #10
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.94, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end9.cleanup_crit_edge, %do.end7, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_usb_read_audio_pipe_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %streaming.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 50, i32 28
  %4 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.101, i32 noundef %3) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.104) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %audio_deliver = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 59
  %13 = ptrtoint ptr %audio_deliver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %audio_deliver, align 8
  %cmp10.not = icmp eq ptr %14, null
  br i1 %cmp10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  tail call void %14(ptr noundef %1, ptr noundef %16, i32 noundef %8) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.101, i32 noundef %call15) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end14.cleanup_crit_edge, %do.end7, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_register_encoder(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_usb_release(ptr nocapture noundef readonly %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %intr_urb = getelementptr inbounds %struct.go7007_usb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_urb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr_urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 %i.031
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %for.body.if.end7_crit_edge, label %if.then5

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #10
  %transfer_buffer6 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer6, align 4
  tail call void @kfree(ptr noundef %13) #10
  tail call void @usb_free_urb(ptr noundef nonnull %11) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.if.end7_crit_edge
  %arrayidx8 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 %i.031
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end7.for.inc_crit_edge, label %if.then10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %15) #10
  %transfer_buffer11 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transfer_buffer11, align 4
  tail call void @kfree(ptr noundef %17) #10
  tail call void @usb_free_urb(ptr noundef nonnull %15) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end7.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hpi_context, align 4
  tail call void @kfree(ptr noundef %19) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_interface_reset(ptr noundef %go) #2 align 64 {
entry:
  %intr_val = alloca i16, align 2
  %intr_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intr_val) #10
  %2 = ptrtoint ptr %intr_val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %intr_val, align 2, !annotation !255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intr_data) #10
  %3 = ptrtoint ptr %intr_data to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %intr_data, align 2, !annotation !255
  %status = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 20
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpi_ops = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 63
  %6 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpi_ops, align 8
  %write_interrupt = getelementptr inbounds %struct.go7007_hpi_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_interrupt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_interrupt, align 4
  %call = tail call i32 %9(ptr noundef %go, i32 noundef 1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3.if.end23_crit_edge, label %do.body

if.end3.if.end23_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_interface_reset.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_interface_reset, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !254

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_interface_reset.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.66) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %14 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hpi_context, align 4
  %usbdev7.i = getelementptr inbounds %struct.go7007_usb, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %usbdev7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usbdev7.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i1.i = shl i32 %19, 8
  %or10.i = or i32 %shl.i1.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or10.i, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp12 = icmp slt i32 %call15.i, 0
  br i1 %cmp12, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %20 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hpi_context, align 4
  %usbdev7.i47 = getelementptr inbounds %struct.go7007_usb, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %usbdev7.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usbdev7.i47, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i1.i48 = shl i32 %25, 8
  %or10.i49 = or i32 %shl.i1.i48, -2147483648
  %call15.i50 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or10.i49, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i50)
  %cmp14 = icmp slt i32 %call15.i50, 0
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %if.end16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hpi_ops, align 8
  %write_interrupt18 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_interrupt18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_interrupt18, align 4
  %call19 = tail call i32 %29(ptr noundef %go, i32 noundef 1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 100) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end3.if.end23_crit_edge
  %call24 = call i32 @go7007_read_interrupt(ptr noundef %go, ptr noundef nonnull %intr_val, ptr noundef nonnull %intr_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.do.end33_crit_edge, label %lor.lhs.false26

if.end23.do.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

lor.lhs.false26:                                  ; preds = %if.end23
  %30 = ptrtoint ptr %intr_val to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %intr_val, align 2
  %32 = and i16 %31, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %32)
  %cmp28.not = icmp eq i16 %32, 21930
  br i1 %cmp28.not, label %lor.lhs.false26.cleanup_crit_edge, label %lor.lhs.false26.do.end33_crit_edge

lor.lhs.false26.do.end33_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end33:                                         ; preds = %lor.lhs.false26.do.end33_crit_edge, %if.end23.do.end33_crit_edge
  %33 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.67) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %lor.lhs.false26.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end33 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %do.end.cleanup_crit_edge ], [ -1, %if.end16.cleanup_crit_edge ], [ 0, %lor.lhs.false26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intr_data) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intr_val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_ezusb_write_interrupt(ptr noundef %go, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_ezusb_write_interrupt.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_ezusb_write_interrupt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !254

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_ezusb_write_interrupt.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.70, i32 noundef %addr, i32 noundef %data) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usbdev = getelementptr inbounds %struct.go7007_usb, ptr %1, i32 0, i32 2
  %usb_buf = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %do.end
  %i.096 = phi i32 [ 0, %do.end ], [ %inc, %if.end14.for.body_crit_edge ]
  %2 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or5 = or i32 %shl.i, -2147483520
  %call6 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or5, i8 noundef zeroext 20, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -12, ptr noundef %usb_buf, i16 noundef zeroext 2, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.body.do.end49_crit_edge, label %if.end9

for.body.do.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

if.end9:                                          ; preds = %for.body
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %usb_buf, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = and i16 %8, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool12.not = icmp eq i16 %9, 0
  br i1 %tobool12.not, label %if.end26, label %if.end14

if.end14:                                         ; preds = %if.end9
  tail call void @msleep(i32 noundef 10) #10
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end24, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le = zext i16 %8 to i32
  %10 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.71, i32 noundef %phi.cast.le) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbdev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i76 = shl i32 %15, 8
  %or30 = or i32 %shl.i76, -2147483648
  %conv31 = trunc i32 %data to i16
  %call32 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or30, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext %conv31, i16 noundef zeroext -10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end26.do.end49_crit_edge, label %if.end36

if.end26.do.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

if.end36:                                         ; preds = %if.end26
  %16 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usbdev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i77 = shl i32 %19, 8
  %or40 = or i32 %shl.i77, -2147483648
  %conv41 = trunc i32 %addr to i16
  %call42 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or40, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext %conv41, i16 noundef zeroext -8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end36.do.end49_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.do.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

do.end49:                                         ; preds = %if.end36.do.end49_crit_edge, %if.end26.do.end49_crit_edge, %for.body.do.end49_crit_edge
  %r.2 = phi i32 [ %call32, %if.end26.do.end49_crit_edge ], [ %call42, %if.end36.do.end49_crit_edge ], [ %call6, %for.body.do.end49_crit_edge ]
  %20 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.73, i32 noundef %r.2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end36.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ %r.2, %do.end49 ], [ -1, %do.end24 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_read_interrupt(ptr nocapture noundef readonly %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %intr_urb = getelementptr inbounds %struct.go7007_usb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.75, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_stream_start(ptr nocapture noundef readonly %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %arrayidx = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.do.end_crit_edge, label %for.inc

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.6.do.end_crit_edge, %for.inc.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %i.062.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ], [ 4, %for.inc.3.do.end_crit_edge ], [ 5, %for.inc.4.do.end_crit_edge ], [ 6, %for.inc.5.do.end_crit_edge ], [ 7, %for.inc.6.do.end_crit_edge ]
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.inc.do.end_crit_edge ], [ %call.2, %for.inc.1.do.end_crit_edge ], [ %call.3, %for.inc.2.do.end_crit_edge ], [ %call.4, %for.inc.3.do.end_crit_edge ], [ %call.5, %for.inc.4.do.end_crit_edge ], [ %call.6, %for.inc.5.do.end_crit_edge ], [ %call.7, %for.inc.6.do.end_crit_edge ]
  %4 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.77, i32 noundef %i.062.lcssa, i32 noundef %call.lcssa) #13
  br label %video_submit_failed

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %call.2 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %call.3 = tail call i32 @usb_submit_urb(ptr noundef %11, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %for.inc.2.do.end_crit_edge, label %for.inc.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %call.4 = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %for.inc.3.do.end_crit_edge, label %for.inc.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  %call.5 = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp1.5 = icmp slt i32 %call.5, 0
  br i1 %cmp1.5, label %for.inc.4.do.end_crit_edge, label %for.inc.5

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  %call.6 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp1.6 = icmp slt i32 %call.6, 0
  br i1 %cmp1.6, label %for.inc.5.do.end_crit_edge, label %for.inc.6

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  %call.7 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp1.7 = icmp slt i32 %call.7, 0
  br i1 %cmp1.7, label %for.inc.6.do.end_crit_edge, label %for.inc.7

for.inc.6.do.end_crit_edge:                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.inc.7:                                        ; preds = %for.inc.6
  %audio_enabled = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 24
  %20 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audio_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %for.inc.7.cleanup_crit_edge, label %for.body6.preheader

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body6.preheader:                              ; preds = %for.inc.7
  %arrayidx7 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 0
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %for.body6.preheader.do.end13_crit_edge, label %for.inc16

for.body6.preheader.do.end13_crit_edge:           ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end13:                                         ; preds = %for.inc16.6.do.end13_crit_edge, %for.inc16.5.do.end13_crit_edge, %for.inc16.4.do.end13_crit_edge, %for.inc16.3.do.end13_crit_edge, %for.inc16.2.do.end13_crit_edge, %for.inc16.1.do.end13_crit_edge, %for.inc16.do.end13_crit_edge, %for.body6.preheader.do.end13_crit_edge
  %i.163.lcssa = phi i32 [ 0, %for.body6.preheader.do.end13_crit_edge ], [ 1, %for.inc16.do.end13_crit_edge ], [ 2, %for.inc16.1.do.end13_crit_edge ], [ 3, %for.inc16.2.do.end13_crit_edge ], [ 4, %for.inc16.3.do.end13_crit_edge ], [ 5, %for.inc16.4.do.end13_crit_edge ], [ 6, %for.inc16.5.do.end13_crit_edge ], [ 7, %for.inc16.6.do.end13_crit_edge ]
  %call8.lcssa = phi i32 [ %call8, %for.body6.preheader.do.end13_crit_edge ], [ %call8.1, %for.inc16.do.end13_crit_edge ], [ %call8.2, %for.inc16.1.do.end13_crit_edge ], [ %call8.3, %for.inc16.2.do.end13_crit_edge ], [ %call8.4, %for.inc16.3.do.end13_crit_edge ], [ %call8.5, %for.inc16.4.do.end13_crit_edge ], [ %call8.6, %for.inc16.5.do.end13_crit_edge ], [ %call8.7, %for.inc16.6.do.end13_crit_edge ]
  %24 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.80, i32 noundef %i.163.lcssa, i32 noundef %call8.lcssa) #13
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx7, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #10
  %arrayidx23.1 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx23.1, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #10
  %arrayidx23.2 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx23.2, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #10
  %arrayidx23.3 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx23.3, align 4
  tail call void @usb_kill_urb(ptr noundef %33) #10
  %arrayidx23.4 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx23.4, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #10
  %arrayidx23.5 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 5
  %36 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx23.5, align 4
  tail call void @usb_kill_urb(ptr noundef %37) #10
  %arrayidx23.6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx23.6, align 4
  tail call void @usb_kill_urb(ptr noundef %39) #10
  br label %video_submit_failed

for.inc16:                                        ; preds = %for.body6.preheader
  %arrayidx7.1 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7.1, align 4
  %call8.1 = tail call i32 @usb_submit_urb(ptr noundef %41, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %cmp9.1 = icmp slt i32 %call8.1, 0
  br i1 %cmp9.1, label %for.inc16.do.end13_crit_edge, label %for.inc16.1

for.inc16.do.end13_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

for.inc16.1:                                      ; preds = %for.inc16
  %arrayidx7.2 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7.2, align 4
  %call8.2 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %cmp9.2 = icmp slt i32 %call8.2, 0
  br i1 %cmp9.2, label %for.inc16.1.do.end13_crit_edge, label %for.inc16.2

for.inc16.1.do.end13_crit_edge:                   ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

for.inc16.2:                                      ; preds = %for.inc16.1
  %arrayidx7.3 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx7.3, align 4
  %call8.3 = tail call i32 @usb_submit_urb(ptr noundef %45, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %cmp9.3 = icmp slt i32 %call8.3, 0
  br i1 %cmp9.3, label %for.inc16.2.do.end13_crit_edge, label %for.inc16.3

for.inc16.2.do.end13_crit_edge:                   ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

for.inc16.3:                                      ; preds = %for.inc16.2
  %arrayidx7.4 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 4
  %46 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx7.4, align 4
  %call8.4 = tail call i32 @usb_submit_urb(ptr noundef %47, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %cmp9.4 = icmp slt i32 %call8.4, 0
  br i1 %cmp9.4, label %for.inc16.3.do.end13_crit_edge, label %for.inc16.4

for.inc16.3.do.end13_crit_edge:                   ; preds = %for.inc16.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

for.inc16.4:                                      ; preds = %for.inc16.3
  %arrayidx7.5 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 5
  %48 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx7.5, align 4
  %call8.5 = tail call i32 @usb_submit_urb(ptr noundef %49, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.5)
  %cmp9.5 = icmp slt i32 %call8.5, 0
  br i1 %cmp9.5, label %for.inc16.4.do.end13_crit_edge, label %for.inc16.5

for.inc16.4.do.end13_crit_edge:                   ; preds = %for.inc16.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

for.inc16.5:                                      ; preds = %for.inc16.4
  %arrayidx7.6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx7.6, align 4
  %call8.6 = tail call i32 @usb_submit_urb(ptr noundef %51, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.6)
  %cmp9.6 = icmp slt i32 %call8.6, 0
  br i1 %cmp9.6, label %for.inc16.5.do.end13_crit_edge, label %for.inc16.6

for.inc16.5.do.end13_crit_edge:                   ; preds = %for.inc16.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

for.inc16.6:                                      ; preds = %for.inc16.5
  %arrayidx7.7 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 7
  %52 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx7.7, align 4
  %call8.7 = tail call i32 @usb_submit_urb(ptr noundef %53, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.7)
  %cmp9.7 = icmp slt i32 %call8.7, 0
  br i1 %cmp9.7, label %for.inc16.6.do.end13_crit_edge, label %for.inc16.6.cleanup_crit_edge

for.inc16.6.cleanup_crit_edge:                    ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc16.6.do.end13_crit_edge:                   ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

video_submit_failed:                              ; preds = %do.end13, %do.end
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %55) #10
  %arrayidx31.1 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx31.1, align 4
  tail call void @usb_kill_urb(ptr noundef %57) #10
  %arrayidx31.2 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx31.2, align 4
  tail call void @usb_kill_urb(ptr noundef %59) #10
  %arrayidx31.3 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 3
  %60 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx31.3, align 4
  tail call void @usb_kill_urb(ptr noundef %61) #10
  %arrayidx31.4 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 4
  %62 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx31.4, align 4
  tail call void @usb_kill_urb(ptr noundef %63) #10
  %arrayidx31.5 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx31.5, align 4
  tail call void @usb_kill_urb(ptr noundef %65) #10
  %arrayidx31.6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 6
  %66 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx31.6, align 4
  tail call void @usb_kill_urb(ptr noundef %67) #10
  %arrayidx31.7 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 7
  %68 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx31.7, align 4
  tail call void @usb_kill_urb(ptr noundef %69) #10
  br label %cleanup

cleanup:                                          ; preds = %video_submit_failed, %for.inc16.6.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.7.cleanup_crit_edge ], [ -1, %video_submit_failed ], [ 0, %for.inc16.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_stream_stop(ptr nocapture noundef readonly %go) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  %status = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 20
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %arrayidx.1 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #10
  %arrayidx.2 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %arrayidx.3 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  %arrayidx.4 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #10
  %arrayidx.5 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #10
  %arrayidx.6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #10
  %arrayidx.7 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  tail call void @usb_kill_urb(ptr noundef %19) #10
  %audio_enabled = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 24
  %20 = ptrtoint ptr %audio_enabled to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audio_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %for.body.preheader.cleanup_crit_edge, label %for.body5.preheader

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body5.preheader:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 0
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx6, align 4
  tail call void @usb_kill_urb(ptr noundef %23) #10
  %arrayidx6.1 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6.1, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #10
  %arrayidx6.2 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6.2, align 4
  tail call void @usb_kill_urb(ptr noundef %27) #10
  %arrayidx6.3 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx6.3, align 4
  tail call void @usb_kill_urb(ptr noundef %29) #10
  %arrayidx6.4 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx6.4, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #10
  %arrayidx6.5 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx6.5, align 4
  tail call void @usb_kill_urb(ptr noundef %33) #10
  %arrayidx6.6 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx6.6, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #10
  %arrayidx6.7 = getelementptr %struct.go7007_usb, ptr %1, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx6.7, align 4
  tail call void @usb_kill_urb(ptr noundef %37) #10
  br label %cleanup

cleanup:                                          ; preds = %for.body5.preheader, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_send_firmware(ptr nocapture noundef readonly %go, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  %transferred = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %transferred) #10
  %2 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %transferred, align 4, !annotation !255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_send_firmware.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_send_firmware, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !254

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_send_firmware.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.84, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %usbdev6 = getelementptr inbounds %struct.go7007_usb, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %usbdev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usbdev6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i16 = shl i32 %10, 8
  %. = select i1 %tobool3.not, i32 98304, i32 65536
  %or.i17 = or i32 %shl.i16, %.
  %pipe.0 = or i32 %or.i17, -1073741824
  %usbdev10 = getelementptr inbounds %struct.go7007_usb, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %usbdev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbdev10, align 4
  %call11 = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %pipe.0, ptr noundef %data, i32 noundef %len, ptr noundef nonnull %transferred, i32 noundef 500) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %transferred) #10
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_read_interrupt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_onboard_write_interrupt(ptr noundef %go, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 64
  %0 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpi_context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @go7007_usb_onboard_write_interrupt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@go7007_usb_onboard_write_interrupt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !254

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @go7007_usb_onboard_write_interrupt.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.70, i32 noundef %addr, i32 noundef %data) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = trunc i32 %data to i8
  %usb_buf = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 27
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %usb_buf, align 4
  %3 = lshr i32 %data, 8
  %conv3 = trunc i32 %3 to i8
  %arrayidx5 = getelementptr %struct.go7007, ptr %go, i32 0, i32 27, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %arrayidx5, align 1
  %conv7 = trunc i32 %addr to i8
  %arrayidx9 = getelementptr %struct.go7007, ptr %go, i32 0, i32 27, i32 2
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7, ptr %arrayidx9, align 2
  %6 = lshr i32 %addr, 8
  %conv11 = trunc i32 %6 to i8
  %arrayidx13 = getelementptr %struct.go7007, ptr %go, i32 0, i32 27, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11, ptr %arrayidx13, align 1
  %arrayidx21 = getelementptr %struct.go7007, ptr %go, i32 0, i32 27, i32 4
  %usbdev = getelementptr inbounds %struct.go7007_usb, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx21, align 4
  %9 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usbdev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or = or i32 %shl.i, -2147418112
  %call25 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 66, i16 noundef zeroext 21930, i16 noundef zeroext -3856, ptr noundef %usb_buf, i16 noundef zeroext 8, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end30, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.73, i32 noundef %call25) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_usb_i2c_master_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_buf = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 27
  %status = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hpi_context, align 4
  %i2c_lock = getelementptr inbounds %struct.go7007_usb, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1208 = icmp sgt i32 %num, 0
  br i1 %cmp1208, label %for.body.lr.ph, label %if.end.i2c_done_crit_edge

if.end.i2c_done_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_done

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx25 = getelementptr %struct.go7007, ptr %1, i32 0, i32 27, i32 1
  %arrayidx30 = getelementptr %struct.go7007, ptr %1, i32 0, i32 27, i32 2
  %arrayidx31 = getelementptr %struct.go7007, ptr %1, i32 0, i32 27, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %inc122, %for.inc.for.body_crit_edge ]
  %add = add nsw i32 %i.0209, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp2 = icmp slt i32 %add, %num
  br i1 %cmp2, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp7 = icmp eq i16 %7, %9
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %land.lhs.true12, label %land.lhs.true9.if.else_crit_edge

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %flags15 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags15, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  br i1 %tobool18.not, label %land.lhs.true12.if.else_crit_edge, label %if.then19

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %usb_buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %usb_buf, align 1
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %conv22 = trunc i16 %18 to i8
  %add23 = add i8 %conv22, 1
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add23, ptr %arrayidx25, align 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 4
  %conv28 = trunc i16 %21 to i8
  %shl = shl i8 %conv28, 1
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %shl, ptr %arrayidx30, align 1
  %buf33 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 3
  %23 = ptrtoint ptr %buf33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf33, align 4
  %25 = load i16, ptr %len, align 4
  %conv36 = zext i16 %25 to i32
  %26 = call ptr @memcpy(ptr %arrayidx31, ptr %24, i32 %conv36)
  %27 = load i16, ptr %len, align 4
  %conv39 = zext i16 %27 to i32
  %add40 = add nuw nsw i32 %conv39, 3
  %len42 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %28 = ptrtoint ptr %len42 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len42, align 4
  %conv43 = trunc i16 %29 to i8
  %inc44 = add i16 %27, 4
  %arrayidx45 = getelementptr i8, ptr %usb_buf, i32 %add40
  %30 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv43, ptr %arrayidx45, align 1
  br label %if.end91

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %land.lhs.true9.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx46 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209
  %flags47 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 1
  %31 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags47, align 2
  %33 = and i16 %32, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool50.not = icmp eq i16 %33, 0
  br i1 %tobool50.not, label %if.else64, label %if.then51

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %usb_buf to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %usb_buf, align 1
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx25, align 1
  %36 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx46, align 4
  %conv56 = trunc i16 %37 to i8
  %shl57 = shl i8 %conv56, 1
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %shl57, ptr %arrayidx30, align 1
  %len61 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 2
  %39 = ptrtoint ptr %len61 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len61, align 4
  %conv62 = trunc i16 %40 to i8
  %41 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv62, ptr %arrayidx31, align 1
  br label %if.end91

if.else64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %usb_buf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %usb_buf, align 1
  %len67 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 2
  %43 = ptrtoint ptr %len67 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len67, align 4
  %conv68 = trunc i16 %44 to i8
  %add69 = add i8 %conv68, 1
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add69, ptr %arrayidx25, align 1
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx46, align 4
  %conv74 = trunc i16 %47 to i8
  %shl75 = shl i8 %conv74, 1
  %48 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %shl75, ptr %arrayidx30, align 1
  %buf80 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0209, i32 3
  %49 = ptrtoint ptr %buf80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf80, align 4
  %51 = load i16, ptr %len67, align 4
  %conv83 = zext i16 %51 to i32
  %52 = call ptr @memcpy(ptr %arrayidx31, ptr %50, i32 %conv83)
  %53 = load i16, ptr %len67, align 4
  %conv86 = zext i16 %53 to i32
  %add87 = add nuw nsw i32 %conv86, 3
  %inc88 = add i16 %53, 4
  %arrayidx89 = getelementptr i8, ptr %usb_buf, i32 %add87
  %54 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx89, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.else64, %if.then51, %if.then19
  %buf_len.0 = phi i16 [ 4, %if.then51 ], [ %inc88, %if.else64 ], [ %inc44, %if.then19 ]
  %i.1 = phi i32 [ %i.0209, %if.then51 ], [ %i.0209, %if.else64 ], [ %add, %if.then19 ]
  %55 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hpi_context, align 4
  %usbdev7.i = getelementptr inbounds %struct.go7007_usb, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %usbdev7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usbdev7.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i1.i = shl i32 %60, 8
  %or10.i = or i32 %shl.i1.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or10.i, i8 noundef zeroext 36, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %usb_buf, i16 noundef zeroext %buf_len.0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp93 = icmp slt i32 %call15.i, 0
  br i1 %cmp93, label %if.end91.i2c_done_crit_edge, label %if.end96

if.end91.i2c_done_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_done

if.end96:                                         ; preds = %if.end91
  %flags98 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 1
  %61 = ptrtoint ptr %flags98 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags98, align 2
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool101.not = icmp eq i16 %63, 0
  br i1 %tobool101.not, label %if.end96.for.inc_crit_edge, label %if.then102

if.end96.for.inc_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then102:                                       ; preds = %if.end96
  %len104 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 2
  %64 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len104, align 4
  %conv105 = zext i16 %65 to i32
  %add106 = add nuw nsw i32 %conv105, 1
  %66 = call ptr @memset(ptr %usb_buf, i32 0, i32 %add106)
  %67 = load i16, ptr %len104, align 4
  %add110 = add i16 %67, 1
  %68 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hpi_context, align 4
  %usbdev7.i203 = getelementptr inbounds %struct.go7007_usb, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %usbdev7.i203 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usbdev7.i203, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i1.i204 = shl i32 %73, 8
  %or10.i205 = or i32 %shl.i1.i204, -2147483520
  %call15.i207 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or10.i205, i8 noundef zeroext 37, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %usb_buf, i16 noundef zeroext %add110, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i207)
  %cmp112 = icmp slt i32 %call15.i207, 0
  br i1 %cmp112, label %if.then102.i2c_done_crit_edge, label %if.end115

if.then102.i2c_done_crit_edge:                    ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_done

if.end115:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %buf117 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1, i32 3
  %74 = ptrtoint ptr %buf117 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf117, align 4
  %76 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len104, align 4
  %conv120 = zext i16 %77 to i32
  %78 = call ptr @memcpy(ptr %75, ptr %arrayidx25, i32 %conv120)
  br label %for.inc

for.inc:                                          ; preds = %if.end115, %if.end96.for.inc_crit_edge
  %inc122 = add nsw i32 %i.1, 1
  %cmp1 = icmp slt i32 %inc122, %num
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.i2c_done_crit_edge

for.inc.i2c_done_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %i2c_done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

i2c_done:                                         ; preds = %for.inc.i2c_done_crit_edge, %if.then102.i2c_done_crit_edge, %if.end91.i2c_done_crit_edge, %if.end.i2c_done_crit_edge
  %ret.0 = phi i32 [ %num, %if.end.i2c_done_crit_edge ], [ %num, %for.inc.i2c_done_crit_edge ], [ -5, %if.then102.i2c_done_crit_edge ], [ -5, %if.end91.i2c_done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %i2c_done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %i2c_done ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_usb_functionality(ptr nocapture noundef readnone %adapter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251527176
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @go7007_parse_video_stream(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_snd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !79, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !192, !193, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !213, !215, !217, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__param_assume_endura, !1, !"__param_assume_endura", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_assume_enduratype303, !1, !"__UNIQUE_ID_assume_enduratype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_assume_endura304, !4, !"__UNIQUE_ID_assume_endura304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 26, i32 1}
!5 = !{ptr @__initcall__kmod_go7007_usb__312_1352_go7007_usb_driver_init6, !6, !"__initcall__kmod_go7007_usb__312_1352_go7007_usb_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1352, i32 1}
!7 = !{ptr @__exitcall_go7007_usb_driver_exit, !6, !"__exitcall_go7007_usb_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file313, !9, !"__UNIQUE_ID_file313", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1353, i32 1}
!10 = !{ptr @__UNIQUE_ID_license314, !9, !"__UNIQUE_ID_license314", i1 false, i1 false}
!11 = !{ptr @assume_endura, !12, !"assume_endura", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 24, i32 21}
!13 = !{ptr @__param_str_assume_endura, !1, !"__param_str_assume_endura", i1 false, i1 false}
!14 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1346, i32 11}
!17 = !{ptr @go7007_usb_driver, !18, !"go7007_usb_driver", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1345, i32 26}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1052, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @go7007_usb_probe.__UNIQUE_ID_ddebug310, !20, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1056, i32 10}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1060, i32 10}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1064, i32 10}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1068, i32 10}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1072, i32 10}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1076, i32 10}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1080, i32 10}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1084, i32 10}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1088, i32 10}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1092, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @go7007_usb_probe._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @go7007_usb_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1100, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @go7007_usb_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @go7007_usb_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1101, i32 10}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1105, i32 10}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1109, i32 3}
!60 = !{ptr @go7007_usb_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @go7007_usb_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @go7007_usb_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1169, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1173, i32 4}
!67 = !{ptr @go7007_usb_probe._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @go7007_usb_probe._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1198, i32 23}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1211, i32 6}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1225, i32 4}
!75 = !{ptr @go7007_usb_probe._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @go7007_usb_probe._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1232, i32 22}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1239, i32 22}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1245, i32 22}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1249, i32 4}
!85 = !{ptr @go7007_usb_probe.__UNIQUE_ID_ddebug311, !84, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!86 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1256, i32 4}
!89 = !{ptr @go7007_usb_probe._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @go7007_usb_probe._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1265, i32 3}
!93 = !{ptr @go7007_usb_probe._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @go7007_usb_probe._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 84, i32 13}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 93, i32 14}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 97, i32 14}
!101 = !{ptr @board_matrix_ii, !102, !"board_matrix_ii", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 64, i32 38}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 121, i32 13}
!105 = !{ptr @board_matrix_reload, !106, !"board_matrix_reload", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 104, i32 38}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 314, i32 13}
!109 = !{ptr @board_matrix_revolution, !110, !"board_matrix_revolution", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 296, i32 38}
!111 = !{ptr @board_star_trek, !112, !"board_star_trek", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 141, i32 38}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 283, i32 13}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 290, i32 14}
!117 = !{ptr @board_xmen, !118, !"board_xmen", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 262, i32 38}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 212, i32 13}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 217, i32 13}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 225, i32 13}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 234, i32 14}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 256, i32 14}
!129 = !{ptr @board_px_tv402u, !130, !"board_px_tv402u", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 188, i32 38}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 434, i32 13}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 459, i32 14}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 463, i32 14}
!137 = !{ptr @board_sensoray_2250, !138, !"board_sensoray_2250", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 418, i32 38}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 487, i32 13}
!141 = !{ptr @board_ads_usbav_709, !142, !"board_ads_usbav_709", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 469, i32 38}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/usb.h", i32 912, i32 31}
!145 = !{ptr @go7007_usb_ezusb_hpi_ops, !146, !"go7007_usb_ezusb_hpi_ops", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 927, i32 36}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 655, i32 3}
!149 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @go7007_usb_interface_reset.__UNIQUE_ID_ddebug305, !148, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!151 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 669, i32 3}
!154 = !{ptr @go7007_usb_interface_reset._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @go7007_usb_interface_reset._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 683, i32 2}
!158 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @go7007_usb_ezusb_write_interrupt.__UNIQUE_ID_ddebug306, !157, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!160 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 701, i32 3}
!163 = !{ptr @go7007_usb_ezusb_write_interrupt._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @go7007_usb_ezusb_write_interrupt._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 717, i32 2}
!167 = !{ptr @go7007_usb_ezusb_write_interrupt._entry.72, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @go7007_usb_ezusb_write_interrupt._entry_ptr.74, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 779, i32 3}
!171 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @go7007_usb_read_interrupt._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @go7007_usb_read_interrupt._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 839, i32 4}
!176 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @go7007_usb_stream_start._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @go7007_usb_stream_start._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 849, i32 4}
!181 = !{ptr @go7007_usb_stream_start._entry.79, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @go7007_usb_stream_start._entry_ptr.81, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 885, i32 2}
!185 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @go7007_usb_send_firmware.__UNIQUE_ID_ddebug309, !184, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!187 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @go7007_usb_onboard_hpi_ops, !189, !"go7007_usb_onboard_hpi_ops", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 937, i32 36}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 728, i32 2}
!192 = !{ptr @go7007_usb_onboard_write_interrupt.__UNIQUE_ID_ddebug307, !191, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!193 = !{ptr @go7007_usb_onboard_write_interrupt._entry, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 739, i32 3}
!195 = !{ptr @go7007_usb_onboard_write_interrupt._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 754, i32 4}
!198 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @go7007_usb_readinterrupt_complete._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @go7007_usb_readinterrupt_complete._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 760, i32 3}
!203 = !{ptr @go7007_usb_readinterrupt_complete._entry.88, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @go7007_usb_readinterrupt_complete._entry_ptr.90, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 765, i32 3}
!207 = !{ptr @go7007_usb_readinterrupt_complete.__UNIQUE_ID_ddebug308, !206, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!208 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @go7007_usb_adap_templ, !210, !"go7007_usb_adap_templ", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1032, i32 27}
!211 = !{ptr @go7007_usb_algo, !212, !"go7007_usb_algo", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 1027, i32 35}
!213 = !{ptr @board_endura, !214, !"board_endura", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 362, i32 38}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 403, i32 13}
!217 = !{ptr @board_adlink_mpg24, !218, !"board_adlink_mpg24", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 386, i32 38}
!219 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 795, i32 3}
!221 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @go7007_usb_read_video_pipe_complete._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @go7007_usb_read_video_pipe_complete._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 799, i32 3}
!226 = !{ptr @go7007_usb_read_video_pipe_complete._entry.96, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @go7007_usb_read_video_pipe_complete._entry_ptr.98, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @go7007_usb_read_video_pipe_complete._entry.99, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 805, i32 3}
!230 = !{ptr @go7007_usb_read_video_pipe_complete._entry_ptr.100, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 816, i32 3}
!233 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @go7007_usb_read_audio_pipe_complete._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @go7007_usb_read_audio_pipe_complete._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.104, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 821, i32 3}
!238 = !{ptr @go7007_usb_read_audio_pipe_complete._entry.103, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @go7007_usb_read_audio_pipe_complete._entry_ptr.105, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @go7007_usb_read_audio_pipe_complete._entry.106, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 828, i32 3}
!242 = !{ptr @go7007_usb_read_audio_pipe_complete._entry_ptr.107, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @go7007_usb_id_table, !244, !"go7007_usb_id_table", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/go7007/go7007-usb.c", i32 506, i32 35}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{i64 2148986749, i64 2148986754, i64 2148986767, i64 2148986811, i64 2148986845, i64 2148986866}
!255 = !{!"auto-init"}
