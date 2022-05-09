; ModuleID = '/llk/IR_all_yes/drivers/media/common/siano/smsdvb-main.c_pt.bc'
source_filename = "../drivers/media/common/siano/smsdvb-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.smsclient_params_t = type { i32, i32, ptr, ptr, ptr }
%struct.smsdvb_client_t = type { %struct.list_head, ptr, ptr, %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, %struct.dvb_frontend, i32, %struct.completion, %struct.completion, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.98], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.98 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.99 }>
%union.anon.99 = type { i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sms_board = type { i32, ptr, [12 x ptr], %struct.sms_board_gpio_cfg, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.sms_board_gpio_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smscore_device_t = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, i32, i32, ptr, i32, i16, %struct.ir_t, i8, i32, ptr }
%struct.ir_t = type { ptr, [40 x i8], [32 x i8], ptr, i32, i32 }
%struct.sms_msg_data = type { %struct.sms_msg_hdr, [1 x i32] }
%struct.sms_msg_hdr = type { i16, i8, i8, i16, i16 }
%struct.dvb_demux_feed = type { %union.anon.90, %union.anon.91, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.90 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.smscore_buffer_t = type { %struct.list_head, i32, i32, ptr, i32, i32 }
%struct.sms_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RECEPTION_STATISTICS_PER_SLICES_S = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sms_isdbt_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct.sms_isdbt_layer_stats], i32 }
%struct.sms_isdbt_layer_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sms_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32] }
%struct.sms_isdbt_stats_ex = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct.sms_isdbt_layer_stats], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, [4 x i32] }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.anon.101 = type { %struct.sms_msg_hdr, [3 x i32] }
%struct.anon.102 = type { %struct.sms_msg_hdr, [4 x i32] }

@__param_str_adapter_nr = internal constant [18 x i8] c"smsdvb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype301 = internal constant [42 x i8] c"smsdvb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr302 = internal constant [43 x i8] c"smsdvb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@g_smsdvb_clientslock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @g_smsdvb_clientslock, i64 52), ptr getelementptr (i8, ptr @g_smsdvb_clientslock, i64 52) }, ptr @g_smsdvb_clientslock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@g_smsdvb_clients = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @g_smsdvb_clients, ptr @g_smsdvb_clients }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_smsdvb__317_1266_smsdvb_module_init6 = internal global ptr @smsdvb_module_init, section ".initcall6.init", align 4
@__exitcall_smsdvb_module_exit = internal global ptr @smsdvb_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description318 = internal constant [55 x i8] c"smsdvb.description=SMS DVB subsystem adaptation module\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [61 x i8] c"smsdvb.author=Siano Mobile Silicon, Inc. (uris@siano-ms.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [46 x i8] c"smsdvb.file=drivers/media/common/siano/smsdvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [19 x i8] c"smsdvb.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%s: dvb_register_adapter() failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsdvb_hotplug\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/common/siano/smsdvb-main.c\00", [55 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr = internal global ptr @smsdvb_hotplug._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smsdvb\00", [25 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%s: dvb_dmx_init failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.6 = internal global ptr @smsdvb_hotplug._entry.4, section ".printk_index", align 4
@smsdvb_hotplug._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%s: dvb_dmxdev_init failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.9 = internal global ptr @smsdvb_hotplug._entry.7, section ".printk_index", align 4
@smsdvb_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Siano Mobile Digital MDTV Receiver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 250000, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] zeroinitializer, ptr null, ptr @smsdvb_release, ptr null, ptr @smsdvb_init, ptr @smsdvb_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsdvb_set_frontend, ptr @smsdvb_get_tune_settings, ptr null, ptr @smsdvb_read_status, ptr @smsdvb_read_ber, ptr @smsdvb_read_signal_strength, ptr @smsdvb_read_snr, ptr @smsdvb_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%s: frontend registration failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.12 = internal global ptr @smsdvb_hotplug._entry.10, section ".printk_index", align 4
@smsdvb_hotplug._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%s: smscore_register_client() failed %d\0A\00", [50 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.15 = internal global ptr @smsdvb_hotplug._entry.13, section ".printk_index", align 4
@smsdvb_hotplug._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:%s: failed to create debugfs node\0A\00", [56 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.18 = internal global ptr @smsdvb_hotplug._entry.16, section ".printk_index", align 4
@smsdvb_hotplug._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%s: dvb_create_media_graph failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.21 = internal global ptr @smsdvb_hotplug._entry.19, section ".printk_index", align 4
@smsdvb_hotplug._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:%s: DVB interface registered.\0A\00", [60 x i8] zeroinitializer }, align 32
@smsdvb_hotplug._entry_ptr.24 = internal global ptr @smsdvb_hotplug._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smsdvb_start_feed.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smsdvb_start_feed\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"add pid %d(%x)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:%s: add pid %d(%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@smsdvb_stop_feed.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smsdvb_stop_feed\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"remove pid %d(%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%s: remove pid %d(%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@smsdvb_dvbt_set_frontend.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smsdvb_dvbt_set_frontend\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: freq %d band %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%s: %s: freq %d band %d\0A\00", [36 x i8] zeroinitializer }, align 32
@smsdvb_isdbt_set_frontend.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsdvb_isdbt_set_frontend\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"freq %d segwidth %d segindex %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%s: freq %d segwidth %d segindex %d\0A\00", [56 x i8] zeroinitializer }, align 32
@smsdvb_get_tune_settings.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smsdvb_get_tune_settings\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%s: \0A\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@smsdvb_onresponse.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smsdvb_onresponse\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"message not handled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%s: message not handled\0A\00", [36 x i8] zeroinitializer }, align 32
@sms_to_guard_interval_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@sms_to_code_rate_table = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@sms_to_hierarchy_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@sms_to_modulation_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 12], [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sms_board_dvb3_event\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DVB3_EVENT_INIT\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%s: DVB3_EVENT_INIT\0A\00", [40 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DVB3_EVENT_SLEEP\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%s: DVB3_EVENT_SLEEP\0A\00", [39 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.49, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVB3_EVENT_HOTPLUG\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%s: DVB3_EVENT_HOTPLUG\0A\00", [37 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVB3_EVENT_FE_LOCK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%s: DVB3_EVENT_FE_LOCK\0A\00", [37 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.53, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DVB3_EVENT_FE_UNLOCK\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%s: DVB3_EVENT_FE_UNLOCK\0A\00", [35 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.55, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DVB3_EVENT_UNC_OK\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%s: DVB3_EVENT_UNC_OK\0A\00", [38 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.57, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVB3_EVENT_UNC_ERR\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%s: DVB3_EVENT_UNC_ERR\0A\00", [37 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.44, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s:%s: Unknown dvb3 api event\0A\00", [63 x i8] zeroinitializer }, align 32
@sms_board_dvb3_event._entry_ptr = internal global ptr @sms_board_dvb3_event._entry, section ".printk_index", align 4
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"g_smsdvb_clientslock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"g_smsdvb_clientslock\00", [43 x i8] zeroinitializer }, align 32
@smsdvb_module_init.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.62, ptr @.str.2, ptr @.str.38, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsdvb_module_init\00", [45 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_hotplug = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\03\03\03\03\08\08", [25 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_onresponse = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 2, i32 3, i32 2, i32 2, i32 2, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_onresponse.63 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 3, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_onresponse.64 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 2, i32 4, i32 1, i32 4, i32 4, i32 4, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_onresponse.65 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 2, i32 3, i32 2, i32 2, i32 2, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_onresponse.66 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 3, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.smsdvb_onresponse.67 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 2, i32 4, i32 1, i32 4, i32 4, i32 4, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 562, i64 616, i64 630, i64 654, i64 693, i64 777, i64 782, i64 827, i64 828]
@__sancov_gen_cov_switch_values.68 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 7, i64 8]
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"g_smsdvb_clientslock\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"g_smsdvb_clients\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 29, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 27, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1123, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1137, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1148, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"smsdvb_fe_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1072, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1169, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1181, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1203, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1207, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1211, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 682, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 704, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 908, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 993, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 874, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 614, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"sms_to_guard_interval_table\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 32, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"sms_to_code_rate_table\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 39, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"sms_to_hierarchy_table\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 48, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant [24 x i8] c"sms_to_modulation_table\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 55, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 87, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 70, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 74, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 78, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 84, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 91, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 98, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 105, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 111, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 30, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [44 x i8] c"../drivers/media/common/siano/smsdvb-main.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1247, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [28 x i8] c"switch.table.smsdvb_hotplug\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [31 x i8] c"switch.table.smsdvb_onresponse\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [34 x i8] c"switch.table.smsdvb_onresponse.63\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [34 x i8] c"switch.table.smsdvb_onresponse.64\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [34 x i8] c"switch.table.smsdvb_onresponse.65\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [34 x i8] c"switch.table.smsdvb_onresponse.66\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [34 x i8] c"switch.table.smsdvb_onresponse.67\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_adapter_nr302, ptr @__UNIQUE_ID_adapter_nrtype301, ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__exitcall_smsdvb_module_exit, ptr @__initcall__kmod_smsdvb__317_1266_smsdvb_module_init6, ptr @__param_adapter_nr, ptr @sms_board_dvb3_event._entry, ptr @sms_board_dvb3_event._entry_ptr, ptr @smsdvb_hotplug._entry, ptr @smsdvb_hotplug._entry.10, ptr @smsdvb_hotplug._entry.13, ptr @smsdvb_hotplug._entry.16, ptr @smsdvb_hotplug._entry.19, ptr @smsdvb_hotplug._entry.22, ptr @smsdvb_hotplug._entry.4, ptr @smsdvb_hotplug._entry.7, ptr @smsdvb_hotplug._entry_ptr, ptr @smsdvb_hotplug._entry_ptr.12, ptr @smsdvb_hotplug._entry_ptr.15, ptr @smsdvb_hotplug._entry_ptr.18, ptr @smsdvb_hotplug._entry_ptr.21, ptr @smsdvb_hotplug._entry_ptr.24, ptr @smsdvb_hotplug._entry_ptr.6, ptr @smsdvb_hotplug._entry_ptr.9, ptr @smsdvb_module_exit, ptr @g_smsdvb_clientslock, ptr @g_smsdvb_clients, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @smsdvb_fe_ops, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @sms_to_guard_interval_table, ptr @sms_to_code_rate_table, ptr @sms_to_hierarchy_table, ptr @sms_to_modulation_table, ptr @init_completion.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @switch.table.smsdvb_hotplug, ptr @switch.table.smsdvb_onresponse, ptr @switch.table.smsdvb_onresponse.63, ptr @switch.table.smsdvb_onresponse.64, ptr @switch.table.smsdvb_onresponse.65, ptr @switch.table.smsdvb_onresponse.66, ptr @switch.table.smsdvb_onresponse.67], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_smsdvb_clientslock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_smsdvb_clients to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_hotplug._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sms_to_guard_interval_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sms_to_code_rate_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sms_to_hierarchy_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sms_to_modulation_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sms_board_dvb3_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_hotplug to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_onresponse to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_onresponse.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_onresponse.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_onresponse.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_onresponse.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smsdvb_onresponse.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smsdvb_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smscore_unregister_hotplug(ptr noundef nonnull @smsdvb_hotplug) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @g_smsdvb_clientslock, i32 noundef 0) #8
  %0 = load volatile ptr, ptr @g_smsdvb_clients, align 4
  %cmp.i.not1 = icmp eq ptr %0, @g_smsdvb_clients
  br i1 %cmp.i.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %2, %while.body.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  tail call fastcc void @smsdvb_unregister_client(ptr noundef %1)
  %2 = load volatile ptr, ptr @g_smsdvb_clients, align 4
  %cmp.i.not = icmp eq ptr %2, @g_smsdvb_clients
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @smsdvb_debugfs_unregister() #8
  tail call void @mutex_unlock(ptr noundef nonnull @g_smsdvb_clientslock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_unregister_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_hotplug(ptr noundef %coredev, ptr noundef %device, i32 noundef %arrival) #2 align 64 {
entry:
  %params = alloca %struct.smsclient_params_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %0 = getelementptr inbounds %struct.smsclient_params_t, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.smsclient_params_t, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.smsclient_params_t, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.smsclient_params_t, ptr %params, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arrival)
  %tobool.not = icmp eq i32 %arrival, 0
  %4 = call ptr @memset(ptr %params, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3096) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %adapter = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 3
  %call4 = tail call i32 @smscore_get_board_id(ptr noundef %coredev) #8
  %call5 = tail call ptr @sms_get_board(i32 noundef %call4) #8
  %name = getelementptr inbounds %struct.sms_board, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call6 = tail call i32 @dvb_register_adapter(ptr noundef %adapter, ptr noundef %7, ptr noundef null, ptr noundef %device, ptr noundef nonnull @adapter_nr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call6) #12
  br label %adapter_error

if.end9:                                          ; preds = %if.end3
  %media_dev = getelementptr inbounds %struct.smscore_device_t, ptr %coredev, i32 0, i32 44
  %8 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %media_dev, align 4
  %mdev1.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mdev1.i, align 4
  %demux = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %demux, align 8
  %filternum = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smsdvb_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @smsdvb_stop_feed, ptr %stop_feed, align 4
  %call16 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call16) #12
  br label %dvbdmx_error

if.end24:                                         ; preds = %if.end9
  %dmxdev = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 5
  %filternum25 = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %filternum25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %filternum25, align 8
  %demux29 = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %demux29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %demux, ptr %demux29, align 4
  %capabilities31 = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %capabilities31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %capabilities31, align 4
  %call34 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call34) #12
  br label %dmxdev_error

if.end42:                                         ; preds = %if.end24
  %frontend = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 6
  %ops = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 6, i32 1
  %19 = call ptr @memcpy(ptr %ops, ptr @smsdvb_fe_ops, i32 544)
  %call43 = tail call i32 @smscore_get_device_mode(ptr noundef %coredev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call43)
  %20 = icmp ult i32 %call43, 7
  br i1 %20, label %switch.hole_check, label %if.end42.sw.epilog_crit_edge

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end42
  %switch.maskindex = trunc i32 %call43 to i8
  %switch.shifted = lshr i8 113, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.smsdvb_hotplug, i32 0, i32 %call43
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %22)
  %switch.load = load i8, ptr %switch.gep, align 1
  %delsys49 = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %23 = ptrtoint ptr %delsys49 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %switch.load, ptr %delsys49, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge
  %call53 = tail call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef %frontend) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end61

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call53) #12
  br label %frontend_error

if.end61:                                         ; preds = %sw.epilog
  %24 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %params, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 693, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @smsdvb_onresponse, ptr %1, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @smsdvb_onremove, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %3, align 4
  %smsclient = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 2
  %call62 = call i32 @smscore_register_client(ptr noundef %coredev, ptr noundef nonnull %params, ptr noundef %smsclient) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call62) #12
  br label %client_error

if.end70:                                         ; preds = %if.end61
  %coredev71 = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %coredev71 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %coredev, ptr %coredev71, align 8
  %tune_done = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %tune_done to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tune_done, align 4
  %wait.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  %stats_done = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %stats_done to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stats_done, align 4
  %wait.i162 = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i162, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  call void @mutex_lock_nested(ptr noundef nonnull @g_smsdvb_clientslock, i32 noundef 0) #8
  %32 = load ptr, ptr @g_smsdvb_clients, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @g_smsdvb_clients, ptr noundef %32) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end70.list_add.exit_crit_edge

