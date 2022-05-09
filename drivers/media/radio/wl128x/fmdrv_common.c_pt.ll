; ModuleID = '/llk/IR_all_yes/drivers/media/radio/wl128x/fmdrv_common.c_pt.bc'
source_filename = "../drivers/media/radio/wl128x/fmdrv_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.region_info = type { i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st_proto_s = type { i32, ptr, ptr, ptr, ptr, ptr, i8, i16, i8, i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fmdev = type { ptr, %struct.v4l2_device, ptr, i16, %struct.spinlock, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, i32, %struct.atomic_t, ptr, %struct.completion, i8, ptr, %struct.fm_irq, i8, %struct.fm_rx, %struct.fmtx_data, %struct.v4l2_ctrl_handler, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.117, i32, %struct.spinlock }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%union.anon.139 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.fm_irq = type { i8, i16, i16, %struct.timer_list, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fm_rx = type { %struct.region_info, i32, i8, i8, i8, i16, i16, i8, i32, i8, i8, %struct.tuned_station_info, %struct.fm_rds }
%struct.tuned_station_info = type { i16, [25 x i32], i8, i8 }
%struct.fm_rds = type { i8, i8, %struct.wait_queue_head, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fmtx_data = type { i8, i8, i8, i8, i16, i32, i32, %struct.tx_rds }
%struct.tx_rds = type { i8, [25 x i8], i8, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.119, %union.anon.122, %union.anon.123, [48 x i8], %union.anon.124, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.126, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr, %union.anon.121 }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { i64 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, ptr }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.128, i32, i32, i32, i16, i16, %union.anon.130, i32, %union.anon.131, %union.anon.132, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.128 = type { i32 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i16 }
%struct.fm_event_msg_hdr = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.fm_cmd_msg_hdr = type { i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.bts_action = type { i16, i16, [0 x i8] }
%struct.fm_rdsdata_format = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.142 }
%struct.anon.142 = type { i16, [2 x i8], [2 x i8], [2 x i8] }

@__param_str_default_radio_region = internal constant [28 x i8] c"fm_drv.default_radio_region\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@default_radio_region = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_default_radio_region = internal constant %struct.kernel_param { ptr @__param_str_default_radio_region, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @default_radio_region } }, section "__param", align 4
@__UNIQUE_ID_default_radio_regiontype321 = internal constant [42 x i8] c"fm_drv.parmtype=default_radio_region:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_default_radio_region322 = internal constant [62 x i8] c"fm_drv.parm=default_radio_region:Region: 0=Europe/US, 1=Japan\00", section ".modinfo", align 1
@__param_str_default_rds_buf = internal constant [23 x i8] c"fm_drv.default_rds_buf\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@default_rds_buf = internal global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@__param_default_rds_buf = internal constant %struct.kernel_param { ptr @__param_str_default_rds_buf, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @default_rds_buf } }, section "__param", align 4
@__UNIQUE_ID_default_rds_buftype323 = internal constant [37 x i8] c"fm_drv.parmtype=default_rds_buf:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_rds_buf324 = internal constant [47 x i8] c"fm_drv.parm=default_rds_buf:RDS buffer entries\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [16 x i8] c"fm_drv.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype325 = internal constant [29 x i8] c"fm_drv.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr326 = internal constant [30 x i8] c"fm_drv.parm=radio_nr:Radio Nr\00", section ".modinfo", align 1
@region_configs = internal constant { [2 x %struct.region_info], [32 x i8] } { [2 x %struct.region_info] [%struct.region_info { i32 200, i32 87500, i32 108000, i8 0 }, %struct.region_info { i32 200, i32 76000, i32 90000, i8 1 }], [32 x i8] zeroinitializer }, align 32
@fmc_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013fmdrv: Timeout(%d sec),didn't get regcompletion signal from RX tasklet\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fmc_send_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/radio/wl128x/fmdrv_common.c\00", [54 x i8] zeroinitializer }, align 32
@fmc_send_cmd._entry_ptr = internal global ptr @fmc_send_cmd._entry, section ".printk_index", align 4
@fmc_send_cmd._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013fmdrv: Response SKB is missing\0A\00", [62 x i8] zeroinitializer }, align 32
@fmc_send_cmd._entry_ptr.5 = internal global ptr @fmc_send_cmd._entry.3, section ".printk_index", align 4
@fmc_send_cmd._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013fmdrv: Received event pkt status(%d) is not zero\0A\00", [44 x i8] zeroinitializer }, align 32
@fmc_send_cmd._entry_ptr.8 = internal global ptr @fmc_send_cmd._entry.6, section ".printk_index", align 4
@fmc_get_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013fmdrv: RX frequency is not set\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fmc_get_freq\00", [19 x i8] zeroinitializer }, align 32
@fmc_get_freq._entry_ptr = internal global ptr @fmc_get_freq._entry, section ".printk_index", align 4
@fmc_get_freq._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013fmdrv: Invalid memory\0A\00", [39 x i8] zeroinitializer }, align 32
@fmc_get_freq._entry_ptr.13 = internal global ptr @fmc_get_freq._entry.11, section ".printk_index", align 4
@fmc_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013fmdrv: Invalid FM mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fmc_set_mode\00", [19 x i8] zeroinitializer }, align 32
@fmc_set_mode._entry_ptr = internal global ptr @fmc_set_mode._entry, section ".printk_index", align 4
@fmc_set_mode._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013fmdrv: Failed to set OFF mode\0A\00", [63 x i8] zeroinitializer }, align 32
@fmc_set_mode._entry_ptr.18 = internal global ptr @fmc_set_mode._entry.16, section ".printk_index", align 4
@fmc_set_mode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fmc_set_mode._entry_ptr.20 = internal global ptr @fmc_set_mode._entry.19, section ".printk_index", align 4
@fmc_set_mode._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013fmdrv: Failed to load firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@fmc_set_mode._entry_ptr.23 = internal global ptr @fmc_set_mode._entry.21, section ".printk_index", align 4
@fmc_set_mode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.2, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fmdrv: Failed to load default values\0A\00", [56 x i8] zeroinitializer }, align 32
@fmc_set_mode._entry_ptr.26 = internal global ptr @fmc_set_mode._entry.24, section ".printk_index", align 4
@fmc_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013fmdrv: FM core is not ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fmc_get_mode\00", [19 x i8] zeroinitializer }, align 32
@fmc_get_mode._entry_ptr = internal global ptr @fmc_get_mode._entry, section ".printk_index", align 4
@fmc_get_mode._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.28, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fmc_get_mode._entry_ptr.30 = internal global ptr @fmc_get_mode._entry.29, section ".printk_index", align 4
@fmc_prepare.fm_st_proto = internal global { %struct.st_proto_s, [32 x i8] } zeroinitializer, align 32
@wait_for_fmdrv_reg_comp = internal global { %struct.completion, [40 x i8] } zeroinitializer, align 32
@fmc_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013fmdrv: Timeout(%d sec), didn't get reg completion signal from ST\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fmc_prepare\00", [20 x i8] zeroinitializer }, align 32
@fmc_prepare._entry_ptr = internal global ptr @fmc_prepare._entry, section ".printk_index", align 4
@fmc_prepare._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013fmdrv: ST reg comp CB called with error status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@fmc_prepare._entry_ptr.35 = internal global ptr @fmc_prepare._entry.33, section ".printk_index", align 4
@fmc_prepare._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013fmdrv: st_register failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@fmc_prepare._entry_ptr.38 = internal global ptr @fmc_prepare._entry.36, section ".printk_index", align 4
@g_st_write = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fmc_prepare._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013fmdrv: Failed to get ST write func pointer\0A\00", [50 x i8] zeroinitializer }, align 32
@fmc_prepare._entry_ptr.41 = internal global ptr @fmc_prepare._entry.39, section ".printk_index", align 4
@fmc_prepare._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013fmdrv: st_unregister failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@fmc_prepare._entry_ptr.44 = internal global ptr @fmc_prepare._entry.42, section ".printk_index", align 4
@fmc_prepare.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&fmdev->rds_buff_lock\00", [42 x i8] zeroinitializer }, align 32
@fmc_prepare.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&fmdev->resp_skb_lock\00", [42 x i8] zeroinitializer }, align 32
@fmc_prepare.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&fmdev->irq_info.timer)\00", [39 x i8] zeroinitializer }, align 32
@fmc_prepare.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&fmdev->rx.rds.read_queue\00", [38 x i8] zeroinitializer }, align 32
@fmc_release.fm_st_proto = internal global { %struct.st_proto_s, [32 x i8] } zeroinitializer, align 32
@fmc_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013fmdrv: Failed to de-register FM from ST %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fmc_release\00", [20 x i8] zeroinitializer }, align 32
@fmc_release._entry_ptr = internal global ptr @fmc_release._entry, section ".printk_index", align 4
@__initcall__kmod_fm_drv__329_1668_fm_drv_init6 = internal global ptr @fm_drv_init, section ".initcall6.init", align 4
@__exitcall_fm_drv_exit = internal global ptr @fm_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [57 x i8] c"fm_drv.author=Manjunatha Halli <manjunatha_halli@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [63 x i8] c"fm_drv.description=FM Driver for TI's Connectivity chip. 0.1.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version332 = internal constant [21 x i8] c"fm_drv.version=0.1.1\00", section ".modinfo", align 1
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fm_drv\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.55, ptr @.str.56 }, section "__modver", align 4
@__UNIQUE_ID_file333 = internal constant [46 x i8] c"fm_drv.file=drivers/media/radio/wl128x/fm_drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [19 x i8] c"fm_drv.license=GPL\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@fm_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013fmdrv: Invalid fm opcode - %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fm_send_cmd\00", [20 x i8] zeroinitializer }, align 32
@fm_send_cmd._entry_ptr = internal global ptr @fm_send_cmd._entry, section ".printk_index", align 4
@fm_send_cmd._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013fmdrv: Payload data is NULL during fw download\0A\00", [46 x i8] zeroinitializer }, align 32
@fm_send_cmd._entry_ptr.62 = internal global ptr @fm_send_cmd._entry.60, section ".printk_index", align 4
@fm_send_cmd._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fmdrv: No memory to create new SKB\0A\00", [58 x i8] zeroinitializer }, align 32
@fm_send_cmd._entry_ptr.65 = internal global ptr @fm_send_cmd._entry.63, section ".printk_index", align 4
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fm_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.69, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fm_power_down\00", [18 x i8] zeroinitializer }, align 32
@fm_power_down._entry_ptr = internal global ptr @fm_power_down._entry, section ".printk_index", align 4
@fm_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fmdrv: Invalid firmware download option\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fm_power_up\00", [20 x i8] zeroinitializer }, align 32
@fm_power_up._entry_ptr = internal global ptr @fm_power_up._entry, section ".printk_index", align 4
@fm_power_up._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fmdrv: Unable to prepare FM Common\0A\00", [58 x i8] zeroinitializer }, align 32
@fm_power_up._entry_ptr.74 = internal global ptr @fm_power_up._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s_%x.%d.bts\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmc_ch8\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fm_rx_ch8\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fm_tx_ch8\00", [22 x i8] zeroinitializer }, align 32
@fm_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013fmdrv: Unable to read firmware(%s) content\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fm_download_firmware\00", [43 x i8] zeroinitializer }, align 32
@fm_download_firmware._entry_ptr = internal global ptr @fm_download_firmware._entry, section ".printk_index", align 4
@fm_download_firmware._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fmdrv: %s not a legal TI firmware file\0A\00", [54 x i8] zeroinitializer }, align 32
@fm_download_firmware._entry_ptr.83 = internal global ptr @fm_download_firmware._entry.81, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fm_st_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013fmdrv: Invalid SKB received from ST\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fm_st_receive\00", [18 x i8] zeroinitializer }, align 32
@fm_st_receive._entry_ptr = internal global ptr @fm_st_receive._entry, section ".printk_index", align 4
@fm_st_receive._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013fmdrv: Received SKB (%p) is not FM Channel 8 pkt\0A\00", [44 x i8] zeroinitializer }, align 32
@fm_st_receive._entry_ptr.88 = internal global ptr @fm_st_receive._entry.86, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@send_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013fmdrv: TX timeout occurred\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_tasklet\00", [19 x i8] zeroinitializer }, align 32
@send_tasklet._entry_ptr = internal global ptr @send_tasklet._entry, section ".printk_index", align 4
@send_tasklet._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013fmdrv: Response completion handler is not NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@send_tasklet._entry_ptr.94 = internal global ptr @send_tasklet._entry.92, section ".printk_index", align 4
@send_tasklet._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fmdrv: TX tasklet failed to send skb(%p)\0A\00", [52 x i8] zeroinitializer }, align 32
@send_tasklet._entry_ptr.97 = internal global ptr @send_tasklet._entry.95, section ".printk_index", align 4
@recv_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013fmdrv: skb(%p) has only %d bytes, at least need %zu bytes to decode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"recv_tasklet\00", [19 x i8] zeroinitializer }, align 32
@recv_tasklet._entry_ptr = internal global ptr @recv_tasklet._entry, section ".printk_index", align 4
@recv_tasklet._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fmdrv: Inval stage resetting to zero\0A\00", [56 x i8] zeroinitializer }, align 32
@recv_tasklet._entry_ptr.102 = internal global ptr @recv_tasklet._entry.100, section ".printk_index", align 4
@recv_tasklet._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fmdrv: Response SKB ptr not NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@recv_tasklet._entry_ptr.105 = internal global ptr @recv_tasklet._entry.103, section ".printk_index", align 4
@recv_tasklet._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fmdrv: Nobody claimed SKB(%p),purging\0A\00", [55 x i8] zeroinitializer }, align 32
@recv_tasklet._entry_ptr.108 = internal global ptr @recv_tasklet._entry.106, section ".printk_index", align 4
@int_timeout_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013fmdrv: Recovery action failed duringirq processing, max retry reached\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"int_timeout_handler\00", [44 x i8] zeroinitializer }, align 32
@int_timeout_handler._entry_ptr = internal global ptr @int_timeout_handler._entry, section ".printk_index", align 4
@fm_drv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013fmdrv: Can't allocate operation structure memory\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fm_drv_init\00", [20 x i8] zeroinitializer }, align 32
@fm_drv_init._entry_ptr = internal global ptr @fm_drv_init._entry, section ".printk_index", align 4
@fm_drv_init._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 1634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fmdrv: Can't allocate rds ring buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@fm_drv_init._entry_ptr.115 = internal global ptr @fm_drv_init._entry.113, section ".printk_index", align 4
@int_handler_table = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @fm_irq_send_flag_getcmd, ptr @fm_irq_handle_flag_getcmd_resp, ptr @fm_irq_handle_hw_malfunction, ptr @fm_irq_handle_rds_start, ptr @fm_irq_send_rdsdata_getcmd, ptr @fm_irq_handle_rdsdata_getcmd_resp, ptr @fm_irq_handle_rds_finish, ptr @fm_irq_handle_tune_op_ended, ptr @fm_irq_handle_power_enb, ptr @fm_irq_handle_low_rssi_start, ptr @fm_irq_afjump_set_pi, ptr @fm_irq_handle_set_pi_resp, ptr @fm_irq_afjump_set_pimask, ptr @fm_irq_handle_set_pimask_resp, ptr @fm_irq_afjump_setfreq, ptr @fm_irq_handle_setfreq_resp, ptr @fm_irq_afjump_enableint, ptr @fm_irq_afjump_enableint_resp, ptr @fm_irq_start_afjump, ptr @fm_irq_handle_start_afjump_resp, ptr @fm_irq_afjump_rd_freq, ptr @fm_irq_afjump_rd_freq_resp, ptr @fm_irq_handle_low_rssi_finish, ptr @fm_irq_send_intmsk_cmd, ptr @fm_irq_handle_intmsk_cmd_resp], [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_cmdresp_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013fmdrv: irq: opcode %x response status is not zero Initiating irq recovery process\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_cmdresp_status\00", [43 x i8] zeroinitializer }, align 32
@check_cmdresp_status._entry_ptr = internal global ptr @check_cmdresp_status._entry, section ".printk_index", align 4
@fm_irq_handle_hw_malfunction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013fmdrv: irq: HW MAL int received - do nothing\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fm_irq_handle_hw_malfunction\00", [35 x i8] zeroinitializer }, align 32
@fm_irq_handle_hw_malfunction._entry_ptr = internal global ptr @fm_irq_handle_hw_malfunction._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"default_radio_region\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 53, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"default_rds_buf\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 58, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 63, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"region_configs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 35, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 464, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 469, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 479, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1125, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1129, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1376, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1388, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1399, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1406, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1417, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1427, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1431, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1482, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant [24 x i8] c"wait_for_fmdrv_reg_comp\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 168, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1511, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1516, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1523, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [11 x i8] c"g_st_write\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 167, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1530, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1533, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1537, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1538, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1552, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1568, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [12 x i8] c"fm_st_proto\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1582, i32 27 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1607, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1674, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 87, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 387, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 391, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 402, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 174, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1211, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1315, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1325, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1348, i32 19 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1348, i32 35 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1357, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1357, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1244, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1254, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1447, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1452, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 1984, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 346, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 359, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 368, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 263, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 279, i32 6 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 307, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 319, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 555, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1628, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 1634, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant [18 x i8] c"int_handler_table\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 139, i32 30 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 515, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.497 = private constant [45 x i8] c"../drivers/media/radio/wl128x/fmdrv_common.c\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 597, i32 3 }
@llvm.compiler.used = appending global [182 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_default_radio_region322, ptr @__UNIQUE_ID_default_radio_regiontype321, ptr @__UNIQUE_ID_default_rds_buf324, ptr @__UNIQUE_ID_default_rds_buftype323, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__UNIQUE_ID_radio_nr326, ptr @__UNIQUE_ID_radio_nrtype325, ptr @__UNIQUE_ID_version332, ptr @__exitcall_fm_drv_exit, ptr @__initcall__kmod_fm_drv__329_1668_fm_drv_init6, ptr @__modver_attr, ptr @__param_default_radio_region, ptr @__param_default_rds_buf, ptr @__param_radio_nr, ptr @check_cmdresp_status._entry, ptr @check_cmdresp_status._entry_ptr, ptr @fm_download_firmware._entry, ptr @fm_download_firmware._entry.81, ptr @fm_download_firmware._entry_ptr, ptr @fm_download_firmware._entry_ptr.83, ptr @fm_drv_exit, ptr @fm_drv_init._entry, ptr @fm_drv_init._entry.113, ptr @fm_drv_init._entry_ptr, ptr @fm_drv_init._entry_ptr.115, ptr @fm_irq_handle_hw_malfunction._entry, ptr @fm_irq_handle_hw_malfunction._entry_ptr, ptr @fm_power_down._entry, ptr @fm_power_down._entry_ptr, ptr @fm_power_up._entry, ptr @fm_power_up._entry.72, ptr @fm_power_up._entry_ptr, ptr @fm_power_up._entry_ptr.74, ptr @fm_send_cmd._entry, ptr @fm_send_cmd._entry.60, ptr @fm_send_cmd._entry.63, ptr @fm_send_cmd._entry_ptr, ptr @fm_send_cmd._entry_ptr.62, ptr @fm_send_cmd._entry_ptr.65, ptr @fm_st_receive._entry, ptr @fm_st_receive._entry.86, ptr @fm_st_receive._entry_ptr, ptr @fm_st_receive._entry_ptr.88, ptr @fmc_get_freq._entry, ptr @fmc_get_freq._entry.11, ptr @fmc_get_freq._entry_ptr, ptr @fmc_get_freq._entry_ptr.13, ptr @fmc_get_mode._entry, ptr @fmc_get_mode._entry.29, ptr @fmc_get_mode._entry_ptr, ptr @fmc_get_mode._entry_ptr.30, ptr @fmc_prepare._entry, ptr @fmc_prepare._entry.33, ptr @fmc_prepare._entry.36, ptr @fmc_prepare._entry.39, ptr @fmc_prepare._entry.42, ptr @fmc_prepare._entry_ptr, ptr @fmc_prepare._entry_ptr.35, ptr @fmc_prepare._entry_ptr.38, ptr @fmc_prepare._entry_ptr.41, ptr @fmc_prepare._entry_ptr.44, ptr @fmc_release._entry, ptr @fmc_release._entry_ptr, ptr @fmc_send_cmd._entry, ptr @fmc_send_cmd._entry.3, ptr @fmc_send_cmd._entry.6, ptr @fmc_send_cmd._entry_ptr, ptr @fmc_send_cmd._entry_ptr.5, ptr @fmc_send_cmd._entry_ptr.8, ptr @fmc_set_mode._entry, ptr @fmc_set_mode._entry.16, ptr @fmc_set_mode._entry.19, ptr @fmc_set_mode._entry.21, ptr @fmc_set_mode._entry.24, ptr @fmc_set_mode._entry_ptr, ptr @fmc_set_mode._entry_ptr.18, ptr @fmc_set_mode._entry_ptr.20, ptr @fmc_set_mode._entry_ptr.23, ptr @fmc_set_mode._entry_ptr.26, ptr @int_timeout_handler._entry, ptr @int_timeout_handler._entry_ptr, ptr @recv_tasklet._entry, ptr @recv_tasklet._entry.100, ptr @recv_tasklet._entry.103, ptr @recv_tasklet._entry.106, ptr @recv_tasklet._entry_ptr, ptr @recv_tasklet._entry_ptr.102, ptr @recv_tasklet._entry_ptr.105, ptr @recv_tasklet._entry_ptr.108, ptr @send_tasklet._entry, ptr @send_tasklet._entry.92, ptr @send_tasklet._entry.95, ptr @send_tasklet._entry_ptr, ptr @send_tasklet._entry_ptr.94, ptr @send_tasklet._entry_ptr.97, ptr @default_radio_region, ptr @default_rds_buf, ptr @radio_nr, ptr @region_configs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @fmc_prepare.fm_st_proto, ptr @wait_for_fmdrv_reg_comp, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @g_st_write, ptr @.str.40, ptr @.str.43, ptr @fmc_prepare.__key, ptr @.str.45, ptr @fmc_prepare.__key.46, ptr @.str.47, ptr @fmc_prepare.__key.48, ptr @.str.49, ptr @fmc_prepare.__key.50, ptr @.str.51, ptr @fmc_release.fm_st_proto, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @init_completion.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @skb_queue_head_init.__key, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @int_handler_table, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_radio_region to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_rds_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @region_configs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_send_cmd._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_send_cmd._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_get_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_get_freq._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_set_mode._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_set_mode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_set_mode._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_set_mode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_get_mode._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare.fm_st_proto to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_fmdrv_reg_comp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_st_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_prepare.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_release.fm_st_proto to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_send_cmd._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_send_cmd._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_power_up._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_download_firmware._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_st_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_st_receive._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tasklet._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tasklet._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_tasklet._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_tasklet._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_tasklet._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_timeout_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_drv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_drv_init._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_handler_table to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_cmdresp_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_irq_handle_hw_malfunction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fmc_update_region_info(ptr nocapture noundef writeonly %fmdev, i8 noundef zeroext %region_to_set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20
  %idxprom = zext i8 %region_to_set to i32
  %arrayidx = getelementptr [2 x %struct.region_info], ptr @region_configs, i32 0, i32 %idxprom
  %0 = call ptr @memcpy(ptr %rx, ptr %arrayidx, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext %fm_op, i16 noundef zeroext %type, ptr noundef %payload, i32 noundef %payload_len, ptr noundef writeonly %response, ptr noundef writeonly %response_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maintask_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15
  %0 = ptrtoint ptr %maintask_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %maintask_comp, align 4
  %wait.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @init_completion.__key) #10
  %call = tail call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext %fm_op, i16 noundef zeroext %type, ptr noundef %payload, i32 noundef %payload_len, ptr noundef %maintask_comp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %maintask_comp, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @jiffies_to_msecs(i32 noundef 500) #10
  %div = udiv i32 %call6, 1000
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %div) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %resp_skb = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %1 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resp_skb, align 4
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %do.end13, label %do.body18

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

do.body18:                                        ; preds = %if.end8
  %resp_skb_lock = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock) #10
  %3 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resp_skb, align 4
  store ptr null, ptr %resp_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock, i32 noundef %call21) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %status = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp30.not = icmp eq i8 %8, 0
  br i1 %cmp30.not, label %if.end40, label %do.end35

