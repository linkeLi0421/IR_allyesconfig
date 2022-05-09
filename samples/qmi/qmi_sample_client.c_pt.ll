; ModuleID = '/llk/IR_all_yes/samples/qmi/qmi_sample_client.c_pt.bc'
source_filename = "../samples/qmi/qmi_sample_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.qmi_sample = type { %struct.qmi_handle, ptr, ptr, ptr }
%struct.test_ping_resp_msg_v01 = type { %struct.qmi_response_type_v01, i8, [4 x i8], i8, %struct.test_name_type_v01 }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.test_name_type_v01 = type { i32, [255 x i8] }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.test_data_req_msg_v01 = type { i32, [8192 x i8], i8, %struct.test_name_type_v01 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.test_data_resp_msg_v01 = type { %struct.qmi_response_type_v01, i8, i32, [8192 x i8], i8, %struct.test_name_type_v01 }
%struct.test_ping_req_msg_v01 = type { [4 x i8], i8, %struct.test_name_type_v01 }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }

@__UNIQUE_ID_description459 = internal constant [37 x i8] c"description=Sample QMI client driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qmi_sample\00", [21 x i8] zeroinitializer }, align 32
@qmi_debug_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qmi_sample_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to create qmi_sample dir\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qmi_sample_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samples/qmi/qmi_sample_client.c\00", [32 x i8] zeroinitializer }, align 32
@qmi_sample_init._entry_ptr = internal global ptr @qmi_sample_init._entry, section ".printk_index", align 4
@qmi_sample_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qmi_sample_probe, ptr @qmi_sample_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@lookup_client = internal global { %struct.qmi_handle, [80 x i8] } zeroinitializer, align 32
@lookup_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @qmi_sample_new_server, ptr @qmi_sample_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qmi_sample_client\00", [46 x i8] zeroinitializer }, align 32
@qmi_sample_handlers = internal constant { [2 x %struct.qmi_msg_handler], [56 x i8] } { [2 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 2, i32 32, ptr @test_ping_resp_msg_v01_ei, i32 268, ptr @ping_pong_cb }, %struct.qmi_msg_handler zeroinitializer], [56 x i8] zeroinitializer }, align 32
@qmi_sample_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to connect to remote service port\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qmi_sample_probe\00", [47 x i8] zeroinitializer }, align 32
@qmi_sample_probe._entry_ptr = internal global ptr @qmi_sample_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d:%d\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@data_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @data_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@ping_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @ping_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@test_ping_resp_msg_v01_ei = internal global { [6 x %struct.qmi_elem_info], [56 x i8] } { [6 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 3, i32 4, i32 1, i32 1, i8 16, i32 5, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 9, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 260, i32 0, i8 17, i32 12, ptr @test_name_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@qmi_response_type_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@test_name_type_v01_ei = internal global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 2, i32 1, i32 1, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 3, i32 255, i32 1, i32 2, i8 0, i32 4, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@ping_pong_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013spurious ping response\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ping_pong_cb\00", [19 x i8] zeroinitializer }, align 32
@ping_pong_cb._entry_ptr = internal global ptr @ping_pong_cb._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pong\00", [27 x i8] zeroinitializer }, align 32
@test_data_resp_msg_v01_ei = internal global { [7 x %struct.qmi_elem_info], [60 x i8] } { [7 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 2, i32 1, i32 4, i32 0, i8 16, i32 8, ptr null }, %struct.qmi_elem_info { i32 3, i32 8192, i32 1, i32 2, i8 16, i32 12, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 8204, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 260, i32 0, i8 17, i32 8208, ptr @test_name_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@test_data_req_msg_v01_ei = internal global { [5 x %struct.qmi_elem_info], [52 x i8] } { [5 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 2, i32 1, i32 4, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 3, i32 8192, i32 1, i32 2, i8 1, i32 4, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 8196, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 260, i32 0, i8 16, i32 8200, ptr @test_name_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@data_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013response data doesn't match expectation\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data_write\00", [21 x i8] zeroinitializer }, align 32
@data_write._entry_ptr = internal global ptr @data_write._entry, section ".printk_index", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@test_ping_req_msg_v01_ei = internal global { [4 x %struct.qmi_elem_info], [48 x i8] } { [4 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 3, i32 4, i32 1, i32 1, i8 1, i32 0, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 260, i32 0, i8 16, i32 8, ptr @test_name_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 583, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"qmi_debug_dir\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 451, i32 23 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 585, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"qmi_sample_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 527, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"lookup_client\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 572, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"lookup_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 574, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 531, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"qmi_sample_handlers\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 432, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 474, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 478, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 486, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"data_fops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 427, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 493, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"ping_fops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 331, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"test_ping_resp_msg_v01_ei\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 116, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"test_name_type_v01_ei\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 45, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 342, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 348, i32 51 }
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"test_data_resp_msg_v01_ei\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 227, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"test_data_req_msg_v01_ei\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 175, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 413, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 156, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"test_ping_req_msg_v01_ei\00", align 1
@___asan_gen_.112 = private constant [35 x i8] c"../samples/qmi/qmi_sample_client.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 74, i32 29 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description459, ptr @__UNIQUE_ID_license460, ptr @data_write._entry, ptr @data_write._entry_ptr, ptr @ping_pong_cb._entry, ptr @ping_pong_cb._entry_ptr, ptr @qmi_sample_init._entry, ptr @qmi_sample_init._entry_ptr, ptr @qmi_sample_probe._entry, ptr @qmi_sample_probe._entry_ptr, ptr @.str, ptr @qmi_debug_dir, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qmi_sample_driver, ptr @lookup_client, ptr @lookup_ops, ptr @.str.4, ptr @qmi_sample_handlers, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @data_fops, ptr @.str.9, ptr @ping_fops, ptr @test_ping_resp_msg_v01_ei, ptr @test_name_type_v01_ei, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @test_data_resp_msg_v01_ei, ptr @test_data_req_msg_v01_ei, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @test_ping_req_msg_v01_ei], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_debug_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_sample_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_sample_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_client to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_sample_handlers to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_sample_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ping_resp_msg_v01_ei to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_name_type_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_pong_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_data_resp_msg_v01_ei to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_data_req_msg_v01_ei to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ping_req_msg_v01_ei to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  store ptr %call, ptr @qmi_debug_dir, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  %0 = load ptr, ptr @qmi_debug_dir, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qmi_sample_driver, ptr noundef nonnull @__this_module) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_remove_debug_dir_crit_edge

if.end.err_remove_debug_dir_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_debug_dir

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @qmi_handle_init(ptr noundef nonnull @lookup_client, i32 noundef 0, ptr noundef nonnull @lookup_ops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %err_unregister_driver, label %if.end9

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @qmi_add_lookup(ptr noundef nonnull @lookup_client, i32 noundef 15, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

err_unregister_driver:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qmi_sample_driver) #9
  br label %err_remove_debug_dir

err_remove_debug_dir:                             ; preds = %err_unregister_driver, %if.end.err_remove_debug_dir_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.err_remove_debug_dir_crit_edge ], [ %call7, %err_unregister_driver ]
  %2 = load ptr, ptr @qmi_debug_dir, align 4
  tail call void @debugfs_remove(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %err_remove_debug_dir, %if.end9, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %ret.0, %err_remove_debug_dir ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qmi_handle_release(ptr noundef nonnull @lookup_client) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qmi_sample_driver) #9
  %0 = load ptr, ptr @qmi_debug_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_sample_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %path = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %path) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = call ptr @memset(ptr %path, i32 255, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @qmi_handle_init(ptr noundef nonnull %call.i, i32 noundef 8456, ptr noundef null, ptr noundef nonnull @qmi_sample_handlers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %call7 = tail call i32 @kernel_connect(ptr noundef %4, ptr noundef %2, i32 noundef 12, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %err_release_qmi_handle

if.end11:                                         ; preds = %if.end3
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %sq_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %sq_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_port, align 4
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 20, ptr noundef nonnull @.str.7, i32 noundef %6, i32 noundef %8)
  %9 = load ptr, ptr @qmi_debug_dir, align 4
  %call14 = call ptr @debugfs_create_dir(ptr noundef nonnull %path, ptr noundef %9) #9
  %de_dir = getelementptr inbounds %struct.qmi_sample, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %de_dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %de_dir, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call14 to i32
  br label %err_release_qmi_handle

if.end20:                                         ; preds = %if.end11
  %call22 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %call14, ptr noundef nonnull %call.i, ptr noundef nonnull @data_fops) #9
  %de_data = getelementptr inbounds %struct.qmi_sample, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %de_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %de_data, align 4
  %cmp.i69 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.end20.err_remove_de_dir_crit_edge, label %if.end28

if.end20.err_remove_de_dir_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_remove_de_dir

if.end28:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %de_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %de_dir, align 4
  %call30 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %14, ptr noundef nonnull %call.i, ptr noundef nonnull @ping_fops) #9
  %de_ping = getelementptr inbounds %struct.qmi_sample, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %de_ping to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %de_ping, align 4
  %cmp.i70 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %de_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %de_data, align 4
  call void @debugfs_remove(ptr noundef %17) #9
  br label %err_remove_de_dir

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_remove_de_dir:                                ; preds = %if.then33, %if.end20.err_remove_de_dir_crit_edge
  %ret.0.in = phi ptr [ %call30, %if.then33 ], [ %call22, %if.end20.err_remove_de_dir_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %19 = ptrtoint ptr %de_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %de_dir, align 4
  call void @debugfs_remove(ptr noundef %20) #9
  br label %err_release_qmi_handle

err_release_qmi_handle:                           ; preds = %err_remove_de_dir, %if.then17, %do.end
  %ret.1 = phi i32 [ %call7, %do.end ], [ %11, %if.then17 ], [ %ret.0, %err_remove_de_dir ]
  call void @qmi_handle_release(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_release_qmi_handle, %if.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_release_qmi_handle ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %path) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_sample_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %de_ping = getelementptr inbounds %struct.qmi_sample, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %de_ping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %de_ping, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %de_data = getelementptr inbounds %struct.qmi_sample, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %de_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %de_data, align 4
  tail call void @debugfs_remove(ptr noundef %5) #9
  %de_dir = getelementptr inbounds %struct.qmi_sample, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %de_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %de_dir, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  tail call void @qmi_handle_release(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ping_pong_cb(ptr nocapture noundef readnone %qmi, ptr nocapture noundef readnone %sq, ptr noundef %txn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txn, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.end.if.end11.sink.split_crit_edge, label %if.else

if.end.if.end11.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.sink.split

if.else:                                          ; preds = %if.end
  %pong_valid = getelementptr inbounds %struct.test_ping_resp_msg_v01, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %pong_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pong_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.else.if.end11.sink.split_crit_edge, label %lor.lhs.false

if.else.if.end11.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.sink.split

lor.lhs.false:                                    ; preds = %if.else
  %pong = getelementptr inbounds %struct.test_ping_resp_msg_v01, ptr %data, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %pong, ptr noundef nonnull dereferenceable(4) @.str.12, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.end11.sink.split_crit_edge

lor.lhs.false.if.end11.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.sink.split

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11.sink.split:                              ; preds = %lor.lhs.false.if.end11.sink.split_crit_edge, %if.else.if.end11.sink.split_crit_edge, %if.end.if.end11.sink.split_crit_edge
  %.sink = phi i32 [ -6, %if.end.if.end11.sink.split_crit_edge ], [ -22, %lor.lhs.false.if.end11.sink.split_crit_edge ], [ -22, %if.else.if.end11.sink.split_crit_edge ]
  %result9 = getelementptr inbounds %struct.qmi_txn, ptr %txn, i32 0, i32 4
  %4 = ptrtoint ptr %result9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %result9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %lor.lhs.false.if.end11_crit_edge
  %completion = getelementptr inbounds %struct.qmi_txn, ptr %txn, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #9
  %2 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %call1.i.i.i63 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8460, i32 noundef 3520, i32 noundef 2) #14
  %tobool.not = icmp eq ptr %call1.i.i.i63, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i64 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8468, i32 noundef 3520, i32 noundef 2) #14
  %tobool2.not = icmp eq ptr %call1.i.i.i64, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i63) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = tail call i32 @llvm.umin.i32(i32 %count, i32 8192)
  %4 = ptrtoint ptr %call1.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call1.i.i.i63, align 4096
  %data = getelementptr inbounds %struct.test_data_req_msg_v01, ptr %call1.i.i.i63, i32 0, i32 1
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %3, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end4.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.end.i.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %3, i32 -1226833920) #15, !srcloc !78
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !79

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef %3) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !68) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !80
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data, ptr noundef %user_buf, i32 noundef %3) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %3, %if.end4.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !79

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end9:                                          ; preds = %if.end.i.i
  %call10 = call i32 @qmi_txn_init(ptr noundef %1, ptr noundef nonnull %txn, ptr noundef nonnull @test_data_resp_msg_v01_ei, ptr noundef nonnull %call1.i.i.i64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @qmi_send_request(ptr noundef %1, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 33, i32 noundef 8456, ptr noundef nonnull @test_data_req_msg_v01_ei, ptr noundef nonnull %call1.i.i.i63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #9
  br label %out

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.out_crit_edge, label %if.else

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else:                                          ; preds = %if.end17
  %data_valid = getelementptr inbounds %struct.test_data_resp_msg_v01, ptr %call1.i.i.i64, i32 0, i32 1
  %10 = ptrtoint ptr %data_valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %if.else.do.end_crit_edge, label %lor.lhs.false

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.else
  %data_len22 = getelementptr inbounds %struct.test_data_resp_msg_v01, ptr %call1.i.i.i64, i32 0, i32 2
  %12 = ptrtoint ptr %data_len22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len22, align 8
  %14 = ptrtoint ptr %call1.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call1.i.i.i63, align 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp24.not = icmp eq i32 %13, %15
  br i1 %cmp24.not, label %lor.lhs.false25, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %data26 = getelementptr inbounds %struct.test_data_resp_msg_v01, ptr %call1.i.i.i64, i32 0, i32 3
  %bcmp = call i32 @bcmp(ptr %data26, ptr %data, i32 %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool32.not = icmp eq i32 %bcmp, 0
  br i1 %tobool32.not, label %lor.lhs.false25.out_crit_edge, label %lor.lhs.false25.do.end_crit_edge

lor.lhs.false25.do.end_crit_edge:                 ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false25.out_crit_edge:                    ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %lor.lhs.false25.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.else.do.end_crit_edge
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %out

out:                                              ; preds = %do.end, %lor.lhs.false25.out_crit_edge, %if.end17.out_crit_edge, %if.then16, %if.end9.out_crit_edge, %if.then11.i.i
  %ret.0 = phi i32 [ %call10, %if.end9.out_crit_edge ], [ %call14, %if.then16 ], [ %call18, %if.end17.out_crit_edge ], [ -22, %do.end ], [ %count, %lor.lhs.false25.out_crit_edge ], [ -14, %if.then11.i.i ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i64) #9
  call void @kfree(ptr noundef nonnull %call1.i.i.i63) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %req = alloca %struct.test_ping_req_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %req) #9
  %2 = getelementptr inbounds i8, ptr %req, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 264)
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #9
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1885957735, ptr %req, align 4
  %call = call i32 @qmi_txn_init(ptr noundef %1, ptr noundef nonnull %txn, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @qmi_send_request(ptr noundef %1, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 32, i32 noundef 266, ptr noundef nonnull @test_ping_req_msg_v01_ei, ptr noundef nonnull %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %spec.select = select i1 %cmp6, i32 %call5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %spec.select, %if.end4 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #9
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmi_sample_new_server(ptr nocapture noundef readnone %qmi, ptr nocapture noundef %service) #0 align 64 {
entry:
  %sq = alloca %struct.sockaddr_qrtr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sq) #9
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sq, align 4
  store i16 42, ptr %sq, align 4
  %sq_node = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq, i32 0, i32 1
  %node = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 3
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node, align 4
  %3 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %sq_node, align 4
  %sq_port = getelementptr inbounds %struct.sockaddr_qrtr, ptr %sq, i32 0, i32 2
  %port = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sq_port, align 4
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.4, i32 noundef -2) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @platform_device_add_data(ptr noundef nonnull %call, ptr noundef nonnull %sq, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_put_device_crit_edge

if.end.err_put_device_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @platform_device_add(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_put_device_crit_edge

if.end4.err_put_device_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 5
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %priv, align 4
  br label %cleanup

err_put_device:                                   ; preds = %if.end4.err_put_device_crit_edge, %if.end.err_put_device_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_put_device_crit_edge ], [ %call5, %if.end4.err_put_device_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err_put_device, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put_device ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qmi_sample_del_server(ptr nocapture noundef readnone %qmi, ptr nocapture noundef readonly %service) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__UNIQUE_ID_description459, !1, !"__UNIQUE_ID_description459", i1 false, i1 false}
!1 = !{!"../samples/qmi/qmi_sample_client.c", i32 621, i32 1}
!2 = !{ptr @__UNIQUE_ID_license460, !3, !"__UNIQUE_ID_license460", i1 false, i1 false}
!3 = !{!"../samples/qmi/qmi_sample_client.c", i32 622, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../samples/qmi/qmi_sample_client.c", i32 583, i32 37}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../samples/qmi/qmi_sample_client.c", i32 585, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qmi_sample_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @qmi_sample_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @qmi_debug_dir, !13, !"qmi_debug_dir", i1 false, i1 false}
!13 = !{!"../samples/qmi/qmi_sample_client.c", i32 451, i32 23}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../samples/qmi/qmi_sample_client.c", i32 531, i32 11}
!16 = !{ptr @qmi_sample_driver, !17, !"qmi_sample_driver", i1 false, i1 false}
!17 = !{!"../samples/qmi/qmi_sample_client.c", i32 527, i32 31}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../samples/qmi/qmi_sample_client.c", i32 474, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qmi_sample_probe._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @qmi_sample_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../samples/qmi/qmi_sample_client.c", i32 478, i32 31}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../samples/qmi/qmi_sample_client.c", i32 486, i32 40}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../samples/qmi/qmi_sample_client.c", i32 493, i32 40}
!29 = !{ptr @qmi_sample_handlers, !30, !"qmi_sample_handlers", i1 false, i1 false}
!30 = !{!"../samples/qmi/qmi_sample_client.c", i32 432, i32 37}
!31 = !{ptr @test_ping_resp_msg_v01_ei, !32, !"test_ping_resp_msg_v01_ei", i1 false, i1 false}
!32 = !{!"../samples/qmi/qmi_sample_client.c", i32 116, i32 29}
!33 = !{ptr @test_name_type_v01_ei, !34, !"test_name_type_v01_ei", i1 false, i1 false}
!34 = !{!"../samples/qmi/qmi_sample_client.c", i32 45, i32 29}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../samples/qmi/qmi_sample_client.c", i32 342, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ping_pong_cb._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ping_pong_cb._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../samples/qmi/qmi_sample_client.c", i32 348, i32 51}
!42 = !{ptr @data_fops, !43, !"data_fops", i1 false, i1 false}
!43 = !{!"../samples/qmi/qmi_sample_client.c", i32 427, i32 37}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../samples/qmi/qmi_sample_client.c", i32 413, i32 3}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @data_write._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @data_write._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!51 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!56 = !{ptr @test_data_resp_msg_v01_ei, !57, !"test_data_resp_msg_v01_ei", i1 false, i1 false}
!57 = !{!"../samples/qmi/qmi_sample_client.c", i32 227, i32 29}
!58 = !{ptr @test_data_req_msg_v01_ei, !59, !"test_data_req_msg_v01_ei", i1 false, i1 false}
!59 = !{!"../samples/qmi/qmi_sample_client.c", i32 175, i32 29}
!60 = !{ptr @ping_fops, !61, !"ping_fops", i1 false, i1 false}
!61 = !{!"../samples/qmi/qmi_sample_client.c", i32 331, i32 37}
!62 = !{ptr @test_ping_req_msg_v01_ei, !63, !"test_ping_req_msg_v01_ei", i1 false, i1 false}
!63 = !{!"../samples/qmi/qmi_sample_client.c", i32 74, i32 29}
!64 = !{ptr @lookup_client, !65, !"lookup_client", i1 false, i1 false}
!65 = !{!"../samples/qmi/qmi_sample_client.c", i32 572, i32 26}
!66 = !{ptr @lookup_ops, !67, !"lookup_ops", i1 false, i1 false}
!67 = !{!"../samples/qmi/qmi_sample_client.c", i32 574, i32 29}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2152428321, i64 2152428346}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 4923876}
!81 = !{i64 4924073}
!82 = !{i64 2152409306}
