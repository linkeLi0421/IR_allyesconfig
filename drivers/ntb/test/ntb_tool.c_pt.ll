; ModuleID = '/llk/IR_all_yes/drivers/ntb/test/ntb_tool.c_pt.bc'
source_filename = "../drivers/ntb/test/ntb_tool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ntb_client = type { %struct.device_driver, %struct.ntb_client_ops }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_client_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ntb_ctx_ops = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tool_ctx = type { ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.tool_peer = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.tool_mw = type { i32, i32, ptr, %union.anon.72, %union.anon.73, i32, ptr }
%union.anon.72 = type { ptr }
%union.anon.73 = type { i64 }
%struct.tool_mw_wrap = type { i32, ptr }
%struct.tool_spad = type { i32, i32, ptr }
%struct.tool_msg = type { i32, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file236 = internal constant [40 x i8] c"ntb_tool.file=drivers/ntb/test/ntb_tool\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [30 x i8] c"ntb_tool.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version238 = internal constant [21 x i8] c"ntb_tool.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ntb_tool\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author239 = internal constant [50 x i8] c"ntb_tool.author=Allen Hubbe <Allen.Hubbe@emc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [45 x i8] c"ntb_tool.description=PCIe NTB Debugging Tool\00", section ".modinfo", align 1
@__initcall__kmod_ntb_tool__258_1685_tool_init6 = internal global ptr @tool_init, section ".initcall6.init", align 4
@tool_client = internal global { %struct.ntb_client, [44 x i8] } { %struct.ntb_client { %struct.device_driver zeroinitializer, %struct.ntb_client_ops { ptr @tool_probe, ptr @tool_remove } }, [44 x i8] zeroinitializer }, align 32
@tool_dbgfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_tool_exit = internal global ptr @tool_exit, section ".exitcall.exit", align 4
@tool_create_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tc->link_wq\00", [19 x i8] zeroinitializer }, align 32
@tool_create_data.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tc->db_wq\00", [21 x i8] zeroinitializer }, align 32
@tool_create_data.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tc->msg_wq\00", [20 x i8] zeroinitializer }, align 32
@tool_create_data.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tool_create_data\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ntb/test/ntb_tool.c\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"doorbell is unsafe\0A\00", [44 x i8] zeroinitializer }, align 32
@tool_create_data.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.9, ptr @.str.11, i8 1, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scratchpad is unsafe\0A\00", [42 x i8] zeroinitializer }, align 32
@tool_ops = internal constant { %struct.ntb_ctx_ops, [20 x i8] } { %struct.ntb_ctx_ops { ptr @tool_link_event, ptr @tool_db_event, ptr @tool_msg_event }, [20 x i8] zeroinitializer }, align 32
@tool_link_event.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.9, ptr @.str.13, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tool_link_event\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"link is %s speed %d width %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@tool_db_event.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.9, ptr @.str.17, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tool_db_event\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"doorbell vec %d mask %#llx bits %#llx\0A\00", [57 x i8] zeroinitializer }, align 32
@tool_msg_event.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.9, ptr @.str.19, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tool_msg_event\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"message bits %#llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@tool_port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_port_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@tool_link_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @tool_link_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"db\00", [29 x i8] zeroinitializer }, align 32
@tool_db_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_db_read, ptr @tool_db_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"db_valid_mask\00", [18 x i8] zeroinitializer }, align 32
@tool_db_valid_mask_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_db_valid_mask_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"db_mask\00", [24 x i8] zeroinitializer }, align 32
@tool_db_mask_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_db_mask_read, ptr @tool_db_mask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"db_event\00", [23 x i8] zeroinitializer }, align 32
@tool_db_event_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @tool_db_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"peer_db\00", [24 x i8] zeroinitializer }, align 32
@tool_peer_db_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_db_read, ptr @tool_peer_db_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peer_db_mask\00", [19 x i8] zeroinitializer }, align 32
@tool_peer_db_mask_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_db_mask_read, ptr @tool_peer_db_mask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spad%d\00", [25 x i8] zeroinitializer }, align 32
@tool_spad_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_spad_read, ptr @tool_spad_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msg%d\00", [26 x i8] zeroinitializer }, align 32
@tool_inmsg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_inmsg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msg_sts\00", [24 x i8] zeroinitializer }, align 32
@tool_msg_sts_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_msg_sts_read, ptr @tool_msg_sts_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msg_inbits\00", [21 x i8] zeroinitializer }, align 32
@tool_msg_inbits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_msg_inbits_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msg_outbits\00", [20 x i8] zeroinitializer }, align 32
@tool_msg_outbits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_msg_outbits_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msg_mask\00", [23 x i8] zeroinitializer }, align 32
@tool_msg_mask_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @tool_msg_mask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msg_event\00", [22 x i8] zeroinitializer }, align 32
@tool_msg_event_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @tool_msg_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"peer%d\00", [25 x i8] zeroinitializer }, align 32
@tool_peer_port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_port_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tool_peer_link_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_link_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_event\00", [21 x i8] zeroinitializer }, align 32
@tool_peer_link_event_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @tool_peer_link_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mw_trans%d\00", [21 x i8] zeroinitializer }, align 32
@tool_mw_trans_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_mw_trans_read, ptr @tool_mw_trans_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"peer_mw_trans%d\00", [16 x i8] zeroinitializer }, align 32
@tool_peer_mw_trans_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_mw_trans_read, ptr @tool_peer_mw_trans_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tool_peer_spad_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_spad_read, ptr @tool_peer_spad_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tool_outmsg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @tool_outmsg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#llx\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%c %lli\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%#x\0A\00", [27 x i8] zeroinitializer }, align 32
@tool_spad_write.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.9, ptr @.str.44, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tool_spad_write\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no spad write fn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x%08x<-%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Inbound MW     \09%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Port           \09%d (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Window Address \090x%pK\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA Address    \09%pad\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Window Size    \09%pap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Alignment      \09%pap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Size Alignment \09%pap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Size Max       \09%pap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mw%d\00", [27 x i8] zeroinitializer }, align 32
@tool_mw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_mw_read, ptr @tool_mw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Outbound MW:        \09%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Port attached       \09%d (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Port attached       \09-1 (-1)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Virtual address     \090x%pK\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Phys Address        \09%pap\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mapping Size        \09%pap\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Translation Address \090x%016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Window Size         \09%pap\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%lli:%zi\00", [23 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peer_mw%d\00", [22 x i8] zeroinitializer }, align 32
@tool_peer_mw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @tool_peer_mw_read, ptr @tool_peer_mw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tool_peer_spad_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.9, ptr @.str.44, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tool_peer_spad_write\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 99, i64 115]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 195, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"tool_client\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1665, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"tool_dbgfs_topdir\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 282, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1450, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1451, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1452, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1455, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1458, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"tool_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 330, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 298, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 312, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 325, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1497, i32 22 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"tool_port_fops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 422, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1500, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"tool_link_fops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 489, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1503, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"tool_db_fops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1045, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1506, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"tool_db_valid_mask_fops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1057, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1509, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"tool_db_mask_fops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1078, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1512, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"tool_db_event_fops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1145, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1515, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"tool_peer_db_fops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1099, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1518, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"tool_peer_db_mask_fops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1123, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1523, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"tool_spad_fops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1191, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1532, i32 31 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"tool_inmsg_fops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1293, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1537, i32 23 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"tool_msg_sts_fops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1335, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1540, i32 23 }
@___asan_gen_.210 = private unnamed_addr constant [21 x i8] c"tool_msg_inbits_fops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1347, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1543, i32 23 }
@___asan_gen_.216 = private unnamed_addr constant [22 x i8] c"tool_msg_outbits_fops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1359, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1546, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"tool_msg_mask_fops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1373, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1549, i32 23 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"tool_msg_event_fops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1396, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1554, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"tool_peer_port_fops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 440, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"tool_peer_link_fops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 510, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1566, i32 23 }
@___asan_gen_.243 = private unnamed_addr constant [26 x i8] c"tool_peer_link_event_fops\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 537, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1571, i32 31 }
@___asan_gen_.249 = private unnamed_addr constant [19 x i8] c"tool_mw_trans_fops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 725, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1579, i32 31 }
@___asan_gen_.255 = private unnamed_addr constant [24 x i8] c"tool_peer_mw_trans_fops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 959, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"tool_peer_spad_fops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1232, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"tool_outmsg_fops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1314, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 417, i32 36 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 354, i32 33 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 382, i32 18 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1164, i32 36 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1178, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1288, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 665, i32 5 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 669, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 674, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 677, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 681, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 685, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 689, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 693, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 607, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant [13 x i8] c"tool_mw_fops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 570, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 894, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 898, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 903, i32 6 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 907, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 910, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 913, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 916, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 919, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 944, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 230, i32 6 }
@___asan_gen_.346 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 214, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 156, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 839, i32 29 }
@___asan_gen_.354 = private unnamed_addr constant [18 x i8] c"tool_peer_mw_fops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 805, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [31 x i8] c"../drivers/ntb/test/ntb_tool.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1219, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_version238, ptr @__exitcall_tool_exit, ptr @__initcall__kmod_ntb_tool__258_1685_tool_init6, ptr @__modver_attr, ptr @tool_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tool_client, ptr @tool_dbgfs_topdir, ptr @tool_create_data.__key, ptr @.str.3, ptr @tool_create_data.__key.4, ptr @.str.5, ptr @tool_create_data.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tool_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tool_port_fops, ptr @.str.21, ptr @tool_link_fops, ptr @.str.22, ptr @tool_db_fops, ptr @.str.23, ptr @tool_db_valid_mask_fops, ptr @.str.24, ptr @tool_db_mask_fops, ptr @.str.25, ptr @tool_db_event_fops, ptr @.str.26, ptr @tool_peer_db_fops, ptr @.str.27, ptr @tool_peer_db_mask_fops, ptr @.str.28, ptr @tool_spad_fops, ptr @.str.29, ptr @tool_inmsg_fops, ptr @.str.30, ptr @tool_msg_sts_fops, ptr @.str.31, ptr @tool_msg_inbits_fops, ptr @.str.32, ptr @tool_msg_outbits_fops, ptr @.str.33, ptr @tool_msg_mask_fops, ptr @.str.34, ptr @tool_msg_event_fops, ptr @.str.35, ptr @tool_peer_port_fops, ptr @tool_peer_link_fops, ptr @.str.36, ptr @tool_peer_link_event_fops, ptr @.str.37, ptr @tool_mw_trans_fops, ptr @.str.38, ptr @tool_peer_mw_trans_fops, ptr @tool_peer_spad_fops, ptr @tool_outmsg_fops, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @tool_mw_fops, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @tool_peer_mw_fops, ptr @.str.68], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_client to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_dbgfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_create_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_create_data.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_create_data.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_link_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_db_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_db_valid_mask_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_db_mask_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_db_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_db_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_db_mask_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_spad_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_inmsg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_msg_sts_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_msg_inbits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_msg_outbits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_msg_mask_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_msg_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_link_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_link_event_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_mw_trans_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_mw_trans_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_spad_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_outmsg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_mw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tool_peer_mw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #8
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #8
  store ptr %call1, ptr @tool_dbgfs_topdir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @__ntb_register_client(ptr noundef nonnull @tool_client, ptr noundef null, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @tool_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tool_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ntb_unregister_client(ptr noundef nonnull @tool_client) #8
  %0 = load ptr, ptr @tool_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntb_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_probe(ptr nocapture noundef readnone %self, ptr noundef %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tool_create_data(ptr noundef %ntb)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i, align 8
  %peer_port_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %peer_port_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer_port_count.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %2) #8
  br label %ntb_peer_port_count.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 %6(ptr noundef %2) #8
  br label %ntb_peer_port_count.exit.i

ntb_peer_port_count.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ %call.i.i, %if.then.i.i ]
  %peer_cnt.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.i, ptr %peer_cnt.i, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i.i, i32 44) #8
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !212

devm_kcalloc.exit.thread.i:                       ; preds = %ntb_peer_port_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %peers26.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %peers26.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %peers26.i, align 4
  br label %err_clear_data

devm_kcalloc.exit.i:                              ; preds = %ntb_peer_port_count.exit.i
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %13 = extractvalue { i32, i1 } %8, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef %13, i32 noundef 3520) #8
  %peers.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %peers.i, align 4
  %cmp.i37 = icmp eq ptr %call5.i.i.i, null
  br i1 %cmp.i37, label %devm_kcalloc.exit.i.err_clear_data_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.err_clear_data_crit_edge:     ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_data

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %15 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp628.i = icmp sgt i32 %16, 0
  br i1 %cmp628.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end5_crit_edge

for.cond.preheader.i.if.end5_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pidx.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peers.i, align 4
  %arrayidx.i = getelementptr %struct.tool_peer, ptr %18, i32 %pidx.029.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %pidx.029.i, ptr %arrayidx.i, align 4
  %20 = load ptr, ptr %peers.i, align 4
  %tc11.i = getelementptr %struct.tool_peer, ptr %20, i32 %pidx.029.i, i32 1
  %21 = ptrtoint ptr %tc11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %tc11.i, align 4
  %inc.i = add nuw nsw i32 %pidx.029.i, 1
  %22 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %peer_cnt.i, align 4
  %cmp6.i = icmp slt i32 %inc.i, %23
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end5_crit_edge

for.body.i.if.end5_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end5:                                          ; preds = %for.body.i.if.end5_crit_edge, %for.cond.preheader.i.if.end5_crit_edge
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %ops.i.i38 = getelementptr inbounds %struct.ntb_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i38, align 8
  %peer_mw_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %peer_mw_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %peer_mw_count.i.i, align 4
  %call.i.i39 = tail call i32 %29(ptr noundef %25) #8
  %outmw_cnt.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 4
  %30 = ptrtoint ptr %outmw_cnt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i.i39, ptr %outmw_cnt.i, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i39, i32 32) #8
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %devm_kcalloc.exit.thread.i40, label %devm_kcalloc.exit.i43, !prof !212

devm_kcalloc.exit.thread.i40:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %outmws176.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 5
  %33 = ptrtoint ptr %outmws176.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %outmws176.i, align 4
  br label %err_clear_data

devm_kcalloc.exit.i43:                            ; preds = %if.end5
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %36 = extractvalue { i32, i1 } %31, 0
  %call5.i.i.i41 = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef %36, i32 noundef 3520) #8
  %outmws.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 5
  %37 = ptrtoint ptr %outmws.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i.i41, ptr %outmws.i, align 4
  %cmp.i42 = icmp eq ptr %call5.i.i.i41, null
  br i1 %cmp.i42, label %devm_kcalloc.exit.i43.err_clear_data_crit_edge, label %for.cond.preheader.i44

devm_kcalloc.exit.i43.err_clear_data_crit_edge:   ; preds = %devm_kcalloc.exit.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_data

for.cond.preheader.i44:                           ; preds = %devm_kcalloc.exit.i43
  %38 = ptrtoint ptr %outmw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %outmw_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp6178.i = icmp sgt i32 %39, 0
  br i1 %cmp6178.i, label %for.cond.preheader.i44.for.body.i50_crit_edge, label %for.cond.preheader.i44.for.cond15.preheader.i_crit_edge

for.cond.preheader.i44.for.cond15.preheader.i_crit_edge: ; preds = %for.cond.preheader.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.i

for.cond.preheader.i44.for.body.i50_crit_edge:    ; preds = %for.cond.preheader.i44
  br label %for.body.i50

for.cond15.preheader.i:                           ; preds = %for.body.i50.for.cond15.preheader.i_crit_edge, %for.cond.preheader.i44.for.cond15.preheader.i_crit_edge
  %40 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %peer_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp16186.i = icmp sgt i32 %41, 0
  br i1 %cmp16186.i, label %for.cond15.preheader.i.for.body17.i_crit_edge, label %for.cond15.preheader.i.if.end9_crit_edge

for.cond15.preheader.i.if.end9_crit_edge:         ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.cond15.preheader.i.for.body17.i_crit_edge:    ; preds = %for.cond15.preheader.i
  br label %for.body17.i

for.body.i50:                                     ; preds = %for.body.i50.for.body.i50_crit_edge, %for.cond.preheader.i44.for.body.i50_crit_edge
  %widx.0179.i = phi i32 [ %inc.i48, %for.body.i50.for.body.i50_crit_edge ], [ 0, %for.cond.preheader.i44.for.body.i50_crit_edge ]
  %42 = ptrtoint ptr %outmws.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %outmws.i, align 4
  %arrayidx.i47 = getelementptr %struct.tool_mw, ptr %43, i32 %widx.0179.i
  %44 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %widx.0179.i, ptr %arrayidx.i47, align 8
  %45 = load ptr, ptr %outmws.i, align 4
  %pidx11.i = getelementptr %struct.tool_mw, ptr %45, i32 %widx.0179.i, i32 1
  %46 = ptrtoint ptr %pidx11.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %pidx11.i, align 4
  %47 = load ptr, ptr %outmws.i, align 4
  %tc14.i = getelementptr %struct.tool_mw, ptr %47, i32 %widx.0179.i, i32 2
  %48 = ptrtoint ptr %tc14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call, ptr %tc14.i, align 8
  %inc.i48 = add nuw nsw i32 %widx.0179.i, 1
  %49 = ptrtoint ptr %outmw_cnt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %outmw_cnt.i, align 4
  %cmp6.i49 = icmp slt i32 %inc.i48, %50
  br i1 %cmp6.i49, label %for.body.i50.for.body.i50_crit_edge, label %for.body.i50.for.cond15.preheader.i_crit_edge

for.body.i50.for.cond15.preheader.i_crit_edge:    ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.i

for.body.i50.for.body.i50_crit_edge:              ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i50

for.body17.i:                                     ; preds = %for.inc93.i.for.body17.i_crit_edge, %for.cond15.preheader.i.for.body17.i_crit_edge
  %pidx.0187.i = phi i32 [ %inc94.i, %for.inc93.i.for.body17.i_crit_edge ], [ 0, %for.cond15.preheader.i.for.body17.i_crit_edge ]
  %51 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call, align 4
  %ops.i162.i = getelementptr inbounds %struct.ntb_dev, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %ops.i162.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i162.i, align 8
  %mw_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %mw_count.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mw_count.i.i, align 4
  %call.i163.i = tail call i32 %56(ptr noundef %52, i32 noundef %pidx.0187.i) #8
  %57 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %peers.i, align 4
  %inmw_cnt.i = getelementptr %struct.tool_peer, ptr %58, i32 %pidx.0187.i, i32 2
  %59 = ptrtoint ptr %inmw_cnt.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i163.i, ptr %inmw_cnt.i, align 4
  %60 = load ptr, ptr %peers.i, align 4
  %inmw_cnt25.i = getelementptr %struct.tool_peer, ptr %60, i32 %pidx.0187.i, i32 2
  %61 = ptrtoint ptr %inmw_cnt25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %inmw_cnt25.i, align 4
  %63 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 32) #8
  %64 = extractvalue { i32, i1 } %63, 1
  br i1 %64, label %for.body17.i.devm_kcalloc.exit167.i_crit_edge, label %if.end.i.i165.i, !prof !212