do.end35:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %conv29 = zext i8 %8 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv29) #13
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  br label %cleanup

if.end40:                                         ; preds = %do.body18
  %cmp41.not = icmp eq ptr %response, null
  %cmp43.not = icmp eq ptr %response_len, null
  %or.cond = or i1 %cmp41.not, %cmp43.not
  br i1 %or.cond, label %if.end40.if.else_crit_edge, label %land.lhs.true45

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true45:                                  ; preds = %if.end40
  %dlen = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool47.not = icmp eq i8 %10, 0
  %conv46 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv46, i32 %payload_len)
  %cmp51.not = icmp ugt i32 %conv46, %payload_len
  %or.cond97 = or i1 %tobool47.not, %cmp51.not
  br i1 %or.cond97, label %land.lhs.true45.if.else_crit_edge, label %if.then53

land.lhs.true45.if.else_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then53:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call ptr @skb_pull(ptr noundef %4, i32 noundef 7) #10
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dlen, align 1
  %conv57 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %response, ptr %12, i32 %conv57)
  %16 = load i8, ptr %dlen, align 1
  %conv59 = zext i8 %16 to i32
  br label %if.end69.sink.split

if.else:                                          ; preds = %land.lhs.true45.if.else_crit_edge, %if.end40.if.else_crit_edge
  br i1 %cmp43.not, label %if.else.if.end69_crit_edge, label %land.lhs.true62

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.lhs.true62:                                  ; preds = %if.else
  %dlen63 = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %6, i32 0, i32 6
  %17 = ptrtoint ptr %dlen63 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dlen63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp65 = icmp eq i8 %18, 0
  br i1 %cmp65, label %land.lhs.true62.if.end69.sink.split_crit_edge, label %land.lhs.true62.if.end69_crit_edge

land.lhs.true62.if.end69_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.lhs.true62.if.end69.sink.split_crit_edge:    ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %land.lhs.true62.if.end69.sink.split_crit_edge, %if.then53
  %.sink = phi i32 [ %conv59, %if.then53 ], [ 0, %land.lhs.true62.if.end69.sink.split_crit_edge ]
  %19 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %response_len, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %land.lhs.true62.if.end69_crit_edge, %if.else.if.end69_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end35, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end35 ], [ 0, %if.end69 ], [ -14, %do.end13 ], [ -110, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext %fm_op, i16 noundef zeroext %type, ptr noundef %payload, i32 noundef %payload_len, ptr noundef %wait_completion) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %fm_op)
  %cmp = icmp eq i8 %fm_op, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef 255) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  %cmp4 = icmp eq ptr %payload, null
  %or.cond = and i1 %cmp4, %tobool.not
  br i1 %or.cond, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flag, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool15.not = icmp eq i32 %5, 0
  %phi.bo = add i32 %payload_len, 5
  %spec.select = select i1 %cmp4, i32 5, i32 %phi.bo
  %size.0 = select i1 %tobool15.not, i32 %spec.select, i32 %payload_len
  %call.i = tail call ptr @__alloc_skb(i32 noundef %size.0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flag, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool31.not = icmp eq i32 %8, 0
  br i1 %tobool31.not, label %if.end28.if.then35_crit_edge, label %lor.lhs.false

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end28
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flag, align 4
  %and1.i109 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i109)
  %tobool34.not = icmp eq i32 %and1.i109, 0
  br i1 %tobool34.not, label %if.else53, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end28.if.then35_crit_edge
  %call36 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #10
  %11 = ptrtoint ptr %call36 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %call36, align 1
  %12 = trunc i32 %payload_len to i8
  %phi.cast = add i8 %12, 3
  %cond43 = select i1 %cmp4, i8 3, i8 %phi.cast
  %len = getelementptr inbounds %struct.fm_cmd_msg_hdr, ptr %call36, i32 0, i32 1
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond43, ptr %len, align 1
  %op = getelementptr inbounds %struct.fm_cmd_msg_hdr, ptr %call36, i32 0, i32 2
  %14 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %fm_op, ptr %op, align 1
  %conv46 = trunc i16 %type to i8
  %rd_wr = getelementptr inbounds %struct.fm_cmd_msg_hdr, ptr %call36, i32 0, i32 3
  %15 = ptrtoint ptr %rd_wr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv46, ptr %rd_wr, align 1
  %dlen = getelementptr inbounds %struct.fm_cmd_msg_hdr, ptr %call36, i32 0, i32 4
  %16 = ptrtoint ptr %dlen to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %dlen, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %fm_op, ptr %cb, align 8
  br i1 %cmp4, label %if.then35.if.end66_crit_edge, label %if.then35.if.then64_crit_edge