if.end70.list_add.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @g_smsdvb_clients, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @g_smsdvb_clients, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end70.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @g_smsdvb_clientslock) #8
  %event_fe_state = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 13
  %36 = ptrtoint ptr %event_fe_state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %event_fe_state, align 8
  %event_unc_state = getelementptr inbounds %struct.smsdvb_client_t, ptr %call7.i.i, i32 0, i32 14
  %37 = ptrtoint ptr %event_unc_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %event_unc_state, align 4
  call fastcc void @sms_board_dvb3_event(ptr noundef nonnull %call7.i.i, i32 noundef 2)
  %call73 = call i32 @sms_board_setup(ptr noundef %coredev) #8
  %call74 = call i32 @smsdvb_debugfs_create(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end79, label %list_add.exit.if.end82_crit_edge

list_add.exit.if.end82_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end79:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #12
  br label %if.end82

if.end82:                                         ; preds = %do.end79, %list_add.exit.if.end82_crit_edge
  %call84 = call i32 @dvb_create_media_graph(ptr noundef %adapter, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end89, label %do.end95

do.end89:                                         ; preds = %if.end82
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call84) #12
  call void @mutex_lock_nested(ptr noundef nonnull @g_smsdvb_clientslock, i32 noundef 0) #8
  %call.i.i163 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i) #8
  br i1 %call.i.i163, label %if.end.i.i164, label %do.end89.list_del.exit_crit_edge

do.end89.list_del.exit_crit_edge:                 ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i164:                                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i164, %do.end89.list_del.exit_crit_edge
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef nonnull @g_smsdvb_clientslock) #8
  call void @smsdvb_debugfs_release(ptr noundef nonnull %call7.i.i) #8
  br label %client_error

do.end95:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #12
  br label %cleanup

client_error:                                     ; preds = %list_del.exit, %do.end67
  %rc.0 = phi i32 [ %call62, %do.end67 ], [ %call84, %list_del.exit ]
  %call100 = call i32 @dvb_unregister_frontend(ptr noundef %frontend) #8
  br label %frontend_error

frontend_error:                                   ; preds = %client_error, %do.end58
  %rc.1 = phi i32 [ %call53, %do.end58 ], [ %rc.0, %client_error ]
  call void @dvb_dmxdev_release(ptr noundef %dmxdev) #8
  br label %dmxdev_error

dmxdev_error:                                     ; preds = %frontend_error, %do.end39
  %rc.2 = phi i32 [ %call34, %do.end39 ], [ %rc.1, %frontend_error ]
  call void @dvb_dmx_release(ptr noundef %demux) #8
  br label %dvbdmx_error

dvbdmx_error:                                     ; preds = %dmxdev_error, %do.end21
  %rc.3 = phi i32 [ %call16, %do.end21 ], [ %rc.2, %dmxdev_error ]
  call fastcc void @smsdvb_media_device_unregister(ptr noundef nonnull %call7.i.i)
  %call104 = call i32 @dvb_unregister_adapter(ptr noundef %adapter) #8
  br label %adapter_error

adapter_error:                                    ; preds = %dvbdmx_error, %do.end
  %rc.4 = phi i32 [ %call6, %do.end ], [ %rc.3, %dvbdmx_error ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %adapter_error, %do.end95, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.4, %adapter_error ], [ 0, %do.end95 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsdvb_unregister_client(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %client) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @smsdvb_debugfs_release(ptr noundef %client) #8
  %smsclient = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 2
  %8 = ptrtoint ptr %smsclient to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smsclient, align 4
  tail call void @smscore_unregister_client(ptr noundef %9) #8
  %frontend = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 6
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef %frontend) #8
  %dmxdev = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 5
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #8
  %demux = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 4
  tail call void @dvb_dmx_release(ptr noundef %demux) #8
  %coredev1.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 1
  %10 = ptrtoint ptr %coredev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %coredev1.i, align 8
  %media_dev.i = getelementptr inbounds %struct.smscore_device_t, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %media_dev.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %list_del.exit.smsdvb_media_device_unregister.exit_crit_edge, label %if.end.i

list_del.exit.smsdvb_media_device_unregister.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_media_device_unregister.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @media_device_unregister(ptr noundef nonnull %13) #8
  %14 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %media_dev.i, align 4
  tail call void @media_device_cleanup(ptr noundef %15) #8
  %16 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %media_dev.i, align 4
  tail call void @kfree(ptr noundef %17) #8
  %18 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %media_dev.i, align 4
  br label %smsdvb_media_device_unregister.exit

smsdvb_media_device_unregister.exit:              ; preds = %if.end.i, %list_del.exit.smsdvb_media_device_unregister.exit_crit_edge
  %adapter = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 3
  %call2 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #8
  tail call void @kfree(ptr noundef %client) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsdvb_debugfs_unregister() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @smsdvb_debugfs_register() #8
  %call = tail call i32 @smscore_register_hotplug(ptr noundef nonnull @smsdvb_hotplug) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_module_init.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_module_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_module_init.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sms_get_board(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_get_board_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_start_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  %pid_msg = alloca %struct.sms_msg_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pid_msg) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_start_feed.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_start_feed, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pid, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_start_feed.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = getelementptr inbounds %struct.sms_msg_data, ptr %pid_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 1
  %feed_users = getelementptr i8, ptr %1, i32 2804
  %9 = ptrtoint ptr %feed_users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %feed_users, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %feed_users, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -55, ptr %8, align 2
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 11, ptr %7, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %5, align 2
  %14 = ptrtoint ptr %pid_msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 601, ptr %pid_msg, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 12, ptr %6, align 4
  %pid10 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %16 = ptrtoint ptr %pid10 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pid10, align 4
  %conv11 = zext i16 %17 to i32
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv11, ptr %4, align 4
  %smsclient = getelementptr i8, ptr %1, i32 -252
  %19 = ptrtoint ptr %smsclient to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smsclient, align 4
  %call12 = call i32 @smsclient_sendrequest(ptr noundef %20, ptr noundef nonnull %pid_msg, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pid_msg) #8
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_stop_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  %pid_msg = alloca %struct.sms_msg_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pid_msg) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_stop_feed.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_stop_feed, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pid, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_stop_feed.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = getelementptr inbounds %struct.sms_msg_data, ptr %pid_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 4
  %6 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sms_msg_hdr, ptr %pid_msg, i32 0, i32 1
  %feed_users = getelementptr i8, ptr %1, i32 2804
  %9 = ptrtoint ptr %feed_users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %feed_users, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %feed_users, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -55, ptr %8, align 2
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 11, ptr %7, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %5, align 2
  %14 = ptrtoint ptr %pid_msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 603, ptr %pid_msg, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 12, ptr %6, align 4
  %pid10 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %16 = ptrtoint ptr %pid10 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pid10, align 4
  %conv11 = zext i16 %17 to i32
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv11, ptr %4, align 4
  %smsclient = getelementptr i8, ptr %1, i32 -252
  %19 = ptrtoint ptr %smsclient to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smsclient, align 4
  %call12 = call i32 @smsclient_sendrequest(ptr noundef %20, ptr noundef nonnull %pid_msg, i32 noundef 12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pid_msg) #8
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_get_device_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_onresponse(ptr noundef %context, ptr noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb, i32 0, i32 3
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %offset = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr2 = getelementptr %struct.sms_msg_hdr, ptr %add.ptr, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %do.body [
    i16 693, label %sw.bb
    i16 562, label %entry.sw.bb5_crit_edge
    i16 777, label %entry.sw.bb5_crit_edge268
    i16 827, label %sw.bb6
    i16 828, label %sw.bb7
    i16 782, label %sw.bb9
    i16 630, label %sw.bb10
    i16 616, label %sw.bb11
    i16 654, label %sw.bb14
  ]

entry.sw.bb5_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  %feed_users = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 16
  %7 = ptrtoint ptr %feed_users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feed_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end38.critedge88, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %has_tuned = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 17
  %9 = ptrtoint ptr %has_tuned to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_tuned, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end38.critedge86, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %demux = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 4
  %size = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %sub = add i32 %12, -8
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %add.ptr2, i32 noundef %sub) #8
  %coredev24.c85 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %13 = ptrtoint ptr %coredev24.c85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %coredev24.c85, align 8
  tail call void @smscore_putbuffer(ptr noundef %14, ptr noundef %cb) #8
  br label %if.end38

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge268
  %tune_done = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 8
  tail call void @complete(ptr noundef %tune_done) #8
  %coredev24.c83 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %15 = ptrtoint ptr %coredev24.c83 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %coredev24.c83, align 8
  tail call void @smscore_putbuffer(ptr noundef %16, ptr noundef %cb) #8
  br label %if.end38

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fe_status = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %17 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %fe_status, align 8
  %coredev24.c81 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  br label %if.then26

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fe_status8 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %18 = ptrtoint ptr %fe_status8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fe_status8, align 8
  %coredev24.c79 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  br label %if.then26

sw.bb9:                                           ; preds = %entry
  %dtv_property_cache.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8
  %19 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr2, align 4
  %21 = ptrtoint ptr %dtv_property_cache.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dtv_property_cache.i, align 4
  %is_demod_locked.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 11
  %22 = ptrtoint ptr %is_demod_locked.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %is_demod_locked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 31
  %fe_status.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %24 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i, ptr %fe_status.i, align 8
  %bandwidth.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 1
  %25 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bandwidth.i, align 4
  %mul.i.i = mul i32 %26, 1000000
  %bandwidth_hz.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 7
  %27 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i.i, ptr %bandwidth_hz.i, align 4
  %transmission_mode.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 2
  %28 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transmission_mode.i, align 4
  %switch.tableidx = add i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 7
  br i1 %30, label %switch.lookup, label %sw.bb9.sms_to_mode.exit.i_crit_edge

sw.bb9.sms_to_mode.exit.i_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_to_mode.exit.i

switch.lookup:                                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.smsdvb_onresponse, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sms_to_mode.exit.i

sms_to_mode.exit.i:                               ; preds = %switch.lookup, %sw.bb9.sms_to_mode.exit.i_crit_edge
  %retval.0.i65.i = phi i32 [ %switch.load, %switch.lookup ], [ 2, %sw.bb9.sms_to_mode.exit.i_crit_edge ]
  %transmission_mode4.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 6
  %32 = ptrtoint ptr %transmission_mode4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i65.i, ptr %transmission_mode4.i, align 4
  %guard_interval.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 3
  %33 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %guard_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.i = icmp ult i32 %34, 4
  br i1 %cmp.i, label %if.then.i, label %sms_to_mode.exit.i.if.end.i_crit_edge

sms_to_mode.exit.i.if.end.i_crit_edge:            ; preds = %sms_to_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sms_to_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [4 x i32], ptr @sms_to_guard_interval_table, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sms_to_mode.exit.i.if.end.i_crit_edge
  %__ret.0.i = phi i32 [ %36, %if.then.i ], [ 4, %sms_to_mode.exit.i.if.end.i_crit_edge ]
  %guard_interval6.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 8
  %37 = ptrtoint ptr %guard_interval6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %__ret.0.i, ptr %guard_interval6.i, align 4
  %code_rate.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 4
  %38 = ptrtoint ptr %code_rate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %code_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp8.i = icmp ult i32 %39, 5
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr [5 x i32], ptr @sms_to_code_rate_table, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx11.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i.if.end13.i_crit_edge
  %__ret7.0.i = phi i32 [ %41, %if.then9.i ], [ 0, %if.end.i.if.end13.i_crit_edge ]
  %code_rate_HP.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 11
  %42 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %__ret7.0.i, ptr %code_rate_HP.i, align 4
  %lp_code_rate.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 5
  %43 = ptrtoint ptr %lp_code_rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lp_code_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp16.i = icmp ult i32 %44, 5
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.if.end21.i_crit_edge

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19.i = getelementptr [5 x i32], ptr @sms_to_code_rate_table, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx19.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end21.i_crit_edge
  %__ret15.0.i = phi i32 [ %46, %if.then17.i ], [ 0, %if.end13.i.if.end21.i_crit_edge ]
  %code_rate_LP.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 12
  %47 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %__ret15.0.i, ptr %code_rate_LP.i, align 4
  %hierarchy.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 6
  %48 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hierarchy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp24.i = icmp ult i32 %49, 4
  br i1 %cmp24.i, label %if.then25.i, label %if.end21.i.if.end29.i_crit_edge

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx27.i = getelementptr [4 x i32], ptr @sms_to_hierarchy_table, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx27.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end29.i_crit_edge
  %__ret23.0.i = phi i32 [ %51, %if.then25.i ], [ 0, %if.end21.i.if.end29.i_crit_edge ]
  %hierarchy31.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 9
  %52 = ptrtoint ptr %hierarchy31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %__ret23.0.i, ptr %hierarchy31.i, align 4
  %constellation.i = getelementptr inbounds %struct.sms_tx_stats, ptr %add.ptr2, i32 0, i32 7
  %53 = ptrtoint ptr %constellation.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %constellation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp33.i = icmp ult i32 %54, 4
  br i1 %cmp33.i, label %if.then34.i, label %if.end29.i.smsdvb_update_tx_params.exit_crit_edge

if.end29.i.smsdvb_update_tx_params.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_update_tx_params.exit

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36.i = getelementptr [4 x i32], ptr @sms_to_modulation_table, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx36.i, align 4
  br label %smsdvb_update_tx_params.exit

smsdvb_update_tx_params.exit:                     ; preds = %if.then34.i, %if.end29.i.smsdvb_update_tx_params.exit_crit_edge
  %__ret32.0.i = phi i32 [ %56, %if.then34.i ], [ 0, %if.end29.i.smsdvb_update_tx_params.exit_crit_edge ]
  %modulation.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 1
  %57 = ptrtoint ptr %modulation.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %__ret32.0.i, ptr %modulation.i, align 4
  %coredev24.c77 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  br label %if.then26

sw.bb10:                                          ; preds = %entry
  %is_demod_locked.i90 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 17
  %58 = ptrtoint ptr %is_demod_locked.i90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %is_demod_locked.i90, align 4
  %is_rf_locked.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 16
  %60 = ptrtoint ptr %is_rf_locked.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %is_rf_locked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i91 = icmp eq i32 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool1.not.i.i = icmp eq i32 %61, 0
  %..i.i = select i1 %tobool1.not.i.i, i32 0, i32 3
  %retval.0.i.i92 = select i1 %tobool.not.i.i91, i32 %..i.i, i32 31
  %fe_status.i93 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %62 = ptrtoint ptr %fe_status.i93 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i.i92, ptr %fe_status.i93, align 8
  %constellation.i94 = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 5
  %63 = ptrtoint ptr %constellation.i94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %constellation.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp.i95 = icmp ult i32 %64, 4
  br i1 %cmp.i95, label %if.then.i97, label %sw.bb10.if.end.i100_crit_edge

sw.bb10.if.end.i100_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i100

if.then.i97:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i96 = getelementptr [4 x i32], ptr @sms_to_modulation_table, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i96, align 4
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.then.i97, %sw.bb10.if.end.i100_crit_edge
  %__ret.0.i98 = phi i32 [ %66, %if.then.i97 ], [ 0, %sw.bb10.if.end.i100_crit_edge ]
  %modulation.i99 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 1
  %67 = ptrtoint ptr %modulation.i99 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %__ret.0.i98, ptr %modulation.i99, align 4
  %in_band_power.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 2
  %68 = ptrtoint ptr %in_band_power.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %in_band_power.i, align 4
  %mul.i = mul i32 %69, 1000
  %conv.i = sext i32 %mul.i to i64
  %70 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %conv.i, ptr %70, align 1
  %snr.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 1
  %72 = ptrtoint ptr %snr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %snr.i, align 4
  %mul4.i = mul i32 %73, 1000
  %conv5.i = zext i32 %mul4.i to i64
  %74 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %conv5.i, ptr %74, align 1
  %76 = ptrtoint ptr %is_demod_locked.i90 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %is_demod_locked.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %if.end.i100.smsdvb_update_per_slices.exit_crit_edge, label %if.end10.i