for.body17.i.devm_kcalloc.exit167.i_crit_edge:    ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit167.i

if.end.i.i165.i:                                  ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call, align 4
  %67 = extractvalue { i32, i1 } %63, 0
  %call5.i.i164.i = tail call noalias ptr @devm_kmalloc(ptr noundef %66, i32 noundef %67, i32 noundef 3520) #8
  br label %devm_kcalloc.exit167.i

devm_kcalloc.exit167.i:                           ; preds = %if.end.i.i165.i, %for.body17.i.devm_kcalloc.exit167.i_crit_edge
  %retval.0.i.i166.i = phi ptr [ %call5.i.i164.i, %if.end.i.i165.i ], [ null, %for.body17.i.devm_kcalloc.exit167.i_crit_edge ]
  %68 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %peers.i, align 4
  %inmws.i = getelementptr %struct.tool_peer, ptr %69, i32 %pidx.0187.i, i32 3
  %70 = ptrtoint ptr %inmws.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %retval.0.i.i166.i, ptr %inmws.i, align 4
  %71 = load ptr, ptr %peers.i, align 4
  %inmws31.i = getelementptr %struct.tool_peer, ptr %71, i32 %pidx.0187.i, i32 3
  %72 = ptrtoint ptr %inmws31.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %inmws31.i, align 4
  %cmp32.i = icmp eq ptr %73, null
  br i1 %cmp32.i, label %devm_kcalloc.exit167.i.err_clear_data_crit_edge, label %for.cond35.preheader.i

devm_kcalloc.exit167.i.err_clear_data_crit_edge:  ; preds = %devm_kcalloc.exit167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_data

for.cond35.preheader.i:                           ; preds = %devm_kcalloc.exit167.i
  %inmw_cnt38180.i = getelementptr %struct.tool_peer, ptr %71, i32 %pidx.0187.i, i32 2
  %74 = ptrtoint ptr %inmw_cnt38180.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %inmw_cnt38180.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp39181.i = icmp sgt i32 %75, 0
  br i1 %cmp39181.i, label %for.cond35.preheader.i.for.body40.i_crit_edge, label %for.cond35.preheader.i.for.end58.i_crit_edge

for.cond35.preheader.i.for.end58.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58.i

for.cond35.preheader.i.for.body40.i_crit_edge:    ; preds = %for.cond35.preheader.i
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %for.cond35.preheader.i.for.body40.i_crit_edge
  %76 = phi ptr [ %89, %for.body40.i.for.body40.i_crit_edge ], [ %71, %for.cond35.preheader.i.for.body40.i_crit_edge ]
  %widx.1182.i = phi i32 [ %inc57.i, %for.body40.i.for.body40.i_crit_edge ], [ 0, %for.cond35.preheader.i.for.body40.i_crit_edge ]
  %inmws43.i = getelementptr %struct.tool_peer, ptr %76, i32 %pidx.0187.i, i32 3
  %77 = ptrtoint ptr %inmws43.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %inmws43.i, align 4
  %arrayidx44.i = getelementptr %struct.tool_mw, ptr %78, i32 %widx.1182.i
  %79 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %widx.1182.i, ptr %arrayidx44.i, align 8
  %80 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %peers.i, align 4
  %inmws48.i = getelementptr %struct.tool_peer, ptr %81, i32 %pidx.0187.i, i32 3
  %82 = ptrtoint ptr %inmws48.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %inmws48.i, align 4
  %pidx50.i = getelementptr %struct.tool_mw, ptr %83, i32 %widx.1182.i, i32 1
  %84 = ptrtoint ptr %pidx50.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %pidx.0187.i, ptr %pidx50.i, align 4
  %85 = load ptr, ptr %peers.i, align 4
  %inmws53.i = getelementptr %struct.tool_peer, ptr %85, i32 %pidx.0187.i, i32 3
  %86 = ptrtoint ptr %inmws53.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %inmws53.i, align 4
  %tc55.i = getelementptr %struct.tool_mw, ptr %87, i32 %widx.1182.i, i32 2
  %88 = ptrtoint ptr %tc55.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call, ptr %tc55.i, align 8
  %inc57.i = add nuw nsw i32 %widx.1182.i, 1
  %89 = load ptr, ptr %peers.i, align 4
  %inmw_cnt38.i = getelementptr %struct.tool_peer, ptr %89, i32 %pidx.0187.i, i32 2
  %90 = ptrtoint ptr %inmw_cnt38.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %inmw_cnt38.i, align 4
  %cmp39.i = icmp slt i32 %inc57.i, %91
  br i1 %cmp39.i, label %for.body40.i.for.body40.i_crit_edge, label %for.body40.i.for.end58.i_crit_edge

for.body40.i.for.end58.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58.i

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i

for.end58.i:                                      ; preds = %for.body40.i.for.end58.i_crit_edge, %for.cond35.preheader.i.for.end58.i_crit_edge
  %92 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call, align 4
  %ops.i168.i = getelementptr inbounds %struct.ntb_dev, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %ops.i168.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i168.i, align 8
  %peer_mw_count.i169.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %peer_mw_count.i169.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %peer_mw_count.i169.i, align 4
  %call.i170.i = tail call i32 %97(ptr noundef %93) #8
  %98 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %peers.i, align 4
  %outmw_cnt63.i = getelementptr %struct.tool_peer, ptr %99, i32 %pidx.0187.i, i32 4
  %100 = ptrtoint ptr %outmw_cnt63.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call.i170.i, ptr %outmw_cnt63.i, align 4
  %101 = load ptr, ptr %peers.i, align 4
  %outmw_cnt68.i = getelementptr %struct.tool_peer, ptr %101, i32 %pidx.0187.i, i32 4
  %102 = ptrtoint ptr %outmw_cnt68.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %outmw_cnt68.i, align 4
  %104 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %103, i32 8) #8
  %105 = extractvalue { i32, i1 } %104, 1
  br i1 %105, label %for.end58.i.devm_kcalloc.exit174.i_crit_edge, label %if.end.i.i172.i, !prof !212

for.end58.i.devm_kcalloc.exit174.i_crit_edge:     ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit174.i

if.end.i.i172.i:                                  ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call, align 4
  %108 = extractvalue { i32, i1 } %104, 0
  %call5.i.i171.i = tail call noalias ptr @devm_kmalloc(ptr noundef %107, i32 noundef %108, i32 noundef 3520) #8
  br label %devm_kcalloc.exit174.i

devm_kcalloc.exit174.i:                           ; preds = %if.end.i.i172.i, %for.end58.i.devm_kcalloc.exit174.i_crit_edge
  %retval.0.i.i173.i = phi ptr [ %call5.i.i171.i, %if.end.i.i172.i ], [ null, %for.end58.i.devm_kcalloc.exit174.i_crit_edge ]
  %109 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %peers.i, align 4
  %outmws72.i = getelementptr %struct.tool_peer, ptr %110, i32 %pidx.0187.i, i32 5
  %111 = ptrtoint ptr %outmws72.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %retval.0.i.i173.i, ptr %outmws72.i, align 4
  %112 = load ptr, ptr %peers.i, align 4
  %outmw_cnt76183.i = getelementptr %struct.tool_peer, ptr %112, i32 %pidx.0187.i, i32 4
  %113 = ptrtoint ptr %outmw_cnt76183.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %outmw_cnt76183.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp77184.i = icmp sgt i32 %114, 0
  br i1 %cmp77184.i, label %devm_kcalloc.exit174.i.for.body78.i_crit_edge, label %devm_kcalloc.exit174.i.for.inc93.i_crit_edge

devm_kcalloc.exit174.i.for.inc93.i_crit_edge:     ; preds = %devm_kcalloc.exit174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc93.i

devm_kcalloc.exit174.i.for.body78.i_crit_edge:    ; preds = %devm_kcalloc.exit174.i
  br label %for.body78.i

for.body78.i:                                     ; preds = %for.body78.i.for.body78.i_crit_edge, %devm_kcalloc.exit174.i.for.body78.i_crit_edge
  %115 = phi ptr [ %126, %for.body78.i.for.body78.i_crit_edge ], [ %112, %devm_kcalloc.exit174.i.for.body78.i_crit_edge ]
  %widx.2185.i = phi i32 [ %inc91.i, %for.body78.i.for.body78.i_crit_edge ], [ 0, %devm_kcalloc.exit174.i.for.body78.i_crit_edge ]
  %outmws81.i = getelementptr %struct.tool_peer, ptr %115, i32 %pidx.0187.i, i32 5
  %116 = ptrtoint ptr %outmws81.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %outmws81.i, align 4
  %arrayidx82.i = getelementptr %struct.tool_mw_wrap, ptr %117, i32 %widx.2185.i
  %118 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %pidx.0187.i, ptr %arrayidx82.i, align 4
  %119 = ptrtoint ptr %outmws.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %outmws.i, align 4
  %arrayidx85.i = getelementptr %struct.tool_mw, ptr %120, i32 %widx.2185.i
  %121 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %peers.i, align 4
  %outmws88.i = getelementptr %struct.tool_peer, ptr %122, i32 %pidx.0187.i, i32 5
  %123 = ptrtoint ptr %outmws88.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %outmws88.i, align 4
  %mw.i = getelementptr %struct.tool_mw_wrap, ptr %124, i32 %widx.2185.i, i32 1
  %125 = ptrtoint ptr %mw.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx85.i, ptr %mw.i, align 4
  %inc91.i = add nuw nsw i32 %widx.2185.i, 1
  %126 = load ptr, ptr %peers.i, align 4
  %outmw_cnt76.i = getelementptr %struct.tool_peer, ptr %126, i32 %pidx.0187.i, i32 4
  %127 = ptrtoint ptr %outmw_cnt76.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %outmw_cnt76.i, align 4
  %cmp77.i = icmp slt i32 %inc91.i, %128
  br i1 %cmp77.i, label %for.body78.i.for.body78.i_crit_edge, label %for.body78.i.for.inc93.i_crit_edge

for.body78.i.for.inc93.i_crit_edge:               ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc93.i

for.body78.i.for.body78.i_crit_edge:              ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78.i

for.inc93.i:                                      ; preds = %for.body78.i.for.inc93.i_crit_edge, %devm_kcalloc.exit174.i.for.inc93.i_crit_edge
  %inc94.i = add nuw nsw i32 %pidx.0187.i, 1
  %129 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %peer_cnt.i, align 4
  %cmp16.i = icmp slt i32 %inc94.i, %130
  br i1 %cmp16.i, label %for.inc93.i.for.body17.i_crit_edge, label %for.inc93.i.if.end9_crit_edge

for.inc93.i.if.end9_crit_edge:                    ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.inc93.i.for.body17.i_crit_edge:               ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i

if.end9:                                          ; preds = %for.inc93.i.if.end9_crit_edge, %for.cond15.preheader.i.if.end9_crit_edge
  %131 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call, align 4
  %ops.i.i52 = getelementptr inbounds %struct.ntb_dev, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %ops.i.i52 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i.i52, align 8
  %spad_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %134, i32 0, i32 33
  %135 = ptrtoint ptr %spad_count.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %spad_count.i.i, align 4
  %tobool.not.i.i53 = icmp eq ptr %136, null
  br i1 %tobool.not.i.i53, label %if.end9.ntb_spad_count.exit.i_crit_edge, label %if.end.i.i55

if.end9.ntb_spad_count.exit.i_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_spad_count.exit.i

if.end.i.i55:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i54 = tail call i32 %136(ptr noundef %132) #8
  br label %ntb_spad_count.exit.i

ntb_spad_count.exit.i:                            ; preds = %if.end.i.i55, %if.end9.ntb_spad_count.exit.i_crit_edge
  %retval.0.i.i56 = phi i32 [ %call.i.i54, %if.end.i.i55 ], [ 0, %if.end9.ntb_spad_count.exit.i_crit_edge ]
  %inspad_cnt.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 10
  %137 = ptrtoint ptr %inspad_cnt.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %retval.0.i.i56, ptr %inspad_cnt.i, align 4
  %138 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i.i56, i32 12) #8
  %139 = extractvalue { i32, i1 } %138, 1
  br i1 %139, label %devm_kcalloc.exit.thread.i57, label %devm_kcalloc.exit.i60, !prof !212

devm_kcalloc.exit.thread.i57:                     ; preds = %ntb_spad_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inspads118.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 11
  br label %err_clear_mws.sink.split

devm_kcalloc.exit.i60:                            ; preds = %ntb_spad_count.exit.i
  %140 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call, align 4
  %142 = extractvalue { i32, i1 } %138, 0
  %call5.i.i.i58 = tail call noalias ptr @devm_kmalloc(ptr noundef %141, i32 noundef %142, i32 noundef 3520) #8
  %inspads.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 11
  %143 = ptrtoint ptr %inspads.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call5.i.i.i58, ptr %inspads.i, align 4
  %cmp.i59 = icmp eq ptr %call5.i.i.i58, null
  br i1 %cmp.i59, label %devm_kcalloc.exit.i60.err_clear_mws_crit_edge, label %for.cond.preheader.i61

devm_kcalloc.exit.i60.err_clear_mws_crit_edge:    ; preds = %devm_kcalloc.exit.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_mws

for.cond.preheader.i61:                           ; preds = %devm_kcalloc.exit.i60
  %144 = ptrtoint ptr %inspad_cnt.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %inspad_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp6120.i = icmp sgt i32 %145, 0
  br i1 %cmp6120.i, label %for.cond.preheader.i61.for.body.i71_crit_edge, label %for.cond.preheader.i61.for.cond15.preheader.i63_crit_edge

for.cond.preheader.i61.for.cond15.preheader.i63_crit_edge: ; preds = %for.cond.preheader.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.i63

for.cond.preheader.i61.for.body.i71_crit_edge:    ; preds = %for.cond.preheader.i61
  br label %for.body.i71

for.cond15.preheader.i63:                         ; preds = %for.body.i71.for.cond15.preheader.i63_crit_edge, %for.cond.preheader.i61.for.cond15.preheader.i63_crit_edge
  %146 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %peer_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp16125.i = icmp sgt i32 %147, 0
  br i1 %cmp16125.i, label %for.cond15.preheader.i63.for.body17.i72_crit_edge, label %for.cond15.preheader.i63.if.end13_crit_edge

for.cond15.preheader.i63.if.end13_crit_edge:      ; preds = %for.cond15.preheader.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.cond15.preheader.i63.for.body17.i72_crit_edge: ; preds = %for.cond15.preheader.i63
  br label %for.body17.i72

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %for.cond.preheader.i61.for.body.i71_crit_edge
  %sidx.0121.i = phi i32 [ %inc.i69, %for.body.i71.for.body.i71_crit_edge ], [ 0, %for.cond.preheader.i61.for.body.i71_crit_edge ]
  %148 = ptrtoint ptr %inspads.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %inspads.i, align 4
  %arrayidx.i66 = getelementptr %struct.tool_spad, ptr %149, i32 %sidx.0121.i
  %150 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sidx.0121.i, ptr %arrayidx.i66, align 4
  %151 = load ptr, ptr %inspads.i, align 4
  %pidx11.i67 = getelementptr %struct.tool_spad, ptr %151, i32 %sidx.0121.i, i32 1
  %152 = ptrtoint ptr %pidx11.i67 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %pidx11.i67, align 4
  %153 = load ptr, ptr %inspads.i, align 4
  %tc14.i68 = getelementptr %struct.tool_spad, ptr %153, i32 %sidx.0121.i, i32 2
  %154 = ptrtoint ptr %tc14.i68 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call, ptr %tc14.i68, align 4
  %inc.i69 = add nuw nsw i32 %sidx.0121.i, 1
  %155 = ptrtoint ptr %inspad_cnt.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %inspad_cnt.i, align 4
  %cmp6.i70 = icmp slt i32 %inc.i69, %156
  br i1 %cmp6.i70, label %for.body.i71.for.body.i71_crit_edge, label %for.body.i71.for.cond15.preheader.i63_crit_edge

for.body.i71.for.cond15.preheader.i63_crit_edge:  ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.i63

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71

for.body17.i72:                                   ; preds = %for.inc59.i.for.body17.i72_crit_edge, %for.cond15.preheader.i63.for.body17.i72_crit_edge
  %pidx.0126.i = phi i32 [ %inc60.i, %for.inc59.i.for.body17.i72_crit_edge ], [ 0, %for.cond15.preheader.i63.for.body17.i72_crit_edge ]
  %157 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call, align 4
  %ops.i106.i = getelementptr inbounds %struct.ntb_dev, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %ops.i106.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i106.i, align 8
  %spad_count.i107.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %160, i32 0, i32 33
  %161 = ptrtoint ptr %spad_count.i107.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %spad_count.i107.i, align 4
  %tobool.not.i108.i = icmp eq ptr %162, null
  br i1 %tobool.not.i108.i, label %for.body17.i72.ntb_spad_count.exit112.i_crit_edge, label %if.end.i110.i

for.body17.i72.ntb_spad_count.exit112.i_crit_edge: ; preds = %for.body17.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_spad_count.exit112.i

if.end.i110.i:                                    ; preds = %for.body17.i72
  call void @__sanitizer_cov_trace_pc() #10
  %call.i109.i = tail call i32 %162(ptr noundef %158) #8
  br label %ntb_spad_count.exit112.i

ntb_spad_count.exit112.i:                         ; preds = %if.end.i110.i, %for.body17.i72.ntb_spad_count.exit112.i_crit_edge
  %retval.0.i111.i = phi i32 [ %call.i109.i, %if.end.i110.i ], [ 0, %for.body17.i72.ntb_spad_count.exit112.i_crit_edge ]
  %163 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %peers.i, align 4
  %outspad_cnt.i = getelementptr %struct.tool_peer, ptr %164, i32 %pidx.0126.i, i32 8
  %165 = ptrtoint ptr %outspad_cnt.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %retval.0.i111.i, ptr %outspad_cnt.i, align 4
  %166 = load ptr, ptr %peers.i, align 4
  %outspad_cnt25.i = getelementptr %struct.tool_peer, ptr %166, i32 %pidx.0126.i, i32 8
  %167 = ptrtoint ptr %outspad_cnt25.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %outspad_cnt25.i, align 4
  %169 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %168, i32 12) #8
  %170 = extractvalue { i32, i1 } %169, 1
  br i1 %170, label %ntb_spad_count.exit112.i.devm_kcalloc.exit116.i_crit_edge, label %if.end.i.i114.i, !prof !212