if.then35.if.then64_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then35.if.end66_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.else53:                                        ; preds = %lor.lhs.false
  br i1 %cmp4, label %if.else53.if.end66_crit_edge, label %if.then56

if.else53.if.end66_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %payload, i32 2
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 1
  %cb57 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %cb57 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %cb57, align 8
  br label %if.then64

if.then64:                                        ; preds = %if.then56, %if.then35.if.then64_crit_edge
  %call.i110 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %payload_len) #10
  %21 = call ptr @memcpy(ptr %call.i110, ptr %payload, i32 %payload_len)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else53.if.end66_crit_edge, %if.then35.if.end66_crit_edge
  %completion = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wait_completion, ptr %completion, align 4
  %tx_q = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %tx_q, ptr noundef nonnull %call.i) #10
  %state.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 11, i32 1
  %call.i111 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %tx_task = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %tx_task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end66.cleanup_crit_edge, %do.end25, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -12, %do.end25 ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_is_rds_data_available(ptr noundef %fmdev, ptr noundef %file, ptr noundef %pts) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_queue = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 2
  %tobool.not.i = icmp eq ptr %pts, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pts, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %file, ptr noundef nonnull %read_queue, ptr noundef nonnull %pts) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %rd_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %2 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_idx, align 4
  %wr_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %4 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wr_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  %. = select i1 %cmp.not, i32 -11, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_transfer_rds_from_internal_buff(ptr noundef %fmdev, ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #1 align 64 {
entry:
  %tmpbuf = alloca [3 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmpbuf) #10
  %0 = ptrtoint ptr %tmpbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmpbuf, align 1, !annotation !270
  %1 = getelementptr inbounds [3 x i8], ptr %tmpbuf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !270
  %3 = getelementptr inbounds [3 x i8], ptr %tmpbuf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !270
  %wr_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %5 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wr_idx, align 4
  %rd_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %7 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rd_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup88_crit_edge

if.then.cleanup88_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1073) #10
  %11 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wr_idx, align 4
  %13 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp13.not = icmp eq i32 %12, %14
  br i1 %cmp13.not, label %if.then14, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %read_queue = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 2
  %call133 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %16 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wr_idx, align 4
  %18 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rd_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp24.not134 = icmp eq i32 %17, %19
  br i1 %cmp24.not134, label %if.then14.if.end26_crit_edge, label %if.then14.if.end33.thread126_crit_edge

if.then14.if.end33.thread126_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.thread126

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  br label %if.end26

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %if.then14.if.end26_crit_edge
  %call135 = phi i32 [ %call, %cleanup.if.end26_crit_edge ], [ %call133, %if.then14.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool27.not = icmp eq i32 %call135, 0
  br i1 %tobool27.not, label %cleanup, label %if.end33

cleanup:                                          ; preds = %if.end26
  call void @schedule() #10
  %call = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %20 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wr_idx, align 4
  %22 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rd_idx, align 4
  %cmp24.not = icmp eq i32 %21, %23
  br i1 %cmp24.not, label %cleanup.if.end26_crit_edge, label %cleanup.if.end33.thread126_crit_edge

cleanup.if.end33.thread126_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.thread126

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end33.thread126:                               ; preds = %cleanup.if.end33.thread126_crit_edge, %if.then14.if.end33.thread126_crit_edge
  call void @finish_wait(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end38

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup88

if.end38:                                         ; preds = %if.end33.thread126, %if.end.if.end38_crit_edge, %entry.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %24 = icmp ult i32 %count, 3
  br i1 %24, label %if.end38.cleanup88_crit_edge, label %do.body41.lr.ph

if.end38.cleanup88_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

do.body41.lr.ph:                                  ; preds = %if.end38
  %div = udiv i32 %count, 3
  %rds_buff_lock = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 4
  %buff = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 6
  %buf_size = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 3
  %25 = mul nuw i32 %div, 3
  br label %do.body41

do.body41:                                        ; preds = %if.end86.do.body41_crit_edge, %do.body41.lr.ph
  %buf.addr.0139 = phi ptr [ %buf, %do.body41.lr.ph ], [ %add.ptr, %if.end86.do.body41_crit_edge ]
  %ret.0138 = phi i32 [ 0, %do.body41.lr.ph ], [ %add87, %if.end86.do.body41_crit_edge ]
  %block_count.0137 = phi i32 [ 0, %do.body41.lr.ph ], [ %inc, %if.end86.do.body41_crit_edge ]
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rds_buff_lock) #10
  %26 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wr_idx, align 4
  %28 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rd_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp56 = icmp eq i32 %27, %29
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rds_buff_lock, i32 noundef %call45) #10
  br label %cleanup88

if.end60:                                         ; preds = %do.body41
  %30 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buff, align 4
  %arrayidx = getelementptr i8, ptr %31, i32 %29
  %32 = call ptr @memcpy(ptr %tmpbuf, ptr %arrayidx, i32 3)
  %add = add i32 %29, 3
  %33 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %34)
  %cmp74.not = icmp ult i32 %add, %34
  %spec.store.select = select i1 %cmp74.not, i32 %add, i32 0
  %35 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.store.select, ptr %rd_idx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rds_buff_lock, i32 noundef %call45) #10
  call void @__might_fault(ptr noundef nonnull @.str.68, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end60.cleanup88_crit_edge, label %if.end.i.i

if.end60.cleanup88_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.end.i.i:                                       ; preds = %if.end60
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0139, i32 3, i32 -1226833920) #14, !srcloc !271
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup88_crit_edge

if.end.i.i.cleanup88_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmpbuf, i32 noundef 3) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0139, ptr noundef nonnull %tmpbuf, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool84.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool84.not, label %if.end86, label %copy_to_user.exit.cleanup88_crit_edge

copy_to_user.exit.cleanup88_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

if.end86:                                         ; preds = %copy_to_user.exit
  %inc = add nuw nsw i32 %block_count.0137, 1
  %add.ptr = getelementptr i8, ptr %buf.addr.0139, i32 3
  %add87 = add nuw i32 %ret.0138, 3
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end86.cleanup88_crit_edge, label %if.end86.do.body41_crit_edge

if.end86.do.body41_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

if.end86.cleanup88_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

cleanup88:                                        ; preds = %if.end86.cleanup88_crit_edge, %copy_to_user.exit.cleanup88_crit_edge, %if.end.i.i.cleanup88_crit_edge, %if.end60.cleanup88_crit_edge, %if.then58, %if.end38.cleanup88_crit_edge, %if.end33, %if.then.cleanup88_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup88_crit_edge ], [ -4, %if.end33 ], [ %ret.0138, %if.then58 ], [ 0, %if.end38.cleanup88_crit_edge ], [ %ret.0138, %copy_to_user.exit.cleanup88_crit_edge ], [ %25, %if.end86.cleanup88_crit_edge ], [ %ret.0138, %if.end60.cleanup88_crit_edge ], [ %ret.0138, %if.end.i.i.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmpbuf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_set_freq(ptr noundef %fmdev, i32 noundef %freq_to_set) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.return_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @fm_rx_set_freq(ptr noundef %fmdev, i32 noundef %freq_to_set) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @fm_tx_set_freq(ptr noundef %fmdev, i32 noundef %freq_to_set) #10
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_get_freq(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %cur_tuned_frq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %cur_tuned_frq, null
  br i1 %cmp1, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %return

if.end7:                                          ; preds = %if.end
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %2 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_fmmode, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %3, label %if.end7.return_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb10
  ]

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %cur_tuned_frq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %cur_tuned_frq, align 4
  br label %return

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %cur_tuned_frq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cur_tuned_frq, align 4
  br label %return

return:                                           ; preds = %sw.bb10, %sw.bb, %if.end7.return_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -12, %do.end4 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ], [ -22, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_set_region(ptr noundef %fmdev, i8 noundef zeroext %region_to_set) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %1, label %entry.return_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @fm_rx_set_region(ptr noundef %fmdev, i8 noundef zeroext %region_to_set) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @fm_tx_set_region(ptr noundef %fmdev, i8 noundef zeroext %region_to_set) #10
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_region(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_region(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_set_mute_mode(ptr noundef %fmdev, i8 noundef zeroext %mute_mode_toset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %1, label %entry.return_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @fm_rx_set_mute_mode(ptr noundef %fmdev, i8 noundef zeroext %mute_mode_toset) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @fm_tx_set_mute_mode(ptr noundef %fmdev, i8 noundef zeroext %mute_mode_toset) #10
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_mute_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_mute_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_set_stereo_mono(ptr noundef %fmdev, i16 noundef zeroext %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %1, label %entry.return_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @fm_rx_set_stereo_mono(ptr noundef %fmdev, i16 noundef zeroext %mode) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @fm_tx_set_stereo_mono(ptr noundef %fmdev, i16 noundef zeroext %mode) #10
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_stereo_mono(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_stereo_mono(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_set_rds_mode(ptr noundef %fmdev, i8 noundef zeroext %rds_en_dis) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %1, label %entry.return_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @fm_rx_set_rds_mode(ptr noundef %fmdev, i8 noundef zeroext %rds_en_dis) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @fm_tx_set_rds_mode(ptr noundef %fmdev, i8 noundef zeroext %rds_en_dis) #10
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_rds_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_tx_set_rds_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_set_mode(ptr noundef %fmdev, i8 noundef zeroext %fm_mode) local_unnamed_addr #1 align 64 {
entry:
  %payload.i103 = alloca i16, align 2
  %asic_id.i = alloca i16, align 2
  %asic_ver.i = alloca i16, align 2
  %resp_len.i = alloca i32, align 4
  %fw_name.i = alloca [50 x i8], align 1
  %payload.i88 = alloca i16, align 2
  %payload.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %fm_mode)
  %cmp = icmp ugt i8 %fm_mode, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %fm_mode)
  %cmp4 = icmp eq i8 %1, %fm_mode
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %2 = zext i8 %fm_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %fm_mode, label %if.end10.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end10.sw.bb22_crit_edge
    i8 2, label %if.end10.sw.bb22_crit_edge134
  ]

if.end10.sw.bb22_crit_edge134:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

if.end10.sw.bb22_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb22

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #10
  %flag.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %3 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flag.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %fm_power_down.exit.thread

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %fm_power_down.exit.thread117, label %if.end7.i

fm_power_down.exit.thread117:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #10
  br label %sw.epilog.thread

if.end7.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %payload.i, align 2
  %call8.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext -2, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.fm_power_down.exit.thread_crit_edge, label %fm_power_down.exit

if.end7.i.fm_power_down.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_down.exit.thread

fm_power_down.exit.thread:                        ; preds = %if.end7.i.fm_power_down.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call8.i, %if.end7.i.fm_power_down.exit.thread_crit_edge ], [ -1, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #10
  br label %do.end18

fm_power_down.exit:                               ; preds = %if.end7.i
  %call13.i = call i32 @fmc_release(ptr noundef %fmdev) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp13 = icmp slt i32 %call13.i, 0
  br i1 %cmp13, label %fm_power_down.exit.do.end18_crit_edge, label %fm_power_down.exit.sw.epilog.thread_crit_edge

fm_power_down.exit.sw.epilog.thread_crit_edge:    ; preds = %fm_power_down.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

fm_power_down.exit.do.end18_crit_edge:            ; preds = %fm_power_down.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end18:                                         ; preds = %fm_power_down.exit.do.end18_crit_edge, %fm_power_down.exit.thread
  %retval.0.i116 = phi i32 [ %retval.0.i.ph, %fm_power_down.exit.thread ], [ %call13.i, %fm_power_down.exit.do.end18_crit_edge ]
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %cleanup

sw.bb22:                                          ; preds = %if.end10.sw.bb22_crit_edge, %if.end10.sw.bb22_crit_edge134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp25.not = icmp eq i8 %1, 0
  br i1 %cmp25.not, label %sw.bb22.if.end.i106_crit_edge, label %if.then27

sw.bb22.if.end.i106_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i106

if.then27:                                        ; preds = %sw.bb22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i88) #10
  %flag.i89 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %7 = ptrtoint ptr %flag.i89 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flag.i89, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i90 = icmp eq i32 %9, 0
  br i1 %tobool.not.i90, label %do.end.i92, label %if.end7.i98

do.end.i92:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %fm_power_down.exit102.thread

if.end7.i98:                                      ; preds = %if.then27
  %10 = ptrtoint ptr %payload.i88 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %payload.i88, align 2
  %call8.i96 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext -2, i16 noundef zeroext 0, ptr noundef nonnull %payload.i88, i32 noundef 2, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i96)
  %cmp9.i97 = icmp slt i32 %call8.i96, 0
  br i1 %cmp9.i97, label %if.end7.i98.fm_power_down.exit102.thread_crit_edge, label %fm_power_down.exit102

if.end7.i98.fm_power_down.exit102.thread_crit_edge: ; preds = %if.end7.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_down.exit102.thread

fm_power_down.exit102.thread:                     ; preds = %if.end7.i98.fm_power_down.exit102.thread_crit_edge, %do.end.i92
  %retval.0.i101.ph = phi i32 [ %call8.i96, %if.end7.i98.fm_power_down.exit102.thread_crit_edge ], [ -1, %do.end.i92 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i88) #10
  br label %do.end34

fm_power_down.exit102:                            ; preds = %if.end7.i98
  %call13.i99 = call i32 @fmc_release(ptr noundef %fmdev) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i88) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i99)
  %cmp29 = icmp slt i32 %call13.i99, 0
  br i1 %cmp29, label %fm_power_down.exit102.do.end34_crit_edge, label %if.end37

fm_power_down.exit102.do.end34_crit_edge:         ; preds = %fm_power_down.exit102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end34:                                         ; preds = %fm_power_down.exit102.do.end34_crit_edge, %fm_power_down.exit102.thread
  %retval.0.i101122 = phi i32 [ %retval.0.i101.ph, %fm_power_down.exit102.thread ], [ %call13.i99, %fm_power_down.exit102.do.end34_crit_edge ]
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end37:                                         ; preds = %fm_power_down.exit102
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 30) #10
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.end37, %sw.bb22.if.end.i106_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i103) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %asic_id.i) #10
  %11 = ptrtoint ptr %asic_id.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %asic_id.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %asic_ver.i) #10
  %12 = ptrtoint ptr %asic_ver.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %asic_ver.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #10
  %13 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %resp_len.i, align 4, !annotation !270
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %fw_name.i) #10
  %14 = call ptr @memset(ptr %fw_name.i, i32 255, i32 50)
  %call2.i = call i32 @fmc_prepare(ptr noundef %fmdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %fm_power_up.exit.thread, label %if.end11.i

fm_power_up.exit.thread:                          ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %fw_name.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %asic_ver.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %asic_id.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i103) #10
  br label %do.end45