if.end.i100.smsdvb_update_per_slices.exit_crit_edge: ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_update_per_slices.exit

if.end10.i:                                       ; preds = %if.end.i100
  %stat11.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1
  %78 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %78, align 1
  %conv13.i = trunc i64 %80 to i32
  %last_per.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 10
  %81 = ptrtoint ptr %last_per.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv13.i, ptr %last_per.i, align 4
  %82 = ptrtoint ptr %stat11.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 3, ptr %stat11.i, align 1
  %stat17.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1
  %83 = ptrtoint ptr %stat17.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %stat17.i, align 1
  %ets_packets.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 4
  %84 = ptrtoint ptr %ets_packets.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ets_packets.i, align 4
  %conv20.i = zext i32 %85 to i64
  %add.i = add i64 %80, %conv20.i
  store i64 %add.i, ptr %78, align 1
  %86 = load i32, ptr %ets_packets.i, align 4
  %ts_packets.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 3
  %87 = ptrtoint ptr %ts_packets.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ts_packets.i, align 4
  %add25.i = add i32 %88, %86
  %conv26.i = zext i32 %add25.i to i64
  %89 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %89, align 1
  %add30.i = add i64 %91, %conv26.i
  store i64 %add30.i, ptr %89, align 1
  %stat31.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1
  %92 = ptrtoint ptr %stat31.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 3, ptr %stat31.i, align 1
  %stat34.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1
  %93 = ptrtoint ptr %stat34.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 3, ptr %stat34.i, align 1
  %ber_error_count.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 19
  %94 = ptrtoint ptr %ber_error_count.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ber_error_count.i, align 4
  %conv37.i = zext i32 %95 to i64
  %96 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 8)
  %98 = load i64, ptr %96, align 1
  %add41.i = add i64 %98, %conv37.i
  store i64 %add41.i, ptr %96, align 1
  %ber_bit_count.i = getelementptr inbounds %struct.RECEPTION_STATISTICS_PER_SLICES_S, ptr %add.ptr2, i32 0, i32 18
  %99 = ptrtoint ptr %ber_bit_count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ber_bit_count.i, align 4
  %conv42.i = zext i32 %100 to i64
  %101 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %103 = load i64, ptr %101, align 1
  %add46.i = add i64 %103, %conv42.i
  store i64 %add46.i, ptr %101, align 1
  %104 = load i32, ptr %ets_packets.i, align 4
  %conv48.i = zext i32 %104 to i64
  %mul49.i = mul nuw nsw i64 %conv48.i, 65535
  %105 = load i32, ptr %ts_packets.i, align 4
  %add52.i = add i32 %105, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add52.i)
  %tobool53.not.i = icmp eq i32 %add52.i, 0
  %extract.t.i = trunc i64 %mul49.i to i32
  br i1 %tobool53.not.i, label %if.end10.i.if.end248.i_crit_edge, label %if.else230.i

if.end10.i.if.end248.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248.i

if.else230.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul49.i)
  %cmp232.i = icmp ult i64 %mul49.i, 4294967296
  br i1 %cmp232.i, label %if.then236.i, label %if.else242.i, !prof !149

if.then236.i:                                     ; preds = %if.else230.i
  call void @__sanitizer_cov_trace_pc() #10
  %div240.i = udiv i32 %extract.t.i, %add52.i
  br label %if.end248.i

if.else242.i:                                     ; preds = %if.else230.i
  call void @__sanitizer_cov_trace_pc() #10
  %106 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add52.i, i64 %mul49.i) #13, !srcloc !150
  %asmresult1.i.i = extractvalue { i64, i64 } %106, 1
  %extract.t389.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end248.i

if.end248.i:                                      ; preds = %if.else242.i, %if.then236.i, %if.end10.i.if.end248.i_crit_edge
  %tmp.0.off0.i = phi i32 [ %extract.t.i, %if.end10.i.if.end248.i_crit_edge ], [ %div240.i, %if.then236.i ], [ %extract.t389.i, %if.else242.i ]
  %legacy_per.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 12
  %107 = ptrtoint ptr %legacy_per.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %tmp.0.off0.i, ptr %legacy_per.i, align 4
  br label %smsdvb_update_per_slices.exit

smsdvb_update_per_slices.exit:                    ; preds = %if.end248.i, %if.end.i100.smsdvb_update_per_slices.exit_crit_edge
  %coredev24.c75 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  br label %if.then26

sw.bb11:                                          ; preds = %entry
  %coredev = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %108 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %coredev, align 8
  %call = tail call i32 @smscore_get_device_mode(ptr noundef %109) #8
  %call.off = add i32 %call, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %sw.bb12, label %sw.default

sw.bb12:                                          ; preds = %sw.bb11
  %dtv_property_cache.i101 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8
  %prt_isdb_stats.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 21
  %110 = ptrtoint ptr %prt_isdb_stats.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prt_isdb_stats.i, align 8
  %tobool.not.i102 = icmp eq ptr %111, null
  br i1 %tobool.not.i102, label %sw.bb12.if.end.i112_crit_edge, label %if.then.i103

sw.bb12.if.end.i112_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i112

if.then.i103:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %debug_data.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 19
  %112 = ptrtoint ptr %debug_data.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %debug_data.i, align 8
  tail call void %111(ptr noundef %113, ptr noundef %add.ptr2) #8
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.then.i103, %sw.bb12.if.end.i112_crit_edge
  %is_demod_locked.i104 = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 3
  %114 = ptrtoint ptr %is_demod_locked.i104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %is_demod_locked.i104, align 4
  %is_rf_locked.i105 = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 2
  %116 = ptrtoint ptr %is_rf_locked.i105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %is_rf_locked.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i.i106 = icmp eq i32 %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool1.not.i.i107 = icmp eq i32 %117, 0
  %..i.i108 = select i1 %tobool1.not.i.i107, i32 0, i32 3
  %retval.0.i.i109 = select i1 %tobool.not.i.i106, i32 %..i.i108, i32 31
  %fe_status.i110 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %118 = ptrtoint ptr %fe_status.i110 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i.i109, ptr %fe_status.i110, align 8
  %119 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i111 = icmp eq i32 %120, 0
  br i1 %cmp.i111, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode.i113 = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 11
  %121 = ptrtoint ptr %transmission_mode.i113 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %transmission_mode.i113, align 4
  %mul.i114 = mul i32 %122, 1000
  %conv.i115 = sext i32 %mul.i114 to i64
  %123 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42, i32 1, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 %conv.i115, ptr %123, align 1
  %stat3.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43, i32 1
  %125 = ptrtoint ptr %stat3.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %stat3.i, align 1
  br label %if.then26

if.end5.i:                                        ; preds = %if.end.i112
  %frequency.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 9
  %126 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %frequency.i, align 4
  %128 = ptrtoint ptr %dtv_property_cache.i101 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %dtv_property_cache.i101, align 4
  %bandwidth.i116 = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 10
  %129 = ptrtoint ptr %bandwidth.i116 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bandwidth.i116, align 4
  %mul.i.i117 = mul i32 %130, 1000000
  %bandwidth_hz.i118 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 7
  %131 = ptrtoint ptr %bandwidth_hz.i118 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %mul.i.i117, ptr %bandwidth_hz.i118, align 4
  %transmission_mode8.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 11
  %132 = ptrtoint ptr %transmission_mode8.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %transmission_mode8.i, align 4
  %switch.tableidx251 = add i32 %133, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx251)
  %134 = icmp ult i32 %switch.tableidx251, 3
  br i1 %134, label %switch.lookup250, label %if.end5.i.sms_to_isdbt_mode.exit.i_crit_edge

if.end5.i.sms_to_isdbt_mode.exit.i_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_to_isdbt_mode.exit.i

switch.lookup250:                                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep252 = getelementptr inbounds [3 x i32], ptr @switch.table.smsdvb_onresponse.63, i32 0, i32 %switch.tableidx251
  %135 = ptrtoint ptr %switch.gep252 to i32
  call void @__asan_load4_noabort(i32 %135)
  %switch.load253 = load i32, ptr %switch.gep252, align 4
  br label %sms_to_isdbt_mode.exit.i

sms_to_isdbt_mode.exit.i:                         ; preds = %switch.lookup250, %if.end5.i.sms_to_isdbt_mode.exit.i_crit_edge
  %retval.0.i269.i = phi i32 [ %switch.load253, %switch.lookup250 ], [ 2, %if.end5.i.sms_to_isdbt_mode.exit.i_crit_edge ]
  %transmission_mode10.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 6
  %136 = ptrtoint ptr %transmission_mode10.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i269.i, ptr %transmission_mode10.i, align 4
  %guard_interval.i122 = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 13
  %137 = ptrtoint ptr %guard_interval.i122 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %guard_interval.i122, align 4
  %139 = add i32 %138, -4
  %140 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %140)
  %141 = icmp ult i32 %140, 8
  br i1 %141, label %switch.lookup254, label %sms_to_isdbt_mode.exit.i.sms_to_isdbt_guard_interval.exit.i_crit_edge

sms_to_isdbt_mode.exit.i.sms_to_isdbt_guard_interval.exit.i_crit_edge: ; preds = %sms_to_isdbt_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_to_isdbt_guard_interval.exit.i

switch.lookup254:                                 ; preds = %sms_to_isdbt_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep255 = getelementptr inbounds [8 x i32], ptr @switch.table.smsdvb_onresponse.64, i32 0, i32 %140
  %142 = ptrtoint ptr %switch.gep255 to i32
  call void @__asan_load4_noabort(i32 %142)
  %switch.load256 = load i32, ptr %switch.gep255, align 4
  br label %sms_to_isdbt_guard_interval.exit.i

sms_to_isdbt_guard_interval.exit.i:               ; preds = %switch.lookup254, %sms_to_isdbt_mode.exit.i.sms_to_isdbt_guard_interval.exit.i_crit_edge
  %retval.0.i273.i = phi i32 [ %switch.load256, %switch.lookup254 ], [ 4, %sms_to_isdbt_mode.exit.i.sms_to_isdbt_guard_interval.exit.i_crit_edge ]
  %guard_interval12.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 8
  %143 = ptrtoint ptr %guard_interval12.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %retval.0.i273.i, ptr %guard_interval12.i, align 4
  %partial_reception.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 15
  %144 = ptrtoint ptr %partial_reception.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %partial_reception.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool13.not.i = icmp ne i32 %145, 0
  %conv14.i = zext i1 %tobool13.not.i to i8
  %isdbt_partial_reception.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 17
  %146 = ptrtoint ptr %isdbt_partial_reception.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv14.i, ptr %isdbt_partial_reception.i, align 4
  %num_of_layers.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 16
  %147 = ptrtoint ptr %num_of_layers.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_of_layers.i, align 4
  %149 = tail call i32 @llvm.smax.i32(i32 %148, i32 1) #8
  %150 = tail call i32 @llvm.umin.i32(i32 %149, i32 3) #8
  %isdbt_layer_enabled.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 22
  %151 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %isdbt_layer_enabled.i, align 4
  %is_external_lna_on.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 4
  %152 = ptrtoint ptr %is_external_lna_on.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %is_external_lna_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool23.not.i = icmp ne i32 %153, 0
  %cond24.i = zext i1 %tobool23.not.i to i32
  %lna.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 41
  %154 = ptrtoint ptr %lna.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %cond24.i, ptr %lna.i, align 4
  %SNR.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 5
  %155 = ptrtoint ptr %SNR.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %SNR.i, align 4
  %mul25.i = mul i32 %156, 1000
  %conv26.i123 = sext i32 %mul25.i to i64
  %157 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 8)
  store i64 %conv26.i123, ptr %157, align 1
  %in_band_pwr.i = getelementptr inbounds %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 7
  %159 = ptrtoint ptr %in_band_pwr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %in_band_pwr.i, align 4
  %mul30.i = mul i32 %160, 1000
  %conv31.i = sext i32 %mul30.i to i64
  %161 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 8)
  store i64 %conv31.i, ptr %161, align 1
  %163 = ptrtoint ptr %is_demod_locked.i104 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %is_demod_locked.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool36.not.i = icmp eq i32 %164, 0
  br i1 %tobool36.not.i, label %sms_to_isdbt_guard_interval.exit.i.if.then26_crit_edge, label %for.body.preheader.i

sms_to_isdbt_guard_interval.exit.i.if.then26_crit_edge: ; preds = %sms_to_isdbt_guard_interval.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

for.body.preheader.i:                             ; preds = %sms_to_isdbt_guard_interval.exit.i
  %stat39.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1
  %165 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 0, i32 1
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %165, align 1
  %conv41.i = trunc i64 %167 to i32
  %last_per.i124 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 10
  %168 = ptrtoint ptr %last_per.i124 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %conv41.i, ptr %last_per.i124, align 4
  store i64 0, ptr %165, align 1
  %stat45.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1
  %169 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 0, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_storeN_noabort(i32 %170, i32 8)
  store i64 0, ptr %169, align 1
  %171 = ptrtoint ptr %stat39.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 3, ptr %stat39.i, align 1
  %172 = ptrtoint ptr %stat45.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %stat45.i, align 1
  %stat55.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1
  %173 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 0, i32 1
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 8)
  store i64 0, ptr %173, align 1
  %stat57.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1
  %175 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 0, i32 1
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 8)
  store i64 0, ptr %175, align 1
  %177 = ptrtoint ptr %stat55.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 3, ptr %stat55.i, align 1
  %178 = ptrtoint ptr %stat57.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 3, ptr %stat57.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0275.i = phi i32 [ %inc.pre-phi.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx69.i = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i
  %number_of_segments.i = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 10
  %179 = ptrtoint ptr %number_of_segments.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %number_of_segments.i, align 4
  %181 = add i32 %180, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %181)
  %182 = icmp ult i32 %181, 12
  br i1 %182, label %if.then75.i, label %for.body.for.inc_crit_edge.i

for.body.for.inc_crit_edge.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = add nuw nsw i32 %i.0275.i, 1
  br label %for.inc.i

if.then75.i:                                      ; preds = %for.body.i
  %shl.i125 = shl nuw i32 1, %i.0275.i
  %183 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %isdbt_layer_enabled.i, align 4
  %185 = trunc i32 %shl.i125 to i8
  %conv78.i = or i8 %184, %185
  store i8 %conv78.i, ptr %isdbt_layer_enabled.i, align 4
  %186 = ptrtoint ptr %number_of_segments.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %number_of_segments.i, align 4
  %conv80.i = trunc i32 %187 to i8
  %arrayidx81.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0275.i
  %188 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv80.i, ptr %arrayidx81.i, align 4
  %constellation.i126 = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 1
  %189 = ptrtoint ptr %constellation.i126 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %constellation.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %190)
  %cmp83.i = icmp ult i32 %190, 4
  br i1 %cmp83.i, label %if.then85.i, label %if.then75.i.if.end89.i_crit_edge

if.then75.i.if.end89.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then85.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx87.i = getelementptr [4 x i32], ptr @sms_to_modulation_table, i32 0, i32 %190
  %191 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx87.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %if.then75.i.if.end89.i_crit_edge
  %__ret.0.i127 = phi i32 [ %192, %if.then85.i ], [ 0, %if.then75.i.if.end89.i_crit_edge ]
  %modulation.i128 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0275.i, i32 2
  %193 = ptrtoint ptr %modulation.i128 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %__ret.0.i127, ptr %modulation.i128, align 4
  %194 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %195)
  %cmp93.i = icmp ult i32 %195, 5
  br i1 %cmp93.i, label %if.then95.i, label %if.end89.i.if.end99.i_crit_edge

if.end89.i.if.end99.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.i