ntb_spad_count.exit112.i.devm_kcalloc.exit116.i_crit_edge: ; preds = %ntb_spad_count.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit116.i

if.end.i.i114.i:                                  ; preds = %ntb_spad_count.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call, align 4
  %173 = extractvalue { i32, i1 } %169, 0
  %call5.i.i113.i = tail call noalias ptr @devm_kmalloc(ptr noundef %172, i32 noundef %173, i32 noundef 3520) #8
  br label %devm_kcalloc.exit116.i

devm_kcalloc.exit116.i:                           ; preds = %if.end.i.i114.i, %ntb_spad_count.exit112.i.devm_kcalloc.exit116.i_crit_edge
  %retval.0.i.i115.i = phi ptr [ %call5.i.i113.i, %if.end.i.i114.i ], [ null, %ntb_spad_count.exit112.i.devm_kcalloc.exit116.i_crit_edge ]
  %174 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %peers.i, align 4
  %outspads.i = getelementptr %struct.tool_peer, ptr %175, i32 %pidx.0126.i, i32 9
  %176 = ptrtoint ptr %outspads.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %retval.0.i.i115.i, ptr %outspads.i, align 4
  %177 = load ptr, ptr %peers.i, align 4
  %outspads31.i = getelementptr %struct.tool_peer, ptr %177, i32 %pidx.0126.i, i32 9
  %178 = ptrtoint ptr %outspads31.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %outspads31.i, align 4
  %cmp32.i73 = icmp eq ptr %179, null
  br i1 %cmp32.i73, label %devm_kcalloc.exit116.i.err_clear_mws_crit_edge, label %for.cond35.preheader.i74

devm_kcalloc.exit116.i.err_clear_mws_crit_edge:   ; preds = %devm_kcalloc.exit116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_mws

for.cond35.preheader.i74:                         ; preds = %devm_kcalloc.exit116.i
  %outspad_cnt38122.i = getelementptr %struct.tool_peer, ptr %177, i32 %pidx.0126.i, i32 8
  %180 = ptrtoint ptr %outspad_cnt38122.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %outspad_cnt38122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp39123.i = icmp sgt i32 %181, 0
  br i1 %cmp39123.i, label %for.cond35.preheader.i74.for.body40.i80_crit_edge, label %for.cond35.preheader.i74.for.inc59.i_crit_edge

for.cond35.preheader.i74.for.inc59.i_crit_edge:   ; preds = %for.cond35.preheader.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59.i

for.cond35.preheader.i74.for.body40.i80_crit_edge: ; preds = %for.cond35.preheader.i74
  br label %for.body40.i80

for.body40.i80:                                   ; preds = %for.body40.i80.for.body40.i80_crit_edge, %for.cond35.preheader.i74.for.body40.i80_crit_edge
  %182 = phi ptr [ %195, %for.body40.i80.for.body40.i80_crit_edge ], [ %177, %for.cond35.preheader.i74.for.body40.i80_crit_edge ]
  %sidx.1124.i = phi i32 [ %inc57.i78, %for.body40.i80.for.body40.i80_crit_edge ], [ 0, %for.cond35.preheader.i74.for.body40.i80_crit_edge ]
  %outspads43.i = getelementptr %struct.tool_peer, ptr %182, i32 %pidx.0126.i, i32 9
  %183 = ptrtoint ptr %outspads43.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %outspads43.i, align 4
  %arrayidx44.i75 = getelementptr %struct.tool_spad, ptr %184, i32 %sidx.1124.i
  %185 = ptrtoint ptr %arrayidx44.i75 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %sidx.1124.i, ptr %arrayidx44.i75, align 4
  %186 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %peers.i, align 4
  %outspads48.i = getelementptr %struct.tool_peer, ptr %187, i32 %pidx.0126.i, i32 9
  %188 = ptrtoint ptr %outspads48.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %outspads48.i, align 4
  %pidx50.i76 = getelementptr %struct.tool_spad, ptr %189, i32 %sidx.1124.i, i32 1
  %190 = ptrtoint ptr %pidx50.i76 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %pidx.0126.i, ptr %pidx50.i76, align 4
  %191 = load ptr, ptr %peers.i, align 4
  %outspads53.i = getelementptr %struct.tool_peer, ptr %191, i32 %pidx.0126.i, i32 9
  %192 = ptrtoint ptr %outspads53.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %outspads53.i, align 4
  %tc55.i77 = getelementptr %struct.tool_spad, ptr %193, i32 %sidx.1124.i, i32 2
  %194 = ptrtoint ptr %tc55.i77 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call, ptr %tc55.i77, align 4
  %inc57.i78 = add nuw nsw i32 %sidx.1124.i, 1
  %195 = load ptr, ptr %peers.i, align 4
  %outspad_cnt38.i = getelementptr %struct.tool_peer, ptr %195, i32 %pidx.0126.i, i32 8
  %196 = ptrtoint ptr %outspad_cnt38.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %outspad_cnt38.i, align 4
  %cmp39.i79 = icmp slt i32 %inc57.i78, %197
  br i1 %cmp39.i79, label %for.body40.i80.for.body40.i80_crit_edge, label %for.body40.i80.for.inc59.i_crit_edge

for.body40.i80.for.inc59.i_crit_edge:             ; preds = %for.body40.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59.i

for.body40.i80.for.body40.i80_crit_edge:          ; preds = %for.body40.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i80

for.inc59.i:                                      ; preds = %for.body40.i80.for.inc59.i_crit_edge, %for.cond35.preheader.i74.for.inc59.i_crit_edge
  %inc60.i = add nuw nsw i32 %pidx.0126.i, 1
  %198 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %peer_cnt.i, align 4
  %cmp16.i81 = icmp slt i32 %inc60.i, %199
  br i1 %cmp16.i81, label %for.inc59.i.for.body17.i72_crit_edge, label %for.inc59.i.if.end13_crit_edge

for.inc59.i.if.end13_crit_edge:                   ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.inc59.i.for.body17.i72_crit_edge:             ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i72

if.end13:                                         ; preds = %for.inc59.i.if.end13_crit_edge, %for.cond15.preheader.i63.if.end13_crit_edge
  %200 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %call, align 4
  %ops.i.i83 = getelementptr inbounds %struct.ntb_dev, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %ops.i.i83 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ops.i.i83, align 8
  %msg_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %203, i32 0, i32 39
  %204 = ptrtoint ptr %msg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %msg_count.i.i, align 4
  %tobool.not.i.i84 = icmp eq ptr %205, null
  br i1 %tobool.not.i.i84, label %if.end13.ntb_msg_count.exit.i_crit_edge, label %if.end.i.i86

if.end13.ntb_msg_count.exit.i_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_msg_count.exit.i

if.end.i.i86:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i85 = tail call i32 %205(ptr noundef %201) #8
  br label %ntb_msg_count.exit.i

ntb_msg_count.exit.i:                             ; preds = %if.end.i.i86, %if.end13.ntb_msg_count.exit.i_crit_edge
  %retval.0.i.i87 = phi i32 [ %call.i.i85, %if.end.i.i86 ], [ 0, %if.end13.ntb_msg_count.exit.i_crit_edge ]
  %inmsg_cnt.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 8
  %206 = ptrtoint ptr %inmsg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %retval.0.i.i87, ptr %inmsg_cnt.i, align 4
  %207 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i.i87, i32 12) #8
  %208 = extractvalue { i32, i1 } %207, 1
  br i1 %208, label %devm_kcalloc.exit.thread.i88, label %devm_kcalloc.exit.i91, !prof !212

devm_kcalloc.exit.thread.i88:                     ; preds = %ntb_msg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inmsgs118.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 9
  br label %err_clear_mws.sink.split

devm_kcalloc.exit.i91:                            ; preds = %ntb_msg_count.exit.i
  %209 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call, align 4
  %211 = extractvalue { i32, i1 } %207, 0
  %call5.i.i.i89 = tail call noalias ptr @devm_kmalloc(ptr noundef %210, i32 noundef %211, i32 noundef 3520) #8
  %inmsgs.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 9
  %212 = ptrtoint ptr %inmsgs.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call5.i.i.i89, ptr %inmsgs.i, align 4
  %cmp.i90 = icmp eq ptr %call5.i.i.i89, null
  br i1 %cmp.i90, label %devm_kcalloc.exit.i91.err_clear_mws_crit_edge, label %for.cond.preheader.i93

devm_kcalloc.exit.i91.err_clear_mws_crit_edge:    ; preds = %devm_kcalloc.exit.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_mws

for.cond.preheader.i93:                           ; preds = %devm_kcalloc.exit.i91
  %213 = ptrtoint ptr %inmsg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %inmsg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp6120.i92 = icmp sgt i32 %214, 0
  br i1 %cmp6120.i92, label %for.cond.preheader.i93.for.body.i104_crit_edge, label %for.cond.preheader.i93.for.cond15.preheader.i96_crit_edge

for.cond.preheader.i93.for.cond15.preheader.i96_crit_edge: ; preds = %for.cond.preheader.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.i96

for.cond.preheader.i93.for.body.i104_crit_edge:   ; preds = %for.cond.preheader.i93
  br label %for.body.i104

for.cond15.preheader.i96:                         ; preds = %for.body.i104.for.cond15.preheader.i96_crit_edge, %for.cond.preheader.i93.for.cond15.preheader.i96_crit_edge
  %215 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %peer_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp16125.i95 = icmp sgt i32 %216, 0
  br i1 %cmp16125.i95, label %for.cond15.preheader.i96.for.body17.i108_crit_edge, label %for.cond15.preheader.i96.if.end17_crit_edge

for.cond15.preheader.i96.if.end17_crit_edge:      ; preds = %for.cond15.preheader.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.cond15.preheader.i96.for.body17.i108_crit_edge: ; preds = %for.cond15.preheader.i96
  br label %for.body17.i108

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %for.cond.preheader.i93.for.body.i104_crit_edge
  %midx.0121.i = phi i32 [ %inc.i102, %for.body.i104.for.body.i104_crit_edge ], [ 0, %for.cond.preheader.i93.for.body.i104_crit_edge ]
  %217 = ptrtoint ptr %inmsgs.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %inmsgs.i, align 4
  %arrayidx.i99 = getelementptr %struct.tool_msg, ptr %218, i32 %midx.0121.i
  %219 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %midx.0121.i, ptr %arrayidx.i99, align 4
  %220 = load ptr, ptr %inmsgs.i, align 4
  %pidx11.i100 = getelementptr %struct.tool_msg, ptr %220, i32 %midx.0121.i, i32 1
  %221 = ptrtoint ptr %pidx11.i100 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %pidx11.i100, align 4
  %222 = load ptr, ptr %inmsgs.i, align 4
  %tc14.i101 = getelementptr %struct.tool_msg, ptr %222, i32 %midx.0121.i, i32 2
  %223 = ptrtoint ptr %tc14.i101 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call, ptr %tc14.i101, align 4
  %inc.i102 = add nuw nsw i32 %midx.0121.i, 1
  %224 = ptrtoint ptr %inmsg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %inmsg_cnt.i, align 4
  %cmp6.i103 = icmp slt i32 %inc.i102, %225
  br i1 %cmp6.i103, label %for.body.i104.for.body.i104_crit_edge, label %for.body.i104.for.cond15.preheader.i96_crit_edge

for.body.i104.for.cond15.preheader.i96_crit_edge: ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond15.preheader.i96

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i104

for.body17.i108:                                  ; preds = %for.inc59.i127.for.body17.i108_crit_edge, %for.cond15.preheader.i96.for.body17.i108_crit_edge
  %pidx.0126.i105 = phi i32 [ %inc60.i125, %for.inc59.i127.for.body17.i108_crit_edge ], [ 0, %for.cond15.preheader.i96.for.body17.i108_crit_edge ]
  %226 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %call, align 4
  %ops.i106.i106 = getelementptr inbounds %struct.ntb_dev, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %ops.i106.i106 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops.i106.i106, align 8
  %msg_count.i107.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %229, i32 0, i32 39
  %230 = ptrtoint ptr %msg_count.i107.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %msg_count.i107.i, align 4
  %tobool.not.i108.i107 = icmp eq ptr %231, null
  br i1 %tobool.not.i108.i107, label %for.body17.i108.ntb_msg_count.exit112.i_crit_edge, label %if.end.i110.i110

for.body17.i108.ntb_msg_count.exit112.i_crit_edge: ; preds = %for.body17.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_msg_count.exit112.i

if.end.i110.i110:                                 ; preds = %for.body17.i108
  call void @__sanitizer_cov_trace_pc() #10
  %call.i109.i109 = tail call i32 %231(ptr noundef %227) #8
  br label %ntb_msg_count.exit112.i

ntb_msg_count.exit112.i:                          ; preds = %if.end.i110.i110, %for.body17.i108.ntb_msg_count.exit112.i_crit_edge
  %retval.0.i111.i111 = phi i32 [ %call.i109.i109, %if.end.i110.i110 ], [ 0, %for.body17.i108.ntb_msg_count.exit112.i_crit_edge ]
  %232 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %peers.i, align 4
  %outmsg_cnt.i = getelementptr %struct.tool_peer, ptr %233, i32 %pidx.0126.i105, i32 6
  %234 = ptrtoint ptr %outmsg_cnt.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %retval.0.i111.i111, ptr %outmsg_cnt.i, align 4
  %235 = load ptr, ptr %peers.i, align 4
  %outmsg_cnt25.i = getelementptr %struct.tool_peer, ptr %235, i32 %pidx.0126.i105, i32 6
  %236 = ptrtoint ptr %outmsg_cnt25.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %outmsg_cnt25.i, align 4
  %238 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %237, i32 12) #8
  %239 = extractvalue { i32, i1 } %238, 1
  br i1 %239, label %ntb_msg_count.exit112.i.devm_kcalloc.exit116.i116_crit_edge, label %if.end.i.i114.i113, !prof !212

ntb_msg_count.exit112.i.devm_kcalloc.exit116.i116_crit_edge: ; preds = %ntb_msg_count.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit116.i116

if.end.i.i114.i113:                               ; preds = %ntb_msg_count.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %call, align 4
  %242 = extractvalue { i32, i1 } %238, 0
  %call5.i.i113.i112 = tail call noalias ptr @devm_kmalloc(ptr noundef %241, i32 noundef %242, i32 noundef 3520) #8
  br label %devm_kcalloc.exit116.i116

devm_kcalloc.exit116.i116:                        ; preds = %if.end.i.i114.i113, %ntb_msg_count.exit112.i.devm_kcalloc.exit116.i116_crit_edge
  %retval.0.i.i115.i114 = phi ptr [ %call5.i.i113.i112, %if.end.i.i114.i113 ], [ null, %ntb_msg_count.exit112.i.devm_kcalloc.exit116.i116_crit_edge ]
  %243 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %peers.i, align 4
  %outmsgs.i = getelementptr %struct.tool_peer, ptr %244, i32 %pidx.0126.i105, i32 7
  %245 = ptrtoint ptr %outmsgs.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %retval.0.i.i115.i114, ptr %outmsgs.i, align 4
  %246 = load ptr, ptr %peers.i, align 4
  %outmsgs31.i = getelementptr %struct.tool_peer, ptr %246, i32 %pidx.0126.i105, i32 7
  %247 = ptrtoint ptr %outmsgs31.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %outmsgs31.i, align 4
  %cmp32.i115 = icmp eq ptr %248, null
  br i1 %cmp32.i115, label %devm_kcalloc.exit116.i116.err_clear_mws_crit_edge, label %for.cond35.preheader.i118

devm_kcalloc.exit116.i116.err_clear_mws_crit_edge: ; preds = %devm_kcalloc.exit116.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_mws

for.cond35.preheader.i118:                        ; preds = %devm_kcalloc.exit116.i116
  %outmsg_cnt38122.i = getelementptr %struct.tool_peer, ptr %246, i32 %pidx.0126.i105, i32 6
  %249 = ptrtoint ptr %outmsg_cnt38122.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %outmsg_cnt38122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp39123.i117 = icmp sgt i32 %250, 0
  br i1 %cmp39123.i117, label %for.cond35.preheader.i118.for.body40.i124_crit_edge, label %for.cond35.preheader.i118.for.inc59.i127_crit_edge

for.cond35.preheader.i118.for.inc59.i127_crit_edge: ; preds = %for.cond35.preheader.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59.i127

for.cond35.preheader.i118.for.body40.i124_crit_edge: ; preds = %for.cond35.preheader.i118
  br label %for.body40.i124

for.body40.i124:                                  ; preds = %for.body40.i124.for.body40.i124_crit_edge, %for.cond35.preheader.i118.for.body40.i124_crit_edge
  %251 = phi ptr [ %264, %for.body40.i124.for.body40.i124_crit_edge ], [ %246, %for.cond35.preheader.i118.for.body40.i124_crit_edge ]
  %midx.1124.i = phi i32 [ %inc57.i122, %for.body40.i124.for.body40.i124_crit_edge ], [ 0, %for.cond35.preheader.i118.for.body40.i124_crit_edge ]
  %outmsgs43.i = getelementptr %struct.tool_peer, ptr %251, i32 %pidx.0126.i105, i32 7
  %252 = ptrtoint ptr %outmsgs43.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %outmsgs43.i, align 4
  %arrayidx44.i119 = getelementptr %struct.tool_msg, ptr %253, i32 %midx.1124.i
  %254 = ptrtoint ptr %arrayidx44.i119 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %midx.1124.i, ptr %arrayidx44.i119, align 4
  %255 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %peers.i, align 4
  %outmsgs48.i = getelementptr %struct.tool_peer, ptr %256, i32 %pidx.0126.i105, i32 7
  %257 = ptrtoint ptr %outmsgs48.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %outmsgs48.i, align 4
  %pidx50.i120 = getelementptr %struct.tool_msg, ptr %258, i32 %midx.1124.i, i32 1
  %259 = ptrtoint ptr %pidx50.i120 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %pidx.0126.i105, ptr %pidx50.i120, align 4
  %260 = load ptr, ptr %peers.i, align 4
  %outmsgs53.i = getelementptr %struct.tool_peer, ptr %260, i32 %pidx.0126.i105, i32 7
  %261 = ptrtoint ptr %outmsgs53.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %outmsgs53.i, align 4
  %tc55.i121 = getelementptr %struct.tool_msg, ptr %262, i32 %midx.1124.i, i32 2
  %263 = ptrtoint ptr %tc55.i121 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call, ptr %tc55.i121, align 4
  %inc57.i122 = add nuw nsw i32 %midx.1124.i, 1
  %264 = load ptr, ptr %peers.i, align 4
  %outmsg_cnt38.i = getelementptr %struct.tool_peer, ptr %264, i32 %pidx.0126.i105, i32 6
  %265 = ptrtoint ptr %outmsg_cnt38.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %outmsg_cnt38.i, align 4
  %cmp39.i123 = icmp slt i32 %inc57.i122, %266
  br i1 %cmp39.i123, label %for.body40.i124.for.body40.i124_crit_edge, label %for.body40.i124.for.inc59.i127_crit_edge