if.end11.i:                                       ; preds = %if.end.i106
  %15 = ptrtoint ptr %payload.i103 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %payload.i103, align 2
  %call12.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext -2, i16 noundef zeroext 0, ptr noundef nonnull %payload.i103, i32 noundef 2, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i107 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i107, label %if.end14.i, label %if.end11.i.fm_power_up.exit_crit_edge

if.end11.i.fm_power_up.exit_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_up.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @msleep(i32 noundef 20) #10
  %call15.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 43, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %asic_id.i, ptr noundef nonnull %resp_len.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.fm_power_up.exit_crit_edge

if.end14.i.fm_power_up.exit_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_up.exit

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 42, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %asic_ver.i, ptr noundef nonnull %resp_len.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.end25.i, label %if.end18.i.fm_power_up.exit_crit_edge

if.end18.i.fm_power_up.exit_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_up.exit

do.end25.i:                                       ; preds = %if.end18.i
  %16 = ptrtoint ptr %asic_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %asic_id.i, align 2
  %conv26.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %asic_ver.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %asic_ver.i, align 2
  %conv27.i = zext i16 %19 to i32
  %call28.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_name.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef %conv26.i, i32 noundef %conv27.i) #10
  %call30.i = call fastcc i32 @fm_download_firmware(ptr noundef %fmdev, ptr noundef nonnull %fw_name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end25.i.fm_power_up.exit_crit_edge, label %if.end37.i

do.end25.i.fm_power_up.exit_crit_edge:            ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_up.exit

if.end37.i:                                       ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %fm_mode)
  %cmp40.i = icmp eq i8 %fm_mode, 2
  %cond.i = select i1 %cmp40.i, ptr @.str.77, ptr @.str.78
  %20 = ptrtoint ptr %asic_id.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %asic_id.i, align 2
  %conv42.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %asic_ver.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %asic_ver.i, align 2
  %conv43.i = zext i16 %23 to i32
  %call44.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_name.i, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond.i, i32 noundef %conv42.i, i32 noundef %conv43.i) #10
  %call46.i = call fastcc i32 @fm_download_firmware(ptr noundef %fmdev, ptr noundef nonnull %fw_name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end37.i.fm_power_up.exit_crit_edge, label %fm_power_up.exit.thread126

if.end37.i.fm_power_up.exit_crit_edge:            ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_power_up.exit

fm_power_up.exit.thread126:                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %fw_name.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %asic_ver.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %asic_id.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i103) #10
  br label %sw.epilog

fm_power_up.exit:                                 ; preds = %if.end37.i.fm_power_up.exit_crit_edge, %do.end25.i.fm_power_up.exit_crit_edge, %if.end18.i.fm_power_up.exit_crit_edge, %if.end14.i.fm_power_up.exit_crit_edge, %if.end11.i.fm_power_up.exit_crit_edge
  %call53.i = call i32 @fmc_release(ptr noundef %fmdev) #10
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %fw_name.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %asic_ver.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %asic_id.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i103) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp40 = icmp slt i32 %call53.i, 0
  br i1 %cmp40, label %fm_power_up.exit.do.end45_crit_edge, label %fm_power_up.exit.sw.epilog_crit_edge

fm_power_up.exit.sw.epilog_crit_edge:             ; preds = %fm_power_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

fm_power_up.exit.do.end45_crit_edge:              ; preds = %fm_power_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45:                                         ; preds = %fm_power_up.exit.do.end45_crit_edge, %fm_power_up.exit.thread
  %retval.0.i108125 = phi i32 [ %call2.i, %fm_power_up.exit.thread ], [ %call53.i, %fm_power_up.exit.do.end45_crit_edge ]
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %cleanup

sw.epilog.thread:                                 ; preds = %fm_power_down.exit.sw.epilog.thread_crit_edge, %fm_power_down.exit.thread117
  %ret.0.ph = phi i32 [ 0, %fm_power_down.exit.thread117 ], [ %call13.i, %fm_power_down.exit.sw.epilog.thread_crit_edge ]
  %24 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %curr_fmmode, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %fm_power_up.exit.sw.epilog_crit_edge, %fm_power_up.exit.thread126, %if.end10.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end10.sw.epilog_crit_edge ], [ %call53.i, %fm_power_up.exit.sw.epilog_crit_edge ], [ %call46.i, %fm_power_up.exit.thread126 ]
  %25 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %fm_mode, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %fm_mode)
  %cmp52 = icmp eq i8 %fm_mode, 2
  br i1 %cmp52, label %do.end57, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end57:                                         ; preds = %sw.epilog
  %call.i109 = call i32 @fm_rx_set_volume(ptr noundef %fmdev, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.i110 = icmp slt i32 %call.i109, 0
  br i1 %cmp.i110, label %do.end57.do.end64_crit_edge, label %load_default_rx_configuration.exit

do.end57.do.end64_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

load_default_rx_configuration.exit:               ; preds = %do.end57
  %call1.i111 = call i32 @fm_rx_set_rssi_threshold(ptr noundef %fmdev, i16 noundef signext 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %cmp59 = icmp slt i32 %call1.i111, 0
  br i1 %cmp59, label %load_default_rx_configuration.exit.do.end64_crit_edge, label %load_default_rx_configuration.exit.cleanup_crit_edge

load_default_rx_configuration.exit.cleanup_crit_edge: ; preds = %load_default_rx_configuration.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

load_default_rx_configuration.exit.do.end64_crit_edge: ; preds = %load_default_rx_configuration.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

do.end64:                                         ; preds = %load_default_rx_configuration.exit.do.end64_crit_edge, %do.end57.do.end64_crit_edge
  %retval.0.i113133 = phi i32 [ %call1.i111, %load_default_rx_configuration.exit.do.end64_crit_edge ], [ %call.i109, %do.end57.do.end64_crit_edge ]
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %load_default_rx_configuration.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %do.end45, %do.end34, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i101122, %do.end34 ], [ %retval.0.i108125, %do.end45 ], [ %retval.0.i116, %do.end18 ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i113133, %do.end64 ], [ %call1.i111, %load_default_rx_configuration.exit.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %ret.0.ph, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_get_mode(ptr noundef %fmdev, ptr noundef writeonly %fmmode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %return

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %fmmode, null
  br i1 %cmp, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %3 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %curr_fmmode, align 4
  %5 = ptrtoint ptr %fmmode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %fmmode, align 1
  br label %return

return:                                           ; preds = %if.end7, %do.end4, %do.end
  %retval.0 = phi i32 [ -12, %do.end4 ], [ 0, %if.end7 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_prepare(ptr noundef %fmdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr @fmc_prepare.fm_st_proto, i32 0, i32 28)
  store ptr @fm_st_receive, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 1), align 4
  store ptr @fm_st_reg_comp_cb, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 3), align 4
  store ptr %fmdev, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 5), align 4
  store i8 8, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 6), align 4
  store i16 255, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 7), align 2
  store i8 1, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 8), align 4
  store i8 0, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 9), align 1
  store i8 1, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 10), align 2
  store i8 1, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 11), align 1
  %call1 = tail call i32 @st_register(ptr noundef nonnull @fmc_prepare.fm_st_proto) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call1)
  %cmp = icmp eq i32 %call1, -115
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 0, ptr @wait_for_fmdrv_reg_comp, align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @wait_for_fmdrv_reg_comp, i32 0, i32 1), ptr noundef nonnull @.str.57, ptr noundef nonnull @init_completion.__key) #10
  %streg_cbdata = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 7
  %4 = ptrtoint ptr %streg_cbdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -115, ptr %streg_cbdata, align 4
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @wait_for_fmdrv_reg_comp, i32 noundef 600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @jiffies_to_msecs(i32 noundef 600) #10
  %div = udiv i32 %call14, 1000
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %div) #13
  br label %cleanup

if.end16:                                         ; preds = %if.then2
  %5 = ptrtoint ptr %streg_cbdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %streg_cbdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18.not = icmp eq i32 %6, 0
  br i1 %cmp18.not, label %if.end16.if.end35_crit_edge, label %do.end22

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %6) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp27 = icmp slt i32 %call1, 0
  br i1 %cmp27, label %do.end31, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call1) #13
  br label %cleanup

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %ret.0 = phi i32 [ %call1, %if.else.if.end35_crit_edge ], [ 0, %if.end16.if.end35_crit_edge ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_prepare.fm_st_proto, i32 0, i32 4), align 4
  %cmp36.not = icmp eq ptr %7, null
  br i1 %cmp36.not, label %do.end41, label %if.then37

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %7, ptr @g_st_write, align 4
  %rds_buff_lock = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %rds_buff_lock, ptr noundef nonnull @.str.45, ptr noundef nonnull @fmc_prepare.__key, i16 noundef signext 3) #10
  %resp_skb_lock = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %resp_skb_lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @fmc_prepare.__key.46, i16 noundef signext 3) #10
  %tx_q = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 10
  %lock.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %8 = ptrtoint ptr %tx_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_q, ptr %tx_q, align 4
  %prev.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 10, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_task = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 11
  tail call void @tasklet_setup(ptr noundef %tx_task, ptr noundef nonnull @send_tasklet) #10
  %rx_q = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 8
  %lock.i114 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i114, ptr noundef nonnull @.str.89, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %11 = ptrtoint ptr %rx_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rx_q, ptr %rx_q, align 4
  %prev.i.i115 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rx_q, ptr %prev.i.i115, align 4
  %qlen.i.i116 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %qlen.i.i116 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i116, align 4
  %rx_task = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 9
  tail call void @tasklet_setup(ptr noundef %rx_task, ptr noundef nonnull @recv_tasklet) #10
  %irq_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %14 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %irq_info, align 4
  %tx_cnt = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cnt, i32 noundef 4) #10
  %15 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %tx_cnt, align 4
  %resp_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 17
  %16 = ptrtoint ptr %resp_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %resp_comp, align 4
  %timer = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @int_timeout_handler, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @fmc_prepare.__key.48) #10
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1024, ptr %mask, align 4
  %rx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20
  %18 = load i8, ptr @default_radio_region, align 1
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr [2 x %struct.region_info], ptr @region_configs, i32 0, i32 %idxprom
  %19 = call ptr @memcpy(ptr %rx, ptr %arrayidx, i32 16)
  %mute_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %mute_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %mute_mode, align 4
  %rf_depend_mute = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 4
  %21 = ptrtoint ptr %rf_depend_mute to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rf_depend_mute, align 2
  %rds = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %22 = ptrtoint ptr %rds to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %rds, align 4
  %freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %freq, align 4
  %rds_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 9
  %24 = ptrtoint ptr %rds_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rds_mode, align 4
  %af_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %25 = ptrtoint ptr %af_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %af_mode, align 1
  %retry = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 4
  %26 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %retry, align 4
  tail call void @fm_rx_reset_rds_cache(ptr noundef %fmdev) #10
  %read_queue = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.51, ptr noundef nonnull @fmc_prepare.__key.50) #10
  tail call void @fm_rx_reset_station_info(ptr noundef %fmdev) #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flag) #10
  br label %cleanup

do.end41:                                         ; preds = %if.end35
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  %call44 = tail call i32 @st_unregister(ptr noundef nonnull @fmc_prepare.fm_st_proto) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %do.end41.cleanup_crit_edge

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end49:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call44) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end41.cleanup_crit_edge, %if.then37, %do.end31, %do.end22, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end22 ], [ %ret.0, %if.then37 ], [ -110, %do.end12 ], [ -11, %do.end31 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %do.end49 ], [ -11, %do.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_st_receive(ptr noundef %arg, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp1.not = icmp eq i8 %1, 8
  br i1 %cmp1.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull %skb) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 1) #10
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call10, align 1
  %rx_q = getelementptr inbounds %struct.fmdev, ptr %arg, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %rx_q, ptr noundef nonnull %skb) #10
  %state.i = getelementptr inbounds %struct.fmdev, ptr %arg, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %rx_task = getelementptr inbounds %struct.fmdev, ptr %arg, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %rx_task) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -22, %do.end6 ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_st_reg_comp_cb(ptr nocapture noundef writeonly %arg, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %streg_cbdata = getelementptr inbounds %struct.fmdev, ptr %arg, i32 0, i32 7
  %0 = ptrtoint ptr %streg_cbdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %streg_cbdata, align 4
  tail call void @complete(ptr noundef nonnull @wait_for_fmdrv_reg_comp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_tasklet(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_cnt = getelementptr i8, ptr %t, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_cnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_tx_jiffies = getelementptr i8, ptr %t, i32 24
  %3 = ptrtoint ptr %last_tx_jiffies to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_tx_jiffies, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %sub)
  %cmp = icmp ugt i32 %sub, 500
  br i1 %cmp, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #13
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cnt, i32 noundef 4) #10
  %5 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %tx_cnt, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %tx_q = getelementptr i8, ptr %t, i32 -56
  %call6 = tail call ptr @skb_dequeue(ptr noundef %tx_q) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tx_cnt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cnt, ptr %tx_cnt, i32 1, ptr elementtype(i32) %tx_cnt) #10, !srcloc !272
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 3
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cb, align 8
  %pre_op = getelementptr i8, ptr %t, i32 92
  %9 = ptrtoint ptr %pre_op to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pre_op, align 4
  %resp_comp = getelementptr i8, ptr %t, i32 96
  %10 = ptrtoint ptr %resp_comp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resp_comp, align 4
  %cmp11.not = icmp eq ptr %11, null
  br i1 %cmp11.not, label %if.end9.if.end18_crit_edge, label %do.end15

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end9.if.end18_crit_edge
  %completion = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %completion, align 4
  %14 = ptrtoint ptr %resp_comp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %resp_comp, align 4
  %15 = load ptr, ptr @g_st_write, align 4
  %call22 = tail call i32 %15(ptr noundef nonnull %call6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call6, i32 noundef 0) #10
  %16 = ptrtoint ptr %resp_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %resp_comp, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull %call6) #13
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cnt, i32 noundef 4) #10
  %17 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %tx_cnt, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %last_tx_jiffies to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_tx_jiffies, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_tasklet(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -372
  %irq_info1 = getelementptr i8, ptr %t, i32 100
  %rx_q = getelementptr i8, ptr %t, i32 -136
  %call158 = tail call ptr @skb_dequeue(ptr noundef %rx_q) #10
  %tobool.not159 = icmp eq ptr %call158, null
  br i1 %tobool.not159, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pre_op = getelementptr i8, ptr %t, i32 92
  %resp_comp = getelementptr i8, ptr %t, i32 96
  %resp_skb_lock = getelementptr i8, ptr %t, i32 -188
  %resp_skb = getelementptr i8, ptr %t, i32 32
  %tx_cnt = getelementptr i8, ptr %t, i32 28
  %handlers88 = getelementptr i8, ptr %t, i32 160
  %flag = getelementptr i8, ptr %t, i32 -144
  %tx_q = getelementptr i8, ptr %t, i32 -56
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call160 = phi ptr [ %call158, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %call160, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ult i32 %1, 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %call160, i32 noundef %1, i32 noundef 7) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call160, i32 noundef 0) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i, %if.then111.while.cond.backedge_crit_edge, %if.then108.while.cond.backedge_crit_edge, %land.lhs.true104.while.cond.backedge_crit_edge, %if.end101.while.cond.backedge_crit_edge, %do.end
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_q) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call160, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %num_fm_hci_cmds5 = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_fm_hci_cmds5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_fm_hci_cmds5, align 1
  %op = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp6 = icmp eq i8 %7, -1
  br i1 %cmp6, label %if.then8, label %if.else27