if.then95.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx97.i = getelementptr [5 x i32], ptr @sms_to_code_rate_table, i32 0, i32 %195
  %196 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx97.i, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then95.i, %if.end89.i.if.end99.i_crit_edge
  %__ret92.0.i = phi i32 [ %197, %if.then95.i ], [ 0, %if.end89.i.if.end99.i_crit_edge ]
  %fec.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0275.i, i32 1
  %198 = ptrtoint ptr %fec.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %__ret92.0.i, ptr %fec.i, align 4
  %ti_ldepth_i.i = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 9
  %199 = ptrtoint ptr %ti_ldepth_i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ti_ldepth_i.i, align 4
  %conv103.i = trunc i32 %200 to i8
  %interleaving.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0275.i, i32 3
  %201 = ptrtoint ptr %interleaving.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv103.i, ptr %interleaving.i, align 4
  %add.i129 = add nuw nsw i32 %i.0275.i, 1
  %arrayidx108.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 %add.i129
  %202 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 3, ptr %arrayidx108.i, align 1
  %arrayidx113.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 %add.i129
  %203 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 3, ptr %arrayidx113.i, align 1
  %error_ts_packets.i = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 7
  %204 = ptrtoint ptr %error_ts_packets.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %error_ts_packets.i, align 4
  %conv115.i = zext i32 %205 to i64
  %206 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 %add.i129, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 8)
  %208 = load i64, ptr %206, align 1
  %add120.i = add i64 %208, %conv115.i
  store i64 %add120.i, ptr %206, align 1
  %total_ts_packets.i = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 8
  %209 = ptrtoint ptr %total_ts_packets.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %total_ts_packets.i, align 4
  %conv121.i = zext i32 %210 to i64
  %211 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 %add.i129, i32 1
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 8)
  %213 = load i64, ptr %211, align 1
  %add126.i130 = add i64 %213, %conv121.i
  store i64 %add126.i130, ptr %211, align 1
  %214 = load i32, ptr %error_ts_packets.i, align 4
  %conv128.i = zext i32 %214 to i64
  %215 = ptrtoint ptr %165 to i32
  call void @__asan_loadN_noabort(i32 %215, i32 8)
  %216 = load i64, ptr %165, align 1
  %add132.i = add i64 %216, %conv128.i
  store i64 %add132.i, ptr %165, align 1
  %217 = load i32, ptr %total_ts_packets.i, align 4
  %conv134.i = zext i32 %217 to i64
  %218 = ptrtoint ptr %169 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 8)
  %219 = load i64, ptr %169, align 1
  %add138.i = add i64 %219, %conv134.i
  store i64 %add138.i, ptr %169, align 1
  %arrayidx142.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 %add.i129
  %220 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 3, ptr %arrayidx142.i, align 1
  %arrayidx147.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 %add.i129
  %221 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 3, ptr %arrayidx147.i, align 1
  %ber_error_count.i131 = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 3
  %222 = ptrtoint ptr %ber_error_count.i131 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %ber_error_count.i131, align 4
  %conv149.i = zext i32 %223 to i64
  %224 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 %add.i129, i32 1
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 8)
  %226 = load i64, ptr %224, align 1
  %add154.i = add i64 %226, %conv149.i
  store i64 %add154.i, ptr %224, align 1
  %ber_bit_count.i132 = getelementptr %struct.sms_isdbt_stats, ptr %add.ptr2, i32 0, i32 17, i32 %i.0275.i, i32 4
  %227 = ptrtoint ptr %ber_bit_count.i132 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ber_bit_count.i132, align 4
  %conv155.i = zext i32 %228 to i64
  %229 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 %add.i129, i32 1
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 8)
  %231 = load i64, ptr %229, align 1
  %add160.i = add i64 %231, %conv155.i
  store i64 %add160.i, ptr %229, align 1
  %232 = load i32, ptr %ber_error_count.i131, align 4
  %conv162.i = zext i32 %232 to i64
  %233 = ptrtoint ptr %173 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 8)
  %234 = load i64, ptr %173, align 1
  %add166.i = add i64 %234, %conv162.i
  store i64 %add166.i, ptr %173, align 1
  %235 = load i32, ptr %ber_bit_count.i132, align 4
  %conv168.i = zext i32 %235 to i64
  %236 = ptrtoint ptr %175 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 8)
  %237 = load i64, ptr %175, align 1
  %add172.i = add i64 %237, %conv168.i
  store i64 %add172.i, ptr %175, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end99.i, %for.body.for.inc_crit_edge.i
  %inc.pre-phi.i = phi i32 [ %.pre.i, %for.body.for.inc_crit_edge.i ], [ %add.i129, %if.end99.i ]
  %exitcond.not.i = icmp eq i32 %inc.pre-phi.i, %150
  br i1 %exitcond.not.i, label %for.inc.i.if.then26_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then26_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

sw.default:                                       ; preds = %sw.bb11
  %add.ptr13 = getelementptr i8, ptr %add.ptr2, i32 4
  %dtv_property_cache.i133 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8
  %prt_dvb_stats.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 20
  %238 = ptrtoint ptr %prt_dvb_stats.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %prt_dvb_stats.i, align 4
  %tobool.not.i134 = icmp eq ptr %239, null
  br i1 %tobool.not.i134, label %sw.default.if.end.i149_crit_edge, label %if.then.i136

sw.default.if.end.i149_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i149

if.then.i136:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %debug_data.i135 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 19
  %240 = ptrtoint ptr %debug_data.i135 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %debug_data.i135, align 8
  tail call void %239(ptr noundef %241, ptr noundef %add.ptr13) #8
  br label %if.end.i149

if.end.i149:                                      ; preds = %if.then.i136, %sw.default.if.end.i149_crit_edge
  %is_demod_locked.i137 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 2
  %242 = ptrtoint ptr %is_demod_locked.i137 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %is_demod_locked.i137, align 4
  %is_rf_locked.i138 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 1
  %244 = ptrtoint ptr %is_rf_locked.i138 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %is_rf_locked.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.not.i.i139 = icmp eq i32 %243, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool1.not.i.i140 = icmp eq i32 %245, 0
  %..i.i141 = select i1 %tobool1.not.i.i140, i32 0, i32 3
  %retval.0.i.i142 = select i1 %tobool.not.i.i139, i32 %..i.i141, i32 31
  %fe_status.i143 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %246 = ptrtoint ptr %fe_status.i143 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %retval.0.i.i142, ptr %fe_status.i143, align 8
  %frequency.i144 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 12
  %247 = ptrtoint ptr %frequency.i144 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %frequency.i144, align 4
  %249 = ptrtoint ptr %dtv_property_cache.i133 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %dtv_property_cache.i133, align 4
  %250 = ptrtoint ptr %is_demod_locked.i137 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %is_demod_locked.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool.not.i147.i = icmp eq i32 %251, 0
  %retval.0.i148.i = select i1 %tobool.not.i147.i, i32 0, i32 31
  %252 = ptrtoint ptr %fe_status.i143 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %retval.0.i148.i, ptr %fe_status.i143, align 8
  %bandwidth.i145 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 13
  %253 = ptrtoint ptr %bandwidth.i145 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %bandwidth.i145, align 4
  %mul.i.i146 = mul i32 %254, 1000000
  %bandwidth_hz.i147 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 7
  %255 = ptrtoint ptr %bandwidth_hz.i147 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %mul.i.i146, ptr %bandwidth_hz.i147, align 4
  %transmission_mode.i148 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 14
  %256 = ptrtoint ptr %transmission_mode.i148 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %transmission_mode.i148, align 4
  %switch.tableidx258 = add i32 %257, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx258)
  %258 = icmp ult i32 %switch.tableidx258, 7
  br i1 %258, label %switch.lookup257, label %if.end.i149.sms_to_mode.exit.i156_crit_edge

if.end.i149.sms_to_mode.exit.i156_crit_edge:      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_to_mode.exit.i156

switch.lookup257:                                 ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep259 = getelementptr inbounds [7 x i32], ptr @switch.table.smsdvb_onresponse.65, i32 0, i32 %switch.tableidx258
  %259 = ptrtoint ptr %switch.gep259 to i32
  call void @__asan_load4_noabort(i32 %259)
  %switch.load260 = load i32, ptr %switch.gep259, align 4
  br label %sms_to_mode.exit.i156

sms_to_mode.exit.i156:                            ; preds = %switch.lookup257, %if.end.i149.sms_to_mode.exit.i156_crit_edge
  %retval.0.i149.i = phi i32 [ %switch.load260, %switch.lookup257 ], [ 2, %if.end.i149.sms_to_mode.exit.i156_crit_edge ]
  %transmission_mode8.i153 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 6
  %260 = ptrtoint ptr %transmission_mode8.i153 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %retval.0.i149.i, ptr %transmission_mode8.i153, align 4
  %guard_interval.i154 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 16
  %261 = ptrtoint ptr %guard_interval.i154 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %guard_interval.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %262)
  %cmp.i155 = icmp ult i32 %262, 4
  br i1 %cmp.i155, label %if.then9.i158, label %sms_to_mode.exit.i156.if.end11.i_crit_edge

sms_to_mode.exit.i156.if.end11.i_crit_edge:       ; preds = %sms_to_mode.exit.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i158:                                    ; preds = %sms_to_mode.exit.i156
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i157 = getelementptr [4 x i32], ptr @sms_to_guard_interval_table, i32 0, i32 %262
  %263 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx.i157, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i158, %sms_to_mode.exit.i156.if.end11.i_crit_edge
  %__ret.0.i159 = phi i32 [ %264, %if.then9.i158 ], [ 4, %sms_to_mode.exit.i156.if.end11.i_crit_edge ]
  %guard_interval12.i160 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 8
  %265 = ptrtoint ptr %guard_interval12.i160 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %__ret.0.i159, ptr %guard_interval12.i160, align 4
  %code_rate.i161 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 17
  %266 = ptrtoint ptr %code_rate.i161 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %code_rate.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %267)
  %cmp14.i = icmp ult i32 %267, 5
  br i1 %cmp14.i, label %if.then15.i, label %if.end11.i.if.end19.i_crit_edge

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17.i = getelementptr [5 x i32], ptr @sms_to_code_rate_table, i32 0, i32 %267
  %268 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end19.i_crit_edge
  %__ret13.0.i = phi i32 [ %269, %if.then15.i ], [ 0, %if.end11.i.if.end19.i_crit_edge ]
  %code_rate_HP.i162 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 11
  %270 = ptrtoint ptr %code_rate_HP.i162 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %__ret13.0.i, ptr %code_rate_HP.i162, align 4
  %lp_code_rate.i163 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 18
  %271 = ptrtoint ptr %lp_code_rate.i163 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %lp_code_rate.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %272)
  %cmp22.i = icmp ult i32 %272, 5
  br i1 %cmp22.i, label %if.then23.i, label %if.end19.i.if.end27.i_crit_edge

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25.i = getelementptr [5 x i32], ptr @sms_to_code_rate_table, i32 0, i32 %272
  %273 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx25.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end27.i_crit_edge
  %__ret21.0.i = phi i32 [ %274, %if.then23.i ], [ 0, %if.end19.i.if.end27.i_crit_edge ]
  %code_rate_LP.i164 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 12
  %275 = ptrtoint ptr %code_rate_LP.i164 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %__ret21.0.i, ptr %code_rate_LP.i164, align 4
  %hierarchy.i165 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 19
  %276 = ptrtoint ptr %hierarchy.i165 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %hierarchy.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %277)
  %cmp30.i = icmp ult i32 %277, 4
  br i1 %cmp30.i, label %if.then31.i, label %if.end27.i.if.end35.i_crit_edge

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx33.i = getelementptr [4 x i32], ptr @sms_to_hierarchy_table, i32 0, i32 %277
  %278 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx33.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end27.i.if.end35.i_crit_edge
  %__ret29.0.i = phi i32 [ %279, %if.then31.i ], [ 0, %if.end27.i.if.end35.i_crit_edge ]
  %hierarchy37.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 9
  %280 = ptrtoint ptr %hierarchy37.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %__ret29.0.i, ptr %hierarchy37.i, align 4
  %constellation.i166 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 20
  %281 = ptrtoint ptr %constellation.i166 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %constellation.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %282)
  %cmp39.i = icmp ult i32 %282, 4
  br i1 %cmp39.i, label %if.then40.i, label %if.end35.i.if.end44.i_crit_edge

if.end35.i.if.end44.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42.i = getelementptr [4 x i32], ptr @sms_to_modulation_table, i32 0, i32 %282
  %283 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx42.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %if.end35.i.if.end44.i_crit_edge
  %__ret38.0.i = phi i32 [ %284, %if.then40.i ], [ 0, %if.end35.i.if.end44.i_crit_edge ]
  %modulation.i167 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 1
  %285 = ptrtoint ptr %modulation.i167 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %__ret38.0.i, ptr %modulation.i167, align 4
  %is_external_lna_on.i168 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 3
  %286 = ptrtoint ptr %is_external_lna_on.i168 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %is_external_lna_on.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool46.not.i = icmp ne i32 %287, 0
  %cond.i = zext i1 %tobool46.not.i to i32
  %lna.i169 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 41
  %288 = ptrtoint ptr %lna.i169 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %cond.i, ptr %lna.i169, align 4
  %SNR.i170 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 4
  %289 = ptrtoint ptr %SNR.i170 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %SNR.i170, align 4
  %mul.i171 = mul i32 %290, 1000
  %conv.i172 = sext i32 %mul.i171 to i64
  %291 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43, i32 1, i32 0, i32 1
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_storeN_noabort(i32 %292, i32 8)
  store i64 %conv.i172, ptr %291, align 1
  %in_band_pwr.i173 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 10
  %293 = ptrtoint ptr %in_band_pwr.i173 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %in_band_pwr.i173, align 4
  %mul48.i = mul i32 %294, 1000
  %conv49.i = sext i32 %mul48.i to i64
  %295 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42, i32 1, i32 0, i32 1
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_storeN_noabort(i32 %296, i32 8)
  store i64 %conv49.i, ptr %295, align 1
  %297 = ptrtoint ptr %is_demod_locked.i137 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %is_demod_locked.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool53.not.i174 = icmp eq i32 %298, 0
  br i1 %tobool53.not.i174, label %if.end44.i.if.then26_crit_edge, label %if.end55.i

if.end44.i.if.then26_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end55.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %stat56.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1
  %299 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 0, i32 1
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_loadN_noabort(i32 %300, i32 8)
  %301 = load i64, ptr %299, align 1
  %conv58.i = trunc i64 %301 to i32
  %last_per.i175 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 10
  %302 = ptrtoint ptr %last_per.i175 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %conv58.i, ptr %last_per.i175, align 4
  %303 = ptrtoint ptr %stat56.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 3, ptr %stat56.i, align 1
  %stat62.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1
  %304 = ptrtoint ptr %stat62.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 3, ptr %stat62.i, align 1
  %error_ts_packets.i176 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 28
  %305 = ptrtoint ptr %error_ts_packets.i176 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %error_ts_packets.i176, align 4
  %conv65.i = zext i32 %306 to i64
  %add.i177 = add i64 %301, %conv65.i
  store i64 %add.i177, ptr %299, align 1
  %total_ts_packets.i178 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 29
  %307 = ptrtoint ptr %total_ts_packets.i178 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %total_ts_packets.i178, align 4
  %conv69.i = zext i32 %308 to i64
  %309 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 0, i32 1
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 8)
  %311 = load i64, ptr %309, align 1
  %add73.i = add i64 %311, %conv69.i
  store i64 %add73.i, ptr %309, align 1
  %stat74.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1
  %312 = ptrtoint ptr %stat74.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 3, ptr %stat74.i, align 1
  %stat77.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1
  %313 = ptrtoint ptr %stat77.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 3, ptr %stat77.i, align 1
  %ber_error_count.i179 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 33
  %314 = ptrtoint ptr %ber_error_count.i179 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %ber_error_count.i179, align 4
  %conv80.i180 = zext i32 %315 to i64
  %316 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 0, i32 1
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 8)
  %318 = load i64, ptr %316, align 1
  %add84.i = add i64 %318, %conv80.i180
  store i64 %add84.i, ptr %316, align 1
  %ber_bit_count.i181 = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 34
  %319 = ptrtoint ptr %ber_bit_count.i181 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %ber_bit_count.i181, align 4
  %conv85.i = zext i32 %320 to i64
  %321 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 0, i32 1
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_loadN_noabort(i32 %322, i32 8)
  %323 = load i64, ptr %321, align 1
  %add89.i = add i64 %323, %conv85.i
  store i64 %add89.i, ptr %321, align 1
  %ber.i = getelementptr inbounds %struct.sms_stats, ptr %add.ptr13, i32 0, i32 5
  %324 = ptrtoint ptr %ber.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %ber.i, align 4
  %legacy_ber.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 11
  %326 = ptrtoint ptr %legacy_ber.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %legacy_ber.i, align 8
  br label %if.then26