for.body40.i124.for.inc59.i127_crit_edge:         ; preds = %for.body40.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59.i127

for.body40.i124.for.body40.i124_crit_edge:        ; preds = %for.body40.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i124

for.inc59.i127:                                   ; preds = %for.body40.i124.for.inc59.i127_crit_edge, %for.cond35.preheader.i118.for.inc59.i127_crit_edge
  %inc60.i125 = add nuw nsw i32 %pidx.0126.i105, 1
  %267 = ptrtoint ptr %peer_cnt.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %peer_cnt.i, align 4
  %cmp16.i126 = icmp slt i32 %inc60.i125, %268
  br i1 %cmp16.i126, label %for.inc59.i127.for.body17.i108_crit_edge, label %for.inc59.i127.if.end17_crit_edge

for.inc59.i127.if.end17_crit_edge:                ; preds = %for.inc59.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc59.i127.for.body17.i108_crit_edge:         ; preds = %for.inc59.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i108

if.end17:                                         ; preds = %for.inc59.i127.if.end17_crit_edge, %for.cond15.preheader.i96.if.end17_crit_edge
  %269 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @ntb_set_ctx(ptr noundef %270, ptr noundef %call, ptr noundef nonnull @tool_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19.not = icmp eq i32 %call.i, 0
  br i1 %cmp19.not, label %if.end21, label %if.end17.err_clear_mws_crit_edge

if.end17.err_clear_mws_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clear_mws

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tool_setup_dbgfs(ptr noundef %call)
  br label %cleanup

err_clear_mws.sink.split:                         ; preds = %devm_kcalloc.exit.thread.i88, %devm_kcalloc.exit.thread.i57
  %inmsgs118.i.sink = phi ptr [ %inmsgs118.i, %devm_kcalloc.exit.thread.i88 ], [ %inspads118.i, %devm_kcalloc.exit.thread.i57 ]
  %271 = ptrtoint ptr %inmsgs118.i.sink to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %inmsgs118.i.sink, align 4
  br label %err_clear_mws

err_clear_mws:                                    ; preds = %err_clear_mws.sink.split, %if.end17.err_clear_mws_crit_edge, %devm_kcalloc.exit116.i116.err_clear_mws_crit_edge, %devm_kcalloc.exit.i91.err_clear_mws_crit_edge, %devm_kcalloc.exit116.i.err_clear_mws_crit_edge, %devm_kcalloc.exit.i60.err_clear_mws_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end17.err_clear_mws_crit_edge ], [ -12, %devm_kcalloc.exit.i60.err_clear_mws_crit_edge ], [ -12, %devm_kcalloc.exit.i91.err_clear_mws_crit_edge ], [ -12, %err_clear_mws.sink.split ], [ -12, %devm_kcalloc.exit116.i116.err_clear_mws_crit_edge ], [ -12, %devm_kcalloc.exit116.i.err_clear_mws_crit_edge ]
  tail call fastcc void @tool_clear_mws(ptr noundef %call)
  br label %err_clear_data

err_clear_data:                                   ; preds = %err_clear_mws, %devm_kcalloc.exit167.i.err_clear_data_crit_edge, %devm_kcalloc.exit.i43.err_clear_data_crit_edge, %devm_kcalloc.exit.thread.i40, %devm_kcalloc.exit.i.err_clear_data_crit_edge, %devm_kcalloc.exit.thread.i
  %ret.1 = phi i32 [ %ret.0, %err_clear_mws ], [ -12, %devm_kcalloc.exit.i.err_clear_data_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i43.err_clear_data_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i40 ], [ -12, %devm_kcalloc.exit167.i.err_clear_data_crit_edge ]
  %link_wq.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %link_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %db_wq.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %db_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %msg_wq.i = getelementptr inbounds %struct.tool_ctx, ptr %call, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %msg_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clear_data, %if.end21, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.1, %err_clear_data ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tool_remove(ptr nocapture noundef readnone %self, ptr nocapture noundef readonly %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dbgfs_dir.i = getelementptr inbounds %struct.tool_ctx, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @ntb_clear_ctx(ptr noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 8
  %link_disable.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %link_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_disable.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %7) #8
  tail call fastcc void @tool_clear_mws(ptr noundef %1)
  %link_wq.i = getelementptr inbounds %struct.tool_ctx, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %link_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %db_wq.i = getelementptr inbounds %struct.tool_ctx, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %db_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %msg_wq.i = getelementptr inbounds %struct.tool_ctx, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %msg_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tool_create_data(ptr noundef %ntb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef 196, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ntb, ptr %call.i, align 4
  %link_wq = getelementptr inbounds %struct.tool_ctx, ptr %call.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %link_wq, ptr noundef nonnull @.str.3, ptr noundef nonnull @tool_create_data.__key) #8
  %db_wq = getelementptr inbounds %struct.tool_ctx, ptr %call.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %db_wq, ptr noundef nonnull @.str.5, ptr noundef nonnull @tool_create_data.__key.4) #8
  %msg_wq = getelementptr inbounds %struct.tool_ctx, ptr %call.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %msg_wq, ptr noundef nonnull @.str.7, ptr noundef nonnull @tool_create_data.__key.6) #8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 8
  %db_is_unsafe.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %db_is_unsafe.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %db_is_unsafe.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.end21_crit_edge, label %ntb_db_is_unsafe.exit

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

ntb_db_is_unsafe.exit:                            ; preds = %if.end
  %call.i56 = tail call i32 %4(ptr noundef %ntb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not = icmp eq i32 %call.i56, 0
  br i1 %tobool.not, label %ntb_db_is_unsafe.exit.if.end21_crit_edge, label %do.body11

ntb_db_is_unsafe.exit.if.end21_crit_edge:         ; preds = %ntb_db_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body11:                                        ; preds = %ntb_db_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_create_data.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_create_data, %if.then16)) #8
          to label %if.end21 [label %if.then16], !srcloc !213

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_create_data.__UNIQUE_ID_ddebug256, ptr noundef %ntb, ptr noundef nonnull @.str.10) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %do.body11, %ntb_db_is_unsafe.exit.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %spad_is_unsafe.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %spad_is_unsafe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spad_is_unsafe.i, align 4
  %tobool.not.i59 = icmp eq ptr %8, null
  br i1 %tobool.not.i59, label %if.end21.cleanup_crit_edge, label %ntb_spad_is_unsafe.exit

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_spad_is_unsafe.exit:                          ; preds = %if.end21
  %call.i60 = tail call i32 %8(ptr noundef %ntb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool23.not = icmp eq i32 %call.i60, 0
  br i1 %tobool23.not, label %ntb_spad_is_unsafe.exit.cleanup_crit_edge, label %do.body25

ntb_spad_is_unsafe.exit.cleanup_crit_edge:        ; preds = %ntb_spad_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body25:                                        ; preds = %ntb_spad_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_create_data.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_create_data, %if.then37)) #8
          to label %cleanup [label %if.then37], !srcloc !213

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_create_data.__UNIQUE_ID_ddebug257, ptr noundef %ntb, ptr noundef nonnull @.str.11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %ntb_spad_is_unsafe.exit.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then37 ], [ %call.i, %ntb_spad_is_unsafe.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %do.body25 ], [ %call.i, %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tool_setup_dbgfs(ptr noundef %tc) unnamed_addr #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = load ptr, ptr @tool_dbgfs_topdir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dbgfs_dir = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 12
  %2 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dbgfs_dir, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef nonnull %1) #8
  %dbgfs_dir2 = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 12
  %9 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %dbgfs_dir2, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %dev_name.exit.cleanup_crit_edge, label %if.end6

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %dev_name.exit
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef nonnull %call1, ptr noundef %tc, ptr noundef nonnull @tool_port_fops) #8
  %10 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbgfs_dir2, align 4
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %tc, ptr noundef nonnull @tool_link_fops) #8
  %12 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dbgfs_dir2, align 4
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 384, ptr noundef %13, ptr noundef %tc, ptr noundef nonnull @tool_db_fops) #8
  %14 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbgfs_dir2, align 4
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 384, ptr noundef %15, ptr noundef %tc, ptr noundef nonnull @tool_db_valid_mask_fops) #8
  %16 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dbgfs_dir2, align 4
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 384, ptr noundef %17, ptr noundef %tc, ptr noundef nonnull @tool_db_mask_fops) #8
  %18 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dbgfs_dir2, align 4
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 384, ptr noundef %19, ptr noundef %tc, ptr noundef nonnull @tool_db_event_fops) #8
  %20 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dbgfs_dir2, align 4
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 384, ptr noundef %21, ptr noundef %tc, ptr noundef nonnull @tool_peer_db_fops) #8
  %22 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dbgfs_dir2, align 4
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 384, ptr noundef %23, ptr noundef %tc, ptr noundef nonnull @tool_peer_db_mask_fops) #8
  %inspad_cnt = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 10
  %24 = ptrtoint ptr %inspad_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inspad_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %if.end6.if.end30_crit_edge, label %for.cond.preheader

if.end6.if.end30_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.cond.preheader:                               ; preds = %if.end6
  %26 = ptrtoint ptr %inspad_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inspad_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp25264 = icmp sgt i32 %27, 0
  br i1 %cmp25264, label %for.body.lr.ph, label %for.cond.preheader.if.end30_crit_edge

for.cond.preheader.if.end30_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %inspads = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sidx.0265 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %sidx.0265)
  %28 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dbgfs_dir2, align 4
  %30 = ptrtoint ptr %inspads to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inspads, align 4
  %arrayidx = getelementptr %struct.tool_spad, ptr %31, i32 %sidx.0265
  %call29 = call ptr @debugfs_create_file(ptr noundef nonnull %buf, i16 noundef zeroext 384, ptr noundef %29, ptr noundef %arrayidx, ptr noundef nonnull @tool_spad_fops) #8
  %inc = add nuw nsw i32 %sidx.0265, 1
  %32 = ptrtoint ptr %inspad_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inspad_cnt, align 4
  %cmp25 = icmp slt i32 %inc, %33
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end30:                                         ; preds = %for.body.if.end30_crit_edge, %for.cond.preheader.if.end30_crit_edge, %if.end6.if.end30_crit_edge
  %inmsg_cnt = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 8
  %34 = ptrtoint ptr %inmsg_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inmsg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp31.not = icmp eq i32 %35, 0
  br i1 %cmp31.not, label %if.end30.if.end56_crit_edge, label %for.cond33.preheader

if.end30.if.end56_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

for.cond33.preheader:                             ; preds = %if.end30
  %36 = ptrtoint ptr %inmsg_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inmsg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp35266 = icmp sgt i32 %37, 0
  br i1 %cmp35266, label %for.body36.lr.ph, label %for.cond33.preheader.for.end45_crit_edge

for.cond33.preheader.for.end45_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end45

for.body36.lr.ph:                                 ; preds = %for.cond33.preheader
  %inmsgs = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 9
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.lr.ph
  %midx.0267 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc44, %for.body36.for.body36_crit_edge ]
  %call38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %midx.0267)
  %38 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dbgfs_dir2, align 4
  %40 = ptrtoint ptr %inmsgs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inmsgs, align 4
  %arrayidx41 = getelementptr %struct.tool_msg, ptr %41, i32 %midx.0267
  %call42 = call ptr @debugfs_create_file(ptr noundef nonnull %buf, i16 noundef zeroext 384, ptr noundef %39, ptr noundef %arrayidx41, ptr noundef nonnull @tool_inmsg_fops) #8
  %inc44 = add nuw nsw i32 %midx.0267, 1
  %42 = ptrtoint ptr %inmsg_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inmsg_cnt, align 4
  %cmp35 = icmp slt i32 %inc44, %43
  br i1 %cmp35, label %for.body36.for.body36_crit_edge, label %for.body36.for.end45_crit_edge

for.body36.for.end45_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end45

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end45:                                        ; preds = %for.body36.for.end45_crit_edge, %for.cond33.preheader.for.end45_crit_edge
  %44 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dbgfs_dir2, align 4
  %call47 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 384, ptr noundef %45, ptr noundef %tc, ptr noundef nonnull @tool_msg_sts_fops) #8
  %46 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dbgfs_dir2, align 4
  %call49 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 384, ptr noundef %47, ptr noundef %tc, ptr noundef nonnull @tool_msg_inbits_fops) #8
  %48 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dbgfs_dir2, align 4
  %call51 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 384, ptr noundef %49, ptr noundef %tc, ptr noundef nonnull @tool_msg_outbits_fops) #8
  %50 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dbgfs_dir2, align 4
  %call53 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 384, ptr noundef %51, ptr noundef %tc, ptr noundef nonnull @tool_msg_mask_fops) #8
  %52 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dbgfs_dir2, align 4
  %call55 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 384, ptr noundef %53, ptr noundef %tc, ptr noundef nonnull @tool_msg_event_fops) #8
  br label %if.end56

if.end56:                                         ; preds = %for.end45, %if.end30.if.end56_crit_edge
  %peer_cnt = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 6
  %54 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %peer_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp58280 = icmp sgt i32 %55, 0
  br i1 %cmp58280, label %for.body59.lr.ph, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body59.lr.ph:                                 ; preds = %if.end56
  %peers = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 7
  br label %for.body59

for.body59:                                       ; preds = %for.inc157.for.body59_crit_edge, %for.body59.lr.ph
  %pidx.0281 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc158, %for.inc157.for.body59_crit_edge ]
  %call61 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %pidx.0281)
  %56 = ptrtoint ptr %dbgfs_dir2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dbgfs_dir2, align 4
  %call64 = call ptr @debugfs_create_dir(ptr noundef nonnull %buf, ptr noundef %57) #8
  %58 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %peers, align 4
  %dbgfs_dir66 = getelementptr %struct.tool_peer, ptr %59, i32 %pidx.0281, i32 10
  %60 = ptrtoint ptr %dbgfs_dir66 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call64, ptr %dbgfs_dir66, align 4
  %61 = load ptr, ptr %peers, align 4
  %arrayidx68 = getelementptr %struct.tool_peer, ptr %61, i32 %pidx.0281
  %dbgfs_dir69 = getelementptr %struct.tool_peer, ptr %61, i32 %pidx.0281, i32 10
  %62 = ptrtoint ptr %dbgfs_dir69 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dbgfs_dir69, align 4
  %call72 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef %63, ptr noundef %arrayidx68, ptr noundef nonnull @tool_peer_port_fops) #8
  %64 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %peers, align 4
  %arrayidx74 = getelementptr %struct.tool_peer, ptr %65, i32 %pidx.0281
  %dbgfs_dir75 = getelementptr %struct.tool_peer, ptr %65, i32 %pidx.0281, i32 10
  %66 = ptrtoint ptr %dbgfs_dir75 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dbgfs_dir75, align 4
  %call78 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 128, ptr noundef %67, ptr noundef %arrayidx74, ptr noundef nonnull @tool_peer_link_fops) #8
  %68 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %peers, align 4
  %arrayidx80 = getelementptr %struct.tool_peer, ptr %69, i32 %pidx.0281
  %dbgfs_dir81 = getelementptr %struct.tool_peer, ptr %69, i32 %pidx.0281, i32 10
  %70 = ptrtoint ptr %dbgfs_dir81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dbgfs_dir81, align 4
  %call84 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 128, ptr noundef %71, ptr noundef %arrayidx80, ptr noundef nonnull @tool_peer_link_event_fops) #8
  %72 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %peers, align 4
  %inmw_cnt268 = getelementptr %struct.tool_peer, ptr %73, i32 %pidx.0281, i32 2
  %74 = ptrtoint ptr %inmw_cnt268 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %inmw_cnt268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp88269 = icmp sgt i32 %75, 0
  br i1 %cmp88269, label %for.body59.for.body89_crit_edge, label %for.body59.for.cond103.preheader_crit_edge

for.body59.for.cond103.preheader_crit_edge:       ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond103.preheader

for.body59.for.body89_crit_edge:                  ; preds = %for.body59
  br label %for.body89

for.cond103.preheader:                            ; preds = %for.body89.for.cond103.preheader_crit_edge, %for.body59.for.cond103.preheader_crit_edge
  %76 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %peers, align 4
  %outmw_cnt271 = getelementptr %struct.tool_peer, ptr %77, i32 %pidx.0281, i32 4
  %78 = ptrtoint ptr %outmw_cnt271 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %outmw_cnt271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp106272 = icmp sgt i32 %79, 0
  br i1 %cmp106272, label %for.cond103.preheader.for.body107_crit_edge, label %for.cond103.preheader.for.cond121.preheader_crit_edge

for.cond103.preheader.for.cond121.preheader_crit_edge: ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond121.preheader

for.cond103.preheader.for.body107_crit_edge:      ; preds = %for.cond103.preheader
  br label %for.body107

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %for.body59.for.body89_crit_edge
  %widx.0270 = phi i32 [ %inc101, %for.body89.for.body89_crit_edge ], [ 0, %for.body59.for.body89_crit_edge ]
  %call91 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %widx.0270)
  %80 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %peers, align 4
  %dbgfs_dir95 = getelementptr %struct.tool_peer, ptr %81, i32 %pidx.0281, i32 10
  %82 = ptrtoint ptr %dbgfs_dir95 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dbgfs_dir95, align 4
  %inmws = getelementptr %struct.tool_peer, ptr %81, i32 %pidx.0281, i32 3
  %84 = ptrtoint ptr %inmws to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %inmws, align 4
  %arrayidx98 = getelementptr %struct.tool_mw, ptr %85, i32 %widx.0270
  %call99 = call ptr @debugfs_create_file(ptr noundef nonnull %buf, i16 noundef zeroext 384, ptr noundef %83, ptr noundef %arrayidx98, ptr noundef nonnull @tool_mw_trans_fops) #8
  %inc101 = add nuw nsw i32 %widx.0270, 1
  %86 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %peers, align 4
  %inmw_cnt = getelementptr %struct.tool_peer, ptr %87, i32 %pidx.0281, i32 2
  %88 = ptrtoint ptr %inmw_cnt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %inmw_cnt, align 4
  %cmp88 = icmp slt i32 %inc101, %89
  br i1 %cmp88, label %for.body89.for.body89_crit_edge, label %for.body89.for.cond103.preheader_crit_edge