if.then8:                                         ; preds = %if.end
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool10.not = icmp eq i32 %and1.i, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flag) #10
  %10 = ptrtoint ptr %irq_info1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq_info1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.not = icmp eq i8 %11, 0
  br i1 %cmp14.not, label %if.then11.if.end23_crit_edge, label %do.end19

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #13
  %12 = ptrtoint ptr %irq_info1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %irq_info1, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %if.then11.if.end23_crit_edge
  %13 = ptrtoint ptr %handlers88 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handlers88, align 4
  %15 = ptrtoint ptr %irq_info1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %irq_info1, align 4
  %idxprom = zext i8 %16 to i32
  %arrayidx = getelementptr ptr, ptr %14, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void %18(ptr noundef %add.ptr) #10
  br label %if.end26

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flag) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end23
  tail call void @kfree_skb_reason(ptr noundef nonnull %call160, i32 noundef 0) #10
  br label %if.end101

if.else27:                                        ; preds = %if.end
  %19 = ptrtoint ptr %pre_op to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pre_op, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %20)
  %cmp31 = icmp eq i8 %7, %20
  br i1 %cmp31, label %land.lhs.true, label %if.else27.do.end96_crit_edge

if.else27.do.end96_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

land.lhs.true:                                    ; preds = %if.else27
  %21 = ptrtoint ptr %resp_comp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resp_comp, align 4
  %cmp33.not = icmp eq ptr %22, null
  br i1 %cmp33.not, label %land.lhs.true57, label %do.body37

do.body37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock) #10
  %23 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call160, ptr %resp_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock, i32 noundef %call42) #10
  %24 = ptrtoint ptr %resp_comp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_comp, align 4
  tail call void @complete(ptr noundef %25) #10
  %26 = ptrtoint ptr %resp_comp to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %resp_comp, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cnt, i32 noundef 4) #10
  %27 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %tx_cnt, align 4
  br label %if.end101

land.lhs.true57:                                  ; preds = %land.lhs.true
  %28 = ptrtoint ptr %resp_comp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resp_comp, align 4
  %cmp59 = icmp eq ptr %29, null
  br i1 %cmp59, label %if.then61, label %land.lhs.true57.do.end96_crit_edge

land.lhs.true57.do.end96_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

if.then61:                                        ; preds = %land.lhs.true57
  %30 = ptrtoint ptr %resp_skb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resp_skb, align 4
  %cmp63.not = icmp eq ptr %31, null
  br i1 %cmp63.not, label %if.then61.do.body73_crit_edge, label %do.end68

if.then61.do.body73_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

do.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #13
  br label %do.body73

do.body73:                                        ; preds = %do.end68, %if.then61.do.body73_crit_edge
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock) #10
  %32 = ptrtoint ptr %resp_skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call160, ptr %resp_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock, i32 noundef %call81) #10
  %33 = ptrtoint ptr %handlers88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handlers88, align 4
  %35 = ptrtoint ptr %irq_info1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %irq_info1, align 4
  %idxprom90 = zext i8 %36 to i32
  %arrayidx91 = getelementptr ptr, ptr %34, i32 %idxprom90
  %37 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx91, align 4
  tail call void %38(ptr noundef %add.ptr) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call160, i32 noundef 0) #10
  %call.i.i156 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cnt, i32 noundef 4) #10
  %39 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %tx_cnt, align 4
  br label %if.end101

do.end96:                                         ; preds = %land.lhs.true57.do.end96_crit_edge, %if.else27.do.end96_crit_edge
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull %call160) #13
  br label %if.end101

if.end101:                                        ; preds = %do.end96, %do.body73, %do.body37, %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool103.not = icmp eq i8 %5, 0
  br i1 %tobool103.not, label %if.end101.while.cond.backedge_crit_edge, label %land.lhs.true104

if.end101.while.cond.backedge_crit_edge:          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.lhs.true104:                                 ; preds = %if.end101
  %call.i.i157 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_cnt, i32 noundef 4) #10
  %40 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %tx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool107.not = icmp eq i32 %41, 0
  br i1 %tobool107.not, label %land.lhs.true104.while.cond.backedge_crit_edge, label %if.then108

land.lhs.true104.while.cond.backedge_crit_edge:   ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then108:                                       ; preds = %land.lhs.true104
  %42 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_q, align 4
  %cmp.i.not = icmp eq ptr %43, %tx_q
  br i1 %cmp.i.not, label %if.then108.while.cond.backedge_crit_edge, label %if.then111

if.then108.while.cond.backedge_crit_edge:         ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then111:                                       ; preds = %if.then108
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then111.while.cond.backedge_crit_edge

if.then111.while.cond.backedge_crit_edge:         ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.then.i:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @int_timeout_handler(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %retry = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %retry, align 4
  %inc = add i8 %1, 1
  store i8 %inc, ptr %retry, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc)
  %cmp = icmp ugt i8 %inc, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %irq_info, align 4
  %3 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %retry, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %t, i32 -480
  %irq_info.i = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 23, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr i8, ptr %t, i32 52
  %5 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 23
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %8(ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm_rx_reset_rds_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm_rx_reset_station_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fmc_release(ptr noundef %fmdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_queue = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 2
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %tx_task = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 11
  tail call void @tasklet_kill(ptr noundef %tx_task) #10
  %rx_task = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %rx_task) #10
  %tx_q = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 10
  tail call void @skb_queue_purge(ptr noundef %tx_q) #10
  %rx_q = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %rx_q) #10
  %resp_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 17
  %3 = ptrtoint ptr %resp_comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %resp_comp, align 4
  %freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %freq, align 4
  %5 = call ptr @memset(ptr @fmc_release.fm_st_proto, i32 0, i32 32)
  store i8 8, ptr getelementptr inbounds (%struct.st_proto_s, ptr @fmc_release.fm_st_proto, i32 0, i32 6), align 4
  %call2 = tail call i32 @st_unregister(ptr noundef nonnull @fmc_release.fm_st_proto) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call2) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end6, %if.end.if.end11_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flag) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fm_drv_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @fm_v4l2_deinit_video_device() #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buff = getelementptr inbounds %struct.fmdev, ptr %call, i32 0, i32 20, i32 12, i32 6
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buff, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fm_v4l2_deinit_video_device() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fm_drv_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1084) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @default_rds_buf, align 4
  %mul = mul i32 %1, 3
  %buf_size = getelementptr inbounds %struct.fmdev, ptr %call7.i.i, i32 0, i32 20, i32 12, i32 3
  %2 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %buf_size, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %buff = getelementptr inbounds %struct.fmdev, ptr %call7.i.i, i32 0, i32 20, i32 12, i32 6
  %3 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %buff, align 4
  %cmp14 = icmp eq ptr %call9.i.i, null
  br i1 %cmp14, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #13
  br label %rel_dev

if.end21:                                         ; preds = %if.end
  %4 = load i32, ptr @radio_nr, align 4
  %call22 = tail call i32 @fm_v4l2_init_video_device(ptr noundef nonnull %call7.i.i, i32 noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %rel_rdsbuf, label %if.end25

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %handlers = getelementptr inbounds %struct.fmdev, ptr %call7.i.i, i32 0, i32 18, i32 5
  %5 = ptrtoint ptr %handlers to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @int_handler_table, ptr %handlers, align 4
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %call7.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %curr_fmmode, align 8
  %tx_data = getelementptr inbounds %struct.fmdev, ptr %call7.i.i, i32 0, i32 21
  %7 = ptrtoint ptr %tx_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %tx_data, align 8
  %preemph = getelementptr inbounds %struct.fmdev, ptr %call7.i.i, i32 0, i32 21, i32 5
  %8 = ptrtoint ptr %preemph to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %preemph, align 8
  br label %cleanup

rel_rdsbuf:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buff, align 4
  tail call void @kfree(ptr noundef %10) #10
  br label %rel_dev

rel_dev:                                          ; preds = %rel_rdsbuf, %do.end18
  %ret.0 = phi i32 [ -12, %do.end18 ], [ %call22, %rel_rdsbuf ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_dev, %if.end25, %do.end3
  %retval.0 = phi i32 [ -12, %do.end3 ], [ %ret.0, %rel_dev ], [ %call22, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm_download_firmware(ptr noundef %fmdev, ptr noundef %fw_name) unnamed_addr #1 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #10
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !270
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #10
  %1 = ptrtoint ptr %fmdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fmdev, align 4
  %dev = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef %fw_name, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %fw_name) #13
  br label %cleanup

do.end4:                                          ; preds = %entry
  %3 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1112757314, i32 %8)
  %cmp5.not = icmp eq i32 %8, 1112757314
  br i1 %cmp5.not, label %do.end15, label %do.end9

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %fw_name) #13
  br label %rel_fw

do.end15:                                         ; preds = %do.end4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 32
  %sub = add i32 %10, -32
  %tobool.not97 = icmp ne ptr %add.ptr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1698 = icmp sgt i32 %sub, 0
  %or.cond99 = select i1 %tobool.not97, i1 %cmp1698, i1 false
  br i1 %or.cond99, label %do.end15.while.body_crit_edge, label %do.end15.rel_fw_crit_edge

do.end15.rel_fw_crit_edge:                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_fw

do.end15.while.body_crit_edge:                    ; preds = %do.end15
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %do.end15.while.body_crit_edge
  %fw_len.0102 = phi i32 [ %sub56, %sw.epilog.while.body_crit_edge ], [ %sub, %do.end15.while.body_crit_edge ]
  %ret.0101 = phi i32 [ %ret.1, %sw.epilog.while.body_crit_edge ], [ %call, %do.end15.while.body_crit_edge ]
  %fw_data.0100 = phi ptr [ %add.ptr52, %sw.epilog.while.body_crit_edge ], [ %add.ptr, %do.end15.while.body_crit_edge ]
  %11 = ptrtoint ptr %fw_data.0100 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %fw_data.0100, align 1
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %12, label %while.body.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 4, label %sw.bb24
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %data17 = getelementptr inbounds %struct.bts_action, ptr %fw_data.0100, i32 0, i32 2
  %size18 = getelementptr inbounds %struct.bts_action, ptr %fw_data.0100, i32 0, i32 1
  %14 = ptrtoint ptr %size18 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %size18, align 1
  %conv19 = zext i16 %15 to i32
  %call20 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data17, i32 noundef %conv19, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.rel_fw_crit_edge

sw.bb.rel_fw_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_fw

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb24:                                          ; preds = %while.body
  %data25 = getelementptr inbounds %struct.bts_action, ptr %fw_data.0100, i32 0, i32 2
  %16 = ptrtoint ptr %data25 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %data25, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool47.not95 = icmp eq i32 %17, 0
  br i1 %tobool47.not95, label %sw.bb24.sw.epilog_crit_edge, label %sw.bb24.while.body48_crit_edge

sw.bb24.while.body48_crit_edge:                   ; preds = %sw.bb24
  br label %while.body48

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body48:                                     ; preds = %while.body48.while.body48_crit_edge, %sw.bb24.while.body48_crit_edge
  %__ms.096 = phi i32 [ %dec, %while.body48.while.body48_crit_edge ], [ %17, %sw.bb24.while.body48_crit_edge ]
  %dec = add i32 %__ms.096, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #10
  %tobool47.not = icmp eq i32 %dec, 0
  br i1 %tobool47.not, label %while.body48.sw.epilog_crit_edge, label %while.body48.while.body48_crit_edge

while.body48.while.body48_crit_edge:              ; preds = %while.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body48

while.body48.sw.epilog_crit_edge:                 ; preds = %while.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body48.sw.epilog_crit_edge, %sw.bb24.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.0101, %while.body.sw.epilog_crit_edge ], [ %ret.0101, %sw.bb24.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %ret.0101, %while.body48.sw.epilog_crit_edge ]
  %size50 = getelementptr inbounds %struct.bts_action, ptr %fw_data.0100, i32 0, i32 1
  %19 = ptrtoint ptr %size50 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %size50, align 1
  %conv51 = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv51, 4
  %add.ptr52 = getelementptr i8, ptr %fw_data.0100, i32 %add
  %sub56 = sub i32 %fw_len.0102, %add
  %tobool.not = icmp ne ptr %add.ptr52, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub56)
  %cmp16 = icmp sgt i32 %sub56, 0
  %or.cond = select i1 %tobool.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %sw.epilog.while.body_crit_edge, label %sw.epilog.rel_fw_crit_edge

sw.epilog.rel_fw_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_fw

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