sw.bb14:                                          ; preds = %entry
  %add.ptr15 = getelementptr i8, ptr %add.ptr2, i32 4
  %dtv_property_cache.i182 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8
  %prt_isdb_stats_ex.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 22
  %327 = ptrtoint ptr %prt_isdb_stats_ex.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %prt_isdb_stats_ex.i, align 4
  %tobool.not.i183 = icmp eq ptr %328, null
  br i1 %tobool.not.i183, label %sw.bb14.if.end.i195_crit_edge, label %if.then.i185

sw.bb14.if.end.i195_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i195

if.then.i185:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %debug_data.i184 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 19
  %329 = ptrtoint ptr %debug_data.i184 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %debug_data.i184, align 8
  tail call void %328(ptr noundef %330, ptr noundef %add.ptr15) #8
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i185, %sw.bb14.if.end.i195_crit_edge
  %frequency.i186 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 9
  %331 = ptrtoint ptr %frequency.i186 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %frequency.i186, align 4
  %333 = ptrtoint ptr %dtv_property_cache.i182 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %dtv_property_cache.i182, align 4
  %is_demod_locked.i187 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 3
  %334 = ptrtoint ptr %is_demod_locked.i187 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %is_demod_locked.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool.not.i.i188 = icmp eq i32 %335, 0
  %retval.0.i.i189 = select i1 %tobool.not.i.i188, i32 0, i32 31
  %fe_status.i190 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %336 = ptrtoint ptr %fe_status.i190 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %retval.0.i.i189, ptr %fe_status.i190, align 8
  %bandwidth.i191 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 10
  %337 = ptrtoint ptr %bandwidth.i191 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %bandwidth.i191, align 4
  %mul.i.i192 = mul i32 %338, 1000000
  %bandwidth_hz.i193 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 7
  %339 = ptrtoint ptr %bandwidth_hz.i193 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %mul.i.i192, ptr %bandwidth_hz.i193, align 4
  %transmission_mode.i194 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 11
  %340 = ptrtoint ptr %transmission_mode.i194 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %transmission_mode.i194, align 4
  %switch.tableidx262 = add i32 %341, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx262)
  %342 = icmp ult i32 %switch.tableidx262, 3
  br i1 %342, label %switch.lookup261, label %if.end.i195.sms_to_isdbt_mode.exit.i200_crit_edge

if.end.i195.sms_to_isdbt_mode.exit.i200_crit_edge: ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_to_isdbt_mode.exit.i200

switch.lookup261:                                 ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep263 = getelementptr inbounds [3 x i32], ptr @switch.table.smsdvb_onresponse.66, i32 0, i32 %switch.tableidx262
  %343 = ptrtoint ptr %switch.gep263 to i32
  call void @__asan_load4_noabort(i32 %343)
  %switch.load264 = load i32, ptr %switch.gep263, align 4
  br label %sms_to_isdbt_mode.exit.i200

sms_to_isdbt_mode.exit.i200:                      ; preds = %switch.lookup261, %if.end.i195.sms_to_isdbt_mode.exit.i200_crit_edge
  %retval.0.i274.i = phi i32 [ %switch.load264, %switch.lookup261 ], [ 2, %if.end.i195.sms_to_isdbt_mode.exit.i200_crit_edge ]
  %transmission_mode5.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 6
  %344 = ptrtoint ptr %transmission_mode5.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %retval.0.i274.i, ptr %transmission_mode5.i, align 4
  %guard_interval.i199 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 13
  %345 = ptrtoint ptr %guard_interval.i199 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %guard_interval.i199, align 4
  %347 = add i32 %346, -4
  %348 = tail call i32 @llvm.fshl.i32(i32 %347, i32 %347, i32 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %348)
  %349 = icmp ult i32 %348, 8
  br i1 %349, label %switch.lookup265, label %sms_to_isdbt_mode.exit.i200.sms_to_isdbt_guard_interval.exit.i213_crit_edge

sms_to_isdbt_mode.exit.i200.sms_to_isdbt_guard_interval.exit.i213_crit_edge: ; preds = %sms_to_isdbt_mode.exit.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_to_isdbt_guard_interval.exit.i213

switch.lookup265:                                 ; preds = %sms_to_isdbt_mode.exit.i200
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep266 = getelementptr inbounds [8 x i32], ptr @switch.table.smsdvb_onresponse.67, i32 0, i32 %348
  %350 = ptrtoint ptr %switch.gep266 to i32
  call void @__asan_load4_noabort(i32 %350)
  %switch.load267 = load i32, ptr %switch.gep266, align 4
  br label %sms_to_isdbt_guard_interval.exit.i213

sms_to_isdbt_guard_interval.exit.i213:            ; preds = %switch.lookup265, %sms_to_isdbt_mode.exit.i200.sms_to_isdbt_guard_interval.exit.i213_crit_edge
  %retval.0.i278.i = phi i32 [ %switch.load267, %switch.lookup265 ], [ 4, %sms_to_isdbt_mode.exit.i200.sms_to_isdbt_guard_interval.exit.i213_crit_edge ]
  %guard_interval7.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 8
  %351 = ptrtoint ptr %guard_interval7.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %retval.0.i278.i, ptr %guard_interval7.i, align 4
  %partial_reception.i202 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 15
  %352 = ptrtoint ptr %partial_reception.i202 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %partial_reception.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool8.not.i = icmp ne i32 %353, 0
  %conv.i203 = zext i1 %tobool8.not.i to i8
  %isdbt_partial_reception.i204 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 17
  %354 = ptrtoint ptr %isdbt_partial_reception.i204 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %conv.i203, ptr %isdbt_partial_reception.i204, align 4
  %num_of_layers.i205 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 16
  %355 = ptrtoint ptr %num_of_layers.i205 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %num_of_layers.i205, align 4
  %357 = tail call i32 @llvm.smax.i32(i32 %356, i32 1) #8
  %358 = tail call i32 @llvm.umin.i32(i32 %357, i32 3) #8
  %isdbt_layer_enabled.i206 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 22
  %359 = ptrtoint ptr %isdbt_layer_enabled.i206 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 0, ptr %isdbt_layer_enabled.i206, align 4
  %is_external_lna_on.i207 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 4
  %360 = ptrtoint ptr %is_external_lna_on.i207 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %is_external_lna_on.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %tobool16.not.i = icmp ne i32 %361, 0
  %cond17.i = zext i1 %tobool16.not.i to i32
  %lna.i208 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 41
  %362 = ptrtoint ptr %lna.i208 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %cond17.i, ptr %lna.i208, align 4
  %SNR.i209 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 5
  %363 = ptrtoint ptr %SNR.i209 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %SNR.i209, align 4
  %mul.i210 = mul i32 %364, 1000
  %conv18.i = sext i32 %mul.i210 to i64
  %365 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43, i32 1, i32 0, i32 1
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_storeN_noabort(i32 %366, i32 8)
  store i64 %conv18.i, ptr %365, align 1
  %in_band_pwr.i211 = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 7
  %367 = ptrtoint ptr %in_band_pwr.i211 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %in_band_pwr.i211, align 4
  %mul19.i = mul i32 %368, 1000
  %conv20.i212 = sext i32 %mul19.i to i64
  %369 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42, i32 1, i32 0, i32 1
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_storeN_noabort(i32 %370, i32 8)
  store i64 %conv20.i212, ptr %369, align 1
  %371 = ptrtoint ptr %is_demod_locked.i187 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %is_demod_locked.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %tobool24.not.i = icmp eq i32 %372, 0
  br i1 %tobool24.not.i, label %sms_to_isdbt_guard_interval.exit.i213.smsdvb_update_isdbt_stats_ex.exit_crit_edge, label %for.body.preheader.i215

sms_to_isdbt_guard_interval.exit.i213.smsdvb_update_isdbt_stats_ex.exit_crit_edge: ; preds = %sms_to_isdbt_guard_interval.exit.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_update_isdbt_stats_ex.exit

for.body.preheader.i215:                          ; preds = %sms_to_isdbt_guard_interval.exit.i213
  %block_error.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48
  %stat27.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1
  %373 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 0, i32 1
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_loadN_noabort(i32 %374, i32 8)
  %375 = load i64, ptr %373, align 1
  %conv29.i = trunc i64 %375 to i32
  %last_per.i214 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 10
  %376 = ptrtoint ptr %last_per.i214 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %conv29.i, ptr %last_per.i214, align 4
  store i64 0, ptr %373, align 1
  %block_count.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49
  %stat33.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1
  %377 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 0, i32 1
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_storeN_noabort(i32 %378, i32 8)
  store i64 0, ptr %377, align 1
  %379 = ptrtoint ptr %stat27.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 3, ptr %stat27.i, align 1
  %380 = ptrtoint ptr %stat33.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 3, ptr %stat33.i, align 1
  %post_bit_error.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46
  %stat42.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1
  %381 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 0, i32 1
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_storeN_noabort(i32 %382, i32 8)
  store i64 0, ptr %381, align 1
  %post_bit_count.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47
  %stat44.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1
  %383 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 0, i32 1
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_storeN_noabort(i32 %384, i32 8)
  store i64 0, ptr %383, align 1
  %385 = ptrtoint ptr %stat42.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 3, ptr %stat42.i, align 1
  %386 = ptrtoint ptr %stat44.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 3, ptr %stat44.i, align 1
  %387 = trunc i32 %358 to i8
  %conv54.i = add nuw nsw i8 %387, 1
  %388 = ptrtoint ptr %post_bit_error.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %conv54.i, ptr %post_bit_error.i, align 4
  %389 = ptrtoint ptr %post_bit_count.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %conv54.i, ptr %post_bit_count.i, align 1
  %390 = ptrtoint ptr %block_error.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %conv54.i, ptr %block_error.i, align 2
  %391 = ptrtoint ptr %block_count.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %conv54.i, ptr %block_count.i, align 1
  br label %for.body.i217

for.body.i217:                                    ; preds = %for.inc.i234.for.body.i217_crit_edge, %for.body.preheader.i215
  %i.0280.i = phi i32 [ %inc.pre-phi.i232, %for.inc.i234.for.body.i217_crit_edge ], [ 0, %for.body.preheader.i215 ]
  %arrayidx70.i = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i
  %number_of_segments.i216 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 10
  %392 = ptrtoint ptr %number_of_segments.i216 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %number_of_segments.i216, align 4
  %394 = add i32 %393, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %394)
  %395 = icmp ult i32 %394, 12
  br i1 %395, label %if.then76.i, label %for.body.for.inc_crit_edge.i219

for.body.for.inc_crit_edge.i219:                  ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i218 = add nuw nsw i32 %i.0280.i, 1
  br label %for.inc.i234

if.then76.i:                                      ; preds = %for.body.i217
  %shl.i220 = shl nuw i32 1, %i.0280.i
  %396 = ptrtoint ptr %isdbt_layer_enabled.i206 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %isdbt_layer_enabled.i206, align 4
  %398 = trunc i32 %shl.i220 to i8
  %conv79.i = or i8 %397, %398
  store i8 %conv79.i, ptr %isdbt_layer_enabled.i206, align 4
  %399 = ptrtoint ptr %number_of_segments.i216 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %number_of_segments.i216, align 4
  %conv81.i = trunc i32 %400 to i8
  %arrayidx82.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0280.i
  %401 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %conv81.i, ptr %arrayidx82.i, align 4
  %constellation.i221 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 1
  %402 = ptrtoint ptr %constellation.i221 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %constellation.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %403)
  %cmp84.i = icmp ult i32 %403, 4
  br i1 %cmp84.i, label %if.then86.i, label %if.then76.i.if.end90.i_crit_edge

if.then76.i.if.end90.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then86.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx88.i = getelementptr [4 x i32], ptr @sms_to_modulation_table, i32 0, i32 %403
  %404 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx88.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then86.i, %if.then76.i.if.end90.i_crit_edge
  %__ret.0.i222 = phi i32 [ %405, %if.then86.i ], [ 0, %if.then76.i.if.end90.i_crit_edge ]
  %modulation.i223 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0280.i, i32 2
  %406 = ptrtoint ptr %modulation.i223 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %__ret.0.i222, ptr %modulation.i223, align 4
  %407 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %408)
  %cmp94.i = icmp ult i32 %408, 5
  br i1 %cmp94.i, label %if.then96.i, label %if.end90.i.if.end100.i_crit_edge

if.end90.i.if.end100.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