for.body89.for.cond103.preheader_crit_edge:       ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond103.preheader

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body89

for.cond121.preheader:                            ; preds = %for.body107.for.cond121.preheader_crit_edge, %for.cond103.preheader.for.cond121.preheader_crit_edge
  %90 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %peers, align 4
  %outspad_cnt274 = getelementptr %struct.tool_peer, ptr %91, i32 %pidx.0281, i32 8
  %92 = ptrtoint ptr %outspad_cnt274 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %outspad_cnt274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp124275 = icmp sgt i32 %93, 0
  br i1 %cmp124275, label %for.cond121.preheader.for.body125_crit_edge, label %for.cond121.preheader.for.cond139.preheader_crit_edge

for.cond121.preheader.for.cond139.preheader_crit_edge: ; preds = %for.cond121.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond139.preheader

for.cond121.preheader.for.body125_crit_edge:      ; preds = %for.cond121.preheader
  br label %for.body125

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %for.cond103.preheader.for.body107_crit_edge
  %widx.1273 = phi i32 [ %inc119, %for.body107.for.body107_crit_edge ], [ 0, %for.cond103.preheader.for.body107_crit_edge ]
  %call109 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.38, i32 noundef %widx.1273)
  %94 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %peers, align 4
  %dbgfs_dir113 = getelementptr %struct.tool_peer, ptr %95, i32 %pidx.0281, i32 10
  %96 = ptrtoint ptr %dbgfs_dir113 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dbgfs_dir113, align 4
  %outmws = getelementptr %struct.tool_peer, ptr %95, i32 %pidx.0281, i32 5
  %98 = ptrtoint ptr %outmws to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %outmws, align 4
  %arrayidx116 = getelementptr %struct.tool_mw_wrap, ptr %99, i32 %widx.1273
  %call117 = call ptr @debugfs_create_file(ptr noundef nonnull %buf, i16 noundef zeroext 384, ptr noundef %97, ptr noundef %arrayidx116, ptr noundef nonnull @tool_peer_mw_trans_fops) #8
  %inc119 = add nuw nsw i32 %widx.1273, 1
  %100 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %peers, align 4
  %outmw_cnt = getelementptr %struct.tool_peer, ptr %101, i32 %pidx.0281, i32 4
  %102 = ptrtoint ptr %outmw_cnt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %outmw_cnt, align 4
  %cmp106 = icmp slt i32 %inc119, %103
  br i1 %cmp106, label %for.body107.for.body107_crit_edge, label %for.body107.for.cond121.preheader_crit_edge

for.body107.for.cond121.preheader_crit_edge:      ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond121.preheader

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body107

for.cond139.preheader:                            ; preds = %for.body125.for.cond139.preheader_crit_edge, %for.cond121.preheader.for.cond139.preheader_crit_edge
  %104 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %peers, align 4
  %outmsg_cnt277 = getelementptr %struct.tool_peer, ptr %105, i32 %pidx.0281, i32 6
  %106 = ptrtoint ptr %outmsg_cnt277 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %outmsg_cnt277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp142278 = icmp sgt i32 %107, 0
  br i1 %cmp142278, label %for.cond139.preheader.for.body143_crit_edge, label %for.cond139.preheader.for.inc157_crit_edge

for.cond139.preheader.for.inc157_crit_edge:       ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc157

for.cond139.preheader.for.body143_crit_edge:      ; preds = %for.cond139.preheader
  br label %for.body143

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.cond121.preheader.for.body125_crit_edge
  %sidx.1276 = phi i32 [ %inc137, %for.body125.for.body125_crit_edge ], [ 0, %for.cond121.preheader.for.body125_crit_edge ]
  %call127 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %sidx.1276)
  %108 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %peers, align 4
  %dbgfs_dir131 = getelementptr %struct.tool_peer, ptr %109, i32 %pidx.0281, i32 10
  %110 = ptrtoint ptr %dbgfs_dir131 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dbgfs_dir131, align 4
  %outspads = getelementptr %struct.tool_peer, ptr %109, i32 %pidx.0281, i32 9
  %112 = ptrtoint ptr %outspads to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %outspads, align 4
  %arrayidx134 = getelementptr %struct.tool_spad, ptr %113, i32 %sidx.1276
  %call135 = call ptr @debugfs_create_file(ptr noundef nonnull %buf, i16 noundef zeroext 384, ptr noundef %111, ptr noundef %arrayidx134, ptr noundef nonnull @tool_peer_spad_fops) #8
  %inc137 = add nuw nsw i32 %sidx.1276, 1
  %114 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %peers, align 4
  %outspad_cnt = getelementptr %struct.tool_peer, ptr %115, i32 %pidx.0281, i32 8
  %116 = ptrtoint ptr %outspad_cnt to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %outspad_cnt, align 4
  %cmp124 = icmp slt i32 %inc137, %117
  br i1 %cmp124, label %for.body125.for.body125_crit_edge, label %for.body125.for.cond139.preheader_crit_edge

for.body125.for.cond139.preheader_crit_edge:      ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond139.preheader

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body125

for.body143:                                      ; preds = %for.body143.for.body143_crit_edge, %for.cond139.preheader.for.body143_crit_edge
  %midx.1279 = phi i32 [ %inc155, %for.body143.for.body143_crit_edge ], [ 0, %for.cond139.preheader.for.body143_crit_edge ]
  %call145 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %midx.1279)
  %118 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %peers, align 4
  %dbgfs_dir149 = getelementptr %struct.tool_peer, ptr %119, i32 %pidx.0281, i32 10
  %120 = ptrtoint ptr %dbgfs_dir149 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dbgfs_dir149, align 4
  %outmsgs = getelementptr %struct.tool_peer, ptr %119, i32 %pidx.0281, i32 7
  %122 = ptrtoint ptr %outmsgs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %outmsgs, align 4
  %arrayidx152 = getelementptr %struct.tool_msg, ptr %123, i32 %midx.1279
  %call153 = call ptr @debugfs_create_file(ptr noundef nonnull %buf, i16 noundef zeroext 384, ptr noundef %121, ptr noundef %arrayidx152, ptr noundef nonnull @tool_outmsg_fops) #8
  %inc155 = add nuw nsw i32 %midx.1279, 1
  %124 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %peers, align 4
  %outmsg_cnt = getelementptr %struct.tool_peer, ptr %125, i32 %pidx.0281, i32 6
  %126 = ptrtoint ptr %outmsg_cnt to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %outmsg_cnt, align 4
  %cmp142 = icmp slt i32 %inc155, %127
  br i1 %cmp142, label %for.body143.for.body143_crit_edge, label %for.body143.for.inc157_crit_edge

for.body143.for.inc157_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc157

for.body143.for.body143_crit_edge:                ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body143

for.inc157:                                       ; preds = %for.body143.for.inc157_crit_edge, %for.cond139.preheader.for.inc157_crit_edge
  %inc158 = add nuw nsw i32 %pidx.0281, 1
  %128 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %peer_cnt, align 4
  %cmp58 = icmp slt i32 %inc158, %129
  br i1 %cmp58, label %for.inc157.for.body59_crit_edge, label %for.inc157.cleanup_crit_edge

for.inc157.cleanup_crit_edge:                     ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc157.for.body59_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59