rel_fw:                                           ; preds = %sw.epilog.rel_fw_crit_edge, %sw.bb.rel_fw_crit_edge, %do.end15.rel_fw_crit_edge, %do.end9
  %ret.2 = phi i32 [ -22, %do.end9 ], [ %call, %do.end15.rel_fw_crit_edge ], [ %call20, %sw.bb.rel_fw_crit_edge ], [ %ret.1, %sw.epilog.rel_fw_crit_edge ]
  %21 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %22) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %flag) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_fw, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %rel_fw ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_volume(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_rx_set_rssi_threshold(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm_v4l2_init_video_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_send_flag_getcmd(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %0 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, 500
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_flag_getcmd_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  %resp_skb_lock.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i) #10
  %resp_skb.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i, align 4
  store ptr null, ptr %resp_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i, i32 noundef %call3.i) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %status.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i, label %if.end, label %check_cmdresp_status.exit

check_cmdresp_status.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i, align 1
  %conv15.i = zext i8 %7 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 500
  %call19.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %dlen = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dlen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp = icmp ugt i8 %12, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 7) #10
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dlen, align 1
  %conv7 = zext i8 %16 to i32
  %17 = call ptr @memcpy(ptr %flag, ptr %14, i32 %conv7)
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %18 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %19 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %22(ptr noundef %fmdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %check_cmdresp_status.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_hw_malfunction(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flag, align 2
  %2 = and i16 %1, 1024
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mask, align 4
  %and36 = and i16 %2, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and36)
  %tobool.not = icmp eq i16 %and36, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %5 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %9(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_rds_start(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flag, align 2
  %2 = and i16 %1, 4
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mask, align 4
  %and311 = and i16 %2, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and311)
  %tobool.not = icmp eq i16 %and311, 0
  %. = select i1 %tobool.not, i8 7, i8 4
  %irq_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %5 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %., ptr %irq_info, align 4
  %handlers.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %handlers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handlers.i, align 4
  %idxprom.i = zext i8 %. to i32
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void %9(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_send_rdsdata_getcmd(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef null, i32 noundef 192, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %0 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, 500
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_rdsdata_getcmd_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  %rds_fmt = alloca %struct.fm_rdsdata_format, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rds_fmt) #10
  %0 = getelementptr inbounds %struct.anon.142, ptr %rds_fmt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.142, ptr %rds_fmt, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.anon.142, ptr %rds_fmt, i32 0, i32 2
  %3 = getelementptr inbounds %struct.anon.142, ptr %rds_fmt, i32 0, i32 2, i32 1
  %4 = getelementptr inbounds %struct.anon.142, ptr %rds_fmt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon.142, ptr %rds_fmt, i32 0, i32 3, i32 1
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %rds_fmt to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %rds_fmt, align 8
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  %resp_skb_lock.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i) #10
  %resp_skb.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %7 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resp_skb.i, align 4
  store ptr null, ptr %resp_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i, i32 noundef %call3.i) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %status.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp9.not.i = icmp eq i8 %12, 0
  br i1 %cmp9.not.i, label %if.end, label %check_cmdresp_status.exit

check_cmdresp_status.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %op.i, align 1
  %conv15.i = zext i8 %14 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, 500
  %call19.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_pull(ptr noundef %8, i32 noundef 7) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp253 = icmp ugt i32 %17, 2
  br i1 %cmp253, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %last_blk_idx36 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 1
  %asci_id.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 3
  %arrayidx8.i = getelementptr inbounds i8, ptr %rds_fmt, i32 1
  %stat_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11
  %fm_band.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 3
  %bot_freq.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %freq41.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %afcache_size50.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %af_list_max59.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end78.while.body_crit_edge, %while.body.lr.ph
  %rds_data.0255 = phi ptr [ %19, %while.body.lr.ph ], [ %add.ptr, %if.end78.while.body_crit_edge ]
  %rds_len.0254 = phi i32 [ %17, %while.body.lr.ph ], [ %sub79, %if.end78.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rds_data.0255, i32 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %and = and i8 %21, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %and)
  %cmp5 = icmp ugt i8 %and, 2
  %sub = sext i1 %cmp5 to i8
  %cond = add nsw i8 %and, %sub
  %22 = and i8 %21, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp12.not = icmp eq i8 %22, 0
  br i1 %cmp12.not, label %if.end15, label %while.body.while.endthread-pre-split_crit_edge

while.body.while.endthread-pre-split_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.endthread-pre-split

if.end15:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cond)
  %cmp17 = icmp ugt i8 %cond, 3
  br i1 %cmp17, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %last_blk_idx36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %last_blk_idx36, align 1
  br label %while.endthread-pre-split

if.end23:                                         ; preds = %if.end15
  %conv16 = zext i8 %cond to i32
  %mul = shl nuw nsw i32 %conv16, 1
  %24 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %mul, i32 6) #10, !srcloc !273
  %and32 = and i32 %mul, 254
  %idxprom = and i32 %and32, %24
  %arrayidx35 = getelementptr [8 x i8], ptr %rds_fmt, i32 0, i32 %idxprom
  %25 = ptrtoint ptr %rds_data.0255 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %rds_data.0255, align 1
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx35, align 2
  %28 = ptrtoint ptr %last_blk_idx36 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %cond, ptr %last_blk_idx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cond)
  %cmp38 = icmp eq i8 %cond, 3
  br i1 %cmp38, label %do.end43, label %if.end23.if.end78_crit_edge

if.end23.if.end78_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

do.end43:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %asci_id.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %asci_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 25424, i16 %30)
  %cmp.not.i = icmp eq i16 %30, 25424
  br i1 %cmp.not.i, label %do.end43.fm_rdsparse_swapbytes.exit_crit_edge, label %do.body.preheader.i

do.end43.fm_rdsparse_swapbytes.exit_crit_edge:    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_rdsparse_swapbytes.exit

do.body.preheader.i:                              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %rds_fmt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rds_fmt, align 8
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx8.i, align 1
  store i8 %34, ptr %rds_fmt, align 8
  store i8 %32, ptr %arrayidx8.i, align 1
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %0, align 2
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 1
  store i8 %38, ptr %0, align 2
  store i8 %36, ptr %1, align 1
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 1
  store i8 %42, ptr %2, align 4
  store i8 %40, ptr %3, align 1
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %4, align 2
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %5, align 1
  store i8 %46, ptr %4, align 2
  store i8 %44, ptr %5, align 1
  br label %fm_rdsparse_swapbytes.exit

fm_rdsparse_swapbytes.exit:                       ; preds = %do.body.preheader.i, %do.end43.fm_rdsparse_swapbytes.exit_crit_edge
  %47 = ptrtoint ptr %rds_fmt to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rds_fmt, align 8
  %49 = ptrtoint ptr %stat_info to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %stat_info, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %48)
  %cmp48.not = icmp eq i16 %50, %48
  br i1 %cmp48.not, label %fm_rdsparse_swapbytes.exit.do.end57_crit_edge, label %if.then50

fm_rdsparse_swapbytes.exit.do.end57_crit_edge:    ; preds = %fm_rdsparse_swapbytes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

if.then50:                                        ; preds = %fm_rdsparse_swapbytes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %stat_info to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %stat_info, align 4
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %fm_rdsparse_swapbytes.exit.do.end57_crit_edge
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %53)
  %cmp69 = icmp ult i8 %53, 8
  br i1 %cmp69, label %if.then71, label %do.end57.if.end78_crit_edge

do.end57.if.end78_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then71:                                        ; preds = %do.end57
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %2, align 4
  %56 = ptrtoint ptr %fm_band.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fm_band.i, align 4
  %conv.i = zext i8 %55 to i32
  %58 = add i8 %55, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %58)
  %59 = icmp ult i8 %58, 25
  br i1 %59, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %add.i202 = add nsw i8 %55, 32
  %60 = ptrtoint ptr %af_list_max59.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %add.i202, ptr %af_list_max59.i, align 1
  br label %fm_rx_update_af_cache.exit.sink.split

if.end.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp14.i = icmp eq i8 %55, 0
  br i1 %cmp14.i, label %if.end.i.fm_rx_update_af_cache.exit_crit_edge, label %if.end17.i

if.end.i.fm_rx_update_af_cache.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_rx_update_af_cache.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp19.i = icmp eq i8 %57, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %55)
  %cmp23.i = icmp ugt i8 %55, -52
  %or.cond110.i = and i1 %cmp23.i, %cmp19.i
  br i1 %or.cond110.i, label %if.end17.i.fm_rx_update_af_cache.exit_crit_edge, label %if.end26.i

if.end17.i.fm_rx_update_af_cache.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_rx_update_af_cache.exit

if.end26.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp28.i = icmp eq i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -116, i8 %55)
  %cmp32.i = icmp ugt i8 %55, -116
  %or.cond111.i = and i1 %cmp32.i, %cmp28.i
  br i1 %or.cond111.i, label %if.end26.i.fm_rx_update_af_cache.exit_crit_edge, label %if.end35.i

if.end26.i.fm_rx_update_af_cache.exit_crit_edge:  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_rx_update_af_cache.exit

if.end35.i:                                       ; preds = %if.end26.i
  %61 = ptrtoint ptr %bot_freq.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bot_freq.i, align 4
  %mul.i = mul nuw nsw i32 %conv.i, 100
  %add39.i = add i32 %62, %mul.i
  %63 = ptrtoint ptr %freq41.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %freq41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i, i32 %64)
  %cmp42.i = icmp eq i32 %add39.i, %64
  br i1 %cmp42.i, label %if.end35.i.fm_rx_update_af_cache.exit_crit_edge, label %for.cond.preheader.i

if.end35.i.fm_rx_update_af_cache.exit_crit_edge:  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_rx_update_af_cache.exit

for.cond.preheader.i:                             ; preds = %if.end35.i
  %65 = ptrtoint ptr %afcache_size50.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %afcache_size50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp52113.not.i = icmp eq i8 %66, 0
  br i1 %cmp52113.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %67 = add i8 %66, -1
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %68, 1
  %wide.trip.count = zext i8 %66 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv = phi i32 [ 0, %for.body.i.preheader ], [ %indvars.iv.next, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 1, i32 %indvars.iv
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add39.i)
  %cmp54.i = icmp eq i32 %71, %add39.i
  br i1 %cmp54.i, label %for.end.i.loopexit.split.loop.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.loopexit.split.loop.exit:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = trunc i32 %indvars.iv to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit.split.loop.exit, %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %index.0.lcssa.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %72, %for.end.i.loopexit.split.loop.exit ], [ %66, %for.inc.i.for.end.i_crit_edge ]
  %conv49.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %indvars.iv, %for.end.i.loopexit.split.loop.exit ], [ %69, %for.inc.i.for.end.i_crit_edge ]
  %73 = ptrtoint ptr %af_list_max59.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %af_list_max59.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %index.0.lcssa.i, i8 %74)
  %cmp61.i = icmp ne i8 %index.0.lcssa.i, %74
  call void @__sanitizer_cov_trace_cmp1(i8 %index.0.lcssa.i, i8 %66)
  %cmp71.i = icmp eq i8 %index.0.lcssa.i, %66
  %or.cond112.i = select i1 %cmp61.i, i1 %cmp71.i, i1 false
  br i1 %or.cond112.i, label %do.end76.i, label %for.end.i.fm_rx_update_af_cache.exit_crit_edge

for.end.i.fm_rx_update_af_cache.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm_rx_update_af_cache.exit

do.end76.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx79.i = getelementptr %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 1, i32 %conv49.lcssa.i
  %75 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add39.i, ptr %arrayidx79.i, align 4
  %76 = ptrtoint ptr %afcache_size50.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %afcache_size50.i, align 4
  %inc81.i = add i8 %77, 1
  br label %fm_rx_update_af_cache.exit.sink.split

fm_rx_update_af_cache.exit.sink.split:            ; preds = %do.end76.i, %if.then.i
  %.sink = phi i8 [ 0, %if.then.i ], [ %inc81.i, %do.end76.i ]
  %78 = ptrtoint ptr %afcache_size50.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink, ptr %afcache_size50.i, align 4
  br label %fm_rx_update_af_cache.exit

fm_rx_update_af_cache.exit:                       ; preds = %fm_rx_update_af_cache.exit.sink.split, %for.end.i.fm_rx_update_af_cache.exit_crit_edge, %if.end35.i.fm_rx_update_af_cache.exit_crit_edge, %if.end26.i.fm_rx_update_af_cache.exit_crit_edge, %if.end17.i.fm_rx_update_af_cache.exit_crit_edge, %if.end.i.fm_rx_update_af_cache.exit_crit_edge
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %3, align 1
  %81 = ptrtoint ptr %fm_band.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fm_band.i, align 4
  %conv.i204 = zext i8 %80 to i32
  %83 = add i8 %80, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %83)
  %84 = icmp ult i8 %83, 25
  br i1 %84, label %if.then.i208, label %if.end.i210

if.then.i208:                                     ; preds = %fm_rx_update_af_cache.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.i205 = add nsw i8 %80, 32
  %85 = ptrtoint ptr %af_list_max59.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %add.i205, ptr %af_list_max59.i, align 1
  br label %if.end78.sink.split

if.end.i210:                                      ; preds = %fm_rx_update_af_cache.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp14.i209 = icmp eq i8 %80, 0
  br i1 %cmp14.i209, label %if.end.i210.if.end78_crit_edge, label %if.end17.i214

if.end.i210.if.end78_crit_edge:                   ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.end17.i214:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp19.i211 = icmp eq i8 %82, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %80)
  %cmp23.i212 = icmp ugt i8 %80, -52
  %or.cond110.i213 = and i1 %cmp23.i212, %cmp19.i211
  br i1 %or.cond110.i213, label %if.end17.i214.if.end78_crit_edge, label %if.end26.i218

if.end17.i214.if.end78_crit_edge:                 ; preds = %if.end17.i214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.end26.i218:                                    ; preds = %if.end17.i214
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp28.i215 = icmp eq i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -116, i8 %80)
  %cmp32.i216 = icmp ugt i8 %80, -116
  %or.cond111.i217 = and i1 %cmp32.i216, %cmp28.i215
  br i1 %or.cond111.i217, label %if.end26.i218.if.end78_crit_edge, label %if.end35.i224

if.end26.i218.if.end78_crit_edge:                 ; preds = %if.end26.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.end35.i224:                                    ; preds = %if.end26.i218
  %86 = ptrtoint ptr %bot_freq.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bot_freq.i, align 4
  %mul.i220 = mul nuw nsw i32 %conv.i204, 100
  %add39.i221 = add i32 %87, %mul.i220
  %88 = ptrtoint ptr %freq41.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %freq41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i221, i32 %89)
  %cmp42.i223 = icmp eq i32 %add39.i221, %89
  br i1 %cmp42.i223, label %if.end35.i224.if.end78_crit_edge, label %for.cond.preheader.i227

if.end35.i224.if.end78_crit_edge:                 ; preds = %if.end35.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

for.cond.preheader.i227:                          ; preds = %if.end35.i224
  %90 = ptrtoint ptr %afcache_size50.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %afcache_size50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp52113.not.i226 = icmp eq i8 %91, 0
  br i1 %cmp52113.not.i226, label %for.cond.preheader.i227.for.end.i243_crit_edge, label %for.body.i232.preheader

for.cond.preheader.i227.for.end.i243_crit_edge:   ; preds = %for.cond.preheader.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i243