if.then96.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx98.i = getelementptr [5 x i32], ptr @sms_to_code_rate_table, i32 0, i32 %408
  %409 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx98.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then96.i, %if.end90.i.if.end100.i_crit_edge
  %__ret93.0.i = phi i32 [ %410, %if.then96.i ], [ 0, %if.end90.i.if.end100.i_crit_edge ]
  %fec.i224 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0280.i, i32 1
  %411 = ptrtoint ptr %fec.i224 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %__ret93.0.i, ptr %fec.i224, align 4
  %ti_ldepth_i.i225 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 9
  %412 = ptrtoint ptr %ti_ldepth_i.i225 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ti_ldepth_i.i225, align 4
  %conv104.i = trunc i32 %413 to i8
  %interleaving.i226 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 23, i32 %i.0280.i, i32 3
  %414 = ptrtoint ptr %interleaving.i226 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %conv104.i, ptr %interleaving.i226, align 4
  %add109.i = add nuw nsw i32 %i.0280.i, 1
  %arrayidx110.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 %add109.i
  %415 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 3, ptr %arrayidx110.i, align 1
  %arrayidx115.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 %add109.i
  %416 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 3, ptr %arrayidx115.i, align 1
  %error_ts_packets.i227 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 7
  %417 = ptrtoint ptr %error_ts_packets.i227 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %error_ts_packets.i227, align 4
  %conv117.i = zext i32 %418 to i64
  %419 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 %add109.i, i32 1
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_loadN_noabort(i32 %420, i32 8)
  %421 = load i64, ptr %419, align 1
  %add122.i = add i64 %421, %conv117.i
  store i64 %add122.i, ptr %419, align 1
  %total_ts_packets.i228 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 8
  %422 = ptrtoint ptr %total_ts_packets.i228 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %total_ts_packets.i228, align 4
  %conv123.i = zext i32 %423 to i64
  %424 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 %add109.i, i32 1
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_loadN_noabort(i32 %425, i32 8)
  %426 = load i64, ptr %424, align 1
  %add128.i = add i64 %426, %conv123.i
  store i64 %add128.i, ptr %424, align 1
  %427 = load i32, ptr %error_ts_packets.i227, align 4
  %conv130.i = zext i32 %427 to i64
  %428 = ptrtoint ptr %373 to i32
  call void @__asan_loadN_noabort(i32 %428, i32 8)
  %429 = load i64, ptr %373, align 1
  %add134.i = add i64 %429, %conv130.i
  store i64 %add134.i, ptr %373, align 1
  %430 = load i32, ptr %total_ts_packets.i228, align 4
  %conv136.i229 = zext i32 %430 to i64
  %431 = ptrtoint ptr %377 to i32
  call void @__asan_loadN_noabort(i32 %431, i32 8)
  %432 = load i64, ptr %377, align 1
  %add140.i = add i64 %432, %conv136.i229
  store i64 %add140.i, ptr %377, align 1
  %arrayidx144.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 %add109.i
  %433 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 3, ptr %arrayidx144.i, align 1
  %arrayidx149.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 %add109.i
  %434 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 3, ptr %arrayidx149.i, align 1
  %ber_error_count.i230 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 3
  %435 = ptrtoint ptr %ber_error_count.i230 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %ber_error_count.i230, align 4
  %conv151.i = zext i32 %436 to i64
  %437 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 %add109.i, i32 1
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_loadN_noabort(i32 %438, i32 8)
  %439 = load i64, ptr %437, align 1
  %add156.i = add i64 %439, %conv151.i
  store i64 %add156.i, ptr %437, align 1
  %ber_bit_count.i231 = getelementptr %struct.sms_isdbt_stats_ex, ptr %add.ptr15, i32 0, i32 19, i32 %i.0280.i, i32 4
  %440 = ptrtoint ptr %ber_bit_count.i231 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %ber_bit_count.i231, align 4
  %conv157.i = zext i32 %441 to i64
  %442 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 %add109.i, i32 1
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_loadN_noabort(i32 %443, i32 8)
  %444 = load i64, ptr %442, align 1
  %add162.i = add i64 %444, %conv157.i
  store i64 %add162.i, ptr %442, align 1
  %445 = load i32, ptr %ber_error_count.i230, align 4
  %conv164.i = zext i32 %445 to i64
  %446 = ptrtoint ptr %381 to i32
  call void @__asan_loadN_noabort(i32 %446, i32 8)
  %447 = load i64, ptr %381, align 1
  %add168.i = add i64 %447, %conv164.i
  store i64 %add168.i, ptr %381, align 1
  %448 = load i32, ptr %ber_bit_count.i231, align 4
  %conv170.i = zext i32 %448 to i64
  %449 = ptrtoint ptr %383 to i32
  call void @__asan_loadN_noabort(i32 %449, i32 8)
  %450 = load i64, ptr %383, align 1
  %add174.i = add i64 %450, %conv170.i
  store i64 %add174.i, ptr %383, align 1
  br label %for.inc.i234

for.inc.i234:                                     ; preds = %if.end100.i, %for.body.for.inc_crit_edge.i219
  %inc.pre-phi.i232 = phi i32 [ %.pre.i218, %for.body.for.inc_crit_edge.i219 ], [ %add109.i, %if.end100.i ]
  %exitcond.not.i233 = icmp eq i32 %inc.pre-phi.i232, %358
  br i1 %exitcond.not.i233, label %for.inc.i234.smsdvb_update_isdbt_stats_ex.exit_crit_edge, label %for.inc.i234.for.body.i217_crit_edge

for.inc.i234.for.body.i217_crit_edge:             ; preds = %for.inc.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i217

for.inc.i234.smsdvb_update_isdbt_stats_ex.exit_crit_edge: ; preds = %for.inc.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_update_isdbt_stats_ex.exit

smsdvb_update_isdbt_stats_ex.exit:                ; preds = %for.inc.i234.smsdvb_update_isdbt_stats_ex.exit_crit_edge, %sms_to_isdbt_guard_interval.exit.i213.smsdvb_update_isdbt_stats_ex.exit_crit_edge
  %coredev24.c73 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  br label %if.then26

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_onresponse.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_onresponse, %if.then21)) #8
          to label %if.end38.critedge71 [label %if.then21], !srcloc !147

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_onresponse.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40) #8
  %coredev24.c = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %451 = ptrtoint ptr %coredev24.c to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %coredev24.c, align 8
  tail call void @smscore_putbuffer(ptr noundef %452, ptr noundef %cb) #8
  br label %if.end38

if.then26:                                        ; preds = %smsdvb_update_isdbt_stats_ex.exit, %if.end55.i, %if.end44.i.if.then26_crit_edge, %for.inc.i.if.then26_crit_edge, %sms_to_isdbt_guard_interval.exit.i.if.then26_crit_edge, %if.then2.i, %smsdvb_update_per_slices.exit, %smsdvb_update_tx_params.exit, %sw.bb7, %sw.bb6
  %coredev.sink = phi ptr [ %coredev24.c81, %sw.bb6 ], [ %coredev24.c79, %sw.bb7 ], [ %coredev24.c77, %smsdvb_update_tx_params.exit ], [ %coredev24.c75, %smsdvb_update_per_slices.exit ], [ %coredev24.c73, %smsdvb_update_isdbt_stats_ex.exit ], [ %coredev, %if.end55.i ], [ %coredev, %if.end44.i.if.then26_crit_edge ], [ %coredev, %sms_to_isdbt_guard_interval.exit.i.if.then26_crit_edge ], [ %coredev, %if.then2.i ], [ %coredev, %for.inc.i.if.then26_crit_edge ]
  %453 = ptrtoint ptr %coredev.sink to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %coredev.sink, align 8
  tail call void @smscore_putbuffer(ptr noundef %454, ptr noundef %cb) #8
  %fe_status27 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 7
  %455 = ptrtoint ptr %fe_status27 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %fe_status27, align 8
  %and = and i32 %456, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %coredev1.i239 = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %457 = ptrtoint ptr %coredev1.i239 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %coredev1.i239, align 8
  br i1 %tobool28.not, label %if.else35, label %if.then29

if.then29:                                        ; preds = %if.then26
  %event_fe_state.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 13
  %459 = ptrtoint ptr %event_fe_state.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %event_fe_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %460)
  %cmp.not.i = icmp eq i32 %460, 3
  br i1 %cmp.not.i, label %if.then29.sms_board_dvb3_event.exit_crit_edge, label %if.then42.i

if.then29.sms_board_dvb3_event.exit_crit_edge:    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sms_board_dvb3_event.exit

if.then42.i:                                      ; preds = %if.then29
  %461 = ptrtoint ptr %event_fe_state.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 3, ptr %event_fe_state.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_onresponse, %if.then56.i)) #8
          to label %do.end59.i [label %if.then56.i], !srcloc !147

if.then56.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then56.i, %if.then42.i
  %call60.i = tail call i32 @sms_board_event(ptr noundef %458, i32 noundef 7) #8
  br label %sms_board_dvb3_event.exit

sms_board_dvb3_event.exit:                        ; preds = %do.end59.i, %if.then29.sms_board_dvb3_event.exit_crit_edge
  %last_per = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 10
  %462 = ptrtoint ptr %last_per to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %last_per, align 4
  %conv30 = sext i32 %463 to i64
  %464 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 0, i32 1
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_loadN_noabort(i32 %465, i32 8)
  %466 = load i64, ptr %464, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %466, i64 %conv30)
  %cmp = icmp eq i64 %466, %conv30
  %467 = ptrtoint ptr %coredev1.i239 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %coredev1.i239, align 8
  %event_unc_state.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 14
  %469 = ptrtoint ptr %event_unc_state.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %event_unc_state.i, align 4
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %sms_board_dvb3_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %470)
  %cmp86.not.i = icmp eq i32 %470, 5
  br i1 %cmp86.not.i, label %if.then32.if.end33_crit_edge, label %if.then87.i

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then87.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %471 = ptrtoint ptr %event_unc_state.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 5, ptr %event_unc_state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_onresponse, %if.then101.i)) #8
          to label %if.end33.sink.split [label %if.then101.i], !srcloc !147

if.then101.i:                                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %if.end33.sink.split

if.else:                                          ; preds = %sms_board_dvb3_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %470)
  %cmp109.not.i = icmp eq i32 %470, 6
  br i1 %cmp109.not.i, label %if.else.if.end33_crit_edge, label %if.then110.i

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then110.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %472 = ptrtoint ptr %event_unc_state.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 6, ptr %event_unc_state.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_onresponse, %if.then124.i)) #8
          to label %if.end33.sink.split [label %if.then124.i], !srcloc !147

if.then124.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then124.i, %if.then110.i, %if.then101.i, %if.then87.i
  %.sink = phi i32 [ 16, %if.then101.i ], [ 16, %if.then87.i ], [ 17, %if.then124.i ], [ 17, %if.then110.i ]
  %call128.i = tail call i32 @sms_board_event(ptr noundef %468, i32 noundef %.sink) #8
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %if.then32.if.end33_crit_edge
  %has_tuned34 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 17
  %473 = ptrtoint ptr %has_tuned34 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 1, ptr %has_tuned34, align 8
  br label %if.end37

if.else35:                                        ; preds = %if.then26
  %call.i = tail call i32 @smscore_get_device_mode(ptr noundef %458) #8
  %call.off.i = add i32 %call.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  %..i = select i1 %switch.i, i32 4, i32 1
  %strength.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42
  %474 = ptrtoint ptr %strength.i to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 1, ptr %strength.i, align 4
  %cnr.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43
  %475 = ptrtoint ptr %cnr.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 1, ptr %cnr.i, align 1
  %stat.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 42, i32 1
  %476 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 1, ptr %stat.i, align 1
  %stat5.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 43, i32 1
  %477 = ptrtoint ptr %stat5.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 1, ptr %stat5.i, align 1
  %conv.i240 = trunc i32 %..i to i8
  %post_bit_error.i241 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46
  %478 = ptrtoint ptr %post_bit_error.i241 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %conv.i240, ptr %post_bit_error.i241, align 4
  %post_bit_count.i242 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47
  %479 = ptrtoint ptr %post_bit_count.i242 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %conv.i240, ptr %post_bit_count.i242, align 1
  %block_error.i243 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48
  %480 = ptrtoint ptr %block_error.i243 to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 %conv.i240, ptr %block_error.i243, align 2
  %block_count.i244 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49
  %481 = ptrtoint ptr %block_count.i244 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %conv.i240, ptr %block_count.i244, align 1
  br label %for.body.i246

for.body.i246:                                    ; preds = %for.body.i246.for.body.i246_crit_edge, %if.else35
  %i.053.i = phi i32 [ 0, %if.else35 ], [ %inc.i, %for.body.i246.for.body.i246_crit_edge ]
  %arrayidx18.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 46, i32 1, i32 %i.053.i
  %482 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 0, ptr %arrayidx18.i, align 1
  %arrayidx22.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 47, i32 1, i32 %i.053.i
  %483 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 0, ptr %arrayidx22.i, align 1
  %arrayidx26.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 48, i32 1, i32 %i.053.i
  %484 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 0, ptr %arrayidx26.i, align 1
  %arrayidx30.i = getelementptr %struct.smsdvb_client_t, ptr %context, i32 0, i32 6, i32 8, i32 49, i32 1, i32 %i.053.i
  %485 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 0, ptr %arrayidx30.i, align 1
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i245 = icmp eq i32 %inc.i, %..i
  br i1 %exitcond.not.i245, label %smsdvb_stats_not_ready.exit, label %for.body.i246.for.body.i246_crit_edge

for.body.i246.for.body.i246_crit_edge:            ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i246

smsdvb_stats_not_ready.exit:                      ; preds = %for.body.i246
  %has_tuned36 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 17
  %486 = ptrtoint ptr %has_tuned36 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 0, ptr %has_tuned36, align 8
  %487 = ptrtoint ptr %coredev1.i239 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %coredev1.i239, align 8
  %event_fe_state63.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 13
  %489 = ptrtoint ptr %event_fe_state63.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %event_fe_state63.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %490)
  %cmp64.not.i = icmp eq i32 %490, 4
  br i1 %cmp64.not.i, label %smsdvb_stats_not_ready.exit.if.end37_crit_edge, label %if.then65.i

smsdvb_stats_not_ready.exit.if.end37_crit_edge:   ; preds = %smsdvb_stats_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then65.i:                                      ; preds = %smsdvb_stats_not_ready.exit
  %491 = ptrtoint ptr %event_fe_state63.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 4, ptr %event_fe_state63.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_onresponse, %if.then79.i)) #8
          to label %do.end82.i [label %if.then79.i], !srcloc !147

if.then79.i:                                      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end82.i

do.end82.i:                                       ; preds = %if.then79.i, %if.then65.i
  %call83.i = tail call i32 @sms_board_event(ptr noundef %488, i32 noundef 8) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end82.i, %smsdvb_stats_not_ready.exit.if.end37_crit_edge, %if.end33
  %stats_done = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 9
  tail call void @complete(ptr noundef %stats_done) #8
  br label %if.end38

if.end38.critedge71:                              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %coredev24.c72 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %492 = ptrtoint ptr %coredev24.c72 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %coredev24.c72, align 8
  tail call void @smscore_putbuffer(ptr noundef %493, ptr noundef %cb) #8
  br label %if.end38

if.end38.critedge86:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %coredev24.c87 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %494 = ptrtoint ptr %coredev24.c87 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %coredev24.c87, align 8
  tail call void @smscore_putbuffer(ptr noundef %495, ptr noundef %cb) #8
  br label %if.end38

if.end38.critedge88:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %coredev24.c89 = getelementptr inbounds %struct.smsdvb_client_t, ptr %context, i32 0, i32 1
  %496 = ptrtoint ptr %coredev24.c89 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %coredev24.c89, align 8
  tail call void @smscore_putbuffer(ptr noundef %497, ptr noundef %cb) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.critedge88, %if.end38.critedge86, %if.end38.critedge71, %if.end37, %if.then21, %sw.bb5, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsdvb_onremove(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @g_smsdvb_clientslock, i32 noundef 0) #8
  tail call fastcc void @smsdvb_unregister_client(ptr noundef %context)
  tail call void @mutex_unlock(ptr noundef nonnull @g_smsdvb_clientslock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sms_board_dvb3_event(ptr nocapture noundef %client, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev1 = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %coredev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev1, align 8
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %event, label %do.end132 [
    i32 0, label %do.body
    i32 1, label %do.body6
    i32 2, label %do.body24
    i32 3, label %sw.bb41
    i32 4, label %sw.bb62
    i32 5, label %sw.bb85
    i32 6, label %sw.bb107
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call4 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 3) #8
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then18)) #8
          to label %do.end21 [label %if.then18], !srcloc !147

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body6
  %call22 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 1) #8
  br label %sw.epilog

do.body24:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then36)) #8
          to label %do.end39 [label %if.then36], !srcloc !147

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %call40 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 0) #8
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %event_fe_state = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 13
  %3 = ptrtoint ptr %event_fe_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event_fe_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %sw.bb41.sw.epilog_crit_edge, label %if.then42

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then42:                                        ; preds = %sw.bb41
  %5 = ptrtoint ptr %event_fe_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %event_fe_state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then56)) #8
          to label %do.end59 [label %if.then56], !srcloc !147

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %if.then42
  %call60 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 7) #8
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %event_fe_state63 = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 13
  %6 = ptrtoint ptr %event_fe_state63 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_fe_state63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp64.not = icmp eq i32 %7, 4
  br i1 %cmp64.not, label %sw.bb62.sw.epilog_crit_edge, label %if.then65

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then65:                                        ; preds = %sw.bb62
  %8 = ptrtoint ptr %event_fe_state63 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %event_fe_state63, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then79)) #8
          to label %do.end82 [label %if.then79], !srcloc !147

if.then79:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %if.then65
  %call83 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 8) #8
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  %event_unc_state = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 14
  %9 = ptrtoint ptr %event_unc_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_unc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp86.not = icmp eq i32 %10, 5
  br i1 %cmp86.not, label %sw.bb85.sw.epilog_crit_edge, label %if.then87