cleanup:                                          ; preds = %for.inc157.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tool_clear_mws(ptr nocapture noundef readonly %tc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %outmw_cnt = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 4
  %0 = ptrtoint ptr %outmw_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %outmw_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %outmws.i = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 5
  br label %for.body

for.cond1.preheader:                              ; preds = %tool_free_peer_mw.exit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %peer_cnt = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 6
  %2 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp231 = icmp sgt i32 %3, 0
  br i1 %cmp231, label %for.cond4.preheader.lr.ph, label %for.cond1.preheader.for.end12_crit_edge

for.cond1.preheader.for.end12_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end12

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %peers = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 7
  br label %for.cond4.preheader

for.body:                                         ; preds = %tool_free_peer_mw.exit.for.body_crit_edge, %for.body.lr.ph
  %widx.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tool_free_peer_mw.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %outmws.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outmws.i, align 4
  %dbgfs_file.i = getelementptr %struct.tool_mw, ptr %5, i32 %widx.026, i32 6
  %6 = ptrtoint ptr %dbgfs_file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dbgfs_file.i, align 4
  tail call void @debugfs_remove(ptr noundef %7) #8
  %8 = getelementptr %struct.tool_mw, ptr %5, i32 %widx.026, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %for.body.tool_free_peer_mw.exit_crit_edge, label %if.then.i

for.body.tool_free_peer_mw.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_free_peer_mw.exit

if.then.i:                                        ; preds = %for.body
  %11 = ptrtoint ptr %outmws.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %outmws.i, align 4
  %13 = getelementptr %struct.tool_mw, ptr %12, i32 %widx.026, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @iounmap(ptr noundef %15) #8
  %16 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tc, align 4
  %pidx.i = getelementptr %struct.tool_mw, ptr %5, i32 %widx.026, i32 1
  %18 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pidx.i, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 8
  %peer_mw_clear_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %peer_mw_clear_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %peer_mw_clear_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %peer_mw_set_trans.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %21, i32 0, i32 13
  %24 = ptrtoint ptr %peer_mw_set_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer_mw_set_trans.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.tool_free_peer_mw.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.tool_free_peer_mw.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_free_peer_mw.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 %25(ptr noundef %17, i32 noundef %19, i32 noundef %widx.026, i64 noundef 0, i32 noundef 0) #8
  br label %tool_free_peer_mw.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 %23(ptr noundef %17, i32 noundef %19, i32 noundef %widx.026) #8
  br label %tool_free_peer_mw.exit

tool_free_peer_mw.exit:                           ; preds = %if.end.i.i, %if.end.i.i.i, %if.then.i.i.tool_free_peer_mw.exit_crit_edge, %for.body.tool_free_peer_mw.exit_crit_edge
  %pidx3.i = getelementptr %struct.tool_mw, ptr %5, i32 %widx.026, i32 1
  %26 = call ptr @memset(ptr %8, i32 0, i32 16)
  %27 = ptrtoint ptr %pidx3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %pidx3.i, align 4
  %28 = ptrtoint ptr %dbgfs_file.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dbgfs_file.i, align 4
  %inc = add nuw nsw i32 %widx.026, 1
  %29 = ptrtoint ptr %outmw_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %outmw_cnt, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %tool_free_peer_mw.exit.for.body_crit_edge, label %tool_free_peer_mw.exit.for.cond1.preheader_crit_edge

tool_free_peer_mw.exit.for.cond1.preheader_crit_edge: ; preds = %tool_free_peer_mw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

tool_free_peer_mw.exit.for.body_crit_edge:        ; preds = %tool_free_peer_mw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond4.preheader:                              ; preds = %for.inc10.for.cond4.preheader_crit_edge, %for.cond4.preheader.lr.ph
  %pidx.032 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %inc11, %for.inc10.for.cond4.preheader_crit_edge ]
  %31 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %peers, align 4
  %inmw_cnt28 = getelementptr %struct.tool_peer, ptr %32, i32 %pidx.032, i32 2
  %33 = ptrtoint ptr %inmw_cnt28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inmw_cnt28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp529 = icmp sgt i32 %34, 0
  br i1 %cmp529, label %for.cond4.preheader.for.body6_crit_edge, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %widx.130 = phi i32 [ %inc8, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  tail call fastcc void @tool_free_mw(ptr noundef %tc, i32 noundef %pidx.032, i32 noundef %widx.130)
  %inc8 = add nuw nsw i32 %widx.130, 1
  %35 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %peers, align 4
  %inmw_cnt = getelementptr %struct.tool_peer, ptr %36, i32 %pidx.032, i32 2
  %37 = ptrtoint ptr %inmw_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %inmw_cnt, align 4
  %cmp5 = icmp slt i32 %inc8, %38
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.inc10_crit_edge

for.body6.for.inc10_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc10

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc10:                                        ; preds = %for.body6.for.inc10_crit_edge, %for.cond4.preheader.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %pidx.032, 1
  %39 = ptrtoint ptr %peer_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %peer_cnt, align 4
  %cmp2 = icmp slt i32 %inc11, %40
  br i1 %cmp2, label %for.inc10.for.cond4.preheader_crit_edge, label %for.inc10.for.end12_crit_edge

for.inc10.for.end12_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end12

for.inc10.for.cond4.preheader_crit_edge:          ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader

for.end12:                                        ; preds = %for.inc10.for.end12_crit_edge, %for.cond1.preheader.for.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_set_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tool_link_event(ptr noundef %ctx) #3 align 64 {
entry:
  %speed = alloca i32, align 4
  %width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #8
  %1 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %width, align 4, !annotation !214
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %link_is_up.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %link_is_up.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link_is_up.i, align 4
  %call.i = call i64 %7(ptr noundef %3, ptr noundef nonnull %speed, ptr noundef nonnull %width) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_link_event.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_link_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %call.i to i32
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool5.not = icmp eq i32 %conv, 0
  %cond = select i1 %tobool5.not, ptr @.str.15, ptr @.str.14
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 4
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_link_event.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, i32 noundef %11, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %link_wq = getelementptr inbounds %struct.tool_ctx, ptr %ctx, i32 0, i32 1
  call void @__wake_up(ptr noundef %link_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tool_db_event(ptr noundef %ctx, i32 noundef %vec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %db_vector_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %db_vector_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_vector_mask.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %db_valid_mask.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %db_valid_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_valid_mask.i.i, align 4
  %call.i.i = tail call i64 %7(ptr noundef %1) #8
  br label %ntb_db_vector_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i64 %5(ptr noundef %1, i32 noundef %vec) #8
  br label %ntb_db_vector_mask.exit

ntb_db_vector_mask.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i11 = phi i64 [ %call3.i, %if.end.i ], [ %call.i.i, %if.then.i ]
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %ops.i12 = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i12, align 8
  %db_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %db_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db_read.i, align 4
  %call.i = tail call i64 %13(ptr noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_db_event.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_db_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %ntb_db_vector_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_db_event.__UNIQUE_ID_ddebug242, ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef %vec, i64 noundef %retval.0.i11, i64 noundef %call.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %ntb_db_vector_mask.exit
  %db_wq = getelementptr inbounds %struct.tool_ctx, ptr %ctx, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %db_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tool_msg_event(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %msg_read_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %msg_read_sts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg_read_sts.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ntb_msg_read_sts.exit_crit_edge, label %if.end.i

entry.ntb_msg_read_sts.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_msg_read_sts.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i64 %5(ptr noundef %1) #8
  br label %ntb_msg_read_sts.exit

ntb_msg_read_sts.exit:                            ; preds = %if.end.i, %entry.ntb_msg_read_sts.exit_crit_edge
  %retval.0.i7 = phi i64 [ %call.i, %if.end.i ], [ 0, %entry.ntb_msg_read_sts.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_msg_event.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_msg_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !213

if.then:                                          ; preds = %ntb_msg_read_sts.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_msg_event.__UNIQUE_ID_ddebug243, ptr noundef %7, ptr noundef nonnull @.str.19, i64 noundef %retval.0.i7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %ntb_msg_read_sts.exit
  %msg_wq = getelementptr inbounds %struct.tool_ctx, ptr %ctx, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %msg_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_port_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @ntb_default_port_number(ptr noundef %4) #8
  br label %ntb_port_number.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %8(ptr noundef %4) #8
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i) #8
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_port_number(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_link_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !214
  %call = call i32 @kstrtobool_from_user(ptr noundef %ubuf, i32 noundef %size, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %ops.i17 = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i17, align 8
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %link_enable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_enable.i, align 4
  %call.i = call i32 %10(ptr noundef %6, i32 noundef -1, i32 noundef -1) #8
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %link_disable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %link_disable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_disable.i, align 4
  %call.i18 = call i32 %12(ptr noundef %6) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call.i, %if.then2 ], [ %call.i18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7.not = icmp eq i32 %ret.0, 0
  %size.ret.0 = select i1 %tobool7.not, i32 %size, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %size.ret.0, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_db_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %db_read = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %db_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_read, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_db_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %db_set = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %db_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_set, align 4
  %db_clear = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %db_clear to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db_clear, align 4
  %call = tail call fastcc i32 @tool_fn_write(ptr noundef %1, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tool_fn_write(ptr nocapture noundef readonly %tc, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef readonly %fn_set, ptr noundef readonly %fn_clear) unnamed_addr #3 align 64 {
entry:
  %cmd = alloca i8, align 1
  %bits = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #8
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmd, align 1, !annotation !214
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #8
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %bits, align 8, !annotation !214
  %add = add i32 %size, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %size, ptr noundef %offp, ptr noundef %ubuf, i32 noundef %size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %size
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call9.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %cmd, ptr noundef nonnull %bits)
  call void @kfree(ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 2
  br i1 %cmp5.not, label %if.else, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.else.cleanup_crit_edge [
    i8 115, label %if.then9
    i8 99, label %if.then19
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.else
  %tobool10.not = icmp eq ptr %fn_set, null
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.else12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc, align 4
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bits, align 8
  %call13 = call i32 %fn_set(ptr noundef %7, i64 noundef %9) #8
  br label %if.end29

if.then19:                                        ; preds = %if.else
  %tobool20.not = icmp eq ptr %fn_clear, null
  br i1 %tobool20.not, label %if.then19.cleanup_crit_edge, label %if.else22

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tc, align 4
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bits, align 8
  %call24 = call i32 %fn_clear(ptr noundef %11, i64 noundef %13) #8
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %if.else12
  %ret.0 = phi i32 [ %call13, %if.else12 ], [ %call24, %if.else22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool30.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool30.not, i32 %size, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then19.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ -22, %if.then19.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %spec.select, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_db_valid_mask_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %db_valid_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %db_valid_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_valid_mask, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_db_mask_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %db_read_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %db_read_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_read_mask, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_db_mask_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %db_set_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %db_set_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_set_mask, align 4
  %db_clear_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %db_clear_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db_clear_mask, align 4
  %call = tail call fastcc i32 @tool_fn_write(ptr noundef %1, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_db_event_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !214
  %call.i = call i32 @kstrtoull_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

if.end:                                           ; preds = %entry
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 1139) #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %db_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %db_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %db_read.i, align 4
  %call.i31 = call i64 %8(ptr noundef %4) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i31, i64 %10)
  %cmp = icmp eq i64 %call.i31, %10
  br i1 %cmp, label %if.end.cleanup22_crit_edge, label %if.then5

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %db_wq = getelementptr inbounds %struct.tool_ctx, ptr %1, i32 0, i32 2
  %call748 = call i32 @prepare_to_wait_event(ptr noundef %db_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %ops.i3249 = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i3249 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i3249, align 8
  %db_read.i3350 = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %db_read.i3350 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db_read.i3350, align 4
  %call.i3451 = call i64 %17(ptr noundef %13) #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i3451, i64 %19)
  %cmp1052 = icmp eq i64 %call.i3451, %19
  br i1 %cmp1052, label %if.then5.if.end17.thread44_crit_edge, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  br label %if.end12

if.then5.if.end17.thread44_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.thread44

if.end12:                                         ; preds = %cleanup.if.end12_crit_edge, %if.then5.if.end12_crit_edge
  %call753 = phi i32 [ %call7, %cleanup.if.end12_crit_edge ], [ %call748, %if.then5.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call753)
  %tobool13.not = icmp eq i32 %call753, 0
  br i1 %tobool13.not, label %cleanup, label %if.end17

cleanup:                                          ; preds = %if.end12
  call void @schedule() #8
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %db_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %ops.i32 = getelementptr inbounds %struct.ntb_dev, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i32, align 8
  %db_read.i33 = getelementptr inbounds %struct.ntb_dev_ops, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %db_read.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %db_read.i33, align 4
  %call.i34 = call i64 %25(ptr noundef %21) #8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %val, align 8
  %cmp10 = icmp eq i64 %call.i34, %27
  br i1 %cmp10, label %cleanup.if.end17.thread44_crit_edge, label %cleanup.if.end12_crit_edge

cleanup.if.end12_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

cleanup.if.end17.thread44_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.thread44

if.end17.thread44:                                ; preds = %cleanup.if.end17.thread44_crit_edge, %if.then5.if.end17.thread44_crit_edge
  call void @finish_wait(ptr noundef %db_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup22

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup22

cleanup22:                                        ; preds = %if.end17, %if.end17.thread44, %if.end.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup22_crit_edge ], [ -85, %if.end17 ], [ %size, %if.end17.thread44 ], [ %size, %if.end.cleanup22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_db_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %peer_db_read = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %peer_db_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_db_read, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_db_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %peer_db_set = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %peer_db_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_db_set, align 4
  %peer_db_clear = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 28
  %8 = ptrtoint ptr %peer_db_clear to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_db_clear, align 4
  %call = tail call fastcc i32 @tool_fn_write(ptr noundef %1, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_db_mask_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %peer_db_read_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %peer_db_read_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_db_read_mask, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_db_mask_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %peer_db_set_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %peer_db_set_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_db_set_mask, align 4
  %peer_db_clear_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 31
  %8 = ptrtoint ptr %peer_db_clear_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_db_clear_mask, align 4
  %call = tail call fastcc i32 @tool_fn_write(ptr noundef %1, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_spad_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %tc = getelementptr inbounds %struct.tool_spad, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %spad_read = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 34
  %9 = ptrtoint ptr %spad_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spad_read, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %ntb_spad_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_spad_read.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %call.i = tail call i32 %10(ptr noundef %6, i32 noundef %12) #8
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.42, i32 noundef %call.i) #8
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %ntb_spad_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %ntb_spad_read.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_spad_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !214
  %tc = getelementptr inbounds %struct.tool_spad, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %spad_write = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %spad_write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spad_write, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_spad_write.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_spad_write, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !213

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_spad_write.__UNIQUE_ID_ddebug254, ptr noundef %14, ptr noundef nonnull @.str.44) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %20, i32 0, i32 35
  %21 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %ntb_spad_write.exit

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_spad_write.exit:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %call.i24 = call i32 %22(ptr noundef %18, i32 noundef %26, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool15.not = icmp eq i32 %call.i24, 0
  %spec.select = select i1 %tobool15.not, i32 %size, i32 %call.i24
  br label %cleanup

cleanup:                                          ; preds = %ntb_spad_write.exit, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %if.end11.cleanup_crit_edge ], [ %spec.select, %ntb_spad_write.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_inmsg_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %pidx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pidx) #8
  %3 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pidx, align 4, !annotation !214
  %tc = getelementptr inbounds %struct.tool_msg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 8
  %msg_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %msg_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg_read.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.ntb_msg_read.exit_crit_edge, label %if.end.i

entry.ntb_msg_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_msg_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %call.i = call i32 %11(ptr noundef %7, ptr noundef nonnull %pidx, i32 noundef %13) #8
  br label %ntb_msg_read.exit

ntb_msg_read.exit:                                ; preds = %if.end.i, %entry.ntb_msg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -1, %entry.ntb_msg_read.exit_crit_edge ]
  %14 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pidx, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i, i32 noundef %15) #8
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidx) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_msg_sts_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %msg_read_sts = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 42
  %6 = ptrtoint ptr %msg_read_sts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_read_sts, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_msg_sts_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %msg_clear_sts = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %msg_clear_sts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_clear_sts, align 4
  %call = tail call fastcc i32 @tool_fn_write(ptr noundef %1, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef null, ptr noundef %7)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_msg_inbits_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %msg_inbits = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %msg_inbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_inbits, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_msg_outbits_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %msg_outbits = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %msg_outbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_outbits, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %tobool.not.i = icmp eq ptr %7, null
  %8 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %entry.tool_fn_read.exit_crit_edge, label %if.end.i

entry.tool_fn_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_fn_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.umin.i32(i32 %size, i32 32) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i64 %7(ptr noundef %11) #8
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i, i32 noundef %9, ptr noundef nonnull @.str.40, i64 noundef %call.i) #8
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf.i, i32 noundef %call1.i) #8
  br label %tool_fn_read.exit

tool_fn_read.exit:                                ; preds = %if.end.i, %entry.tool_fn_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -22, %entry.tool_fn_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_msg_mask_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %msg_set_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %msg_set_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg_set_mask, align 4
  %msg_clear_mask = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 45
  %8 = ptrtoint ptr %msg_clear_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg_clear_mask, align 4
  %call = tail call fastcc i32 @tool_fn_write(ptr noundef %1, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef %7, ptr noundef %9)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_msg_event_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !214
  %call.i = call i32 @kstrtoull_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

if.end:                                           ; preds = %entry
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 1390) #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %msg_read_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %6, i32 0, i32 42
  %7 = ptrtoint ptr %msg_read_sts.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg_read_sts.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.ntb_msg_read_sts.exit_crit_edge, label %if.end.i

if.end.ntb_msg_read_sts.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_msg_read_sts.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i31 = call i64 %8(ptr noundef %4) #8
  br label %ntb_msg_read_sts.exit

ntb_msg_read_sts.exit:                            ; preds = %if.end.i, %if.end.ntb_msg_read_sts.exit_crit_edge
  %retval.0.i = phi i64 [ %call.i31, %if.end.i ], [ 0, %if.end.ntb_msg_read_sts.exit_crit_edge ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %10)
  %cmp = icmp eq i64 %retval.0.i, %10
  br i1 %cmp, label %ntb_msg_read_sts.exit.cleanup22_crit_edge, label %if.then5

ntb_msg_read_sts.exit.cleanup22_crit_edge:        ; preds = %ntb_msg_read_sts.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

if.then5:                                         ; preds = %ntb_msg_read_sts.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %msg_wq = getelementptr inbounds %struct.tool_ctx, ptr %1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then5
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %msg_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %ops.i32 = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i32, align 8
  %msg_read_sts.i33 = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %msg_read_sts.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg_read_sts.i33, align 4
  %tobool.not.i34 = icmp eq ptr %17, null
  br i1 %tobool.not.i34, label %for.cond.ntb_msg_read_sts.exit38_crit_edge, label %if.end.i36

for.cond.ntb_msg_read_sts.exit38_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_msg_read_sts.exit38

if.end.i36:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call.i35 = call i64 %17(ptr noundef %13) #8
  br label %ntb_msg_read_sts.exit38

ntb_msg_read_sts.exit38:                          ; preds = %if.end.i36, %for.cond.ntb_msg_read_sts.exit38_crit_edge
  %retval.0.i37 = phi i64 [ %call.i35, %if.end.i36 ], [ 0, %for.cond.ntb_msg_read_sts.exit38_crit_edge ]
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i37, i64 %19)
  %cmp10 = icmp eq i64 %retval.0.i37, %19
  br i1 %cmp10, label %if.end17.thread48, label %if.end12

if.end12:                                         ; preds = %ntb_msg_read_sts.exit38
  %tobool13.not = icmp eq i32 %call7, 0
  br i1 %tobool13.not, label %cleanup, label %if.end17

cleanup:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %for.cond

if.end17.thread48:                                ; preds = %ntb_msg_read_sts.exit38
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %msg_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup22

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup22

cleanup22:                                        ; preds = %if.end17, %if.end17.thread48, %ntb_msg_read_sts.exit.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup22_crit_edge ], [ -85, %if.end17 ], [ %size, %if.end17.thread48 ], [ %size, %ntb_msg_read_sts.exit.cleanup22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_port_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tc1 = getelementptr inbounds %struct.tool_peer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @ntb_default_peer_port_number(ptr noundef %6, i32 noundef %8) #8
  br label %ntb_peer_port_number.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %12(ptr noundef %6, i32 noundef %8) #8
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i) #8
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_number(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_link_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tc1 = getelementptr inbounds %struct.tool_peer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %4 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 8
  %link_is_up.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %link_is_up.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_is_up.i, align 4
  %call.i = tail call i64 %11(ptr noundef %7, ptr noundef null, ptr noundef null) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %shl = shl nuw i32 1, %13
  %conv = zext i32 %shl to i64
  %and = and i64 %call.i, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i8 78, i8 89
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %., ptr %buf, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %4, align 1
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %5, align 1
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_link_event_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tc1 = getelementptr inbounds %struct.tool_peer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !214
  %call = call i32 @kstrtobool_from_user(ptr noundef %ubuf, i32 noundef %size, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %rem = srem i32 %6, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 531) #8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 8
  %link_is_up.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %link_is_up.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_is_up.i, align 4
  %call.i = call i64 %12(ptr noundef %8, ptr noundef null, ptr noundef null) #8
  %and = and i64 %call.i, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6 = icmp ne i64 %and, 0
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1, !range !215
  %15 = zext i1 %tobool6 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp = icmp eq i8 %14, %15
  br i1 %cmp, label %if.end.cleanup36_crit_edge, label %if.then10

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %link_wq = getelementptr inbounds %struct.tool_ctx, ptr %3, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then10
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %link_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %ops.i49 = getelementptr inbounds %struct.ntb_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i49, align 8
  %link_is_up.i50 = getelementptr inbounds %struct.ntb_dev_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %link_is_up.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link_is_up.i50, align 4
  %call.i51 = call i64 %22(ptr noundef %18, ptr noundef null, ptr noundef null) #8
  %and15 = and i64 %call.i51, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16 = icmp ne i64 %and15, 0
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val, align 1, !range !215
  %25 = zext i1 %tobool16 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp23 = icmp eq i8 %24, %25
  br i1 %cmp23, label %if.end31.thread61, label %if.end26

if.end26:                                         ; preds = %for.cond
  %tobool27.not = icmp eq i32 %call12, 0
  br i1 %tobool27.not, label %cleanup, label %if.end31

cleanup:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %for.cond

if.end31.thread61:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %link_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup36

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup36

cleanup36:                                        ; preds = %if.end31, %if.end31.thread61, %if.end.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup36_crit_edge ], [ -85, %if.end31 ], [ %size, %if.end31.thread61 ], [ %size, %if.end.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_mw_trans_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %addr_align = alloca i32, align 4
  %size_align = alloca i32, align 4
  %size_max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_align) #8
  %2 = ptrtoint ptr %addr_align to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr_align, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_align) #8
  %3 = ptrtoint ptr %size_align to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size_align, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_max) #8
  %4 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %size_max, align 4, !annotation !214
  %5 = tail call i32 @llvm.umin.i32(i32 %size, i32 512)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tc = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %pidx = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pidx, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %17(ptr noundef %9, ptr noundef null, ptr noundef null) #8
  %sh_prom.i = zext i32 %11 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %call.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.err_crit_edge, label %ntb_mw_get_align.exit

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

ntb_mw_get_align.exit:                            ; preds = %if.end
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 8
  %mw_get_align.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %mw_get_align.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mw_get_align.i, align 4
  %call1.i = call i32 %21(ptr noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %addr_align, ptr noundef nonnull %size_align, ptr noundef nonnull %size_max) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.end4, label %ntb_mw_get_align.exit.err_crit_edge

ntb_mw_get_align.exit.err_crit_edge:              ; preds = %ntb_mw_get_align.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end4:                                          ; preds = %ntb_mw_get_align.exit
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 8
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %5, ptr noundef nonnull @.str.46, i32 noundef %23) #8
  %add.ptr7 = getelementptr i8, ptr %call9.i, i32 %call6
  %sub8 = sub i32 %5, %call6
  %24 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tc, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pidx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i104 = icmp eq ptr %33, null
  br i1 %tobool.not.i104, label %if.then.i105, label %if.end.i106

if.then.i105:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @ntb_default_peer_port_number(ptr noundef %27, i32 noundef %29) #8
  br label %ntb_peer_port_number.exit

if.end.i106:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 %33(ptr noundef %27, i32 noundef %29) #8
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i106, %if.then.i105
  %retval.0.i107 = phi i32 [ %call3.i, %if.end.i106 ], [ %call.i, %if.then.i105 ]
  %34 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pidx, align 4
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i107, i32 noundef %35) #8
  %add15 = add i32 %call14, %call6
  %add.ptr16 = getelementptr i8, ptr %call9.i, i32 %add15
  %sub17 = sub i32 %5, %add15
  %36 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.48, ptr noundef %38) #8
  %add19 = add i32 %call18, %add15
  %add.ptr20 = getelementptr i8, ptr %call9.i, i32 %add19
  %sub21 = sub i32 %5, %add19
  %39 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 4
  %call22 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.49, ptr noundef %39) #8
  %add23 = add i32 %add19, %call22
  %add.ptr24 = getelementptr i8, ptr %call9.i, i32 %add23
  %sub25 = sub i32 %5, %add23
  %size26 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 5
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.50, ptr noundef %size26) #8
  %add28 = add i32 %add23, %call27
  %add.ptr29 = getelementptr i8, ptr %call9.i, i32 %add28
  %sub30 = sub i32 %5, %add28
  %call31 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.51, ptr noundef nonnull %addr_align) #8
  %add32 = add i32 %add28, %call31
  %add.ptr33 = getelementptr i8, ptr %call9.i, i32 %add32
  %sub34 = sub i32 %5, %add32
  %call35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.52, ptr noundef nonnull %size_align) #8
  %add36 = add i32 %add32, %call35
  %add.ptr37 = getelementptr i8, ptr %call9.i, i32 %add36
  %sub38 = sub i32 %5, %add36
  %call39 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.53, ptr noundef nonnull %size_max) #8
  %add40 = add i32 %add36, %call39
  %call41 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %call9.i, i32 noundef %add40) #8
  br label %err

err:                                              ; preds = %ntb_peer_port_number.exit, %ntb_mw_get_align.exit.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call1.i, %ntb_mw_get_align.exit.err_crit_edge ], [ %call41, %ntb_peer_port_number.exit ], [ -107, %if.end.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_max) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_align) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_align) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_mw_trans_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %size.i = alloca i32, align 4
  %addr_align.i = alloca i32, align 4
  %size_align.i = alloca i32, align 4
  %buf.i = alloca [32 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !214
  %call = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tc = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 8
  %pidx = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pidx, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  call fastcc void @tool_free_mw(ptr noundef %4, i32 noundef %6, i32 noundef %8)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %11 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tc, align 8
  %13 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pidx, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #8
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %size.i, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_align.i) #8
  %18 = ptrtoint ptr %addr_align.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %addr_align.i, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_align.i) #8
  %19 = ptrtoint ptr %size_align.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %size_align.i, align 4, !annotation !214
  %peers.i = getelementptr inbounds %struct.tool_ctx, ptr %12, i32 0, i32 7
  %20 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peers.i, align 4
  %inmws.i = getelementptr %struct.tool_peer, ptr %21, i32 %14, i32 3
  %22 = ptrtoint ptr %inmws.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inmws.i, align 4
  %arrayidx1.i = getelementptr %struct.tool_mw, ptr %23, i32 %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %24 = getelementptr %struct.tool_mw, ptr %23, i32 %16, i32 3
  %25 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %cmp.not.i = icmp eq ptr %27, null
  br i1 %cmp.not.i, label %if.end.i, label %if.then2.tool_setup_mw.exit_crit_edge

if.then2.tool_setup_mw.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_mw.exit

if.end.i:                                         ; preds = %if.then2
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %12, align 4
  %ops.i.i.i = getelementptr inbounds %struct.ntb_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i.i, align 8
  %link_is_up.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %link_is_up.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link_is_up.i.i.i, align 4
  %call.i.i.i = call i64 %33(ptr noundef %29, ptr noundef null, ptr noundef null) #8
  %sh_prom.i.i = zext i32 %14 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %and.i.i = and i64 %call.i.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.tool_setup_mw.exit.thread_crit_edge, label %ntb_mw_get_align.exit.i

if.end.i.tool_setup_mw.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_mw.exit.thread

ntb_mw_get_align.exit.i:                          ; preds = %if.end.i
  %34 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i.i, align 8
  %mw_get_align.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %mw_get_align.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mw_get_align.i.i, align 4
  %call1.i.i = call i32 %37(ptr noundef %29, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %addr_align.i, ptr noundef nonnull %size_align.i, ptr noundef nonnull %size.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %ntb_mw_get_align.exit.i.tool_setup_mw.exit.thread_crit_edge

ntb_mw_get_align.exit.i.tool_setup_mw.exit.thread_crit_edge: ; preds = %ntb_mw_get_align.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_mw.exit.thread

if.end3.i:                                        ; preds = %ntb_mw_get_align.exit.i
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %10) #8
  %size5.i = getelementptr %struct.tool_mw, ptr %23, i32 %16, i32 5
  %sub.i = add i32 %40, -1
  %41 = ptrtoint ptr %addr_align.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr_align.i, align 4
  %sub7.i = add i32 %42, -1
  %or.i = or i32 %sub7.i, %sub.i
  %43 = ptrtoint ptr %size_align.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size_align.i, align 4
  %sub11.i = add i32 %44, -1
  %or12.i = or i32 %or.i, %sub11.i
  %add13.i = add i32 %or12.i, 1
  %45 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add13.i, ptr %size5.i, align 8
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %12, align 4
  %pdev.i = getelementptr inbounds %struct.ntb_dev, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = getelementptr %struct.tool_mw, ptr %23, i32 %16, i32 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add13.i, ptr noundef %50, i32 noundef 3264, i32 noundef 0) #8
  %51 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i, ptr %24, align 4
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %if.end3.i.tool_setup_mw.exit.thread_crit_edge, label %if.end20.i