for.body.i232.preheader:                          ; preds = %for.cond.preheader.i227
  %92 = add i8 %91, -1
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %93, 1
  %wide.trip.count261 = zext i8 %91 to i32
  br label %for.body.i232

for.body.i232:                                    ; preds = %for.inc.i236.for.body.i232_crit_edge, %for.body.i232.preheader
  %indvars.iv259 = phi i32 [ 0, %for.body.i232.preheader ], [ %indvars.iv.next260, %for.inc.i236.for.body.i232_crit_edge ]
  %arrayidx.i230 = getelementptr %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 1, i32 %indvars.iv259
  %95 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i230, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add39.i221)
  %cmp54.i231 = icmp eq i32 %96, %add39.i221
  br i1 %cmp54.i231, label %for.end.i243.loopexit.split.loop.exit, label %for.inc.i236

for.inc.i236:                                     ; preds = %for.body.i232
  %indvars.iv.next260 = add nuw nsw i32 %indvars.iv259, 1
  %exitcond262.not = icmp eq i32 %indvars.iv.next260, %wide.trip.count261
  br i1 %exitcond262.not, label %for.inc.i236.for.end.i243_crit_edge, label %for.inc.i236.for.body.i232_crit_edge

for.inc.i236.for.body.i232_crit_edge:             ; preds = %for.inc.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i232

for.inc.i236.for.end.i243_crit_edge:              ; preds = %for.inc.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i243

for.end.i243.loopexit.split.loop.exit:            ; preds = %for.body.i232
  call void @__sanitizer_cov_trace_pc() #12
  %97 = trunc i32 %indvars.iv259 to i8
  br label %for.end.i243

for.end.i243:                                     ; preds = %for.end.i243.loopexit.split.loop.exit, %for.inc.i236.for.end.i243_crit_edge, %for.cond.preheader.i227.for.end.i243_crit_edge
  %index.0.lcssa.i237 = phi i8 [ 0, %for.cond.preheader.i227.for.end.i243_crit_edge ], [ %97, %for.end.i243.loopexit.split.loop.exit ], [ %91, %for.inc.i236.for.end.i243_crit_edge ]
  %conv49.lcssa.i238 = phi i32 [ 0, %for.cond.preheader.i227.for.end.i243_crit_edge ], [ %indvars.iv259, %for.end.i243.loopexit.split.loop.exit ], [ %94, %for.inc.i236.for.end.i243_crit_edge ]
  %98 = ptrtoint ptr %af_list_max59.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %af_list_max59.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %index.0.lcssa.i237, i8 %99)
  %cmp61.i240 = icmp ne i8 %index.0.lcssa.i237, %99
  call void @__sanitizer_cov_trace_cmp1(i8 %index.0.lcssa.i237, i8 %91)
  %cmp71.i241 = icmp eq i8 %index.0.lcssa.i237, %91
  %or.cond112.i242 = select i1 %cmp61.i240, i1 %cmp71.i241, i1 false
  br i1 %or.cond112.i242, label %do.end76.i246, label %for.end.i243.if.end78_crit_edge

for.end.i243.if.end78_crit_edge:                  ; preds = %for.end.i243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

do.end76.i246:                                    ; preds = %for.end.i243
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx79.i244 = getelementptr %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 1, i32 %conv49.lcssa.i238
  %100 = ptrtoint ptr %arrayidx79.i244 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add39.i221, ptr %arrayidx79.i244, align 4
  %101 = ptrtoint ptr %afcache_size50.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %afcache_size50.i, align 4
  %inc81.i245 = add i8 %102, 1
  br label %if.end78.sink.split

if.end78.sink.split:                              ; preds = %do.end76.i246, %if.then.i208
  %inc81.i245.sink = phi i8 [ %inc81.i245, %do.end76.i246 ], [ 0, %if.then.i208 ]
  %103 = ptrtoint ptr %afcache_size50.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %inc81.i245.sink, ptr %afcache_size50.i, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end78.sink.split, %for.end.i243.if.end78_crit_edge, %if.end35.i224.if.end78_crit_edge, %if.end26.i218.if.end78_crit_edge, %if.end17.i214.if.end78_crit_edge, %if.end.i210.if.end78_crit_edge, %do.end57.if.end78_crit_edge, %if.end23.if.end78_crit_edge
  %sub79 = add i32 %rds_len.0254, -3
  %add.ptr = getelementptr i8, ptr %rds_data.0255, i32 3
  %cmp = icmp ugt i32 %sub79, 2
  br i1 %cmp, label %if.end78.while.body_crit_edge, label %if.end78.while.endthread-pre-split_crit_edge

if.end78.while.endthread-pre-split_crit_edge:     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.endthread-pre-split

if.end78.while.body_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.endthread-pre-split:                        ; preds = %if.end78.while.endthread-pre-split_crit_edge, %do.end22, %while.body.while.endthread-pre-split_crit_edge
  %104 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %len, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.end.while.end_crit_edge
  %105 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %17, %if.end.while.end_crit_edge ]
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %rds_buff_lock = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 4
  %call88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rds_buff_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp94.not256 = icmp eq i32 %105, 0
  br i1 %cmp94.not256, label %while.end.while.end138_crit_edge, label %while.body96.lr.ph

while.end.while.end138_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end138

while.body96.lr.ph:                               ; preds = %while.end
  %buff122 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 6
  %wr_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %buf_size = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 3
  %rd_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  br label %while.body96

while.body96:                                     ; preds = %if.end135.while.body96_crit_edge, %while.body96.lr.ph
  %rds_data.1258 = phi ptr [ %107, %while.body96.lr.ph ], [ %add.ptr137, %if.end135.while.body96_crit_edge ]
  %rds_len.1257 = phi i32 [ %105, %while.body96.lr.ph ], [ %sub136, %if.end135.while.body96_crit_edge ]
  %arrayidx97 = getelementptr i8, ptr %rds_data.1258, i32 2
  %108 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx97, align 1
  %110 = and i8 %109, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %110)
  %cmp102 = icmp ugt i8 %110, 2
  %sub108 = sext i1 %cmp102 to i8
  %cond110 = add nsw i8 %110, %sub108
  %shl114 = shl nuw nsw i8 %cond110, 3
  %or = or i8 %shl114, %cond110
  %111 = ptrtoint ptr %rds_data.1258 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %rds_data.1258, align 1
  %arrayidx120 = getelementptr i8, ptr %rds_data.1258, i32 1
  %113 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx120, align 1
  %115 = ptrtoint ptr %buff122 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buff122, align 4
  %117 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wr_idx, align 4
  %arrayidx123 = getelementptr i8, ptr %116, i32 %118
  %119 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %112, ptr %arrayidx123, align 1
  %tmpbuf.sroa.5.0.arrayidx123.sroa_idx = getelementptr inbounds i8, ptr %arrayidx123, i32 1
  %120 = ptrtoint ptr %tmpbuf.sroa.5.0.arrayidx123.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %114, ptr %tmpbuf.sroa.5.0.arrayidx123.sroa_idx, align 1
  %tmpbuf.sroa.7.0.arrayidx123.sroa_idx = getelementptr inbounds i8, ptr %arrayidx123, i32 2
  %121 = ptrtoint ptr %tmpbuf.sroa.7.0.arrayidx123.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %or, ptr %tmpbuf.sroa.7.0.arrayidx123.sroa_idx, align 1
  %122 = load i32, ptr %wr_idx, align 4
  %add = add i32 %122, 3
  %123 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_size, align 4
  %rem = urem i32 %add, %124
  store i32 %rem, ptr %wr_idx, align 4
  %125 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rd_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %126)
  %cmp127 = icmp eq i32 %rem, %126
  br i1 %cmp127, label %do.end132, label %if.end135

do.end132:                                        ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %wr_idx to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %wr_idx, align 4
  %128 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %rd_idx, align 4
  br label %while.end138

if.end135:                                        ; preds = %while.body96
  %sub136 = add i32 %rds_len.1257, -3
  %add.ptr137 = getelementptr i8, ptr %rds_data.1258, i32 3
  %cmp94.not = icmp eq i32 %sub136, 0
  br i1 %cmp94.not, label %if.end135.while.end138_crit_edge, label %if.end135.while.body96_crit_edge

if.end135.while.body96_crit_edge:                 ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body96

if.end135.while.end138_crit_edge:                 ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end138

while.end138:                                     ; preds = %if.end135.while.end138_crit_edge, %do.end132, %while.end.while.end138_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rds_buff_lock, i32 noundef %call88) #10
  %wr_idx140 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %129 = ptrtoint ptr %wr_idx140 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %wr_idx140, align 4
  %rd_idx141 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %131 = ptrtoint ptr %rd_idx141 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rd_idx141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp142.not = icmp eq i32 %130, %132
  br i1 %cmp142.not, label %while.end138.if.end145_crit_edge, label %if.then144

while.end138.if.end145_crit_edge:                 ; preds = %while.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then144:                                       ; preds = %while.end138
  call void @__sanitizer_cov_trace_pc() #12
  %read_queue = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 2
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %while.end138.if.end145_crit_edge
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %133 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 6, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %134 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %135, i32 6
  %136 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %137(ptr noundef %fmdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %check_cmdresp_status.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rds_fmt) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_rds_finish(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %0 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %1 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %2, i32 7
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %4(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_tune_op_ended(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flag, align 2
  %2 = and i16 %1, 3
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mask, align 4
  %and321 = and i16 %2, %4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and321)
  %tobool.not = icmp eq i16 %and321, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.end

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %entry
  %flag4 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flag4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.else, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %maintask_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15
  tail call void @complete(ptr noundef %maintask_comp) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else, %do.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %.sink = phi i8 [ 8, %if.else ], [ 20, %do.end.if.end13_crit_edge ], [ 8, %entry.if.end13_crit_edge ]
  %irq_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %5 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %irq_info, align 4
  %handlers.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %handlers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handlers.i, align 4
  %idxprom.i = zext i8 %.sink to i32
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void %9(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_power_enb(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flag, align 2
  %2 = and i16 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %maintask_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15
  tail call void @complete(ptr noundef %maintask_comp) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %3 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 9, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %4 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 9
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %7(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_low_rssi_start(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %af_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %0 = ptrtoint ptr %af_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %af_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %irq_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flag, align 2
  %4 = and i16 %3, 32
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mask, align 4
  %and538 = and i16 %4, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and538)
  %tobool.not = icmp eq i16 %and538, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp8.not = icmp eq i32 %8, -1
  br i1 %cmp8.not, label %land.lhs.true6.if.else_crit_edge, label %land.lhs.true10

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %afcache_size = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %9 = ptrtoint ptr %afcache_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %afcache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13.not = icmp eq i8 %10, 0
  br i1 %cmp13.not, label %land.lhs.true10.if.else_crit_edge, label %do.end

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end:                                           ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %11 = and i16 %6, -33
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %mask, align 4
  %afjump_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 7
  %13 = ptrtoint ptr %afjump_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %afjump_idx, align 4
  %freq_before_jump = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 8
  %14 = ptrtoint ptr %freq_before_jump to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %freq_before_jump, align 4
  %15 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %irq_info, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %irq_info25 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %16 = ptrtoint ptr %irq_info25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 23, ptr %irq_info25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %handlers.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %17 = ptrtoint ptr %handlers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handlers.i, align 4
  %19 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %irq_info.i, align 4
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  tail call void %22(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_set_pi(ptr noundef %fmdev) #1 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #10
  %stat_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11
  %0 = ptrtoint ptr %stat_info to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %stat_info, align 4
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %payload, align 2
  %call = call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %3 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 11, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 500
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_set_pi_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #10
  %resp_skb_lock.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i.i) #10
  %resp_skb.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i.i, align 4
  store ptr null, ptr %resp_skb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i.i, i32 noundef %call3.i.i) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i.i, label %if.then.i, label %check_cmdresp_status.exit.i

check_cmdresp_status.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i.i, align 1
  %conv15.i.i = zext i8 %7 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 500
  %call19.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #10
  br label %fm_irq_common_cmd_resp_helper.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_info.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 12, ptr %irq_info.i.i, align 4
  %handlers.i.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handlers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %11, i32 12
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %13(ptr noundef %fmdev) #10
  br label %fm_irq_common_cmd_resp_helper.exit

fm_irq_common_cmd_resp_helper.exit:               ; preds = %if.then.i, %check_cmdresp_status.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_set_pimask(ptr noundef %fmdev) #1 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #10
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %payload, align 2
  %call = call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %1 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 13, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 500
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_set_pimask_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #10
  %resp_skb_lock.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i.i) #10
  %resp_skb.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i.i, align 4
  store ptr null, ptr %resp_skb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i.i, i32 noundef %call3.i.i) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i.i, label %if.then.i, label %check_cmdresp_status.exit.i

check_cmdresp_status.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i.i, align 1
  %conv15.i.i = zext i8 %7 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 500
  %call19.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #10
  br label %fm_irq_common_cmd_resp_helper.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_info.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 14, ptr %irq_info.i.i, align 4
  %handlers.i.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handlers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %11, i32 14
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %13(ptr noundef %fmdev) #10
  br label %fm_irq_common_cmd_resp_helper.exit

fm_irq_common_cmd_resp_helper.exit:               ; preds = %if.then.i, %check_cmdresp_status.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_setfreq(ptr noundef %fmdev) #1 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #10
  %afjump_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 7
  %0 = ptrtoint ptr %afjump_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %afjump_idx, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %bot_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %4 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bot_freq, align 4
  %sub = sub i32 %3, %5
  %div = udiv i32 %sub, 50
  %conv = trunc i32 %div to i16
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %payload, align 2
  %call = call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 11, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %7 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 15, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 500
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_setfreq_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #10
  %resp_skb_lock.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i.i) #10
  %resp_skb.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i.i, align 4
  store ptr null, ptr %resp_skb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i.i, i32 noundef %call3.i.i) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i.i, label %if.then.i, label %check_cmdresp_status.exit.i

check_cmdresp_status.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i.i, align 1
  %conv15.i.i = zext i8 %7 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 500
  %call19.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #10
  br label %fm_irq_common_cmd_resp_helper.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_info.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %irq_info.i.i, align 4
  %handlers.i.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handlers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %11, i32 16
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %13(ptr noundef %fmdev) #10
  br label %fm_irq_common_cmd_resp_helper.exit

fm_irq_common_cmd_resp_helper.exit:               ; preds = %if.then.i, %check_cmdresp_status.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_enableint(ptr noundef %fmdev) #1 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #10
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %payload, align 2
  %call = call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %1 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 17, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 500
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_enableint_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #10
  %resp_skb_lock.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i.i) #10
  %resp_skb.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i.i, align 4
  store ptr null, ptr %resp_skb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i.i, i32 noundef %call3.i.i) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i.i, label %if.then.i, label %check_cmdresp_status.exit.i