sw.bb85.sw.epilog_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then87:                                        ; preds = %sw.bb85
  %11 = ptrtoint ptr %event_unc_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %event_unc_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then101)) #8
          to label %do.end104 [label %if.then101], !srcloc !147

if.then101:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %if.then87
  %call105 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 16) #8
  br label %sw.epilog

sw.bb107:                                         ; preds = %entry
  %event_unc_state108 = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 14
  %12 = ptrtoint ptr %event_unc_state108 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_unc_state108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp109.not = icmp eq i32 %13, 6
  br i1 %cmp109.not, label %sw.bb107.sw.epilog_crit_edge, label %if.then110

sw.bb107.sw.epilog_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then110:                                       ; preds = %sw.bb107
  %14 = ptrtoint ptr %event_unc_state108 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %event_unc_state108, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sms_board_dvb3_event, %if.then124)) #8
          to label %do.end127 [label %if.then124], !srcloc !147

if.then124:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %do.end127

do.end127:                                        ; preds = %if.then124, %if.then110
  %call128 = tail call i32 @sms_board_event(ptr noundef %1, i32 noundef 17) #8
  br label %sw.epilog

do.end132:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end132, %do.end127, %sw.bb107.sw.epilog_crit_edge, %do.end104, %sw.bb85.sw.epilog_crit_edge, %do.end82, %sw.bb62.sw.epilog_crit_edge, %do.end59, %sw.bb41.sw.epilog_crit_edge, %do.end39, %do.end21, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sms_board_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smsdvb_debugfs_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_create_media_graph(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsdvb_debugfs_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsdvb_media_device_unregister(ptr nocapture noundef readonly %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev1 = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %coredev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev1, align 8
  %media_dev = getelementptr inbounds %struct.smscore_device_t, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %media_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @media_device_unregister(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %media_dev, align 4
  tail call void @media_device_cleanup(ptr noundef %5) #8
  %6 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %media_dev, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %media_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smsclient_sendrequest(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @smsdvb_release(ptr nocapture noundef %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev = getelementptr i8, ptr %fe, i32 -1880
  %0 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev, align 8
  %call = tail call i32 @sms_board_power(ptr noundef %1, i32 noundef 1) #8
  %2 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coredev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_init, %if.then.i)) #8
          to label %sms_board_dvb3_event.exit [label %if.then.i], !srcloc !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %sms_board_dvb3_event.exit

sms_board_dvb3_event.exit:                        ; preds = %if.then.i, %entry
  %call4.i = tail call i32 @sms_board_event(ptr noundef %3, i32 noundef 3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev = getelementptr i8, ptr %fe, i32 -1880
  %0 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev, align 8
  %call = tail call i32 @sms_board_led_feedback(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coredev, align 8
  %call2 = tail call i32 @sms_board_power(ptr noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coredev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_sleep, %if.then18.i)) #8
          to label %sms_board_dvb3_event.exit [label %if.then18.i], !srcloc !147

if.then18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sms_board_dvb3_event.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #8
  br label %sms_board_dvb3_event.exit

sms_board_dvb3_event.exit:                        ; preds = %if.then18.i, %entry
  %call22.i = tail call i32 @sms_board_event(ptr noundef %5, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev1 = getelementptr i8, ptr %fe, i32 -1880
  %0 = ptrtoint ptr %coredev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev1, align 8
  %call.i = tail call i32 @smscore_get_device_mode(ptr noundef %1) #8
  %call.off.i = add i32 %call.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  %..i = select i1 %switch.i, i32 4, i32 1
  %strength.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %2 = ptrtoint ptr %strength.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %strength.i, align 4
  %cnr.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %3 = ptrtoint ptr %cnr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %cnr.i, align 1
  %stat.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %4 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %stat.i, align 1
  %stat5.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %5 = ptrtoint ptr %stat5.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %stat5.i, align 1
  %conv.i = trunc i32 %..i to i8
  %post_bit_error.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %6 = ptrtoint ptr %post_bit_error.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %post_bit_error.i, align 4
  %post_bit_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %7 = ptrtoint ptr %post_bit_count.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %post_bit_count.i, align 1
  %block_error.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %8 = ptrtoint ptr %block_error.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %block_error.i, align 2
  %block_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %9 = ptrtoint ptr %block_count.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %block_count.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.053.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 %i.053.i
  %10 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx18.i, align 1
  %arrayidx22.i = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 %i.053.i
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx22.i, align 1
  %arrayidx26.i = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 %i.053.i
  %12 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx26.i, align 1
  %arrayidx30.i = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 %i.053.i
  %13 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx30.i, align 1
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %..i
  br i1 %exitcond.not.i, label %smsdvb_stats_not_ready.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

smsdvb_stats_not_ready.exit:                      ; preds = %for.body.i
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %14, align 1
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %16, align 1
  %has_tuned = getelementptr i8, ptr %fe, i32 1184
  %18 = ptrtoint ptr %has_tuned to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %has_tuned, align 8
  %call = tail call i32 @smscore_get_device_mode(ptr noundef %1) #8
  %19 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call, label %smsdvb_stats_not_ready.exit.cleanup_crit_edge [
    i32 0, label %smsdvb_stats_not_ready.exit.sw.bb_crit_edge
    i32 4, label %smsdvb_stats_not_ready.exit.sw.bb_crit_edge15
    i32 5, label %smsdvb_stats_not_ready.exit.sw.bb5_crit_edge
    i32 6, label %smsdvb_stats_not_ready.exit.sw.bb5_crit_edge16
  ]

smsdvb_stats_not_ready.exit.sw.bb5_crit_edge16:   ; preds = %smsdvb_stats_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

smsdvb_stats_not_ready.exit.sw.bb5_crit_edge:     ; preds = %smsdvb_stats_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

smsdvb_stats_not_ready.exit.sw.bb_crit_edge15:    ; preds = %smsdvb_stats_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

smsdvb_stats_not_ready.exit.sw.bb_crit_edge:      ; preds = %smsdvb_stats_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

smsdvb_stats_not_ready.exit.cleanup_crit_edge:    ; preds = %smsdvb_stats_not_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %smsdvb_stats_not_ready.exit.sw.bb_crit_edge, %smsdvb_stats_not_ready.exit.sw.bb_crit_edge15
  %call4 = tail call fastcc i32 @smsdvb_dvbt_set_frontend(ptr noundef %fe)
  br label %cleanup

sw.bb5:                                           ; preds = %smsdvb_stats_not_ready.exit.sw.bb5_crit_edge, %smsdvb_stats_not_ready.exit.sw.bb5_crit_edge16
  %call6 = tail call fastcc i32 @smsdvb_isdbt_set_frontend(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %smsdvb_stats_not_ready.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.bb5 ], [ %call4, %sw.bb ], [ -22, %smsdvb_stats_not_ready.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_get_tune_settings.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_get_tune_settings, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_get_tune_settings.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 400, ptr %tune, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %tune, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 250000, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %tune, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_read_status(ptr noundef %fe, ptr nocapture noundef writeonly %stat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  %call = tail call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr)
  %fe_status = getelementptr i8, ptr %fe, i32 1040
  %0 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fe_status, align 8
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %stat, align 4
  %3 = load i32, ptr %fe_status, align 8
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %coredev.i = getelementptr i8, ptr %fe, i32 -1880
  %4 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coredev.i, align 8
  br i1 %tobool.not.i, label %entry.led_feedback.exit_crit_edge, label %if.end.i

entry.led_feedback.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_feedback.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_ber.i = getelementptr i8, ptr %fe, i32 1160
  %6 = ptrtoint ptr %legacy_ber.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %legacy_ber.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  br label %led_feedback.exit

led_feedback.exit:                                ; preds = %if.end.i, %entry.led_feedback.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end.i ], [ 0, %entry.led_feedback.exit_crit_edge ]
  %call2.i = tail call i32 @sms_board_led_feedback(ptr noundef %5, i32 noundef %cond.sink.i) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_read_ber(ptr noundef %fe, ptr nocapture noundef writeonly %ber) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  %call = tail call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr)
  %legacy_ber = getelementptr i8, ptr %fe, i32 1160
  %0 = ptrtoint ptr %legacy_ber to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %legacy_ber, align 8
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ber, align 4
  %fe_status.i = getelementptr i8, ptr %fe, i32 1040
  %3 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fe_status.i, align 8
  %and.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %coredev.i = getelementptr i8, ptr %fe, i32 -1880
  %5 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %coredev.i, align 8
  br i1 %tobool.not.i, label %entry.led_feedback.exit_crit_edge, label %if.end.i

entry.led_feedback.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_feedback.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %legacy_ber to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %legacy_ber, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  br label %led_feedback.exit

led_feedback.exit:                                ; preds = %if.end.i, %entry.led_feedback.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end.i ], [ 0, %entry.led_feedback.exit_crit_edge ]
  %call2.i = tail call i32 @sms_board_led_feedback(ptr noundef %6, i32 noundef %cond.sink.i) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %strength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %0, align 1
  %conv = trunc i64 %2 to i32
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  %call = tail call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %conv)
  %cmp = icmp slt i32 %conv, -95
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -29, i32 %conv)
  %cmp3 = icmp sgt i32 %conv, -29
  br i1 %cmp3, label %if.else.if.end8_crit_edge, label %if.else6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %3 = mul nsw i32 %conv, 65535
  %mul = add nsw i32 %3, 6225825
  %div16 = udiv i32 %mul, 66
  %conv7 = trunc i32 %div16 to i16
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %.sink = phi i16 [ %conv7, %if.else6 ], [ 0, %entry.if.end8_crit_edge ], [ -1, %if.else.if.end8_crit_edge ]
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %strength, align 2
  %fe_status.i = getelementptr i8, ptr %fe, i32 1040
  %5 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fe_status.i, align 8
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %coredev.i = getelementptr i8, ptr %fe, i32 -1880
  %7 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coredev.i, align 8
  br i1 %tobool.not.i, label %if.end8.led_feedback.exit_crit_edge, label %if.end.i

if.end8.led_feedback.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_feedback.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_ber.i = getelementptr i8, ptr %fe, i32 1160
  %9 = ptrtoint ptr %legacy_ber.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %legacy_ber.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  br label %led_feedback.exit

led_feedback.exit:                                ; preds = %if.end.i, %if.end8.led_feedback.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end.i ], [ 0, %if.end8.led_feedback.exit_crit_edge ]
  %call2.i = tail call i32 @sms_board_led_feedback(ptr noundef %8, i32 noundef %cond.sink.i) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_read_snr(ptr noundef %fe, ptr nocapture noundef writeonly %snr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  %call = tail call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr)
  %0 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %0, align 1
  %conv = trunc i64 %2 to i32
  %div = udiv i32 %conv, 100
  %conv1 = trunc i32 %div to i16
  %3 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv1, ptr %snr, align 2
  %fe_status.i = getelementptr i8, ptr %fe, i32 1040
  %4 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fe_status.i, align 8
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %coredev.i = getelementptr i8, ptr %fe, i32 -1880
  %6 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %coredev.i, align 8
  br i1 %tobool.not.i, label %entry.led_feedback.exit_crit_edge, label %if.end.i

entry.led_feedback.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_feedback.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_ber.i = getelementptr i8, ptr %fe, i32 1160
  %8 = ptrtoint ptr %legacy_ber.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %legacy_ber.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  br label %led_feedback.exit

led_feedback.exit:                                ; preds = %if.end.i, %entry.led_feedback.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end.i ], [ 0, %entry.led_feedback.exit_crit_edge ]
  %call2.i = tail call i32 @sms_board_led_feedback(ptr noundef %7, i32 noundef %cond.sink.i) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_read_ucblocks(ptr noundef %fe, ptr nocapture noundef writeonly %ucblocks) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  %call = tail call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr)
  %0 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %0, align 1
  %conv = trunc i64 %2 to i32
  %3 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %ucblocks, align 4
  %fe_status.i = getelementptr i8, ptr %fe, i32 1040
  %4 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fe_status.i, align 8
  %and.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %coredev.i = getelementptr i8, ptr %fe, i32 -1880
  %6 = ptrtoint ptr %coredev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %coredev.i, align 8
  br i1 %tobool.not.i, label %entry.led_feedback.exit_crit_edge, label %if.end.i

entry.led_feedback.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %led_feedback.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_ber.i = getelementptr i8, ptr %fe, i32 1160
  %8 = ptrtoint ptr %legacy_ber.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %legacy_ber.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  br label %led_feedback.exit

led_feedback.exit:                                ; preds = %if.end.i, %entry.led_feedback.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end.i ], [ 0, %entry.led_feedback.exit_crit_edge ]
  %call2.i = tail call i32 @sms_board_led_feedback(ptr noundef %7, i32 noundef %cond.sink.i) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sms_board_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sms_board_led_feedback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsdvb_dvbt_set_frontend(ptr noundef %fe) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.anon.101, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.anon.101, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.101, ptr %msg, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.anon.101, ptr %msg, i32 0, i32 1, i32 2
  %fe_status = getelementptr i8, ptr %fe, i32 1040
  %7 = getelementptr inbounds i8, ptr %msg, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fe_status, align 8
  %event_fe_state = getelementptr i8, ptr %fe, i32 1168
  %10 = ptrtoint ptr %event_fe_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %event_fe_state, align 8
  %event_unc_state = getelementptr i8, ptr %fe, i32 1172
  %11 = ptrtoint ptr %event_unc_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %event_unc_state, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %12 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %delivery_system, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -55, ptr %0, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 11, ptr %1, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %3, align 2
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 561, ptr %msg, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 20, ptr %2, align 4
  %18 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dtv_property_cache, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %4, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12000000, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_dvbt_set_frontend.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_dvbt_set_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_dvbt_set_frontend.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.31, i32 noundef %23, i32 noundef %25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bandwidth_hz13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %26 = ptrtoint ptr %bandwidth_hz13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bandwidth_hz13, align 4
  %div = udiv i32 %27, 1000000
  %28 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %div, label %sw.default [
    i32 8, label %do.end.sw.epilog_crit_edge
    i32 7, label %sw.bb16
    i32 6, label %sw.bb19
    i32 0, label %do.end.cleanup35_crit_edge
  ]