if.end3.i.tool_setup_mw.exit.thread_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_mw.exit.thread

if.end20.i:                                       ; preds = %if.end3.i
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %50, align 8
  %54 = ptrtoint ptr %addr_align.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr_align.i, align 4
  %sub21.i = add i32 %55, -1
  %and.i = and i32 %sub21.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp22.i = icmp eq i32 %and.i, 0
  br i1 %cmp22.i, label %if.end24.i, label %if.end20.i.err_free_dma.i_crit_edge

if.end20.i.err_free_dma.i_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma.i

if.end24.i:                                       ; preds = %if.end20.i
  %56 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %12, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i, align 8
  %mw_set_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %mw_set_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mw_set_trans.i.i, align 4
  %tobool.not.i82.i = icmp eq ptr %61, null
  br i1 %tobool.not.i82.i, label %if.end24.i.if.end30.i_crit_edge, label %ntb_mw_set_trans.exit.i

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

ntb_mw_set_trans.exit.i:                          ; preds = %if.end24.i
  %62 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size5.i, align 8
  %call.i83.i = call i32 %61(ptr noundef %57, i32 noundef %14, i32 noundef %16, i32 noundef %53, i32 noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool28.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool28.not.i, label %ntb_mw_set_trans.exit.i.if.end30.i_crit_edge, label %ntb_mw_set_trans.exit.i.err_free_dma.i_crit_edge

ntb_mw_set_trans.exit.i.err_free_dma.i_crit_edge: ; preds = %ntb_mw_set_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma.i

ntb_mw_set_trans.exit.i.if.end30.i_crit_edge:     ; preds = %ntb_mw_set_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %ntb_mw_set_trans.exit.i.if.end30.i_crit_edge, %if.end24.i.if.end30.i_crit_edge
  %call31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %16) #8
  %64 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %peers.i, align 4
  %dbgfs_dir.i = getelementptr %struct.tool_peer, ptr %65, i32 %14, i32 10
  %66 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dbgfs_dir.i, align 4
  %call35.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 384, ptr noundef %67, ptr noundef %arrayidx1.i, ptr noundef nonnull @tool_mw_fops) #8
  %dbgfs_file.i = getelementptr %struct.tool_mw, ptr %23, i32 %16, i32 6
  %68 = ptrtoint ptr %dbgfs_file.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call35.i, ptr %dbgfs_file.i, align 4
  br label %tool_setup_mw.exit

err_free_dma.i:                                   ; preds = %ntb_mw_set_trans.exit.i.err_free_dma.i_crit_edge, %if.end20.i.err_free_dma.i_crit_edge
  %ret.0.i = phi i32 [ %call.i83.i, %ntb_mw_set_trans.exit.i.err_free_dma.i_crit_edge ], [ -12, %if.end20.i.err_free_dma.i_crit_edge ]
  %69 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %12, align 4
  %pdev37.i = getelementptr inbounds %struct.ntb_dev, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %pdev37.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev37.i, align 8
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size5.i, align 8
  %75 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %24, align 4
  %77 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %50, align 8
  call void @dma_free_attrs(ptr noundef %dev38.i, i32 noundef %74, ptr noundef %76, i32 noundef %78, i32 noundef 0) #8
  %79 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %24, align 4
  %80 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %50, align 8
  %81 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %size5.i, align 8
  br label %tool_setup_mw.exit.thread

tool_setup_mw.exit.thread:                        ; preds = %err_free_dma.i, %if.end3.i.tool_setup_mw.exit.thread_crit_edge, %ntb_mw_get_align.exit.i.tool_setup_mw.exit.thread_crit_edge, %if.end.i.tool_setup_mw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -107, %if.end.i.tool_setup_mw.exit.thread_crit_edge ], [ -12, %if.end3.i.tool_setup_mw.exit.thread_crit_edge ], [ %call1.i.i, %ntb_mw_get_align.exit.i.tool_setup_mw.exit.thread_crit_edge ], [ %ret.0.i, %err_free_dma.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_align.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_align.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %cleanup

tool_setup_mw.exit:                               ; preds = %if.end30.i, %if.then2.tool_setup_mw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_align.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_align.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tool_setup_mw.exit, %tool_setup_mw.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %tool_setup_mw.exit.thread ], [ %size, %tool_setup_mw.exit ], [ %size, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tool_free_mw(ptr nocapture noundef readonly %tc, i32 noundef %pidx, i32 noundef %widx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %peers = getelementptr inbounds %struct.tool_ctx, ptr %tc, i32 0, i32 7
  %0 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peers, align 4
  %inmws = getelementptr %struct.tool_peer, ptr %1, i32 %pidx, i32 3
  %2 = ptrtoint ptr %inmws to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inmws, align 4
  %dbgfs_file = getelementptr %struct.tool_mw, ptr %3, i32 %widx, i32 6
  %4 = ptrtoint ptr %dbgfs_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbgfs_file, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  %6 = getelementptr %struct.tool_mw, ptr %3, i32 %widx, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tc, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 8
  %mw_clear_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %mw_clear_trans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mw_clear_trans.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %mw_set_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %mw_set_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mw_set_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then.i.ntb_mw_clear_trans.exit_crit_edge, label %if.end.i.i

if.then.i.ntb_mw_clear_trans.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_mw_clear_trans.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %16(ptr noundef %10, i32 noundef %pidx, i32 noundef %widx, i32 noundef 0, i32 noundef 0) #8
  br label %ntb_mw_clear_trans.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %14(ptr noundef %10, i32 noundef %pidx, i32 noundef %widx) #8
  br label %ntb_mw_clear_trans.exit

ntb_mw_clear_trans.exit:                          ; preds = %if.end.i, %if.end.i.i, %if.then.i.ntb_mw_clear_trans.exit_crit_edge
  %17 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tc, align 4
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %size = getelementptr %struct.tool_mw, ptr %3, i32 %widx, i32 5
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 8
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr %struct.tool_mw, ptr %3, i32 %widx, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %22, ptr noundef %24, i32 noundef %27, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %ntb_mw_clear_trans.exit, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %6, align 4
  %29 = getelementptr %struct.tool_mw, ptr %3, i32 %widx, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 8
  %size3 = getelementptr %struct.tool_mw, ptr %3, i32 %widx, i32 5
  %31 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %size3, align 8
  %32 = ptrtoint ptr %dbgfs_file to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dbgfs_file, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_mw_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %size1 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size1, align 8
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %4, i32 noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_mw_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %size1 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size1, align 8
  %call = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %4, i32 noundef %6, ptr noundef %offp, ptr noundef %ubuf, i32 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_mw_trans_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %map_size = alloca i32, align 4
  %map_base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mw = getelementptr inbounds %struct.tool_mw_wrap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_size) #8
  %4 = ptrtoint ptr %map_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %map_size, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_base) #8
  %5 = ptrtoint ptr %map_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %map_base, align 4, !annotation !214
  %tc = getelementptr inbounds %struct.tool_mw, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 8
  %peer_mw_get_addr.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %peer_mw_get_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer_mw_get_addr.i, align 4
  %call.i = call i32 %15(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %map_base, ptr noundef nonnull %map_size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = call i32 @llvm.umin.i32(i32 %size, i32 512)
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #11
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 8
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %16, ptr noundef nonnull @.str.55, i32 noundef %18) #8
  %19 = getelementptr inbounds %struct.tool_mw, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp7.not = icmp eq ptr %21, null
  %add.ptr17 = getelementptr i8, ptr %call9.i, i32 %call6
  %sub18 = sub i32 %16, %call6
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  %22 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tc, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %pidx = getelementptr inbounds %struct.tool_mw, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pidx, align 4
  %ops.i107 = getelementptr inbounds %struct.ntb_dev, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i107 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i107, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then.i109, label %if.end.i

if.then.i109:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i108 = call i32 @ntb_default_peer_port_number(ptr noundef %25, i32 noundef %27) #8
  br label %ntb_peer_port_number.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 %31(ptr noundef %25, i32 noundef %27) #8
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i, %if.then.i109
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i108, %if.then.i109 ]
  %32 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pidx, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i, i32 noundef %33) #8
  br label %if.end21

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.57) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %ntb_peer_port_number.exit
  %call15.pn = phi i32 [ %call15, %ntb_peer_port_number.exit ], [ %call19, %if.else ]
  %off.0 = add i32 %call15.pn, %call6
  %add.ptr22 = getelementptr i8, ptr %call9.i, i32 %off.0
  %sub23 = sub i32 %16, %off.0
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %19, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.58, ptr noundef %35) #8
  %add25 = add i32 %call24, %off.0
  %add.ptr26 = getelementptr i8, ptr %call9.i, i32 %add25
  %sub27 = sub i32 %16, %add25
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.59, ptr noundef nonnull %map_base) #8
  %add29 = add i32 %add25, %call28
  %add.ptr30 = getelementptr i8, ptr %call9.i, i32 %add29
  %sub31 = sub i32 %16, %add29
  %call32 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.60, ptr noundef nonnull %map_size) #8
  %add33 = add i32 %add29, %call32
  %add.ptr34 = getelementptr i8, ptr %call9.i, i32 %add33
  %sub35 = sub i32 %16, %add33
  %36 = getelementptr inbounds %struct.tool_mw, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %call36 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.61, i64 noundef %38) #8
  %add37 = add i32 %call36, %add33
  %add.ptr38 = getelementptr i8, ptr %call9.i, i32 %add37
  %sub39 = sub i32 %16, %add37
  %size40 = getelementptr inbounds %struct.tool_mw, ptr %3, i32 0, i32 5
  %call41 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.62, ptr noundef %size40) #8
  %add42 = add i32 %add37, %call41
  %call43 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %call9.i, i32 noundef %add42) #8
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end21 ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_base) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_size) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_mw_trans_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %map_size.i = alloca i32, align 4
  %map_base.i = alloca i32, align 4
  %buf.i = alloca [32 x i8], align 1
  %wsize = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mw = getelementptr inbounds %struct.tool_mw_wrap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wsize) #8
  %4 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %wsize, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %5 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #8
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %addr, align 8, !annotation !214
  %7 = tail call i32 @llvm.umin.i32(i32 %size, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %7, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %7, i32 -1226833920) #12, !srcloc !216
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !217

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %7) #8
  %9 = call i32 @llvm.read_register.i32(metadata !202) #8
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !218
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %7) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %7, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %7, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !217

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %7, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %7
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.63, ptr noundef nonnull %addr, ptr noundef nonnull %wsize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tc = getelementptr inbounds %struct.tool_mw, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tc, align 8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 8
  %outmws.i = getelementptr inbounds %struct.tool_ctx, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %outmws.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %outmws.i, align 4
  %dbgfs_file.i = getelementptr %struct.tool_mw, ptr %19, i32 %17, i32 6
  %20 = ptrtoint ptr %dbgfs_file.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dbgfs_file.i, align 4
  call void @debugfs_remove(ptr noundef %21) #8
  %22 = getelementptr %struct.tool_mw, ptr %19, i32 %17, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %cmp.not.i = icmp eq ptr %24, null
  br i1 %cmp.not.i, label %if.end5.tool_free_peer_mw.exit_crit_edge, label %if.then.i31

if.end5.tool_free_peer_mw.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_free_peer_mw.exit

if.then.i31:                                      ; preds = %if.end5
  %25 = ptrtoint ptr %outmws.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %outmws.i, align 4
  %27 = getelementptr %struct.tool_mw, ptr %26, i32 %17, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void @iounmap(ptr noundef %29) #8
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %15, align 4
  %pidx.i = getelementptr %struct.tool_mw, ptr %19, i32 %17, i32 1
  %32 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pidx.i, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 8
  %peer_mw_clear_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %peer_mw_clear_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %peer_mw_clear_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then.i.i32, label %if.end.i.i34

if.then.i.i32:                                    ; preds = %if.then.i31
  %peer_mw_set_trans.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 13
  %38 = ptrtoint ptr %peer_mw_set_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %peer_mw_set_trans.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i32.tool_free_peer_mw.exit_crit_edge, label %if.end.i.i.i

if.then.i.i32.tool_free_peer_mw.exit_crit_edge:   ; preds = %if.then.i.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_free_peer_mw.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i32
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i33 = call i32 %39(ptr noundef %31, i32 noundef %33, i32 noundef %17, i64 noundef 0, i32 noundef 0) #8
  br label %tool_free_peer_mw.exit

if.end.i.i34:                                     ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = call i32 %37(ptr noundef %31, i32 noundef %33, i32 noundef %17) #8
  br label %tool_free_peer_mw.exit

tool_free_peer_mw.exit:                           ; preds = %if.end.i.i34, %if.end.i.i.i, %if.then.i.i32.tool_free_peer_mw.exit_crit_edge, %if.end5.tool_free_peer_mw.exit_crit_edge
  %pidx3.i = getelementptr %struct.tool_mw, ptr %19, i32 %17, i32 1
  %40 = call ptr @memset(ptr %22, i32 0, i32 16)
  %41 = ptrtoint ptr %pidx3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %pidx3.i, align 4
  %42 = ptrtoint ptr %dbgfs_file.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %dbgfs_file.i, align 4
  %43 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool6.not = icmp eq i32 %44, 0
  br i1 %tobool6.not, label %tool_free_peer_mw.exit.cleanup_crit_edge, label %if.then7

tool_free_peer_mw.exit.cleanup_crit_edge:         ; preds = %tool_free_peer_mw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %tool_free_peer_mw.exit
  %45 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tc, align 8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %3, align 8
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %addr, align 8
  %outmws.i35 = getelementptr inbounds %struct.tool_ctx, ptr %46, i32 0, i32 5
  %53 = ptrtoint ptr %outmws.i35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %outmws.i35, align 4
  %arrayidx.i = getelementptr %struct.tool_mw, ptr %54, i32 %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_size.i) #8
  %55 = ptrtoint ptr %map_size.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %map_size.i, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_base.i) #8
  %56 = ptrtoint ptr %map_base.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %map_base.i, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #8
  %57 = getelementptr %struct.tool_mw, ptr %54, i32 %50, i32 3
  %58 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %57, align 4
  %cmp.not.i36 = icmp eq ptr %60, null
  br i1 %cmp.not.i36, label %if.end.i, label %if.then7.tool_setup_peer_mw.exit_crit_edge

if.then7.tool_setup_peer_mw.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_peer_mw.exit

if.end.i:                                         ; preds = %if.then7
  %61 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %46, align 4
  %ops.i.i37 = getelementptr inbounds %struct.ntb_dev, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %ops.i.i37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i.i37, align 8
  %peer_mw_get_addr.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %peer_mw_get_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %peer_mw_get_addr.i.i, align 4
  %call.i.i38 = call i32 %66(ptr noundef %62, i32 noundef %50, ptr noundef nonnull %map_base.i, ptr noundef nonnull %map_size.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.tool_setup_peer_mw.exit.thread_crit_edge

if.end.i.tool_setup_peer_mw.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_peer_mw.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %67 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %46, align 4
  %ops.i47.i = getelementptr inbounds %struct.ntb_dev, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %ops.i47.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i47.i, align 8
  %peer_mw_set_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %peer_mw_set_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %peer_mw_set_trans.i.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i39, label %if.end2.i.if.end7.i_crit_edge, label %ntb_peer_mw_set_trans.exit.i

if.end2.i.if.end7.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

ntb_peer_mw_set_trans.exit.i:                     ; preds = %if.end2.i
  %call.i48.i = call i32 %72(ptr noundef %68, i32 noundef %48, i32 noundef %50, i64 noundef %52, i32 noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool5.not.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool5.not.i, label %ntb_peer_mw_set_trans.exit.i.if.end7.i_crit_edge, label %ntb_peer_mw_set_trans.exit.i.tool_setup_peer_mw.exit.thread_crit_edge

ntb_peer_mw_set_trans.exit.i.tool_setup_peer_mw.exit.thread_crit_edge: ; preds = %ntb_peer_mw_set_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_peer_mw.exit.thread

ntb_peer_mw_set_trans.exit.i.if.end7.i_crit_edge: ; preds = %ntb_peer_mw_set_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %ntb_peer_mw_set_trans.exit.i.if.end7.i_crit_edge, %if.end2.i.if.end7.i_crit_edge
  %73 = ptrtoint ptr %map_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %map_base.i, align 4
  %75 = ptrtoint ptr %map_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %map_size.i, align 4
  %call8.i = call ptr @ioremap_wc(i32 noundef %74, i32 noundef %76) #8
  %77 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call8.i, ptr %57, align 4
  %cmp9.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  %78 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %46, align 4
  %ops.i49.i = getelementptr inbounds %struct.ntb_dev, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %ops.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i49.i, align 8
  %peer_mw_clear_trans.i.i40 = getelementptr inbounds %struct.ntb_dev_ops, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %peer_mw_clear_trans.i.i40 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %peer_mw_clear_trans.i.i40, align 4
  %tobool.not.i50.i = icmp eq ptr %83, null
  br i1 %tobool.not.i50.i, label %if.then.i.i43, label %if.end.i51.i

if.then.i.i43:                                    ; preds = %if.then10.i
  %peer_mw_set_trans.i.i.i41 = getelementptr inbounds %struct.ntb_dev_ops, ptr %81, i32 0, i32 13
  %84 = ptrtoint ptr %peer_mw_set_trans.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %peer_mw_set_trans.i.i.i41, align 4
  %tobool.not.i.i.i42 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i.i42, label %if.then.i.i43.tool_setup_peer_mw.exit.thread_crit_edge, label %if.end.i.i.i45

if.then.i.i43.tool_setup_peer_mw.exit.thread_crit_edge: ; preds = %if.then.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %tool_setup_peer_mw.exit.thread

if.end.i.i.i45:                                   ; preds = %if.then.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i44 = call i32 %85(ptr noundef %79, i32 noundef %48, i32 noundef %50, i64 noundef 0, i32 noundef 0) #8
  br label %tool_setup_peer_mw.exit.thread

if.end.i51.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i46 = call i32 %83(ptr noundef %79, i32 noundef %48, i32 noundef %50) #8
  br label %tool_setup_peer_mw.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = getelementptr %struct.tool_mw, ptr %54, i32 %50, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %52, ptr %86, align 8
  %size.i = getelementptr %struct.tool_mw, ptr %54, i32 %50, i32 5
  %88 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %44, ptr %size.i, align 8
  %pidx12.i = getelementptr %struct.tool_mw, ptr %54, i32 %50, i32 1
  %89 = ptrtoint ptr %pidx12.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %48, ptr %pidx12.i, align 4
  %call13.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 32, ptr noundef nonnull @.str.67, i32 noundef %50) #8
  %peers.i = getelementptr inbounds %struct.tool_ctx, ptr %46, i32 0, i32 7
  %90 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %peers.i, align 4
  %dbgfs_dir.i = getelementptr %struct.tool_peer, ptr %91, i32 %48, i32 10
  %92 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dbgfs_dir.i, align 4
  %call16.i = call ptr @debugfs_create_file(ptr noundef nonnull %buf.i, i16 noundef zeroext 384, ptr noundef %93, ptr noundef %arrayidx.i, ptr noundef nonnull @tool_peer_mw_fops) #8
  %dbgfs_file.i47 = getelementptr %struct.tool_mw, ptr %54, i32 %50, i32 6
  %94 = ptrtoint ptr %dbgfs_file.i47 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call16.i, ptr %dbgfs_file.i47, align 4
  br label %tool_setup_peer_mw.exit

tool_setup_peer_mw.exit.thread:                   ; preds = %if.end.i51.i, %if.end.i.i.i45, %if.then.i.i43.tool_setup_peer_mw.exit.thread_crit_edge, %ntb_peer_mw_set_trans.exit.i.tool_setup_peer_mw.exit.thread_crit_edge, %if.end.i.tool_setup_peer_mw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.end.i51.i ], [ -14, %if.end.i.i.i45 ], [ -14, %if.then.i.i43.tool_setup_peer_mw.exit.thread_crit_edge ], [ %call.i48.i, %ntb_peer_mw_set_trans.exit.i.tool_setup_peer_mw.exit.thread_crit_edge ], [ %call.i.i38, %if.end.i.tool_setup_peer_mw.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_base.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_size.i) #8
  br label %cleanup