check_cmdresp_status.exit.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i.i, align 1
  %conv15.i.i = zext i8 %7 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 500
  %call19.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #10
  br label %fm_irq_common_cmd_resp_helper.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_info.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %irq_info.i.i, align 4
  %handlers.i.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %handlers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handlers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %11, i32 18
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %13(ptr noundef %fmdev) #10
  br label %fm_irq_common_cmd_resp_helper.exit

fm_irq_common_cmd_resp_helper.exit:               ; preds = %if.then.i, %check_cmdresp_status.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_start_afjump(ptr noundef %fmdev) #1 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #10
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 3, ptr %payload, align 2
  %call = call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 45, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %1 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 500
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_start_afjump_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  %resp_skb_lock.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i) #10
  %resp_skb.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i, align 4
  store ptr null, ptr %resp_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i, i32 noundef %call3.i) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %status.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i, label %if.end, label %check_cmdresp_status.exit

check_cmdresp_status.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i, align 1
  %conv15.i = zext i8 %7 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 500
  %call19.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %irq_info, align 4
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flag) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flag) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %check_cmdresp_status.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_rd_freq(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %0 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 21, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, 500
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_afjump_rd_freq_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  %resp_skb_lock.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i) #10
  %resp_skb.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i, align 4
  store ptr null, ptr %resp_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i, i32 noundef %call3.i) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %status.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i, label %if.end, label %check_cmdresp_status.exit

check_cmdresp_status.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i, align 1
  %conv15.i = zext i8 %7 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 500
  %call19.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 7) #10
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %read_freq.0.copyload = load i16, ptr %10, align 1
  %bot_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %12 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bot_freq, align 4
  %conv = zext i16 %read_freq.0.copyload to i32
  %mul = mul nuw nsw i32 %conv, 50
  %add = add i32 %mul, %13
  %afjump_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 7
  %freq_before_jump = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 8
  %14 = ptrtoint ptr %freq_before_jump to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq_before_jump, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp.not = icmp eq i32 %add, %15
  br i1 %cmp.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %afjump_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %afjump_idx, align 4
  %idxprom = zext i8 %17 to i32
  %arrayidx = getelementptr %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 1, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp6 = icmp eq i32 %add, %19
  br i1 %cmp6, label %do.end, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  %freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %freq, align 4
  tail call void @fm_rx_reset_rds_cache(ptr noundef %fmdev) #10
  %af_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %21 = ptrtoint ptr %af_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %af_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp12 = icmp eq i8 %22, 1
  br i1 %cmp12, label %if.then14, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask, align 4
  %25 = or i16 %24, 32
  store i16 %25, ptr %mask, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.end.if.end17_crit_edge
  %irq_info18 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %26 = ptrtoint ptr %irq_info18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 22, ptr %irq_info18, align 4
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %27 = ptrtoint ptr %afjump_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %afjump_idx, align 4
  %inc = add i8 %28, 1
  store i8 %inc, ptr %afjump_idx, align 4
  %afcache_size = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %29 = ptrtoint ptr %afcache_size to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %afcache_size, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc, i8 %30)
  %cmp27.not = icmp ult i8 %inc, %30
  %irq_info39 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  br i1 %cmp27.not, label %do.end38, label %do.end32

do.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %irq_info39 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 22, ptr %irq_info39, align 4
  br label %if.end42

do.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %irq_info39 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 10, ptr %irq_info39, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %do.end32, %if.end17
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %handlers.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %33 = ptrtoint ptr %handlers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handlers.i, align 4
  %35 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %irq_info.i, align 4
  %idxprom.i = zext i8 %36 to i32
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  tail call void %38(ptr noundef %fmdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %check_cmdresp_status.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_low_rssi_finish(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %0 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 23, ptr %irq_info.i, align 4
  %handlers.i.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %1 = ptrtoint ptr %handlers.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handlers.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %2, i32 23
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %4(ptr noundef %fmdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_send_intmsk_cmd(ptr noundef %fmdev) #1 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #10
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mask, align 4
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %payload, align 2
  %call = call fastcc i32 @fm_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %3 = ptrtoint ptr %irq_info.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %irq_info.i, align 4
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 500
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm_irq_handle_intmsk_cmd_resp(ptr noundef %fmdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 3
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #10
  %resp_skb_lock.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resp_skb_lock.i) #10
  %resp_skb.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 14
  %0 = ptrtoint ptr %resp_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp_skb.i, align 4
  store ptr null, ptr %resp_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resp_skb_lock.i, i32 noundef %call3.i) #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %status.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9.not.i = icmp eq i8 %5, 0
  br i1 %cmp9.not.i, label %if.end, label %check_cmdresp_status.exit

check_cmdresp_status.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %op.i = getelementptr inbounds %struct.fm_event_msg_hdr, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %op.i, align 1
  %conv15.i = zext i8 %7 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv15.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 500
  %call19.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_info to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %irq_info, align 4
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 6
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %handlers = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handlers, align 4
  %12 = ptrtoint ptr %irq_info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %irq_info, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr ptr, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void %15(ptr noundef %fmdev) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flag) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %check_cmdresp_status.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !107, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122, !124, !125, !127, !129, !131, !132, !133, !135, !136, !138, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !253, !254, !255, !256, !258, !259, !260}
!llvm.module.flags = !{!261, !262, !263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !{ptr @__param_default_radio_region, !1, !"__param_default_radio_region", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_default_radio_regiontype321, !1, !"__UNIQUE_ID_default_radio_regiontype321", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_default_radio_region322, !4, !"__UNIQUE_ID_default_radio_region322", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 55, i32 1}
!5 = !{ptr @__param_default_rds_buf, !6, !"__param_default_rds_buf", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 59, i32 1}
!7 = !{ptr @__UNIQUE_ID_default_rds_buftype323, !6, !"__UNIQUE_ID_default_rds_buftype323", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_default_rds_buf324, !9, !"__UNIQUE_ID_default_rds_buf324", i1 false, i1 false}
!9 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 60, i32 1}
!10 = !{ptr @__param_radio_nr, !11, !"__param_radio_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 64, i32 1}
!12 = !{ptr @__UNIQUE_ID_radio_nrtype325, !11, !"__UNIQUE_ID_radio_nrtype325", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_radio_nr326, !14, !"__UNIQUE_ID_radio_nr326", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 65, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 464, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fmc_send_cmd._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @fmc_send_cmd._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 469, i32 3}
!23 = !{ptr @fmc_send_cmd._entry.3, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @fmc_send_cmd._entry_ptr.5, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 479, i32 3}
!27 = !{ptr @fmc_send_cmd._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fmc_send_cmd._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1125, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fmc_get_freq._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @fmc_get_freq._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1129, i32 3}
!36 = !{ptr @fmc_get_freq._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fmc_get_freq._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1376, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @fmc_set_mode._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @fmc_set_mode._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1388, i32 4}
!45 = !{ptr @fmc_set_mode._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @fmc_set_mode._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @fmc_set_mode._entry.19, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1399, i32 5}
!49 = !{ptr @fmc_set_mode._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1406, i32 4}
!52 = !{ptr @fmc_set_mode._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fmc_set_mode._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1417, i32 4}
!56 = !{ptr @fmc_set_mode._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fmc_set_mode._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1427, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fmc_get_mode._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @fmc_get_mode._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @fmc_get_mode._entry.29, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1431, i32 3}
!65 = !{ptr @fmc_get_mode._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @fmc_prepare.fm_st_proto, !67, !"fm_st_proto", i1 false, i1 false}
!67 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1482, i32 27}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1511, i32 4}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fmc_prepare._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @fmc_prepare._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1516, i32 4}
!75 = !{ptr @fmc_prepare._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @fmc_prepare._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1523, i32 3}
!79 = !{ptr @fmc_prepare._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @fmc_prepare._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1530, i32 3}
!83 = !{ptr @fmc_prepare._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fmc_prepare._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1533, i32 4}
!87 = !{ptr @fmc_prepare._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @fmc_prepare._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @fmc_prepare.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1537, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fmc_prepare.__key.46, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1538, i32 2}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fmc_prepare.__key.48, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1552, i32 2}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @fmc_prepare.__key.50, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1568, i32 2}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @fmc_release.fm_st_proto, !102, !"fm_st_proto", i1 false, i1 false}
!102 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1582, i32 27}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1607, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @fmc_release._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @fmc_release._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @__initcall__kmod_fm_drv__329_1668_fm_drv_init6, !109, !"__initcall__kmod_fm_drv__329_1668_fm_drv_init6", i1 false, i1 false}
!109 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1668, i32 1}
!110 = !{ptr @__exitcall_fm_drv_exit, !111, !"__exitcall_fm_drv_exit", i1 false, i1 false}
!111 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1669, i32 1}
!112 = !{ptr @__UNIQUE_ID_author330, !113, !"__UNIQUE_ID_author330", i1 false, i1 false}
!113 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1672, i32 1}
!114 = !{ptr @__UNIQUE_ID_description331, !115, !"__UNIQUE_ID_description331", i1 false, i1 false}
!115 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1673, i32 1}
!116 = !{ptr @__UNIQUE_ID_version332, !117, !"__UNIQUE_ID_version332", i1 false, i1 false}
!117 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1674, i32 1}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__modver_attr, !117, !"__modver_attr", i1 false, i1 false}
!122 = !{ptr @__UNIQUE_ID_file333, !123, !"__UNIQUE_ID_file333", i1 false, i1 false}
!123 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1675, i32 1}
!124 = !{ptr @__UNIQUE_ID_license334, !123, !"__UNIQUE_ID_license334", i1 false, i1 false}
!125 = !{ptr @default_radio_region, !126, !"default_radio_region", i1 false, i1 false}
!126 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 53, i32 11}
!127 = !{ptr @g_st_write, !128, !"g_st_write", i1 false, i1 false}
!128 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 167, i32 15}
!129 = !{ptr @wait_for_fmdrv_reg_comp, !130, !"wait_for_fmdrv_reg_comp", i1 false, i1 false}
!130 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 168, i32 26}
!131 = !{ptr @__param_str_default_radio_region, !1, !"__param_str_default_radio_region", i1 false, i1 false}
!132 = !{ptr @__param_str_default_rds_buf, !6, !"__param_str_default_rds_buf", i1 false, i1 false}
!133 = !{ptr @default_rds_buf, !134, !"default_rds_buf", i1 false, i1 false}
!134 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 58, i32 12}
!135 = !{ptr @__param_str_radio_nr, !11, !"__param_str_radio_nr", i1 false, i1 false}
!136 = !{ptr @radio_nr, !137, !"radio_nr", i1 false, i1 false}
!137 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 63, i32 12}
!138 = !{ptr @region_configs, !139, !"region_configs", i1 false, i1 false}
!139 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 35, i32 27}
!140 = !{ptr @init_completion.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../include/linux/completion.h", i32 87, i32 2}
!142 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 387, i32 3}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @fm_send_cmd._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @fm_send_cmd._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 391, i32 3}
!150 = !{ptr @fm_send_cmd._entry.60, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @fm_send_cmd._entry_ptr.62, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 402, i32 3}
!154 = !{ptr @fm_send_cmd._entry.63, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @fm_send_cmd._entry_ptr.65, !153, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!158 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!159 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1211, i32 3}
!165 = !{ptr @fm_power_down._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @fm_power_down._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1315, i32 3}
!169 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @fm_power_up._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @fm_power_up._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1325, i32 3}
!174 = !{ptr @fm_power_up._entry.72, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @fm_power_up._entry_ptr.74, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1348, i32 19}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1348, i32 35}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1357, i32 4}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1357, i32 26}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1244, i32 3}
!186 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @fm_download_firmware._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @fm_download_firmware._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1254, i32 3}
!191 = !{ptr @fm_download_firmware._entry.81, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @fm_download_firmware._entry_ptr.83, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1447, i32 3}
!195 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @fm_st_receive._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @fm_st_receive._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1452, i32 3}
!200 = !{ptr @fm_st_receive._entry.86, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @fm_st_receive._entry_ptr.88, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @skb_queue_head_init.__key, !203, !"__key", i1 false, i1 false}
!203 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!204 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 346, i32 3}
!207 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @send_tasklet._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @send_tasklet._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 359, i32 3}
!212 = !{ptr @send_tasklet._entry.92, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @send_tasklet._entry_ptr.94, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 368, i32 3}
!216 = !{ptr @send_tasklet._entry.95, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @send_tasklet._entry_ptr.97, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 263, i32 4}
!220 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @recv_tasklet._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @recv_tasklet._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 279, i32 6}
!225 = !{ptr @recv_tasklet._entry.100, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @recv_tasklet._entry_ptr.102, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 307, i32 5}
!229 = !{ptr @recv_tasklet._entry.103, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @recv_tasklet._entry_ptr.105, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 319, i32 4}
!233 = !{ptr @recv_tasklet._entry.106, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @recv_tasklet._entry_ptr.108, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 555, i32 3}
!237 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @int_timeout_handler._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @int_timeout_handler._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1628, i32 3}
!242 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @fm_drv_init._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @fm_drv_init._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 1634, i32 3}
!247 = !{ptr @fm_drv_init._entry.113, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @fm_drv_init._entry_ptr.115, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @int_handler_table, !250, !"int_handler_table", i1 false, i1 false}
!250 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 139, i32 30}
!251 = !{ptr @.str.116, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 515, i32 3}
!253 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @check_cmdresp_status._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @check_cmdresp_status._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.118, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/radio/wl128x/fmdrv_common.c", i32 597, i32 3}
!258 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @fm_irq_handle_hw_malfunction._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @fm_irq_handle_hw_malfunction._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{i32 1, !"wchar_size", i32 2}
!262 = !{i32 1, !"min_enum_size", i32 4}
!263 = !{i32 8, !"branch-target-enforcement", i32 0}
!264 = !{i32 8, !"sign-return-address", i32 0}
!265 = !{i32 8, !"sign-return-address-all", i32 0}
!266 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!267 = !{i32 7, !"uwtable", i32 1}
!268 = !{i32 7, !"frame-pointer", i32 2}
!269 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!270 = !{!"auto-init"}
!271 = !{i64 2152624575, i64 2152624600}
!272 = !{i64 2148234866, i64 2148234892, i64 2148234921, i64 2148234955, i64 2148234986, i64 2148235009}
!273 = !{i64 680406, i64 680423}