do.end.cleanup35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb16, %do.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb19 ], [ 1, %sw.bb16 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %5, align 4
  %coredev = getelementptr i8, ptr %fe, i32 -1880
  %30 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %coredev, align 8
  %call23 = tail call i32 @sms_board_lna_control(ptr noundef %31, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp eq i32 %call23, 0
  br i1 %cmp, label %if.then24, label %sw.epilog.if.end32_crit_edge

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then24:                                        ; preds = %sw.epilog
  %smsclient.i = getelementptr i8, ptr %fe, i32 -1876
  %32 = ptrtoint ptr %smsclient.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smsclient.i, align 4
  %call.i = call i32 @smsclient_sendrequest(ptr noundef %33, ptr noundef nonnull %msg, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then24.smsdvb_sendrequest_and_wait.exit_crit_edge, label %if.end.i

if.then24.smsdvb_sendrequest_and_wait.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_sendrequest_and_wait.exit

if.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %tune_done = getelementptr i8, ptr %fe, i32 1044
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %tune_done, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %cond.i = select i1 %tobool.not.i, i32 -62, i32 0
  br label %smsdvb_sendrequest_and_wait.exit

smsdvb_sendrequest_and_wait.exit:                 ; preds = %if.end.i, %if.then24.smsdvb_sendrequest_and_wait.exit_crit_edge
  %retval.0.i54 = phi i32 [ %cond.i, %if.end.i ], [ %call.i, %if.then24.smsdvb_sendrequest_and_wait.exit_crit_edge ]
  %call.i55 = call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr) #8
  %34 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fe_status, align 8
  %and.i.i = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %coredev, align 8
  br i1 %tobool.not.i.i, label %if.end29, label %cleanup35.critedge

if.end29:                                         ; preds = %smsdvb_sendrequest_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i67 = call i32 @sms_board_led_feedback(ptr noundef %37, i32 noundef 0) #8
  %38 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %coredev, align 8
  %call31 = call i32 @sms_board_lna_control(ptr noundef %39, i32 noundef 1) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %sw.epilog.if.end32_crit_edge
  %smsclient.i56 = getelementptr i8, ptr %fe, i32 -1876
  %40 = ptrtoint ptr %smsclient.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smsclient.i56, align 4
  %call.i57 = call i32 @smsclient_sendrequest(ptr noundef %41, ptr noundef nonnull %msg, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp slt i32 %call.i57, 0
  br i1 %cmp.i58, label %if.end32.cleanup35_crit_edge, label %if.end.i62

if.end32.cleanup35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.end.i62:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %tune_done33 = getelementptr i8, ptr %fe, i32 1044
  %call2.i59 = call i32 @wait_for_completion_timeout(ptr noundef %tune_done33, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i59)
  %tobool.not.i60 = icmp eq i32 %call2.i59, 0
  %cond.i61 = select i1 %tobool.not.i60, i32 -62, i32 0
  br label %cleanup35

cleanup35.critedge:                               ; preds = %smsdvb_sendrequest_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_ber.i.i = getelementptr i8, ptr %fe, i32 1160
  %42 = ptrtoint ptr %legacy_ber.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %legacy_ber.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i = icmp eq i32 %43, 0
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 1
  %call2.i.i = call i32 @sms_board_led_feedback(ptr noundef %37, i32 noundef %cond.i.i) #8
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup35.critedge, %if.end.i62, %if.end32.cleanup35_crit_edge, %sw.default, %do.end.cleanup35_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default ], [ -95, %do.end.cleanup35_crit_edge ], [ %retval.0.i54, %cleanup35.critedge ], [ %cond.i61, %if.end.i62 ], [ %call.i57, %if.end32.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsdvb_isdbt_set_frontend(ptr noundef %fe) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.anon.102, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %fe, i32 -1888
  %coredev = getelementptr i8, ptr %fe, i32 -1880
  %0 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev, align 8
  %call = tail call i32 @smscore_get_board_id(ptr noundef %1) #8
  %call1 = tail call ptr @sms_get_board(i32 noundef %call) #8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %4 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 4
  %8 = getelementptr inbounds %struct.anon.102, ptr %msg, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.102, ptr %msg, i32 0, i32 1, i32 1
  %10 = getelementptr inbounds %struct.anon.102, ptr %msg, i32 0, i32 1, i32 2
  %11 = getelementptr inbounds %struct.anon.102, ptr %msg, i32 0, i32 1, i32 3
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %12 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %delivery_system, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -55, ptr %4, align 2
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 11, ptr %5, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %7, align 2
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 776, ptr %msg, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 24, ptr %6, align 4
  %isdbt_sb_segment_idx = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 20
  %18 = ptrtoint ptr %isdbt_sb_segment_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %isdbt_sb_segment_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp = icmp eq i32 %19, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %isdbt_sb_segment_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %isdbt_sb_segment_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %isdbt_layer_enabled = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %21 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %isdbt_layer_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %isdbt_layer_enabled, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %8, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %9, align 4
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 12000000, ptr %10, align 4
  %29 = ptrtoint ptr %isdbt_sb_segment_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %isdbt_sb_segment_idx, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %11, align 4
  %isdbt_partial_reception = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 17
  %32 = ptrtoint ptr %isdbt_partial_reception to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %isdbt_partial_reception, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool20.not = icmp eq i8 %33, 0
  %34 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %34)
  %switch101 = icmp eq i32 %34, 6
  br i1 %tobool20.not, label %if.else35, label %if.then21

if.then21:                                        ; preds = %if.end12
  br i1 %switch101, label %land.lhs.true, label %if.then21.if.else_crit_edge

if.then21.if.else_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then21
  %isdbt_sb_segment_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 21
  %35 = ptrtoint ptr %isdbt_sb_segment_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %isdbt_sb_segment_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp24 = icmp ugt i32 %36, 3
  br i1 %cmp24, label %land.lhs.true.if.end43.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end43.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then21.if.else_crit_edge
  %isdbt_sb_segment_count28 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 21
  %37 = ptrtoint ptr %isdbt_sb_segment_count28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %isdbt_sb_segment_count28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp29 = icmp ugt i32 %38, 1
  br i1 %cmp29, label %if.else.if.end43.sink.split_crit_edge, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split

if.else35:                                        ; preds = %if.end12
  br i1 %switch101, label %if.else35.if.end43.sink.split_crit_edge, label %if.else35.if.end43_crit_edge

if.else35.if.end43_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else35.if.end43.sink.split_crit_edge:          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else35.if.end43.sink.split_crit_edge, %if.else.if.end43.sink.split_crit_edge, %land.lhs.true.if.end43.sink.split_crit_edge
  %.sink = phi i32 [ 8, %land.lhs.true.if.end43.sink.split_crit_edge ], [ 5, %if.else.if.end43.sink.split_crit_edge ], [ 8, %if.else35.if.end43.sink.split_crit_edge ]
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %9, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else35.if.end43_crit_edge, %if.else.if.end43_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %40 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6000000, ptr %bandwidth_hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsdvb_isdbt_set_frontend.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsdvb_isdbt_set_frontend, %if.then49)) #8
          to label %do.end [label %if.then49], !srcloc !147

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dtv_property_cache, align 4
  %isdbt_sb_segment_count51 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 21
  %43 = ptrtoint ptr %isdbt_sb_segment_count51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %isdbt_sb_segment_count51, align 4
  %45 = ptrtoint ptr %isdbt_sb_segment_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %isdbt_sb_segment_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsdvb_isdbt_set_frontend.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34, i32 noundef %42, i32 noundef %44, i32 noundef %46) #8
  br label %do.end

do.end:                                           ; preds = %if.then49, %if.end43
  %47 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %coredev, align 8
  %call55 = tail call i32 @sms_board_lna_control(ptr noundef %48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %do.end.if.end65_crit_edge

do.end.if.end65_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then57:                                        ; preds = %do.end
  %smsclient.i = getelementptr i8, ptr %fe, i32 -1876
  %49 = ptrtoint ptr %smsclient.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %smsclient.i, align 4
  %call.i = call i32 @smsclient_sendrequest(ptr noundef %50, ptr noundef nonnull %msg, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then57.smsdvb_sendrequest_and_wait.exit_crit_edge, label %if.end.i

if.then57.smsdvb_sendrequest_and_wait.exit_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsdvb_sendrequest_and_wait.exit

if.end.i:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %tune_done = getelementptr i8, ptr %fe, i32 1044
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %tune_done, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %cond.i = select i1 %tobool.not.i, i32 -62, i32 0
  br label %smsdvb_sendrequest_and_wait.exit

smsdvb_sendrequest_and_wait.exit:                 ; preds = %if.end.i, %if.then57.smsdvb_sendrequest_and_wait.exit_crit_edge
  %retval.0.i102 = phi i32 [ %cond.i, %if.end.i ], [ %call.i, %if.then57.smsdvb_sendrequest_and_wait.exit_crit_edge ]
  %call.i103 = call fastcc i32 @smsdvb_send_statistics_request(ptr noundef %add.ptr) #8
  %fe_status.i = getelementptr i8, ptr %fe, i32 1040
  %51 = ptrtoint ptr %fe_status.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fe_status.i, align 8
  %and.i.i = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %53 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %coredev, align 8
  br i1 %tobool.not.i.i, label %if.end62, label %cleanup68.critedge

if.end62:                                         ; preds = %smsdvb_sendrequest_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i115 = call i32 @sms_board_led_feedback(ptr noundef %54, i32 noundef 0) #8
  %55 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %coredev, align 8
  %call64 = call i32 @sms_board_lna_control(ptr noundef %56, i32 noundef 1) #8
  br label %if.end65

if.end65:                                         ; preds = %if.end62, %do.end.if.end65_crit_edge
  %smsclient.i104 = getelementptr i8, ptr %fe, i32 -1876
  %57 = ptrtoint ptr %smsclient.i104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %smsclient.i104, align 4
  %call.i105 = call i32 @smsclient_sendrequest(ptr noundef %58, ptr noundef nonnull %msg, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %if.end65.cleanup68_crit_edge, label %if.end.i110

if.end65.cleanup68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end.i110:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %tune_done66 = getelementptr i8, ptr %fe, i32 1044
  %call2.i107 = call i32 @wait_for_completion_timeout(ptr noundef %tune_done66, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i107)
  %tobool.not.i108 = icmp eq i32 %call2.i107, 0
  %cond.i109 = select i1 %tobool.not.i108, i32 -62, i32 0
  br label %cleanup68

cleanup68.critedge:                               ; preds = %smsdvb_sendrequest_and_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %legacy_ber.i.i = getelementptr i8, ptr %fe, i32 1160
  %59 = ptrtoint ptr %legacy_ber.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %legacy_ber.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i = icmp eq i32 %60, 0
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 1
  %call2.i.i = call i32 @sms_board_led_feedback(ptr noundef %54, i32 noundef %cond.i.i) #8
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup68.critedge, %if.end.i110, %if.end65.cleanup68_crit_edge
  %retval.1 = phi i32 [ %retval.0.i102, %cleanup68.critedge ], [ %cond.i109, %if.end.i110 ], [ %call.i105, %if.end65.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sms_board_lna_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsdvb_send_statistics_request(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.sms_msg_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.sms_msg_hdr, ptr %msg, i32 0, i32 4
  %get_stats_jiffies = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 15
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %msg, align 2
  %5 = ptrtoint ptr %get_stats_jiffies to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %get_stats_jiffies, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 10
  %9 = ptrtoint ptr %get_stats_jiffies to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %get_stats_jiffies, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -55, ptr %0, align 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 11, ptr %1, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %3, align 2
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8, ptr %2, align 2
  %coredev = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %coredev, align 8
  %call3 = tail call i32 @smscore_get_device_mode(ptr noundef %15) #8
  %call3.off = add i32 %call3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.off)
  %switch = icmp ult i32 %call3.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %16 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %coredev, align 8
  %fw_version = getelementptr inbounds %struct.smscore_device_t, ptr %17, i32 0, i32 40
  %18 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %19)
  %cmp5 = icmp ugt i16 %19, 2047
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 653, ptr %msg, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 615, ptr %msg, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 615, ptr %msg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then7
  %smsclient.i = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 2
  %23 = ptrtoint ptr %smsclient.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smsclient.i, align 4
  %call.i = call i32 @smsclient_sendrequest(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %stats_done = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 9
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %stats_done, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %cond.i = select i1 %tobool.not.i, i32 -62, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.epilog.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %cond.i, %if.end.i ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_putbuffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sms_board_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_unregister_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsdvb_debugfs_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_register_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype301, !1, !"__UNIQUE_ID_adapter_nrtype301", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr302, !1, !"__UNIQUE_ID_adapter_nr302", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_smsdvb__317_1266_smsdvb_module_init6, !5, !"__initcall__kmod_smsdvb__317_1266_smsdvb_module_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1266, i32 1}
!6 = !{ptr @__exitcall_smsdvb_module_exit, !7, !"__exitcall_smsdvb_module_exit", i1 false, i1 false}
!7 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1267, i32 1}
!8 = !{ptr @__UNIQUE_ID_description318, !9, !"__UNIQUE_ID_description318", i1 false, i1 false}
!9 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1269, i32 1}
!10 = !{ptr @__UNIQUE_ID_author319, !11, !"__UNIQUE_ID_author319", i1 false, i1 false}
!11 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1270, i32 1}
!12 = !{ptr @__UNIQUE_ID_file320, !13, !"__UNIQUE_ID_file320", i1 false, i1 false}
!13 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1271, i32 1}
!14 = !{ptr @__UNIQUE_ID_license321, !13, !"__UNIQUE_ID_license321", i1 false, i1 false}
!15 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!16 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!17 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1123, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @smsdvb_hotplug._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @smsdvb_hotplug._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1137, i32 3}
!27 = !{ptr @smsdvb_hotplug._entry.4, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @smsdvb_hotplug._entry_ptr.6, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1148, i32 3}
!31 = !{ptr @smsdvb_hotplug._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @smsdvb_hotplug._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1169, i32 3}
!35 = !{ptr @smsdvb_hotplug._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @smsdvb_hotplug._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1181, i32 3}
!39 = !{ptr @smsdvb_hotplug._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @smsdvb_hotplug._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1203, i32 3}
!43 = !{ptr @smsdvb_hotplug._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @smsdvb_hotplug._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1207, i32 3}
!47 = !{ptr @smsdvb_hotplug._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @smsdvb_hotplug._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1211, i32 2}
!51 = !{ptr @smsdvb_hotplug._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @smsdvb_hotplug._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 682, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @smsdvb_start_feed.__UNIQUE_ID_ddebug311, !54, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!57 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 704, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @smsdvb_stop_feed.__UNIQUE_ID_ddebug312, !59, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!62 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @smsdvb_fe_ops, !64, !"smsdvb_fe_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1072, i32 38}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 908, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @smsdvb_dvbt_set_frontend.__UNIQUE_ID_ddebug314, !66, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!69 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 993, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @smsdvb_isdbt_set_frontend.__UNIQUE_ID_ddebug315, !71, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!74 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 874, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @smsdvb_get_tune_settings.__UNIQUE_ID_ddebug313, !76, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!79 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 614, i32 3}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smsdvb_onresponse.__UNIQUE_ID_ddebug310, !81, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!84 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sms_to_guard_interval_table, !86, !"sms_to_guard_interval_table", i1 false, i1 false}
!86 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 32, i32 12}
!87 = !{ptr @sms_to_code_rate_table, !88, !"sms_to_code_rate_table", i1 false, i1 false}
!88 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 39, i32 12}
!89 = !{ptr @sms_to_hierarchy_table, !90, !"sms_to_hierarchy_table", i1 false, i1 false}
!90 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 48, i32 12}
!91 = !{ptr @sms_to_modulation_table, !92, !"sms_to_modulation_table", i1 false, i1 false}
!92 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 55, i32 12}
!93 = !{ptr @init_completion.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../include/linux/completion.h", i32 87, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 70, i32 3}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug303, !97, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!100 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 74, i32 3}
!103 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug304, !102, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!104 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 78, i32 3}
!107 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug305, !106, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!108 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 84, i32 4}
!111 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug306, !110, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!112 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 91, i32 4}
!115 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug307, !114, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!116 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 98, i32 4}
!119 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug308, !118, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!120 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 105, i32 4}
!123 = !{ptr @sms_board_dvb3_event.__UNIQUE_ID_ddebug309, !122, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!124 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 111, i32 3}
!127 = !{ptr @sms_board_dvb3_event._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sms_board_dvb3_event._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 30, i32 8}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @g_smsdvb_clientslock, !130, !"g_smsdvb_clientslock", i1 false, i1 false}
!133 = !{ptr @g_smsdvb_clients, !134, !"g_smsdvb_clients", i1 false, i1 false}
!134 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 29, i32 8}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/common/siano/smsdvb-main.c", i32 1247, i32 2}
!137 = !{ptr @smsdvb_module_init.__UNIQUE_ID_ddebug316, !136, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 2148346570, i64 2148346575, i64 2148346588, i64 2148346632, i64 2148346666, i64 2148346687}
!148 = !{i8 0, i8 2}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2148371757, i64 2148372037, i64 2148372371, i64 2148372705}