tool_setup_peer_mw.exit:                          ; preds = %if.end11.i, %if.then7.tool_setup_peer_mw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_base.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_size.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tool_setup_peer_mw.exit, %tool_setup_peer_mw.exit.thread, %tool_free_peer_mw.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %tool_setup_peer_mw.exit.thread ], [ %size, %tool_setup_peer_mw.exit ], [ %size, %tool_free_peer_mw.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wsize) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_mw_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offp, align 8
  %4 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size1 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size1, align 8
  %conv = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp2.not = icmp sge i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool.not, %cmp2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv6 = zext i32 %size to i64
  %sub = sub i64 %conv, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv6)
  %cmp9 = icmp slt i64 %sub, %conv6
  %conv15 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp9, i32 %conv15, i32 %size
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3264) #11
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end5.cleanup_crit_edge, label %if.end19

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %idx.ext = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %idx.ext
  tail call void @mmiocpy(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end19
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.err_free_crit_edge, label %if.then27.i.i, !prof !217

land.rhs16.i.i.err_free_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %err_free

if.then.i.i.i:                                    ; preds = %if.end19
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %spec.select, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.err_free_crit_edge, label %if.end.i.i55

if.then.i.i.i.err_free_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end.i.i55:                                     ; preds = %if.then.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %spec.select, i32 -1226833920) #12, !srcloc !221
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i55.err_free_crit_edge

if.end.i.i55.err_free_crit_edge:                  ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

copy_to_user.exit:                                ; preds = %if.end.i.i55
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %spec.select) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %ubuf, ptr noundef nonnull %call9.i, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %call.i12.i.i)
  %cmp21 = icmp eq i32 %spec.select, %call.i12.i.i
  br i1 %cmp21, label %copy_to_user.exit.err_free_crit_edge, label %if.end24

copy_to_user.exit.err_free_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end24:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub25 = sub i32 %spec.select, %call.i12.i.i
  %conv26 = zext i32 %sub25 to i64
  %add = add i64 %3, %conv26
  %12 = ptrtoint ptr %offp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %offp, align 8
  br label %err_free

err_free:                                         ; preds = %if.end24, %copy_to_user.exit.err_free_crit_edge, %if.end.i.i55.err_free_crit_edge, %if.then.i.i.i.err_free_crit_edge, %if.then27.i.i, %land.rhs16.i.i.err_free_crit_edge
  %ret.0 = phi i32 [ %sub25, %if.end24 ], [ -14, %copy_to_user.exit.err_free_crit_edge ], [ -14, %if.then.i.i.i.err_free_crit_edge ], [ -14, %if.end.i.i55.err_free_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_mw_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef %offp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offp, align 8
  %4 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size1 = getelementptr inbounds %struct.tool_mw, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size1, align 8
  %conv = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp2.not = icmp sge i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool.not, %cmp2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conv6 = zext i32 %size to i64
  %sub = sub i64 %conv, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv6)
  %cmp9 = icmp slt i64 %sub, %conv6
  %conv15 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp9, i32 %conv15, i32 %size
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3264) #11
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end5.cleanup_crit_edge, label %if.end8.i.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.err_free_crit_edge, label %if.then27.i.i, !prof !217

land.rhs16.i.i.err_free_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %err_free

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %spec.select, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.66, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i55_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i55_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i55

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %spec.select, i32 -1226833920) #12, !srcloc !216
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i55_crit_edge, !prof !217

land.lhs.true.i.i.if.end.i.i55_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i55

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %spec.select) #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !202) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !218
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %ubuf, i32 noundef %spec.select) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #8, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  br label %if.end.i.i55

if.end.i.i55:                                     ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i55_crit_edge, %if.then.i.i.i.if.end.i.i55_crit_edge
  %res.0.i.i = phi i32 [ %spec.select, %if.then.i.i.i.if.end.i.i55_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %spec.select, %land.lhs.true.i.i.if.end.i.i55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i55.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !217

if.end.i.i55.copy_from_user.exit_crit_edge:       ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %spec.select, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i55.copy_from_user.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %res.0.i.i)
  %cmp21 = icmp eq i32 %spec.select, %res.0.i.i
  br i1 %cmp21, label %copy_from_user.exit.err_free_crit_edge, label %if.end24

copy_from_user.exit.err_free_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end24:                                         ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub25 = sub i32 %spec.select, %res.0.i.i
  %conv26 = zext i32 %sub25 to i64
  %add = add i64 %3, %conv26
  %14 = ptrtoint ptr %offp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add, ptr %offp, align 8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %idx.ext = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %16, i32 %idx.ext
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %call9.i, i32 noundef %sub25) #8
  br label %err_free

err_free:                                         ; preds = %if.end24, %copy_from_user.exit.err_free_crit_edge, %if.then27.i.i, %land.rhs16.i.i.err_free_crit_edge
  %ret.0 = phi i32 [ %sub25, %if.end24 ], [ -14, %copy_from_user.exit.err_free_crit_edge ], [ -14, %land.rhs16.i.i.err_free_crit_edge ], [ -14, %if.then27.i.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_spad_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp) #3 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %tc = getelementptr inbounds %struct.tool_spad, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %peer_spad_read = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 37
  %9 = ptrtoint ptr %peer_spad_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer_spad_read, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %ntb_peer_spad_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_peer_spad_read.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pidx = getelementptr inbounds %struct.tool_spad, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pidx, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %call.i = tail call i32 %10(ptr noundef %6, i32 noundef %12, i32 noundef %14) #8
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.42, i32 noundef %call.i) #8
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %size, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %ntb_peer_spad_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %ntb_peer_spad_read.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_peer_spad_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !214
  %tc = getelementptr inbounds %struct.tool_spad, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ops = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %peer_spad_write = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 38
  %9 = ptrtoint ptr %peer_spad_write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer_spad_write, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tool_peer_spad_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tool_peer_spad_write, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !213

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tool_peer_spad_write.__UNIQUE_ID_ddebug255, ptr noundef %14, ptr noundef nonnull @.str.44) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 8
  %peer_spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %20, i32 0, i32 38
  %21 = ptrtoint ptr %peer_spad_write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %peer_spad_write.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %ntb_peer_spad_write.exit

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_peer_spad_write.exit:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %pidx = getelementptr inbounds %struct.tool_spad, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pidx, align 4
  %call.i25 = call i32 %22(ptr noundef %18, i32 noundef %28, i32 noundef %26, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool15.not = icmp eq i32 %call.i25, 0
  %spec.select = select i1 %tobool15.not, i32 %size, i32 %call.i25
  br label %cleanup

cleanup:                                          ; preds = %ntb_peer_spad_write.exit, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %if.end11.cleanup_crit_edge ], [ %spec.select, %ntb_peer_spad_write.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tool_outmsg_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %size, ptr nocapture noundef readnone %offp) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !214
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %size, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tc = getelementptr inbounds %struct.tool_msg, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 8
  %peer_msg_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %peer_msg_write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer_msg_write.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %ntb_peer_msg_write.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_peer_msg_write.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %pidx = getelementptr inbounds %struct.tool_msg, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pidx, align 4
  %call.i10 = call i32 %10(ptr noundef %6, i32 noundef %16, i32 noundef %14, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool2.not = icmp eq i32 %call.i10, 0
  %spec.select = select i1 %tobool2.not, i32 %size, i32 %call.i10
  br label %cleanup

cleanup:                                          ; preds = %ntb_peer_msg_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %ntb_peer_msg_write.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_clear_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !195, !197, !199, !200}
!llvm.named.register.sp = !{!202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__UNIQUE_ID_file236, !1, !"__UNIQUE_ID_file236", i1 false, i1 false}
!1 = !{!"../drivers/ntb/test/ntb_tool.c", i32 194, i32 1}
!2 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version238, !4, !"__UNIQUE_ID_version238", i1 false, i1 false}
!4 = !{!"../drivers/ntb/test/ntb_tool.c", i32 195, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author239, !10, !"__UNIQUE_ID_author239", i1 false, i1 false}
!10 = !{!"../drivers/ntb/test/ntb_tool.c", i32 196, i32 1}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../drivers/ntb/test/ntb_tool.c", i32 197, i32 1}
!13 = !{ptr @__initcall__kmod_ntb_tool__258_1685_tool_init6, !14, !"__initcall__kmod_ntb_tool__258_1685_tool_init6", i1 false, i1 false}
!14 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1685, i32 1}
!15 = !{ptr @__exitcall_tool_exit, !16, !"__exitcall_tool_exit", i1 false, i1 false}
!16 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1692, i32 1}
!17 = !{ptr @tool_dbgfs_topdir, !18, !"tool_dbgfs_topdir", i1 false, i1 false}
!18 = !{!"../drivers/ntb/test/ntb_tool.c", i32 282, i32 23}
!19 = !{ptr @tool_client, !20, !"tool_client", i1 false, i1 false}
!20 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1665, i32 26}
!21 = !{ptr @tool_create_data.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1450, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tool_create_data.__key.4, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1451, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tool_create_data.__key.6, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1452, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1455, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tool_create_data.__UNIQUE_ID_ddebug256, !31, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1458, i32 3}
!37 = !{ptr @tool_create_data.__UNIQUE_ID_ddebug257, !36, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!38 = !{ptr @tool_ops, !39, !"tool_ops", i1 false, i1 false}
!39 = !{!"../drivers/ntb/test/ntb_tool.c", i32 330, i32 33}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ntb/test/ntb_tool.c", i32 298, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tool_link_event.__UNIQUE_ID_ddebug241, !41, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!44 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ntb/test/ntb_tool.c", i32 312, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tool_db_event.__UNIQUE_ID_ddebug242, !47, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ntb/test/ntb_tool.c", i32 325, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tool_msg_event.__UNIQUE_ID_ddebug243, !51, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1497, i32 22}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1500, i32 22}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1503, i32 22}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1506, i32 22}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1509, i32 22}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1512, i32 22}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1515, i32 22}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1518, i32 22}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1523, i32 31}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1532, i32 31}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1537, i32 23}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1540, i32 23}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1543, i32 23}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1546, i32 23}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1549, i32 23}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1554, i32 30}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1566, i32 23}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1571, i32 31}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1579, i32 31}
!92 = !{ptr @tool_port_fops, !93, !"tool_port_fops", i1 false, i1 false}
!93 = !{!"../drivers/ntb/test/ntb_tool.c", i32 422, i32 8}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ntb/test/ntb_tool.c", i32 417, i32 36}
!96 = !{ptr @tool_link_fops, !97, !"tool_link_fops", i1 false, i1 false}
!97 = !{!"../drivers/ntb/test/ntb_tool.c", i32 489, i32 8}
!98 = !{ptr @tool_db_fops, !99, !"tool_db_fops", i1 false, i1 false}
!99 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1045, i32 8}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ntb/test/ntb_tool.c", i32 354, i32 33}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ntb/test/ntb_tool.c", i32 382, i32 18}
!104 = !{ptr @tool_db_valid_mask_fops, !105, !"tool_db_valid_mask_fops", i1 false, i1 false}
!105 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1057, i32 8}
!106 = !{ptr @tool_db_mask_fops, !107, !"tool_db_mask_fops", i1 false, i1 false}
!107 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1078, i32 8}
!108 = !{ptr @tool_db_event_fops, !109, !"tool_db_event_fops", i1 false, i1 false}
!109 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1145, i32 8}
!110 = !{ptr @tool_peer_db_fops, !111, !"tool_peer_db_fops", i1 false, i1 false}
!111 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1099, i32 8}
!112 = !{ptr @tool_peer_db_mask_fops, !113, !"tool_peer_db_mask_fops", i1 false, i1 false}
!113 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1123, i32 8}
!114 = !{ptr @tool_spad_fops, !115, !"tool_spad_fops", i1 false, i1 false}
!115 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1191, i32 8}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1164, i32 36}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1178, i32 3}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @tool_spad_write.__UNIQUE_ID_ddebug254, !119, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!122 = !{ptr @tool_inmsg_fops, !123, !"tool_inmsg_fops", i1 false, i1 false}
!123 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1293, i32 8}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1288, i32 36}
!126 = !{ptr @tool_msg_sts_fops, !127, !"tool_msg_sts_fops", i1 false, i1 false}
!127 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1335, i32 8}
!128 = !{ptr @tool_msg_inbits_fops, !129, !"tool_msg_inbits_fops", i1 false, i1 false}
!129 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1347, i32 8}
!130 = !{ptr @tool_msg_outbits_fops, !131, !"tool_msg_outbits_fops", i1 false, i1 false}
!131 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1359, i32 8}
!132 = !{ptr @tool_msg_mask_fops, !133, !"tool_msg_mask_fops", i1 false, i1 false}
!133 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1373, i32 8}
!134 = !{ptr @tool_msg_event_fops, !135, !"tool_msg_event_fops", i1 false, i1 false}
!135 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1396, i32 8}
!136 = !{ptr @tool_peer_port_fops, !137, !"tool_peer_port_fops", i1 false, i1 false}
!137 = !{!"../drivers/ntb/test/ntb_tool.c", i32 440, i32 8}
!138 = !{ptr @tool_peer_link_fops, !139, !"tool_peer_link_fops", i1 false, i1 false}
!139 = !{!"../drivers/ntb/test/ntb_tool.c", i32 510, i32 8}
!140 = !{ptr @tool_peer_link_event_fops, !141, !"tool_peer_link_event_fops", i1 false, i1 false}
!141 = !{!"../drivers/ntb/test/ntb_tool.c", i32 537, i32 8}
!142 = !{ptr @tool_mw_trans_fops, !143, !"tool_mw_trans_fops", i1 false, i1 false}
!143 = !{!"../drivers/ntb/test/ntb_tool.c", i32 725, i32 8}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/ntb/test/ntb_tool.c", i32 665, i32 5}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/ntb/test/ntb_tool.c", i32 669, i32 5}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/ntb/test/ntb_tool.c", i32 674, i32 5}
!150 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ntb/test/ntb_tool.c", i32 677, i32 5}
!152 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/ntb/test/ntb_tool.c", i32 681, i32 5}
!154 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/ntb/test/ntb_tool.c", i32 685, i32 5}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/ntb/test/ntb_tool.c", i32 689, i32 5}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/ntb/test/ntb_tool.c", i32 693, i32 5}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/ntb/test/ntb_tool.c", i32 607, i32 29}
!162 = !{ptr @tool_mw_fops, !163, !"tool_mw_fops", i1 false, i1 false}
!163 = !{!"../drivers/ntb/test/ntb_tool.c", i32 570, i32 8}
!164 = !{ptr @tool_peer_mw_trans_fops, !165, !"tool_peer_mw_trans_fops", i1 false, i1 false}
!165 = !{!"../drivers/ntb/test/ntb_tool.c", i32 959, i32 8}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ntb/test/ntb_tool.c", i32 894, i32 5}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/ntb/test/ntb_tool.c", i32 898, i32 4}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/ntb/test/ntb_tool.c", i32 903, i32 6}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ntb/test/ntb_tool.c", i32 907, i32 5}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/ntb/test/ntb_tool.c", i32 910, i32 5}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ntb/test/ntb_tool.c", i32 913, i32 5}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/ntb/test/ntb_tool.c", i32 916, i32 5}
!180 = !{ptr @.str.62, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/ntb/test/ntb_tool.c", i32 919, i32 5}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/ntb/test/ntb_tool.c", i32 944, i32 18}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!186 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/ntb/test/ntb_tool.c", i32 839, i32 29}
!193 = !{ptr @tool_peer_mw_fops, !194, !"tool_peer_mw_fops", i1 false, i1 false}
!194 = !{!"../drivers/ntb/test/ntb_tool.c", i32 805, i32 8}
!195 = !{ptr @tool_peer_spad_fops, !196, !"tool_peer_spad_fops", i1 false, i1 false}
!196 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1232, i32 8}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1219, i32 3}
!199 = !{ptr @tool_peer_spad_write.__UNIQUE_ID_ddebug255, !198, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!200 = !{ptr @tool_outmsg_fops, !201, !"tool_outmsg_fops", i1 false, i1 false}
!201 = !{!"../drivers/ntb/test/ntb_tool.c", i32 1314, i32 8}
!202 = !{!"sp"}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{i64 2148733083, i64 2148733088, i64 2148733101, i64 2148733145, i64 2148733179, i64 2148733200}
!214 = !{!"auto-init"}
!215 = !{i8 0, i8 2}
!216 = !{i64 2152457681, i64 2152457706}
!217 = !{!"branch_weights", i32 2000, i32 1}
!218 = !{i64 4953236}
!219 = !{i64 4953433}
!220 = !{i64 2152438666}
!221 = !{i64 2152458362, i64 2152458387}
