; ModuleID = '/llk/IR_all_yes/drivers/media/firewire/firedtv-avc.c_pt.bc'
source_filename = "../drivers/media/firewire/firedtv-avc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.avc_response_frame = type { i8, i8, i8, [509 x i8] }
%struct.firedtv = type { ptr, %struct.list_head, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dvb_net, %struct.dvb_frontend, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i8, %struct.work_struct, ptr, i32, i8, i8, ptr, i32, i32, %struct.mutex, i32, [16 x i16], i32, [512 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.137], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.137 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.138 }>
%union.anon.138 = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.avc_command_frame = type { i8, i8, i8, [509 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firedtv_tuner_status = type { i24, [12 x i8], i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_debug = internal constant [14 x i8] c"firedtv.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@avc_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @avc_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype381 = internal constant [27 x i8] c"firedtv.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug382 = internal constant [321 x i8] c"firedtv.parm=debug:Verbose logging (none = 0, FCP subactions: READ DESCRIPTOR = 0x0001, DSIT = 0x0002, REGISTER_REMOTE_CONTROL = 0x0008, LNB CONTROL = 0x0010, TUNE QPSK = 0x0020, TUNE QPSK2 = 0x0040, HOST2CA = 0x0080, CA2HOST = 0x0100; Application sent PMT = 0x4000, FCP payloads = 0x8000, or a combination, or all = -1)\00", section ".modinfo", align 1
@__param_str_fake_ca_system_ids = internal constant [27 x i8] c"firedtv.fake_ca_system_ids\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_fake_ca_system_ids = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_fake_ca_system_ids, ptr @param_ops_int, ptr @fake_ca_system_ids }, align 4
@__param_fake_ca_system_ids = internal constant %struct.kernel_param { ptr @__param_str_fake_ca_system_ids, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_fake_ca_system_ids } }, section "__param", align 4
@__UNIQUE_ID_fake_ca_system_idstype383 = internal constant [49 x i8] c"firedtv.parmtype=fake_ca_system_ids:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_fake_ca_system_ids384 = internal constant [229 x i8] c"firedtv.parm=fake_ca_system_ids:If your CAM application manufacturer does not have the same ca_system_id as your CAS, you can override what ca_system_ids are presented to the application by setting this field to an array of ids.\00", section ".modinfo", align 1
@avc_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"remote control result = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"avc_recv\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/firewire/firedtv-avc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@avc_recv._entry_ptr = internal global ptr @avc_recv._entry, section ".printk_index", align 4
@avc_recv._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 296, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"out-of-order AVC response, ignored\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@avc_recv._entry_ptr.8 = internal global ptr @avc_recv._entry.5, section ".printk_index", align 4
@avc_identify_subunit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 738, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot read subunit identifier\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"avc_identify_subunit\00", [43 x i8] zeroinitializer }, align 32
@avc_identify_subunit._entry_ptr = internal global ptr @avc_identify_subunit._entry, section ".printk_index", align 4
@avc_tuner_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 777, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot read tuner status\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"avc_tuner_status\00", [47 x i8] zeroinitializer }, align 32
@avc_tuner_status._entry_ptr = internal global ptr @avc_tuner_status._entry, section ".printk_index", align 4
@avc_tuner_status._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 784, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"got invalid tuner status\0A\00", [38 x i8] zeroinitializer }, align 32
@avc_tuner_status._entry_ptr.15 = internal global ptr @avc_tuner_status._entry.13, section ".printk_index", align 4
@avc_lnb_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 866, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LNB control failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avc_lnb_control\00", [16 x i8] zeroinitializer }, align 32
@avc_lnb_control._entry_ptr = internal global ptr @avc_lnb_control._entry, section ".printk_index", align 4
@num_fake_ca_system_ids = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fake_ca_system_ids = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@avc_ca_pmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"forcing list_management to ONLY\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avc_ca_pmt\00", [21 x i8] zeroinitializer }, align 32
@avc_ca_pmt._entry_ptr = internal global ptr @avc_ca_pmt._entry, section ".printk_index", align 4
@avc_ca_pmt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1157, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid pmt_cmd_id %d\0A\00", [41 x i8] zeroinitializer }, align 32
@avc_ca_pmt._entry_ptr.22 = internal global ptr @avc_ca_pmt._entry.20, section ".printk_index", align 4
@avc_ca_pmt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 1191, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid pmt_cmd_id %d at stream level\0A\00", [57 x i8] zeroinitializer }, align 32
@avc_ca_pmt._entry_ptr.25 = internal global ptr @avc_ca_pmt._entry.23, section ".printk_index", align 4
@avc_ca_pmt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 1226, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CA PMT failed with response 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@avc_ca_pmt._entry_ptr.28 = internal global ptr @avc_ca_pmt._entry.26, section ".printk_index", align 4
@cmp_establish_pp_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1390, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMP: output offline\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cmp_establish_pp_connection\00", [36 x i8] zeroinitializer }, align 32
@cmp_establish_pp_connection._entry_ptr = internal global ptr @cmp_establish_pp_connection._entry, section ".printk_index", align 4
@cmp_establish_pp_connection._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1398, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CMP: cannot change channel\0A\00", [36 x i8] zeroinitializer }, align 32
@cmp_establish_pp_connection._entry_ptr.33 = internal global ptr @cmp_establish_pp_connection._entry.31, section ".printk_index", align 4
@cmp_establish_pp_connection._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 1401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CMP: overlaying connection\0A\00", [36 x i8] zeroinitializer }, align 32
@cmp_establish_pp_connection._entry_ptr.36 = internal global ptr @cmp_establish_pp_connection._entry.34, section ".printk_index", align 4
@cmp_break_pp_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1449, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CMP: no connection to break\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmp_break_pp_connection\00", [40 x i8] zeroinitializer }, align 32
@cmp_break_pp_connection._entry_ptr = internal global ptr @cmp_break_pp_connection._entry, section ".printk_index", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FCP <- \00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FCP -> \00", [24 x i8] zeroinitializer }, align 32
@debug_fcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%ssu=%x.%x l=%d: %-8s - %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"debug_fcp\00", [22 x i8] zeroinitializer }, align 32
@debug_fcp._entry_ptr = internal global ptr @debug_fcp._entry, section ".printk_index", align 4
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ReadDescriptor\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DirectSelectInfo.Type\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DirectSelectData\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Vendor/Unknown\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegisterRC\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LNBControl\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TuneQPSK\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TuneQPSK2\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Host2CA\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CA2Host\00", [24 x i8] zeroinitializer }, align 32
@debug_fcp_ctype.ctypes = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr null, ptr null, ptr null, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null, ptr @.str.65], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CONTROL\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATUS\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SPECIFIC INQUIRY\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOTIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GENERAL INQUIRY\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NOT IMPLEMENTED\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ACCEPTED\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REJECTED\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IN TRANSITION\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IMPLEMENTED/STABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHANGED\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INTERIM\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@avc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 243, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FCP command write failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avc_write\00", [22 x i8] zeroinitializer }, align 32
@avc_write._entry_ptr = internal global ptr @avc_write._entry, section ".printk_index", align 4
@avc_write._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 257, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FCP response timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@avc_write._entry_ptr.71 = internal global ptr @avc_write._entry.69, section ".printk_index", align 4
@debug_pmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016APP PMT -> l=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"debug_pmt\00", [22 x i8] zeroinitializer }, align 32
@debug_pmt._entry_ptr = internal global ptr @debug_pmt._entry, section ".printk_index", align 4
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"APP PMT -> \00", [20 x i8] zeroinitializer }, align 32
@cmp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1341, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMP: read I/O error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmp_read\00", [23 x i8] zeroinitializer }, align 32
@cmp_read._entry_ptr = internal global ptr @cmp_read._entry, section ".printk_index", align 4
@cmp_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1352, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMP: lock I/O error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmp_lock\00", [23 x i8] zeroinitializer }, align 32
@cmp_lock._entry_ptr = internal global ptr @cmp_lock._entry, section ".printk_index", align 4
@switch.table.avc_tuner_dsd = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\02\03\00\04\00\05", [25 x i8] zeroinitializer }, align 32
@switch.table.avc_tuner_dsd.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\03\08\04\00\05\06", [24 x i8] zeroinitializer }, align 32
@switch.table.avc_tuner_dsd.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\02\01\03\01\04", [26 x i8] zeroinitializer }, align 32
@switch.table.avc_tuner_dsd.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" @\00`\00\80", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 15]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 9, i64 200, i64 203]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 8, i64 10, i64 82, i64 86, i64 87, i64 88, i64 96]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"avc_debug\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 115, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 289, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 296, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 738, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 777, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 784, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 866, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"num_fake_ca_system_ids\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 137, i32 21 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"fake_ca_system_ids\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 138, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1114, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1156, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1190, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1225, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1390, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1398, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1401, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1449, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 207, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 207, i32 43 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 214, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 168, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 171, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 173, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 175, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 182, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 187, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 189, i32 46 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 191, i32 44 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 193, i32 45 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 195, i32 42 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 197, i32 42 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"ctypes\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 147, i32 21 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 148, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 148, i32 31 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 149, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 149, i32 39 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 150, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 150, i32 38 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 151, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 151, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 152, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 152, i32 36 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 153, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 153, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 157, i32 21 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 243, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 257, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 225, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 226, i32 28 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1341, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [40 x i8] c"../drivers/media/firewire/firedtv-avc.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1352, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [27 x i8] c"switch.table.avc_tuner_dsd\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [30 x i8] c"switch.table.avc_tuner_dsd.79\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [30 x i8] c"switch.table.avc_tuner_dsd.80\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [30 x i8] c"switch.table.avc_tuner_dsd.81\00", align 1
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_debug382, ptr @__UNIQUE_ID_debugtype381, ptr @__UNIQUE_ID_fake_ca_system_ids384, ptr @__UNIQUE_ID_fake_ca_system_idstype383, ptr @__param_debug, ptr @__param_fake_ca_system_ids, ptr @avc_ca_pmt._entry, ptr @avc_ca_pmt._entry.20, ptr @avc_ca_pmt._entry.23, ptr @avc_ca_pmt._entry.26, ptr @avc_ca_pmt._entry_ptr, ptr @avc_ca_pmt._entry_ptr.22, ptr @avc_ca_pmt._entry_ptr.25, ptr @avc_ca_pmt._entry_ptr.28, ptr @avc_identify_subunit._entry, ptr @avc_identify_subunit._entry_ptr, ptr @avc_lnb_control._entry, ptr @avc_lnb_control._entry_ptr, ptr @avc_recv._entry, ptr @avc_recv._entry.5, ptr @avc_recv._entry_ptr, ptr @avc_recv._entry_ptr.8, ptr @avc_tuner_status._entry, ptr @avc_tuner_status._entry.13, ptr @avc_tuner_status._entry_ptr, ptr @avc_tuner_status._entry_ptr.15, ptr @avc_write._entry, ptr @avc_write._entry.69, ptr @avc_write._entry_ptr, ptr @avc_write._entry_ptr.71, ptr @cmp_break_pp_connection._entry, ptr @cmp_break_pp_connection._entry_ptr, ptr @cmp_establish_pp_connection._entry, ptr @cmp_establish_pp_connection._entry.31, ptr @cmp_establish_pp_connection._entry.34, ptr @cmp_establish_pp_connection._entry_ptr, ptr @cmp_establish_pp_connection._entry_ptr.33, ptr @cmp_establish_pp_connection._entry_ptr.36, ptr @cmp_lock._entry, ptr @cmp_lock._entry_ptr, ptr @cmp_read._entry, ptr @cmp_read._entry_ptr, ptr @debug_fcp._entry, ptr @debug_fcp._entry_ptr, ptr @debug_pmt._entry, ptr @debug_pmt._entry_ptr, ptr @avc_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @num_fake_ca_system_ids, ptr @fake_ca_system_ids, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @debug_fcp_ctype.ctypes, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @switch.table.avc_tuner_dsd, ptr @switch.table.avc_tuner_dsd.79, ptr @switch.table.avc_tuner_dsd.80, ptr @switch.table.avc_tuner_dsd.81], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_recv._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_identify_subunit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_tuner_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_tuner_status._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_lnb_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_fake_ca_system_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_ca_system_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_ca_pmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_ca_pmt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_ca_pmt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_ca_pmt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmp_establish_pp_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmp_establish_pp_connection._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmp_establish_pp_connection._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmp_break_pp_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_fcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_fcp_ctype.ctypes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_write._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_pmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmp_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.avc_tuner_dsd to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.avc_tuner_dsd.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.avc_tuner_dsd.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.avc_tuner_dsd.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_recv(ptr noundef %fdtv, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @avc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !180

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @debug_fcp(ptr noundef %data, i32 noundef %length)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %length)
  %cmp = icmp ugt i32 %length, 7
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %opcode.i = getelementptr inbounds %struct.avc_response_frame, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %opcode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp eq i8 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %operand.i = getelementptr inbounds %struct.avc_response_frame, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %operand.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %operand.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3.i = icmp eq i8 %4, 0
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end15_crit_edge

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.avc_response_frame, ptr %data, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %6)
  %cmp9.i = icmp eq i8 %6, 18
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true5.i.if.end15_crit_edge

land.lhs.true5.i.if.end15_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true11.i:                                ; preds = %land.lhs.true5.i
  %arrayidx13.i = getelementptr %struct.avc_response_frame, ptr %data, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %8)
  %cmp15.i = icmp eq i8 %8, -121
  br i1 %cmp15.i, label %is_register_rc.exit, label %land.lhs.true11.i.if.end15_crit_edge

land.lhs.true11.i.if.end15_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

is_register_rc.exit:                              ; preds = %land.lhs.true11.i
  %arrayidx18.i = getelementptr %struct.avc_response_frame, ptr %data, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp20.i = icmp eq i8 %10, 10
  br i1 %cmp20.i, label %if.then3, label %is_register_rc.exit.if.end15_crit_edge

is_register_rc.exit.if.end15_crit_edge:           ; preds = %is_register_rc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then3:                                         ; preds = %is_register_rc.exit
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %do.end [
    i8 13, label %sw.bb
    i8 15, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.avc_response_frame, ptr %data, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %arrayidx6 = getelementptr %struct.avc_response_frame, ptr %data, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %17 to i32
  %or = or i32 %shl, %conv7
  tail call void @fdtv_handle_rc(ptr noundef %fdtv, i32 noundef %or) #5
  %remote_ctrl_work = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %remote_ctrl_work) #5
  br label %cleanup

sw.bb9:                                           ; preds = %if.then3
  %opcode.i44 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %19 = ptrtoint ptr %opcode.i44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %opcode.i44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i45 = icmp eq i8 %20, 0
  br i1 %cmp.i45, label %land.lhs.true.i48, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i48:                                ; preds = %sw.bb9
  %operand.i46 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %21 = ptrtoint ptr %operand.i46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %operand.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp3.i47 = icmp eq i8 %22, 0
  br i1 %cmp3.i47, label %land.lhs.true5.i51, label %land.lhs.true.i48.cleanup_crit_edge

land.lhs.true.i48.cleanup_crit_edge:              ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true5.i51:                               ; preds = %land.lhs.true.i48
  %arrayidx7.i49 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %23 = ptrtoint ptr %arrayidx7.i49 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7.i49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %24)
  %cmp9.i50 = icmp eq i8 %24, 18
  br i1 %cmp9.i50, label %land.lhs.true11.i54, label %land.lhs.true5.i51.cleanup_crit_edge

land.lhs.true5.i51.cleanup_crit_edge:             ; preds = %land.lhs.true5.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true11.i54:                              ; preds = %land.lhs.true5.i51
  %arrayidx13.i52 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %25 = ptrtoint ptr %arrayidx13.i52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx13.i52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %26)
  %cmp15.i53 = icmp eq i8 %26, -121
  br i1 %cmp15.i53, label %is_register_rc.exit58, label %land.lhs.true11.i54.cleanup_crit_edge

land.lhs.true11.i54.cleanup_crit_edge:            ; preds = %land.lhs.true11.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_register_rc.exit58:                            ; preds = %land.lhs.true11.i54
  %arrayidx18.i55 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %27 = ptrtoint ptr %arrayidx18.i55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx18.i55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp20.i56 = icmp eq i8 %28, 10
  br i1 %cmp20.i56, label %is_register_rc.exit58.wake_crit_edge, label %is_register_rc.exit58.cleanup_crit_edge

is_register_rc.exit58.cleanup_crit_edge:          ; preds = %is_register_rc.exit58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_register_rc.exit58.wake_crit_edge:             ; preds = %is_register_rc.exit58
  call void @__sanitizer_cov_trace_pc() #7
  br label %wake

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %12 to i32
  %29 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %cleanup

if.end15:                                         ; preds = %is_register_rc.exit.if.end15_crit_edge, %land.lhs.true11.i.if.end15_crit_edge, %land.lhs.true5.i.if.end15_crit_edge, %land.lhs.true.i.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %avc_reply_received = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 13
  %31 = ptrtoint ptr %avc_reply_received to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %avc_reply_received, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not = icmp eq i8 %32, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %avc_data23 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %35 = call ptr @memcpy(ptr %avc_data23, ptr %data, i32 %length)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %36 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %length, ptr %avc_data_length, align 8
  br label %wake

wake:                                             ; preds = %if.end22, %is_register_rc.exit58.wake_crit_edge
  %avc_reply_received25 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 13
  %37 = ptrtoint ptr %avc_reply_received25 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %avc_reply_received25, align 8
  %avc_wait = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %avc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %wake, %do.end20, %do.end, %is_register_rc.exit58.cleanup_crit_edge, %land.lhs.true11.i54.cleanup_crit_edge, %land.lhs.true5.i51.cleanup_crit_edge, %land.lhs.true.i48.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ 0, %wake ], [ -5, %do.end20 ], [ 0, %is_register_rc.exit58.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %sw.bb ], [ 0, %land.lhs.true11.i54.cleanup_crit_edge ], [ 0, %land.lhs.true5.i51.cleanup_crit_edge ], [ 0, %land.lhs.true.i48.cleanup_crit_edge ], [ 0, %sw.bb9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @debug_fcp(ptr noundef %data, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp ugt i8 %1, 7
  %cond = select i1 %cmp, ptr @.str.39, ptr @.str.40
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %4 = lshr i32 %conv3, 3
  %and = and i32 %conv3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %4)
  %cmp6 = icmp eq i32 %4, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp8 = icmp eq i32 %and, 5
  %or.cond = or i1 %cmp6, %cmp8
  br i1 %or.cond, label %entry.do.end_crit_edge, label %cond.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

cond.end:                                         ; preds = %entry
  %arrayidx10 = getelementptr i8, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %6, label %cond.end.do.end_crit_edge [
    i8 0, label %sw.epilog.i
    i8 9, label %cond.end.return.sink.split.i_crit_edge
    i8 -56, label %sw.bb1.i
    i8 -53, label %sw.bb5.i
  ]

cond.end.return.sink.split.i_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb1.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

sw.bb5.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

sw.epilog.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %length)
  %cmp.i = icmp slt i32 %length, 7
  br i1 %cmp.i, label %sw.epilog.i.do.end_crit_edge, label %lor.lhs.false.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9.not.i = icmp eq i8 %9, 0
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %arrayidx12.i = getelementptr i8, ptr %data, i32 4
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %11)
  %cmp14.not.i = icmp eq i8 %11, 18
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false11.i.do.end_crit_edge

lor.lhs.false11.i.do.end_crit_edge:               ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false16.i:                                ; preds = %lor.lhs.false11.i
  %arrayidx17.i = getelementptr i8, ptr %data, i32 5
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %13)
  %cmp19.not.i = icmp eq i8 %13, -121
  br i1 %cmp19.not.i, label %if.end.i, label %lor.lhs.false16.i.do.end_crit_edge

lor.lhs.false16.i.do.end_crit_edge:               ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false16.i
  %arrayidx21.i = getelementptr i8, ptr %data, i32 6
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %15, label %if.end.i.do.end_crit_edge [
    i8 10, label %if.end.i.return.sink.split.i_crit_edge
    i8 82, label %sw.bb27.i
    i8 88, label %sw.bb31.i
    i8 96, label %sw.bb35.i
    i8 86, label %sw.bb39.i
    i8 87, label %sw.bb43.i
  ]

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

sw.bb31.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

sw.bb35.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

sw.bb43.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb43.i, %sw.bb39.i, %sw.bb35.i, %sw.bb31.i, %sw.bb27.i, %if.end.i.return.sink.split.i_crit_edge, %sw.bb5.i, %sw.bb1.i, %cond.end.return.sink.split.i_crit_edge
  %.sink51.i = phi i32 [ 256, %sw.bb43.i ], [ 128, %sw.bb39.i ], [ 64, %sw.bb35.i ], [ 32, %sw.bb31.i ], [ 16, %sw.bb27.i ], [ 4, %sw.bb5.i ], [ 2, %sw.bb1.i ], [ 1, %cond.end.return.sink.split.i_crit_edge ], [ 8, %if.end.i.return.sink.split.i_crit_edge ]
  %.str.53.sink.i = phi ptr [ @.str.53, %sw.bb43.i ], [ @.str.52, %sw.bb39.i ], [ @.str.51, %sw.bb35.i ], [ @.str.50, %sw.bb31.i ], [ @.str.49, %sw.bb27.i ], [ @.str.45, %sw.bb5.i ], [ @.str.44, %sw.bb1.i ], [ @.str.43, %cond.end.return.sink.split.i_crit_edge ], [ @.str.48, %if.end.i.return.sink.split.i_crit_edge ]
  %17 = load i32, ptr @avc_debug, align 4
  %and44.i = and i32 %17, %.sink51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %return.sink.split.i.if.end20_crit_edge, label %return.sink.split.i.do.end_crit_edge

return.sink.split.i.do.end_crit_edge:             ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

return.sink.split.i.if.end20_crit_edge:           ; preds = %return.sink.split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.end:                                           ; preds = %return.sink.split.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %lor.lhs.false16.i.do.end_crit_edge, %lor.lhs.false11.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge, %cond.end.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ %.str.53.sink.i, %return.sink.split.i.do.end_crit_edge ], [ @.str.47, %if.end.i.do.end_crit_edge ], [ @.str.47, %sw.epilog.i.do.end_crit_edge ], [ @.str.47, %lor.lhs.false.i.do.end_crit_edge ], [ @.str.47, %lor.lhs.false11.i.do.end_crit_edge ], [ @.str.47, %lor.lhs.false16.i.do.end_crit_edge ], [ @.str.46, %cond.end.do.end_crit_edge ], [ @.str.46, %entry.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp.i33 = icmp ult i8 %1, 16
  br i1 %cmp.i33, label %cond.true.i, label %do.end.debug_fcp_ctype.exit_crit_edge

do.end.debug_fcp_ctype.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %debug_fcp_ctype.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = zext i8 %1 to i32
  %arrayidx.i34 = getelementptr [16 x ptr], ptr @debug_fcp_ctype.ctypes, i32 0, i32 %conv14
  %18 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i34, align 4
  br label %debug_fcp_ctype.exit

debug_fcp_ctype.exit:                             ; preds = %cond.true.i, %do.end.debug_fcp_ctype.exit_crit_edge
  %cond.i = phi ptr [ %19, %cond.true.i ], [ null, %do.end.debug_fcp_ctype.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %cond.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.66, ptr %cond.i
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull %cond, i32 noundef %4, i32 noundef %and, i32 noundef %length, ptr noundef %spec.select.i, ptr noundef nonnull %retval.0.i.ph) #8
  %20 = load i32, ptr @avc_debug, align 4
  %and17 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %debug_fcp_ctype.exit.if.end20_crit_edge, label %if.then19

debug_fcp_ctype.exit.if.end20_crit_edge:          ; preds = %debug_fcp_ctype.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %debug_fcp_ctype.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %length, i1 noundef zeroext false) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %debug_fcp_ctype.exit.if.end20_crit_edge, %return.sink.split.i.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdtv_handle_rc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_tuner_dsd(ptr noundef %fdtv, ptr noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit2 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit2, align 1
  %type = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 16
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %6, label %do.body [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge127
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

entry.sw.bb_crit_edge127:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge127
  %opcode.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %8 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %opcode.i, align 1
  %operand.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %9 = ptrtoint ptr %operand.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %operand.i, align 1
  %arrayidx2.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -121, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i = icmp eq i32 %6, 4
  %spec.select.i = select i1 %cmp.i, i8 96, i8 88
  %12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select.i, ptr %12, align 1
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p, align 4
  %shr.i = lshr i32 %15, 24
  %conv.i = trunc i32 %shr.i to i8
  %arrayidx10.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %arrayidx10.i, align 1
  %17 = load i32, ptr %p, align 4
  %shr12.i = lshr i32 %17, 16
  %conv14.i = trunc i32 %shr12.i to i8
  %arrayidx16.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14.i, ptr %arrayidx16.i, align 1
  %19 = load i32, ptr %p, align 4
  %shr18.i = lshr i32 %19, 8
  %conv20.i = trunc i32 %shr18.i to i8
  %arrayidx22.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20.i, ptr %arrayidx22.i, align 1
  %21 = load i32, ptr %p, align 4
  %conv25.i = trunc i32 %21 to i8
  %arrayidx27.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %22 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25.i, ptr %arrayidx27.i, align 1
  %symbol_rate.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %23 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %symbol_rate.i, align 4
  %div.i = udiv i32 %24, 1000
  %shr28.i = lshr i32 %div.i, 8
  %conv30.i = trunc i32 %shr28.i to i8
  %arrayidx32.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 11
  %25 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30.i, ptr %arrayidx32.i, align 1
  %26 = load i32, ptr %symbol_rate.i, align 4
  %div34.i = udiv i32 %26, 1000
  %conv36.i = trunc i32 %div34.i to i8
  %arrayidx38.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 12
  %27 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv36.i, ptr %arrayidx38.i, align 1
  %fec_inner.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %28 = ptrtoint ptr %fec_inner.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fec_inner.i, align 4
  %switch.tableidx = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 7
  br i1 %30, label %switch.lookup, label %sw.bb.sw.epilog.i_crit_edge

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.avc_tuner_dsd, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %31)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.bb.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %sw.bb.sw.epilog.i_crit_edge ]
  %arrayidx55.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 13
  %32 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink.i, ptr %arrayidx55.i, align 1
  %voltage.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 20
  %33 = ptrtoint ptr %voltage.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %voltage.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %switch.selectcmp.i = icmp ne i32 %34, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %34)
  %switch.selectcmp208.i = icmp eq i32 %34, 255
  %switch.select209.i = select i1 %switch.selectcmp208.i, i8 -1, i8 %switch.select.i
  %arrayidx67.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 14
  %35 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %switch.select209.i, ptr %arrayidx67.i, align 1
  %tone.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 21
  %36 = ptrtoint ptr %tone.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tone.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %switch.selectcmp210.i = icmp eq i32 %37, 0
  %switch.select211.i = zext i1 %switch.selectcmp210.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %37)
  %switch.selectcmp212.i = icmp eq i32 %37, 255
  %switch.select213.i = select i1 %switch.selectcmp212.i, i8 -1, i8 %switch.select211.i
  %arrayidx84.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 15
  %38 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %switch.select213.i, ptr %arrayidx84.i, align 1
  br i1 %cmp.i, label %if.then93.i, label %sw.epilog.i.sw.epilog_crit_edge

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then93.i:                                      ; preds = %sw.epilog.i
  %delivery_system.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 8, i32 15
  %39 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delivery_system.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %cmp94.i = icmp eq i32 %40, 6
  br i1 %cmp94.i, label %if.then96.i, label %if.else140.i

if.then96.i:                                      ; preds = %if.then93.i
  %modulation.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 8, i32 1
  %41 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %modulation.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %42, label %sw.default108.i [
    i32 1, label %if.then96.i.sw.epilog111.i_crit_edge
    i32 0, label %sw.bb102.i
    i32 9, label %sw.bb105.i
  ]

if.then96.i.sw.epilog111.i_crit_edge:             ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog111.i

sw.bb102.i:                                       ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog111.i

sw.bb105.i:                                       ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog111.i

sw.default108.i:                                  ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog111.i

sw.epilog111.i:                                   ; preds = %sw.default108.i, %sw.bb105.i, %sw.bb102.i, %if.then96.i.sw.epilog111.i_crit_edge
  %.sink205.i = phi i8 [ 2, %sw.default108.i ], [ 3, %sw.bb105.i ], [ 2, %sw.bb102.i ], [ 1, %if.then96.i.sw.epilog111.i_crit_edge ]
  %arrayidx110.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 16
  %44 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink205.i, ptr %arrayidx110.i, align 1
  %rolloff.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 8, i32 14
  %45 = ptrtoint ptr %rolloff.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rolloff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %switch.selectcmp214.i = icmp eq i32 %46, 1
  %switch.select215.i = select i1 %switch.selectcmp214.i, i8 0, i8 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %switch.selectcmp216.i = icmp eq i32 %46, 2
  %switch.select217.i = select i1 %switch.selectcmp216.i, i8 1, i8 %switch.select215.i
  %arrayidx126.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 17
  %47 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %switch.select217.i, ptr %arrayidx126.i, align 1
  %pilot.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 7, i32 8, i32 13
  %48 = ptrtoint ptr %pilot.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pilot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %switch.lookup101, label %sw.epilog111.i.sw.epilog_crit_edge

sw.epilog111.i.sw.epilog_crit_edge:               ; preds = %sw.epilog111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else140.i:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx142.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 16
  %51 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx142.i, align 1
  %arrayidx144.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 17
  %52 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %arrayidx144.i, align 1
  br label %cleanup.sink.split.i

switch.lookup101:                                 ; preds = %sw.epilog111.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = trunc i32 %49 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 1, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup101, %if.else140.i
  %.sink207.i = phi i8 [ -1, %if.else140.i ], [ %switch.masked, %switch.lookup101 ]
  %arrayidx146.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 18
  %53 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink207.i, ptr %arrayidx146.i, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %opcode.i29 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %54 = ptrtoint ptr %opcode.i29 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -53, ptr %opcode.i29, align 1
  %operand.i30 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %55 = ptrtoint ptr %operand.i30 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %operand.i30, align 1
  %arrayidx2.i31 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %56 = ptrtoint ptr %arrayidx2.i31 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -46, ptr %arrayidx2.i31, align 1
  %arrayidx4.i32 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %57 = ptrtoint ptr %arrayidx4.i32 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 32, ptr %arrayidx4.i32, align 1
  %arrayidx6.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %59 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 17, ptr %arrayidx8.i, align 1
  %fec_inner.i33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %60 = ptrtoint ptr %fec_inner.i33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fec_inner.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 9
  %or.i = select i1 %cmp.not.i, i8 24, i8 26
  %modulation.i34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %62 = ptrtoint ptr %modulation.i34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %modulation.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %63)
  %cmp9.not.i = icmp ne i32 %63, 6
  %cond10.i = zext i1 %cmp9.not.i to i8
  %or11.i = or i8 %or.i, %cond10.i
  %arrayidx13.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %64 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or11.i, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %65 = call ptr @memset(ptr %arrayidx15.i, i32 0, i32 5)
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p, align 4
  %div.i35 = udiv i32 %67, 4000
  %shr.i36 = lshr i32 %div.i35, 16
  %68 = trunc i32 %shr.i36 to i8
  %conv25.i37 = or i8 %68, -128
  %arrayidx27.i38 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 14
  %69 = ptrtoint ptr %arrayidx27.i38 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv25.i37, ptr %arrayidx27.i38, align 1
  %70 = load i32, ptr %p, align 4
  %div29.i = udiv i32 %70, 4000
  %shr30.i = lshr i32 %div29.i, 8
  %conv32.i = trunc i32 %shr30.i to i8
  %arrayidx34.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 15
  %71 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv32.i, ptr %arrayidx34.i, align 1
  %72 = load i32, ptr %p, align 4
  %div36.i = udiv i32 %72, 4000
  %conv38.i = trunc i32 %div36.i to i8
  %arrayidx40.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 16
  %73 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv38.i, ptr %arrayidx40.i, align 1
  %symbol_rate.i39 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %74 = ptrtoint ptr %symbol_rate.i39 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %symbol_rate.i39, align 4
  %div41.i = udiv i32 %75, 1000
  %shr42.i = lshr i32 %div41.i, 12
  %conv44.i = trunc i32 %shr42.i to i8
  %arrayidx46.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 17
  %76 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv44.i, ptr %arrayidx46.i, align 1
  %77 = load i32, ptr %symbol_rate.i39, align 4
  %div48.i = udiv i32 %77, 1000
  %shr49.i = lshr i32 %div48.i, 4
  %conv51.i = trunc i32 %shr49.i to i8
  %arrayidx53.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 18
  %78 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv51.i, ptr %arrayidx53.i, align 1
  %79 = load i32, ptr %symbol_rate.i39, align 4
  %div55.i = udiv i32 %79, 1000
  %div55.tr.i = trunc i32 %div55.i to i8
  %conv57.i = shl i8 %div55.tr.i, 4
  %arrayidx59.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 19
  %80 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv57.i, ptr %arrayidx59.i, align 1
  %arrayidx61.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 20
  %81 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx61.i, align 1
  %82 = ptrtoint ptr %fec_inner.i33 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fec_inner.i33, align 4
  %switch.tableidx103 = add i32 %83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx103)
  %84 = icmp ult i32 %switch.tableidx103, 8
  br i1 %84, label %switch.lookup102, label %sw.bb3.sw.epilog.i42_crit_edge

sw.bb3.sw.epilog.i42_crit_edge:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i42

switch.lookup102:                                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep104 = getelementptr inbounds [8 x i8], ptr @switch.table.avc_tuner_dsd.79, i32 0, i32 %switch.tableidx103
  %85 = ptrtoint ptr %switch.gep104 to i32
  call void @__asan_load1_noabort(i32 %85)
  %switch.load105 = load i8, ptr %switch.gep104, align 1
  br label %sw.epilog.i42

sw.epilog.i42:                                    ; preds = %switch.lookup102, %sw.bb3.sw.epilog.i42_crit_edge
  %.sink.i41 = phi i8 [ %switch.load105, %switch.lookup102 ], [ 0, %sw.bb3.sw.epilog.i42_crit_edge ]
  %arrayidx85.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 21
  %86 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink.i41, ptr %arrayidx85.i, align 1
  %87 = ptrtoint ptr %modulation.i34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %modulation.i34, align 4
  %switch.tableidx107 = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx107)
  %89 = icmp ult i32 %switch.tableidx107, 5
  %switch.idx.cast = trunc i32 %switch.tableidx107 to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 3
  %switch.offset = add i8 %switch.idx.mult, 8
  %.sink158.i = select i1 %89, i8 %switch.offset, i8 0
  %arrayidx105.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 22
  %90 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink158.i, ptr %arrayidx105.i, align 1
  %arrayidx108.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 23
  %91 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx108.i, align 1
  %arrayidx110.i43 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 24
  %92 = ptrtoint ptr %arrayidx110.i43 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx110.i43, align 1
  %arrayidx112.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 25
  %channel_active.i.i = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i42
  %pos.044.i.i = phi i32 [ 1, %sw.epilog.i42 ], [ %pos.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %n.043.i.i = phi i32 [ 0, %sw.epilog.i42 ], [ %n.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.041.i.i = phi i32 [ 0, %sw.epilog.i42 ], [ %inc19.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %div3.i.i.i = lshr i32 %i.041.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %channel_active.i.i, i32 %div3.i.i.i
  %93 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %95 = shl nuw i32 1, %i.041.i.i
  %96 = and i32 %94, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i = add i32 %pos.044.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx112.i, i32 %pos.044.i.i
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 19, ptr %arrayidx.i.i, align 1
  %inc1.i.i = add i32 %pos.044.i.i, 2
  %arrayidx2.i.i = getelementptr i8, ptr %arrayidx112.i, i32 %inc.i.i
  %98 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 24, i32 %i.041.i.i
  %99 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx3.i.i, align 2
  %101 = lshr i16 %100, 8
  %102 = trunc i16 %101 to i8
  %conv4.i.i = and i8 %102, 31
  %inc5.i.i = add i32 %pos.044.i.i, 3
  %arrayidx6.i.i = getelementptr i8, ptr %arrayidx112.i, i32 %inc1.i.i
  %103 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv4.i.i, ptr %arrayidx6.i.i, align 1
  %104 = load i16, ptr %arrayidx3.i.i, align 2
  %conv11.i.i = trunc i16 %104 to i8
  %inc12.i.i = add i32 %pos.044.i.i, 4
  %arrayidx13.i.i = getelementptr i8, ptr %arrayidx112.i, i32 %inc5.i.i
  %105 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv11.i.i, ptr %arrayidx13.i.i, align 1
  %inc14.i.i = add i32 %pos.044.i.i, 5
  %arrayidx15.i.i = getelementptr i8, ptr %arrayidx112.i, i32 %inc12.i.i
  %106 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx15.i.i, align 1
  %inc16.i.i = add i32 %pos.044.i.i, 6
  %arrayidx17.i.i = getelementptr i8, ptr %arrayidx112.i, i32 %inc14.i.i
  %107 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx17.i.i, align 1
  %inc18.i.i = add i32 %n.043.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %n.1.i.i = phi i32 [ %inc18.i.i, %if.then.i.i ], [ %n.043.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %pos.1.i.i = phi i32 [ %inc16.i.i, %if.then.i.i ], [ %pos.044.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc19.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc19.i.i, 16
  br i1 %exitcond.not.i.i, label %avc_tuner_dsd_dvb_c.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

avc_tuner_dsd_dvb_c.exit:                         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv20.i.i = trunc i32 %n.1.i.i to i8
  %108 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv20.i.i, ptr %arrayidx112.i, align 1
  %add.i = add i32 %pos.1.i.i, 22
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %opcode.i44 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %109 = ptrtoint ptr %opcode.i44 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -53, ptr %opcode.i44, align 1
  %operand.i45 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %110 = ptrtoint ptr %operand.i45 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %operand.i45, align 1
  %arrayidx2.i46 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %111 = ptrtoint ptr %arrayidx2.i46 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -46, ptr %arrayidx2.i46, align 1
  %arrayidx4.i47 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %112 = ptrtoint ptr %arrayidx4.i47 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 32, ptr %arrayidx4.i47, align 1
  %arrayidx6.i48 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %113 = ptrtoint ptr %arrayidx6.i48 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx6.i48, align 1
  %arrayidx8.i49 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %114 = ptrtoint ptr %arrayidx8.i49 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 12, ptr %arrayidx8.i49, align 1
  %bandwidth_hz.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 7
  %115 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bandwidth_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.not.i50 = icmp eq i32 %116, 0
  %or.i51 = select i1 %cmp.not.i50, i8 64, i8 96
  %modulation.i52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %117 = ptrtoint ptr %modulation.i52 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %modulation.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %118)
  %cmp9.not.i53 = icmp eq i32 %118, 6
  %cond10.i54 = select i1 %cmp9.not.i53, i8 0, i8 16
  %or11.i55 = or i8 %cond10.i54, %or.i51
  %hierarchy.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %119 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hierarchy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %cmp12.not.i = icmp eq i32 %120, 4
  %cond13.i = select i1 %cmp12.not.i, i8 0, i8 8
  %or14.i = or i8 %or11.i55, %cond13.i
  %code_rate_HP.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %121 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %code_rate_HP.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %122)
  %cmp15.not.i = icmp eq i32 %122, 9
  %cond16.i = select i1 %cmp15.not.i, i8 0, i8 4
  %or17.i = or i8 %or14.i, %cond16.i
  %code_rate_LP.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %123 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %code_rate_LP.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %124)
  %cmp18.not.i = icmp eq i32 %124, 9
  %cond19.i = select i1 %cmp18.not.i, i8 0, i8 2
  %or20.i = or i8 %or17.i, %cond19.i
  %guard_interval.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 8
  %125 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %guard_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %126)
  %cmp21.not.i = icmp ne i32 %126, 4
  %cond22.i = zext i1 %cmp21.not.i to i8
  %or23.i = or i8 %or20.i, %cond22.i
  %arrayidx25.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %127 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %or23.i, ptr %arrayidx25.i, align 1
  %transmission_mode.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 6
  %128 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %cmp26.not.i = icmp eq i32 %129, 2
  %conv32.i56 = select i1 %cmp26.not.i, i8 0, i8 64
  %arrayidx34.i57 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %130 = ptrtoint ptr %arrayidx34.i57 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv32.i56, ptr %arrayidx34.i57, align 1
  %arrayidx36.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %131 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx36.i, align 1
  %132 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %p, align 4
  %div.i58 = udiv i32 %133, 10
  %shr.i59 = lshr i32 %div.i58, 24
  %conv37.i = trunc i32 %shr.i59 to i8
  %arrayidx39.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 11
  %134 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv37.i, ptr %arrayidx39.i, align 1
  %135 = load i32, ptr %p, align 4
  %div41.i60 = udiv i32 %135, 10
  %shr42.i61 = lshr i32 %div41.i60, 16
  %conv43.i = trunc i32 %shr42.i61 to i8
  %arrayidx45.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 12
  %136 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv43.i, ptr %arrayidx45.i, align 1
  %137 = load i32, ptr %p, align 4
  %div47.i = udiv i32 %137, 10
  %shr48.i = lshr i32 %div47.i, 8
  %conv50.i = trunc i32 %shr48.i to i8
  %arrayidx52.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 13
  %138 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv50.i, ptr %arrayidx52.i, align 1
  %139 = load i32, ptr %p, align 4
  %div54.i = udiv i32 %139, 10
  %conv56.i = trunc i32 %div54.i to i8
  %arrayidx58.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 14
  %140 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv56.i, ptr %arrayidx58.i, align 1
  %141 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bandwidth_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %142)
  %cond183.i = icmp eq i32 %142, 7000000
  %spec.select.i62 = select i1 %cond183.i, i8 32, i8 0
  %143 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 15
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %spec.select.i62, ptr %143, align 1
  %145 = ptrtoint ptr %modulation.i52 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %modulation.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %146)
  %switch.selectcmp.i63 = icmp eq i32 %146, 3
  %switch.select.i64 = select i1 %switch.selectcmp.i63, i8 -128, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %switch.selectcmp252.i = icmp eq i32 %146, 1
  %switch.select253.i = select i1 %switch.selectcmp252.i, i8 64, i8 %switch.select.i64
  %arrayidx75.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 16
  %147 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %switch.select253.i, ptr %arrayidx75.i, align 1
  %148 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hierarchy.i, align 4
  %switch.tableidx109 = add i32 %149, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx109)
  %150 = icmp ult i32 %switch.tableidx109, 3
  br i1 %150, label %switch.lookup108, label %sw.bb5.sw.epilog98.i_crit_edge

sw.bb5.sw.epilog98.i_crit_edge:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog98.i

switch.lookup108:                                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast110 = trunc i32 %switch.tableidx109 to i8
  %switch.idx.mult111 = shl i8 %switch.idx.cast110, 3
  %switch.offset112 = add i8 %switch.idx.mult111, 8
  %151 = or i8 %switch.offset112, %switch.select253.i
  %152 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx75.i, align 1
  br label %sw.epilog98.i

sw.epilog98.i:                                    ; preds = %switch.lookup108, %sw.bb5.sw.epilog98.i_crit_edge
  %153 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %code_rate_HP.i, align 4
  %switch.tableidx114 = add i32 %154, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx114)
  %155 = icmp ult i32 %switch.tableidx114, 6
  br i1 %155, label %switch.hole_check, label %sw.epilog98.i.sw.epilog126.i_crit_edge

sw.epilog98.i.sw.epilog126.i_crit_edge:           ; preds = %sw.epilog98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog126.i

switch.hole_check:                                ; preds = %sw.epilog98.i
  %switch.maskindex = trunc i32 %switch.tableidx114 to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %156 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %switch.lobit.not = icmp eq i8 %156, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog126.i_crit_edge, label %switch.lookup115

switch.hole_check.sw.epilog126.i_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog126.i

switch.lookup115:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep116 = getelementptr inbounds [6 x i8], ptr @switch.table.avc_tuner_dsd.80, i32 0, i32 %switch.tableidx114
  %157 = ptrtoint ptr %switch.gep116 to i32
  call void @__asan_load1_noabort(i32 %157)
  %switch.load117 = load i8, ptr %switch.gep116, align 1
  %158 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx75.i, align 1
  %160 = or i8 %159, %switch.load117
  store i8 %160, ptr %arrayidx75.i, align 1
  br label %sw.epilog126.i

sw.epilog126.i:                                   ; preds = %switch.lookup115, %switch.hole_check.sw.epilog126.i_crit_edge, %sw.epilog98.i.sw.epilog126.i_crit_edge
  %161 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %code_rate_LP.i, align 4
  %switch.tableidx119 = add i32 %162, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx119)
  %163 = icmp ult i32 %switch.tableidx119, 6
  br i1 %163, label %switch.lookup118, label %sw.epilog126.i.sw.epilog144.i_crit_edge

sw.epilog126.i.sw.epilog144.i_crit_edge:          ; preds = %sw.epilog126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog144.i

switch.lookup118:                                 ; preds = %sw.epilog126.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep120 = getelementptr inbounds [6 x i8], ptr @switch.table.avc_tuner_dsd.81, i32 0, i32 %switch.tableidx119
  %164 = ptrtoint ptr %switch.gep120 to i32
  call void @__asan_load1_noabort(i32 %164)
  %switch.load121 = load i8, ptr %switch.gep120, align 1
  br label %sw.epilog144.i

sw.epilog144.i:                                   ; preds = %switch.lookup118, %sw.epilog126.i.sw.epilog144.i_crit_edge
  %.sink247.i = phi i8 [ %switch.load121, %switch.lookup118 ], [ 0, %sw.epilog126.i.sw.epilog144.i_crit_edge ]
  %arrayidx143.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 17
  %165 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %.sink247.i, ptr %arrayidx143.i, align 1
  %166 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %guard_interval.i, align 4
  %switch.tableidx123 = add i32 %167, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx123)
  %168 = icmp ult i32 %switch.tableidx123, 3
  br i1 %168, label %switch.lookup122, label %sw.epilog144.i.sw.epilog166.i_crit_edge

sw.epilog144.i.sw.epilog166.i_crit_edge:          ; preds = %sw.epilog144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog166.i

switch.lookup122:                                 ; preds = %sw.epilog144.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast124 = trunc i32 %switch.tableidx123 to i8
  %switch.idx.mult125 = shl i8 %switch.idx.cast124, 3
  %switch.offset126 = add i8 %switch.idx.mult125, 8
  %169 = or i8 %switch.offset126, %.sink247.i
  %170 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx143.i, align 1
  br label %sw.epilog166.i

sw.epilog166.i:                                   ; preds = %switch.lookup122, %sw.epilog144.i.sw.epilog166.i_crit_edge
  %171 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %172)
  %cond184.i = icmp eq i32 %172, 1
  br i1 %cond184.i, label %sw.bb168.i, label %sw.epilog166.i.sw.epilog176.i_crit_edge

sw.epilog166.i.sw.epilog176.i_crit_edge:          ; preds = %sw.epilog166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog176.i

sw.bb168.i:                                       ; preds = %sw.epilog166.i
  call void @__sanitizer_cov_trace_pc() #7
  %173 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx143.i, align 1
  %175 = or i8 %174, 2
  store i8 %175, ptr %arrayidx143.i, align 1
  br label %sw.epilog176.i

sw.epilog176.i:                                   ; preds = %sw.bb168.i, %sw.epilog166.i.sw.epilog176.i_crit_edge
  %arrayidx178.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 18
  %176 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %arrayidx178.i, align 1
  %arrayidx180.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 19
  %177 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %arrayidx180.i, align 1
  %arrayidx182.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 20
  %channel_active.i.i66 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 23
  br label %for.body.i.i73

for.body.i.i73:                                   ; preds = %for.inc.i.i95.for.body.i.i73_crit_edge, %sw.epilog176.i
  %pos.044.i.i67 = phi i32 [ 1, %sw.epilog176.i ], [ %pos.1.i.i92, %for.inc.i.i95.for.body.i.i73_crit_edge ]
  %n.043.i.i68 = phi i32 [ 0, %sw.epilog176.i ], [ %n.1.i.i91, %for.inc.i.i95.for.body.i.i73_crit_edge ]
  %i.041.i.i69 = phi i32 [ 0, %sw.epilog176.i ], [ %inc19.i.i93, %for.inc.i.i95.for.body.i.i73_crit_edge ]
  %div3.i.i.i70 = lshr i32 %i.041.i.i69, 5
  %arrayidx.i.i.i71 = getelementptr i32, ptr %channel_active.i.i66, i32 %div3.i.i.i70
  %178 = ptrtoint ptr %arrayidx.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %arrayidx.i.i.i71, align 4
  %180 = shl nuw i32 1, %i.041.i.i69
  %181 = and i32 %179, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool.not.i.i72 = icmp eq i32 %181, 0
  br i1 %tobool.not.i.i72, label %for.body.i.i73.for.inc.i.i95_crit_edge, label %if.then.i.i90

for.body.i.i73.for.inc.i.i95_crit_edge:           ; preds = %for.body.i.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i95

if.then.i.i90:                                    ; preds = %for.body.i.i73
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i74 = add i32 %pos.044.i.i67, 1
  %arrayidx.i.i75 = getelementptr i8, ptr %arrayidx182.i, i32 %pos.044.i.i67
  %182 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 19, ptr %arrayidx.i.i75, align 1
  %inc1.i.i76 = add i32 %pos.044.i.i67, 2
  %arrayidx2.i.i77 = getelementptr i8, ptr %arrayidx182.i, i32 %inc.i.i74
  %183 = ptrtoint ptr %arrayidx2.i.i77 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -128, ptr %arrayidx2.i.i77, align 1
  %arrayidx3.i.i78 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 24, i32 %i.041.i.i69
  %184 = ptrtoint ptr %arrayidx3.i.i78 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %arrayidx3.i.i78, align 2
  %186 = lshr i16 %185, 8
  %187 = trunc i16 %186 to i8
  %conv4.i.i79 = and i8 %187, 31
  %inc5.i.i80 = add i32 %pos.044.i.i67, 3
  %arrayidx6.i.i81 = getelementptr i8, ptr %arrayidx182.i, i32 %inc1.i.i76
  %188 = ptrtoint ptr %arrayidx6.i.i81 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv4.i.i79, ptr %arrayidx6.i.i81, align 1
  %189 = load i16, ptr %arrayidx3.i.i78, align 2
  %conv11.i.i82 = trunc i16 %189 to i8
  %inc12.i.i83 = add i32 %pos.044.i.i67, 4
  %arrayidx13.i.i84 = getelementptr i8, ptr %arrayidx182.i, i32 %inc5.i.i80
  %190 = ptrtoint ptr %arrayidx13.i.i84 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv11.i.i82, ptr %arrayidx13.i.i84, align 1
  %inc14.i.i85 = add i32 %pos.044.i.i67, 5
  %arrayidx15.i.i86 = getelementptr i8, ptr %arrayidx182.i, i32 %inc12.i.i83
  %191 = ptrtoint ptr %arrayidx15.i.i86 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %arrayidx15.i.i86, align 1
  %inc16.i.i87 = add i32 %pos.044.i.i67, 6
  %arrayidx17.i.i88 = getelementptr i8, ptr %arrayidx182.i, i32 %inc14.i.i85
  %192 = ptrtoint ptr %arrayidx17.i.i88 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %arrayidx17.i.i88, align 1
  %inc18.i.i89 = add i32 %n.043.i.i68, 1
  br label %for.inc.i.i95

for.inc.i.i95:                                    ; preds = %if.then.i.i90, %for.body.i.i73.for.inc.i.i95_crit_edge
  %n.1.i.i91 = phi i32 [ %inc18.i.i89, %if.then.i.i90 ], [ %n.043.i.i68, %for.body.i.i73.for.inc.i.i95_crit_edge ]
  %pos.1.i.i92 = phi i32 [ %inc16.i.i87, %if.then.i.i90 ], [ %pos.044.i.i67, %for.body.i.i73.for.inc.i.i95_crit_edge ]
  %inc19.i.i93 = add nuw nsw i32 %i.041.i.i69, 1
  %exitcond.not.i.i94 = icmp eq i32 %inc19.i.i93, 16
  br i1 %exitcond.not.i.i94, label %avc_tuner_dsd_dvb_t.exit, label %for.inc.i.i95.for.body.i.i73_crit_edge

for.inc.i.i95.for.body.i.i73_crit_edge:           ; preds = %for.inc.i.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i73

avc_tuner_dsd_dvb_t.exit:                         ; preds = %for.inc.i.i95
  call void @__sanitizer_cov_trace_pc() #7
  %conv20.i.i96 = trunc i32 %n.1.i.i91 to i8
  %193 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv20.i.i96, ptr %arrayidx182.i, align 1
  %add.i97 = add i32 %pos.1.i.i92, 17
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/firewire/firedtv-avc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #5, !srcloc !182
  unreachable

sw.epilog:                                        ; preds = %avc_tuner_dsd_dvb_t.exit, %avc_tuner_dsd_dvb_c.exit, %cleanup.sink.split.i, %sw.epilog111.i.sw.epilog_crit_edge, %sw.epilog.i.sw.epilog_crit_edge
  %pos.0 = phi i32 [ %add.i97, %avc_tuner_dsd_dvb_t.exit ], [ %add.i, %avc_tuner_dsd_dvb_c.exit ], [ 16, %sw.epilog111.i.sw.epilog_crit_edge ], [ 13, %sw.epilog.i.sw.epilog_crit_edge ], [ 16, %cleanup.sink.split.i ]
  %add.i98 = add i32 %pos.0, 3
  %and.i = and i32 %add.i98, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %pos.0)
  %cmp.not.i99 = icmp sge i32 %and.i, %pos.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %and.i)
  %cmp1.i = icmp slt i32 %and.i, 509
  %or.cond.i = and i1 %cmp.not.i99, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %sw.epilog.pad_operands.exit_crit_edge

sw.epilog.pad_operands.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %pad_operands.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i100 = getelementptr %struct.avc_command_frame, ptr %avc_data, i32 0, i32 3, i32 %pos.0
  %sub.i.i = sub i32 1, %pos.0
  %add.i.i = add i32 %sub.i.i, %and.i
  %194 = call ptr @memset(ptr %arrayidx.i.i100, i32 0, i32 %add.i.i)
  br label %pad_operands.exit

pad_operands.exit:                                ; preds = %if.then.i, %sw.epilog.pad_operands.exit_crit_edge
  %add10 = add i32 %pos.0, 6
  %and = and i32 %add10, -4
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %195 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %and, ptr %avc_data_length, align 8
  %call11 = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.then, label %pad_operands.exit.if.end_crit_edge

pad_operands.exit.if.end_crit_edge:               ; preds = %pad_operands.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %pad_operands.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 500) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %pad_operands.exit.if.end_crit_edge
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avc_write(ptr noundef %fdtv) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_reply_received = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 13
  %0 = ptrtoint ptr %avc_reply_received to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_reply_received, align 8
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %avc_wait = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 12
  br label %for.body

for.cond:                                         ; preds = %if.end55
  %inc = add nuw nsw i32 %retry.0100, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do.end63, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %retry.0100 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %1 = load i32, ptr @avc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then, !prof !180

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avc_data_length, align 8
  call fastcc void @debug_fcp(ptr noundef %avc_data, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %4 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avc_data_length, align 8
  %call = call i32 @fdtv_write(ptr noundef %fdtv, i64 noundef 281474708278016, ptr noundef %avc_data, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.67) #8
  br label %cleanup65

if.end8:                                          ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 254) #5
  %8 = ptrtoint ptr %avc_reply_received to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %avc_reply_received, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.then27, label %if.end8.cleanup65_crit_edge

if.end8.cleanup65_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.then27:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call3195 = call i32 @prepare_to_wait_event(ptr noundef %avc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %11 = ptrtoint ptr %avc_reply_received to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %avc_reply_received, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not96.not = icmp eq i8 %12, 0
  br i1 %tobool34.not96.not, label %if.then27.cleanup_crit_edge, label %if.end55.thread

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  br label %cleanup

if.end55.thread:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %avc_wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %cleanup65

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then27.cleanup_crit_edge
  %__ret28.198 = phi i32 [ %__ret28.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then27.cleanup_crit_edge ]
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret28.198) #5
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %avc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %13 = ptrtoint ptr %avc_reply_received to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %avc_reply_received, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool34.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool38.not = icmp eq i32 %call52, 0
  %spec.store.select67 = select i1 %tobool38.not, i32 1, i32 %call52
  %__ret28.1 = select i1 %tobool34.not, i32 %call52, i32 %spec.store.select67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1)
  %tobool44.not = icmp eq i32 %__ret28.1, 0
  %not.tobool34.not = xor i1 %tobool34.not, true
  %15 = select i1 %not.tobool34.not, i1 true, i1 %tobool44.not
  br i1 %15, label %if.end55, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %avc_wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1)
  %cmp57.not = icmp eq i32 %__ret28.1, 0
  br i1 %cmp57.not, label %for.cond, label %if.end55.cleanup65_crit_edge

if.end55.cleanup65_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

do.end63:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.70) #8
  br label %cleanup65

cleanup65:                                        ; preds = %do.end63, %if.end55.cleanup65_crit_edge, %if.end55.thread, %if.end8.cleanup65_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -110, %do.end63 ], [ 0, %if.end55.thread ], [ 0, %if.end55.cleanup65_crit_edge ], [ 0, %if.end8.cleanup65_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_tuner_set_pids(ptr noundef %fdtv, i8 noundef zeroext %pidc, ptr nocapture noundef readonly %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %0 = add i8 %pidc, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %0)
  %1 = icmp ult i8 %0, 18
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %2 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %3 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %subunit, align 8
  %5 = or i8 %4, 40
  %subunit7 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %subunit7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %subunit7, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %7 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -53, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %8 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %operand, align 1
  %arrayidx9 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -46, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %pidc, ptr %arrayidx17, align 1
  %14 = add nsw i8 %pidc, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %14)
  %15 = icmp ult i8 %14, -2
  br i1 %15, label %for.body.preheader, label %if.end.if.end50_crit_edge

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

for.body.preheader:                               ; preds = %if.end
  %umax = zext i8 %pidc to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %k.099 = phi i32 [ %inc49, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pos.098 = phi i32 [ %inc47, %for.body.for.body_crit_edge ], [ 6, %for.body.preheader ]
  %inc = or i32 %pos.098, 1
  %arrayidx26 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %pos.098
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 19, ptr %arrayidx26, align 1
  %inc28 = add nuw nsw i32 %pos.098, 2
  %arrayidx29 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr i16, ptr %pid, i32 %k.099
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx30, align 2
  %20 = lshr i16 %19, 8
  %21 = trunc i16 %20 to i8
  %conv32 = and i8 %21, 31
  %inc34 = add nuw nsw i32 %pos.098, 3
  %arrayidx35 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc28
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv32, ptr %arrayidx35, align 1
  %23 = load i16, ptr %arrayidx30, align 2
  %conv39 = trunc i16 %23 to i8
  %inc41 = add nuw nsw i32 %pos.098, 4
  %arrayidx42 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc34
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv39, ptr %arrayidx42, align 1
  %inc44 = add nuw nsw i32 %pos.098, 5
  %arrayidx45 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc41
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx45, align 1
  %inc47 = add nuw nsw i32 %pos.098, 6
  %arrayidx48 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc44
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx48, align 1
  %inc49 = add nuw nsw i32 %k.099, 1
  %exitcond.not = icmp eq i32 %inc49, %umax
  br i1 %exitcond.not, label %for.body.if.end50_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.end50:                                         ; preds = %for.body.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %pos.1 = phi i32 [ 6, %if.end.if.end50_crit_edge ], [ %inc47, %for.body.if.end50_crit_edge ]
  %add.i = add i32 %pos.1, 3
  %and.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %pos.1)
  %cmp.not.i = icmp sge i32 %and.i, %pos.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %and.i)
  %cmp1.i = icmp slt i32 %and.i, 509
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %if.end50.pad_operands.exit_crit_edge

if.end50.pad_operands.exit_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %pad_operands.exit

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.avc_command_frame, ptr %avc_data, i32 0, i32 3, i32 %pos.1
  %sub.i.i = sub i32 1, %pos.1
  %add.i.i = add i32 %sub.i.i, %and.i
  %27 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 %add.i.i)
  br label %pad_operands.exit

pad_operands.exit:                                ; preds = %if.then.i, %if.end50.pad_operands.exit_crit_edge
  %add51 = add i32 %pos.1, 6
  %and52 = and i32 %add51, -4
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %28 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and52, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54 = icmp eq i32 %call, 0
  br i1 %cmp54, label %if.then56, label %pad_operands.exit.cleanup_crit_edge

pad_operands.exit.cleanup_crit_edge:              ; preds = %pad_operands.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then56:                                        ; preds = %pad_operands.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 50) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %pad_operands.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then56 ], [ %call, %pad_operands.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_tuner_get_ts(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit2 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit2, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -56, ptr %opcode, align 1
  %type = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 16
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %8 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %operand, align 1
  %arrayidx5 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -46, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx13, align 1
  %conv14 = select i1 %cmp, i8 12, i8 17
  %arrayidx16 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %arrayidx16, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %15 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 18)
  %cond20 = select i1 %cmp, i32 24, i32 28
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %16 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond20, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22 = icmp eq i32 %call, 0
  br i1 %cmp22, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 250) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_identify_subunit(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 13, ptr %arrayidx16, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %arrayidx.i, align 1
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %14 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %avc_data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %avc_data, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %16, label %if.end.do.end_crit_edge [
    i8 12, label %if.end.lor.lhs.false_crit_edge
    i8 9, label %if.end.lor.lhs.false_crit_edge57
  ]

if.end.lor.lhs.false_crit_edge57:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge57
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10, align 1
  %conv27 = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv27, 8
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12, align 1
  %conv30 = zext i8 %21 to i32
  %add = or i32 %shl, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp31.not = icmp eq i32 %add, 8
  br i1 %cmp31.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %22 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9) #8
  br label %out

out:                                              ; preds = %do.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -22, %do.end ], [ %call, %lor.lhs.false.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_tuner_status(ptr noundef %fdtv, ptr nocapture noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx6, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 30)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %9 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %avc_data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %avc_data, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %11, label %do.end [
    i8 12, label %if.end.if.end16_crit_edge
    i8 9, label %if.end.if.end16_crit_edge390
  ]

if.end.if.end16_crit_edge390:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #8
  br label %out

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.end.if.end16_crit_edge390
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp23.not = icmp eq i8 %16, 16
  br i1 %cmp23.not, label %lor.lhs.false, label %if.end16.do.end30_crit_edge

if.end16.do.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30

lor.lhs.false:                                    ; preds = %if.end16
  %arrayidx18 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 12
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %18)
  %cmp25.not = icmp eq i8 %18, 22
  br i1 %cmp25.not, label %if.end32, label %lor.lhs.false.do.end30_crit_edge

lor.lhs.false.do.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30

do.end30:                                         ; preds = %lor.lhs.false.do.end30_crit_edge, %if.end16.do.end30_crit_edge
  %19 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14) #8
  br label %out

if.end32:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx34 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 13
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %22 to i32
  %23 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load i32, ptr %stat, align 4
  %bf.shl = shl nuw i32 %conv35, 24
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %stat, align 4
  %arrayidx37 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 14
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx37, align 1
  %26 = lshr i8 %25, 7
  %27 = zext i8 %26 to i32
  %bf.shl41 = shl nuw nsw i32 %27, 23
  %bf.clear42 = and i32 %bf.set, -8388609
  %bf.set43 = or i32 %bf.shl41, %bf.clear42
  store i32 %bf.set43, ptr %stat, align 4
  %28 = load i8, ptr %arrayidx37, align 1
  %29 = lshr i8 %28, 6
  %30 = and i8 %29, 1
  %and48 = zext i8 %30 to i32
  %bf.shl51 = shl nuw nsw i32 %and48, 22
  %bf.clear52 = and i32 %bf.set43, -4194305
  %bf.set53 = or i32 %bf.shl51, %bf.clear52
  store i32 %bf.set53, ptr %stat, align 4
  %31 = load i8, ptr %arrayidx37, align 1
  %32 = lshr i8 %31, 5
  %33 = and i8 %32, 1
  %and58 = zext i8 %33 to i32
  %bf.shl61 = shl nuw nsw i32 %and58, 21
  %bf.clear62 = and i32 %bf.set53, -2097153
  %bf.set63 = or i32 %bf.clear62, %bf.shl61
  store i32 %bf.set63, ptr %stat, align 4
  %arrayidx65 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 15
  %34 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx65, align 1
  %36 = lshr i8 %35, 7
  %37 = zext i8 %36 to i32
  %bf.shl71 = shl nuw nsw i32 %37, 20
  %bf.clear72 = and i32 %bf.set63, -1048577
  %bf.set73 = or i32 %bf.clear72, %bf.shl71
  store i32 %bf.set73, ptr %stat, align 4
  %38 = load i8, ptr %arrayidx65, align 1
  %39 = and i8 %38, 127
  %and77 = zext i8 %39 to i32
  %bf.shl80 = shl nuw nsw i32 %and77, 13
  %bf.clear81 = and i32 %bf.set73, -1040385
  %bf.set82 = or i32 %bf.clear81, %bf.shl80
  store i32 %bf.set82, ptr %stat, align 4
  %arrayidx84 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 16
  %40 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %41 to i32
  %shl = shl nuw i32 %conv85, 24
  %arrayidx87 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 17
  %42 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %43 to i32
  %shl89 = shl nuw nsw i32 %conv88, 16
  %or90 = or i32 %shl89, %shl
  %arrayidx92 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 18
  %44 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %45 to i32
  %shl94 = shl nuw nsw i32 %conv93, 8
  %or95 = or i32 %or90, %shl94
  %arrayidx97 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 19
  %46 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %47 to i32
  %or99 = or i32 %or95, %conv98
  %ber = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 1
  %48 = zext i32 %or99 to i96
  %49 = ptrtoint ptr %ber to i32
  call void @__asan_loadN_noabort(i32 %49, i32 12)
  %bf.load100 = load i96, ptr %ber, align 4
  %bf.shl102 = shl nuw i96 %48, 64
  %bf.clear103 = and i96 %bf.load100, 18446744073709551615
  %bf.set104 = or i96 %bf.shl102, %bf.clear103
  store i96 %bf.set104, ptr %ber, align 4
  %arrayidx106 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 20
  %50 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx106, align 1
  %52 = zext i8 %51 to i96
  %bf.shl110 = shl nuw nsw i96 %52, 56
  %bf.clear111 = and i96 %bf.set104, -18374686479671623681
  %bf.set112 = or i96 %bf.clear111, %bf.shl110
  store i96 %bf.set112, ptr %ber, align 4
  %arrayidx115 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 21
  %53 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx115, align 1
  %55 = lshr i8 %54, 6
  %56 = and i8 %55, 2
  %bf.value120 = zext i8 %56 to i96
  %bf.shl121 = shl nuw nsw i96 %bf.value120, 54
  %bf.clear122 = and i96 %bf.set112, -54043195528445953
  %bf.set123 = or i96 %bf.clear122, %bf.shl121
  store i96 %bf.set123, ptr %ber, align 4
  %57 = load i8, ptr %arrayidx115, align 1
  %and128 = zext i8 %57 to i32
  %shl129 = shl nuw nsw i32 %and128, 16
  %arrayidx131 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 22
  %58 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %59 to i32
  %shl133 = shl nuw nsw i32 %conv132, 8
  %arrayidx136 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 23
  %60 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %61 to i32
  %shl129.masked = and i32 %shl129, 4128768
  %or134.masked = or i32 %shl129.masked, %shl133
  %62 = or i32 %or134.masked, %conv137
  %bf.value140 = zext i32 %62 to i96
  %bf.shl141 = shl nuw nsw i96 %bf.value140, 32
  %bf.clear142 = and i96 %bf.set123, -36028792723996673
  %bf.set143 = or i96 %bf.shl141, %bf.clear142
  store i96 %bf.set143, ptr %ber, align 4
  %arrayidx146 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 24
  %63 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx146, align 1
  %65 = zext i8 %64 to i96
  %bf.shl150 = shl nuw nsw i96 %65, 24
  %bf.clear151 = and i96 %bf.set143, -4278190081
  %bf.set152 = or i96 %bf.clear151, %bf.shl150
  store i96 %bf.set152, ptr %ber, align 4
  %arrayidx155 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 25
  %66 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx155, align 1
  %68 = lshr i8 %67, 4
  %69 = and i8 %68, 1
  %bf.value160 = zext i8 %69 to i96
  %bf.shl161 = shl nuw nsw i96 %bf.value160, 23
  %bf.clear162 = and i96 %bf.set152, -8388609
  %bf.set163 = or i96 %bf.clear162, %bf.shl161
  store i96 %bf.set163, ptr %ber, align 4
  %70 = load i8, ptr %arrayidx155, align 1
  %71 = lshr i8 %70, 3
  %72 = and i8 %71, 1
  %bf.value171 = zext i8 %72 to i96
  %bf.shl172 = shl nuw nsw i96 %bf.value171, 22
  %bf.clear173 = and i96 %bf.set163, -4194305
  %bf.set174 = or i96 %bf.clear173, %bf.shl172
  store i96 %bf.set174, ptr %ber, align 4
  %73 = load i8, ptr %arrayidx155, align 1
  %74 = lshr i8 %73, 1
  %75 = and i8 %74, 1
  %bf.value182 = zext i8 %75 to i96
  %bf.shl183 = shl nuw nsw i96 %bf.value182, 21
  %bf.clear184 = and i96 %bf.set174, -2097153
  %bf.set185 = or i96 %bf.clear184, %bf.shl183
  store i96 %bf.set185, ptr %ber, align 4
  %76 = load i8, ptr %arrayidx155, align 1
  %77 = and i8 %76, 1
  %bf.value192 = zext i8 %77 to i96
  %bf.shl193 = shl nuw nsw i96 %bf.value192, 20
  %bf.clear194 = and i96 %bf.set185, -1048577
  %bf.set195 = or i96 %bf.clear194, %bf.shl193
  store i96 %bf.set195, ptr %ber, align 4
  %arrayidx198 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 26
  %78 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %79 to i32
  %arrayidx202 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 27
  %80 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %81 to i32
  %82 = shl nuw nsw i32 %conv199, 12
  %83 = shl nuw nsw i32 %conv203, 4
  %84 = or i32 %83, %82
  %bf.shl207 = zext i32 %84 to i96
  %bf.clear208 = and i96 %bf.set195, -1048561
  %bf.set209 = or i96 %bf.clear208, %bf.shl207
  store i96 %bf.set209, ptr %ber, align 4
  %arrayidx212 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 30
  %85 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %86 to i32
  %power_supply_voltage = getelementptr inbounds %struct.firedtv_tuner_status, ptr %stat, i32 0, i32 2
  %87 = ptrtoint ptr %power_supply_voltage to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load214 = load i32, ptr %power_supply_voltage, align 4
  %bf.shl216 = shl nuw i32 %conv213, 24
  %bf.clear217 = and i32 %bf.load214, 16777215
  %bf.set218 = or i32 %bf.clear217, %bf.shl216
  store i32 %bf.set218, ptr %power_supply_voltage, align 4
  %arrayidx220 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 31
  %88 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %89 to i32
  %bf.shl224 = shl nuw nsw i32 %conv221, 16
  %bf.clear225 = and i32 %bf.set218, -16711681
  %bf.set226 = or i32 %bf.shl224, %bf.clear225
  store i32 %bf.set226, ptr %power_supply_voltage, align 4
  %arrayidx228 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 32
  %90 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %91 to i32
  %bf.shl232 = shl nuw nsw i32 %conv229, 8
  %bf.clear233 = and i32 %bf.set226, -65281
  %bf.set234 = or i32 %bf.clear233, %bf.shl232
  store i32 %bf.set234, ptr %power_supply_voltage, align 4
  %arrayidx236 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 33
  %92 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx236, align 1
  %94 = shl i8 %93, 7
  %bf.shl241 = zext i8 %94 to i32
  %bf.clear242 = and i32 %bf.set234, -129
  %bf.set243 = or i32 %bf.clear242, %bf.shl241
  store i32 %bf.set243, ptr %power_supply_voltage, align 4
  %arrayidx245 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 34
  %95 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx245, align 1
  %97 = lshr i8 %96, 1
  %98 = and i8 %97, 64
  %bf.shl251 = zext i8 %98 to i32
  %bf.clear252 = and i32 %bf.set243, -65
  %bf.set253 = or i32 %bf.clear252, %bf.shl251
  store i32 %bf.set253, ptr %power_supply_voltage, align 4
  %99 = load i8, ptr %arrayidx245, align 1
  %100 = lshr i8 %99, 1
  %101 = and i8 %100, 32
  %bf.shl261 = zext i8 %101 to i32
  %bf.clear262 = and i32 %bf.set253, -33
  %bf.set263 = or i32 %bf.clear262, %bf.shl261
  store i32 %bf.set263, ptr %power_supply_voltage, align 4
  %102 = load i8, ptr %arrayidx245, align 1
  %103 = lshr i8 %102, 1
  %104 = and i8 %103, 16
  %bf.shl271 = zext i8 %104 to i32
  %bf.clear272 = and i32 %bf.set263, -17
  %bf.set273 = or i32 %bf.clear272, %bf.shl271
  store i32 %bf.set273, ptr %power_supply_voltage, align 4
  %105 = load i8, ptr %arrayidx245, align 1
  %106 = lshr i8 %105, 1
  %107 = and i8 %106, 8
  %bf.shl281 = zext i8 %107 to i32
  %bf.clear282 = and i32 %bf.set273, -9
  %bf.set283 = or i32 %bf.clear282, %bf.shl281
  store i32 %bf.set283, ptr %power_supply_voltage, align 4
  %108 = load i8, ptr %arrayidx245, align 1
  %109 = lshr i8 %108, 1
  %110 = and i8 %109, 4
  %bf.shl291 = zext i8 %110 to i32
  %bf.clear292 = and i32 %bf.set283, -5
  %bf.set293 = or i32 %bf.clear292, %bf.shl291
  store i32 %bf.set293, ptr %power_supply_voltage, align 4
  %111 = load i8, ptr %arrayidx245, align 1
  %112 = lshr i8 %111, 1
  %113 = and i8 %112, 2
  %bf.shl301 = zext i8 %113 to i32
  %bf.clear302 = and i32 %bf.set293, -3
  %bf.set303 = or i32 %bf.clear302, %bf.shl301
  store i32 %bf.set303, ptr %power_supply_voltage, align 4
  %114 = load i8, ptr %arrayidx245, align 1
  %115 = lshr i8 %114, 1
  %116 = and i8 %115, 1
  %and308 = zext i8 %116 to i32
  %bf.clear311 = and i32 %bf.set303, -2
  %bf.set312 = or i32 %bf.clear311, %and308
  store i32 %bf.set312, ptr %power_supply_voltage, align 4
  br label %out

out:                                              ; preds = %if.end32, %do.end30, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -22, %do.end ], [ -22, %do.end30 ], [ %call, %if.end32 ]
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_lnb_control(ptr noundef %fdtv, i8 noundef zeroext %voltage, i8 noundef zeroext %burst, i8 noundef zeroext %conttone, i8 noundef zeroext %nrdiseq, ptr nocapture noundef readonly %diseqcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 82, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %voltage, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %nrdiseq, ptr %arrayidx14, align 1
  %conv15 = zext i8 %nrdiseq to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nrdiseq)
  %cmp91.not = icmp eq i8 %nrdiseq, 0
  br i1 %cmp91.not, label %entry.for.end35_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %entry.for.body_crit_edge
  %j.093 = phi i32 [ %inc34, %for.inc33.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %pos.092 = phi i32 [ %pos.1.lcssa, %for.inc33.for.body_crit_edge ], [ 6, %entry.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.dvb_diseqc_master_cmd, ptr %diseqcmd, i32 %j.093
  %msg_len = getelementptr %struct.dvb_diseqc_master_cmd, ptr %diseqcmd, i32 %j.093, i32 1
  %12 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg_len, align 1
  %arrayidx19 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %pos.092
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx19, align 1
  %pos.186 = add i32 %pos.092, 1
  %15 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2488.not = icmp eq i8 %15, 0
  br i1 %cmp2488.not, label %for.body.for.inc33_crit_edge, label %for.body.for.body26_crit_edge

for.body.for.body26_crit_edge:                    ; preds = %for.body
  br label %for.body26

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body.for.body26_crit_edge
  %pos.190 = phi i32 [ %pos.1, %for.body26.for.body26_crit_edge ], [ %pos.186, %for.body.for.body26_crit_edge ]
  %k.089 = phi i32 [ %inc32, %for.body26.for.body26_crit_edge ], [ 0, %for.body.for.body26_crit_edge ]
  %arrayidx28 = getelementptr [6 x i8], ptr %arrayidx17, i32 0, i32 %k.089
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 1
  %arrayidx31 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %pos.190
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx31, align 1
  %inc32 = add nuw nsw i32 %k.089, 1
  %pos.1 = add i32 %pos.190, 1
  %19 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msg_len, align 1
  %conv23 = zext i8 %20 to i32
  %cmp24 = icmp ult i32 %inc32, %conv23
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.inc33_crit_edge

for.body26.for.inc33_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.inc33:                                        ; preds = %for.body26.for.inc33_crit_edge, %for.body.for.inc33_crit_edge
  %pos.1.lcssa = phi i32 [ %pos.186, %for.body.for.inc33_crit_edge ], [ %pos.1, %for.body26.for.inc33_crit_edge ]
  %inc34 = add nuw nsw i32 %j.093, 1
  %exitcond.not = icmp eq i32 %inc34, %conv15
  br i1 %exitcond.not, label %for.inc33.for.end35_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %entry.for.end35_crit_edge
  %pos.0.lcssa = phi i32 [ 6, %entry.for.end35_crit_edge ], [ %pos.1.lcssa, %for.inc33.for.end35_crit_edge ]
  %inc37 = add i32 %pos.0.lcssa, 1
  %arrayidx38 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %pos.0.lcssa
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %burst, ptr %arrayidx38, align 1
  %inc40 = add i32 %pos.0.lcssa, 2
  %arrayidx41 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc37
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conttone, ptr %arrayidx41, align 1
  %add.i = add i32 %pos.0.lcssa, 5
  %and.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %inc40)
  %cmp.not.i = icmp sge i32 %and.i, %inc40
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %and.i)
  %cmp1.i = icmp slt i32 %and.i, 509
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %for.end35.pad_operands.exit_crit_edge

for.end35.pad_operands.exit_crit_edge:            ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %pad_operands.exit

if.then.i:                                        ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.avc_command_frame, ptr %avc_data, i32 0, i32 3, i32 %inc40
  %sub.i.i = xor i32 %pos.0.lcssa, -1
  %add.i.i = add i32 %and.i, %sub.i.i
  %23 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 %add.i.i)
  br label %pad_operands.exit

pad_operands.exit:                                ; preds = %if.then.i, %for.end35.pad_operands.exit_crit_edge
  %add42 = add i32 %pos.0.lcssa, 8
  %and = and i32 %add42, -4
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %24 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp43 = icmp slt i32 %call, 0
  br i1 %cmp43, label %pad_operands.exit.out_crit_edge, label %if.end

pad_operands.exit.out_crit_edge:                  ; preds = %pad_operands.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %pad_operands.exit
  %25 = ptrtoint ptr %avc_data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %avc_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %26)
  %cmp46.not = icmp eq i8 %26, 9
  br i1 %cmp46.not, label %if.end.out_crit_edge, label %do.end

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16) #8
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %pad_operands.exit.out_crit_edge
  %ret.0 = phi i32 [ %call, %pad_operands.exit.out_crit_edge ], [ -22, %do.end ], [ %call, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_register_remote_control(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %subunit, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %2 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %3 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %operand, align 1
  %arrayidx2 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -121, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx8, align 1
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %8 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avc_remote_ctrl_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3284
  %avc_data.i = getelementptr i8, ptr %work, i32 200
  %avc_mutex.i = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex.i, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %avc_data.i, align 1
  %subunit.i = getelementptr i8, ptr %work, i32 201
  %1 = ptrtoint ptr %subunit.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %subunit.i, align 1
  %opcode.i = getelementptr i8, ptr %work, i32 202
  %2 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %opcode.i, align 1
  %operand.i = getelementptr i8, ptr %work, i32 203
  %3 = ptrtoint ptr %operand.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %operand.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %work, i32 204
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %work, i32 205
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -121, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %work, i32 206
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %work, i32 207
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx8.i, align 1
  %avc_data_length.i = getelementptr i8, ptr %work, i32 196
  %8 = ptrtoint ptr %avc_data_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %avc_data_length.i, align 8
  %call.i = tail call fastcc i32 @avc_write(ptr noundef %add.ptr) #5
  tail call void @mutex_unlock(ptr noundef %avc_mutex.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_app_info(ptr noundef %fdtv, ptr nocapture noundef %app_info, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 87, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx14, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 503)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %13 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i66 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %14 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i66, align 1
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %conv.i, 127
  %phi.bo.i = add nuw nsw i32 %and4.i, 8
  %length.0.i = select i1 %tobool.not.i, i32 8, i32 %phi.bo.i
  %16 = ptrtoint ptr %app_info to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -97, ptr %app_info, align 1
  %arrayidx18 = getelementptr i8, ptr %app_info, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %app_info, i32 2
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 33, ptr %arrayidx19, align 1
  %add = add nuw nsw i32 %length.0.i, 4
  %arrayidx21 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %add
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %add23 = add i8 %20, 6
  %arrayidx25 = getelementptr i8, ptr %app_info, i32 3
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %add23, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %app_info, i32 4
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx26, align 1
  %arrayidx27 = getelementptr i8, ptr %app_info, i32 5
  %arrayidx29 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %length.0.i
  %23 = load i8, ptr %arrayidx21, align 1
  %conv33 = zext i8 %23 to i32
  %add34 = add nuw nsw i32 %conv33, 5
  %24 = call ptr @memcpy(ptr %arrayidx27, ptr %arrayidx29, i32 %add34)
  %conv36 = zext i8 %add23 to i32
  %add37 = add nuw nsw i32 %conv36, 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add37, ptr %len, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_info(ptr noundef %fdtv, ptr nocapture noundef %app_info, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 87, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx14, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 503)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %13 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx.i84 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %14 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i84, align 1
  %16 = ptrtoint ptr %app_info to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -97, ptr %app_info, align 1
  %arrayidx18 = getelementptr i8, ptr %app_info, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %app_info, i32 2
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 49, ptr %arrayidx19, align 1
  %19 = load i32, ptr @num_fake_ca_system_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20 = icmp eq i32 %19, 0
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %conv.i, 127
  %phi.bo.i = add nuw nsw i32 %and4.i, 8
  %length.0.i = select i1 %tobool.not.i, i32 8, i32 %phi.bo.i
  %arrayidx23 = getelementptr i8, ptr %app_info, i32 3
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %length.0.i
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %app_info, i32 4
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx26, align 1
  %add28 = add nuw nsw i32 %length.0.i, 1
  %arrayidx29 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %add28
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr i8, ptr %app_info, i32 5
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx30, align 1
  br label %if.end46

if.else:                                          ; preds = %if.end
  %.tr = trunc i32 %19 to i8
  %conv31 = shl i8 %.tr, 1
  %arrayidx32 = getelementptr i8, ptr %app_info, i32 3
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv31, ptr %arrayidx32, align 1
  %28 = load i32, ptr @num_fake_ca_system_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp3385.not = icmp eq i32 %28, 0
  br i1 %cmp3385.not, label %if.else.if.end46_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %arrayidx35 = getelementptr [4 x i32], ptr @fake_ca_system_ids, i32 0, i32 %i.086
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35, align 4
  %31 = lshr i32 %30, 8
  %conv36 = trunc i32 %31 to i8
  %mul37 = shl i32 %i.086, 1
  %add38 = add i32 %mul37, 4
  %arrayidx39 = getelementptr i8, ptr %app_info, i32 %add38
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv36, ptr %arrayidx39, align 1
  %33 = load i32, ptr %arrayidx35, align 4
  %conv42 = trunc i32 %33 to i8
  %add44 = add i32 %mul37, 5
  %arrayidx45 = getelementptr i8, ptr %app_info, i32 %add44
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv42, ptr %arrayidx45, align 1
  %inc = add nuw i32 %i.086, 1
  %35 = load i32, ptr @num_fake_ca_system_ids, align 4
  %cmp33 = icmp ult i32 %inc, %35
  br i1 %cmp33, label %for.body.for.body_crit_edge, label %for.body.if.end46_crit_edge

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end46:                                         ; preds = %for.body.if.end46_crit_edge, %if.else.if.end46_crit_edge, %if.then22
  %arrayidx47 = getelementptr i8, ptr %app_info, i32 3
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %37 to i32
  %add49 = add nuw nsw i32 %conv48, 4
  %38 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add49, ptr %len, align 4
  br label %out

out:                                              ; preds = %if.end46, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_reset(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit2 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit2, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx4 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 86, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 11
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx18, align 1
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %15 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_pmt(ptr noundef %fdtv, ptr noundef %msg, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %0 = load i32, ptr @avc_debug, align 4
  %and = and i32 %0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !180

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @debug_pmt(ptr noundef %msg, i32 noundef %length)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %1 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %2 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %subunit, align 8
  %4 = or i8 %3, 40
  %subunit6 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %5 = ptrtoint ptr %subunit6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %subunit6, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %opcode, align 1
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.not = icmp eq i8 %8, 3
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %do.end

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.18) #8
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %msg, align 1
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.if.end11_crit_edge
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg, align 1
  %arrayidx14 = getelementptr i8, ptr %msg, i32 4
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %16 = and i8 %15, 15
  %and16 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %and16, 8
  %arrayidx17 = getelementptr i8, ptr %msg, i32 5
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %add = or i32 %shl, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp19.not = icmp eq i32 %add, 0
  %dec = add nsw i32 %add, -1
  %spec.select = select i1 %cmp19.not, i32 0, i32 %dec
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %19 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %operand, align 1
  %arrayidx27 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %arrayidx27, align 1
  %arrayidx29 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -121, ptr %arrayidx29, align 1
  %arrayidx31 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 86, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx33, align 1
  %arrayidx35 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx35, align 1
  %arrayidx37 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx37, align 1
  %arrayidx40 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 13
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %13, ptr %arrayidx40, align 1
  %arrayidx42 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 14
  %27 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx42, align 1
  %arrayidx44 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 15
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %arrayidx44, align 1
  %arrayidx46 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 16
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -128, ptr %arrayidx46, align 1
  %arrayidx47 = getelementptr i8, ptr %msg, i32 1
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx47, align 1
  %arrayidx49 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 18
  %32 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx49, align 1
  %arrayidx50 = getelementptr i8, ptr %msg, i32 2
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx50, align 1
  %arrayidx52 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 19
  %35 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx52, align 1
  %arrayidx53 = getelementptr i8, ptr %msg, i32 3
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx53, align 1
  %arrayidx55 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 20
  %38 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx55, align 1
  %arrayidx57 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 21
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 22
  %40 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx59, align 1
  %arrayidx61 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 23
  %41 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 31, ptr %arrayidx61, align 1
  %arrayidx63 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 24
  %42 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %arrayidx63, align 1
  %43 = lshr i32 %spec.select, 8
  %conv64 = trunc i32 %43 to i8
  %arrayidx66 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 25
  %44 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv64, ptr %arrayidx66, align 1
  %conv68 = trunc i32 %spec.select to i8
  %arrayidx70 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 26
  %45 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv68, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp71 = icmp sgt i32 %spec.select, 0
  br i1 %cmp71, label %if.then73, label %if.end11.if.end95_crit_edge

if.end11.if.end95_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then73:                                        ; preds = %if.end11
  %arrayidx23 = getelementptr i8, ptr %msg, i32 6
  %46 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx23, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %47, label %do.end83 [
    i8 1, label %if.then73.if.end85_crit_edge
    i8 4, label %if.then73.if.end85_crit_edge386
  ]

if.then73.if.end85_crit_edge386:                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then73.if.end85_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end83:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %conv75 = zext i8 %47 to i32
  %49 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.21, i32 noundef %conv75) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %if.then73.if.end85_crit_edge, %if.then73.if.end85_crit_edge386
  call void @__sanitizer_cov_trace_const_cmp4(i32 481, i32 %spec.select)
  %cmp86 = icmp ugt i32 %spec.select, 481
  br i1 %cmp86, label %if.end85.out_crit_edge, label %if.end89

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end89:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx91 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 27
  %arrayidx92 = getelementptr i8, ptr %msg, i32 7
  %51 = call ptr @memcpy(ptr %arrayidx91, ptr %arrayidx92, i32 %spec.select)
  %add93 = add nuw nsw i32 %spec.select, 7
  %add94 = add nuw nsw i32 %spec.select, 24
  br label %if.end95

if.end95:                                         ; preds = %if.end89, %if.end11.if.end95_crit_edge
  %read_pos.0 = phi i32 [ %add93, %if.end89 ], [ 6, %if.end11.if.end95_crit_edge ]
  %write_pos.0 = phi i32 [ %add94, %if.end89 ], [ 24, %if.end11.if.end95_crit_edge ]
  %add96381 = add nuw nsw i32 %read_pos.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add96381, i32 %length)
  %cmp97382 = icmp slt i32 %add96381, %length
  br i1 %cmp97382, label %if.end95.while.body_crit_edge, label %if.end95.while.end_crit_edge

if.end95.while.end_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end95.while.body_crit_edge:                    ; preds = %if.end95
  br label %while.body

while.body:                                       ; preds = %if.end177.while.body_crit_edge, %if.end95.while.body_crit_edge
  %add96385 = phi i32 [ %add96, %if.end177.while.body_crit_edge ], [ %add96381, %if.end95.while.body_crit_edge ]
  %write_pos.1384 = phi i32 [ %write_pos.2, %if.end177.while.body_crit_edge ], [ %write_pos.0, %if.end95.while.body_crit_edge ]
  %read_pos.1383 = phi i32 [ %read_pos.2, %if.end177.while.body_crit_edge ], [ %read_pos.0, %if.end95.while.body_crit_edge ]
  %52 = add i32 %write_pos.1384, -501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -505, i32 %52)
  %cmp100 = icmp ult i32 %52, -505
  br i1 %cmp100, label %while.body.out_crit_edge, label %if.end103

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end103:                                        ; preds = %while.body
  %inc104 = add i32 %read_pos.1383, 1
  %arrayidx105 = getelementptr i8, ptr %msg, i32 %read_pos.1383
  %53 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx105, align 1
  %inc107 = add nsw i32 %write_pos.1384, 1
  %arrayidx108 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %write_pos.1384
  %55 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx108, align 1
  %inc109 = add i32 %read_pos.1383, 2
  %arrayidx110 = getelementptr i8, ptr %msg, i32 %inc104
  %56 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx110, align 1
  %inc112 = add nsw i32 %write_pos.1384, 2
  %arrayidx113 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc107
  %58 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx113, align 1
  %inc114 = add i32 %read_pos.1383, 3
  %arrayidx115 = getelementptr i8, ptr %msg, i32 %inc109
  %59 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx115, align 1
  %inc117 = add nsw i32 %write_pos.1384, 3
  %arrayidx118 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc112
  %61 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx118, align 1
  %arrayidx119 = getelementptr i8, ptr %msg, i32 %inc114
  %62 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx119, align 1
  %64 = and i8 %63, 15
  %and121 = zext i8 %64 to i32
  %shl122 = shl nuw nsw i32 %and121, 8
  %arrayidx124 = getelementptr i8, ptr %msg, i32 %add96385
  %65 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %66 to i32
  %add126 = or i32 %shl122, %conv125
  %add127 = add i32 %read_pos.1383, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add126)
  %cmp128.not = icmp eq i32 %add126, 0
  %dec131 = add nsw i32 %add126, -1
  %spec.select378 = select i1 %cmp128.not, i32 0, i32 %dec131
  %67 = lshr i32 %spec.select378, 8
  %conv134 = trunc i32 %67 to i8
  %inc136 = add nsw i32 %write_pos.1384, 4
  %arrayidx137 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc117
  %68 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv134, ptr %arrayidx137, align 1
  %conv139 = trunc i32 %spec.select378 to i8
  %inc141 = add nsw i32 %write_pos.1384, 5
  %arrayidx142 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc136
  %69 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv139, ptr %arrayidx142, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select378)
  %cmp143 = icmp sgt i32 %spec.select378, 0
  br i1 %cmp143, label %if.then145, label %if.end103.if.end177_crit_edge

if.end103.if.end177_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

if.then145:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_cmp4(i32 %add127, i32 %length)
  %cmp146.not = icmp slt i32 %add127, %length
  br i1 %cmp146.not, label %if.end149, label %if.then145.out_crit_edge

if.then145.out_crit_edge:                         ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end149:                                        ; preds = %if.then145
  %inc150 = add i32 %read_pos.1383, 6
  %arrayidx151 = getelementptr i8, ptr %msg, i32 %add127
  %70 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx151, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %71, label %do.end161 [
    i8 1, label %if.end149.if.end163_crit_edge
    i8 4, label %if.end149.if.end163_crit_edge387
  ]

if.end149.if.end163_crit_edge387:                 ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163

if.end149.if.end163_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163

do.end161:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %conv152 = zext i8 %71 to i32
  %73 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.24, i32 noundef %conv152) #8
  br label %if.end163

if.end163:                                        ; preds = %do.end161, %if.end149.if.end163_crit_edge, %if.end149.if.end163_crit_edge387
  %sub164 = sub nsw i32 500, %write_pos.1384
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select378, i32 %sub164)
  %cmp165 = icmp ugt i32 %spec.select378, %sub164
  %sub167 = sub i32 %length, %inc150
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select378, i32 %sub167)
  %cmp168 = icmp sgt i32 %spec.select378, %sub167
  %or.cond = select i1 %cmp165, i1 true, i1 %cmp168
  br i1 %or.cond, label %if.end163.out_crit_edge, label %if.end171

if.end163.out_crit_edge:                          ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end171:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx173 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %inc141
  %arrayidx174 = getelementptr i8, ptr %msg, i32 %inc150
  %75 = call ptr @memcpy(ptr %arrayidx173, ptr %arrayidx174, i32 %spec.select378)
  %add175 = add i32 %spec.select378, %inc150
  %add176 = add nuw i32 %spec.select378, %inc141
  br label %if.end177

if.end177:                                        ; preds = %if.end171, %if.end103.if.end177_crit_edge
  %read_pos.2 = phi i32 [ %add175, %if.end171 ], [ %add127, %if.end103.if.end177_crit_edge ]
  %write_pos.2 = phi i32 [ %add176, %if.end171 ], [ %inc141, %if.end103.if.end177_crit_edge ]
  %add96 = add i32 %read_pos.2, 4
  %cmp97 = icmp slt i32 %add96, %length
  br i1 %cmp97, label %if.end177.while.body_crit_edge, label %if.end177.while.end_crit_edge

if.end177.while.end_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end177.while.body_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end177.while.end_crit_edge, %if.end95.while.end_crit_edge
  %write_pos.1.lcssa = phi i32 [ %write_pos.0, %if.end95.while.end_crit_edge ], [ %write_pos.2, %if.end177.while.end_crit_edge ]
  %add178 = add nuw i32 %write_pos.1.lcssa, 4
  %arrayidx180 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %76 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -126, ptr %arrayidx180, align 1
  %sub181 = add i32 %write_pos.1.lcssa, -6
  %77 = lshr i32 %sub181, 8
  %conv183 = trunc i32 %77 to i8
  %arrayidx185 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 11
  %78 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv183, ptr %arrayidx185, align 1
  %conv188 = trunc i32 %sub181 to i8
  %arrayidx190 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 12
  %79 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv188, ptr %arrayidx190, align 1
  %80 = trunc i32 %write_pos.1.lcssa to i8
  %conv192 = add i8 %80, -11
  %arrayidx194 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 17
  %81 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv192, ptr %arrayidx194, align 1
  %82 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx44, align 1
  %conv199 = zext i8 %83 to i32
  %sub200 = add nsw i32 %conv199, -1
  %call = tail call i32 @crc32_be(i32 noundef 0, ptr noundef %arrayidx40, i32 noundef %sub200) #9
  %84 = lshr i32 %call, 24
  %conv203 = trunc i32 %84 to i8
  %arrayidx206 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %write_pos.1.lcssa
  %85 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv203, ptr %arrayidx206, align 1
  %86 = lshr i32 %call, 16
  %conv209 = trunc i32 %86 to i8
  %sub211 = add nuw i32 %write_pos.1.lcssa, 1
  %arrayidx212 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %sub211
  %87 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv209, ptr %arrayidx212, align 1
  %88 = lshr i32 %call, 8
  %conv215 = trunc i32 %88 to i8
  %sub217 = add nuw i32 %write_pos.1.lcssa, 2
  %arrayidx218 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %sub217
  %89 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv215, ptr %arrayidx218, align 1
  %conv221 = trunc i32 %call to i8
  %sub223 = add nuw i32 %write_pos.1.lcssa, 3
  %arrayidx224 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %sub223
  %90 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv221, ptr %arrayidx224, align 1
  %add.i = add nuw i32 %write_pos.1.lcssa, 7
  %and.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %add178)
  %cmp.not.i = icmp sge i32 %and.i, %add178
  call void @__sanitizer_cov_trace_const_cmp4(i32 509, i32 %and.i)
  %cmp1.i = icmp slt i32 %and.i, 509
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %while.end.pad_operands.exit_crit_edge

while.end.pad_operands.exit_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pad_operands.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.avc_command_frame, ptr %avc_data, i32 0, i32 3, i32 %add178
  %sub.i.i = sub nuw i32 -3, %write_pos.1.lcssa
  %add.i.i = add i32 %sub.i.i, %and.i
  %91 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 %add.i.i)
  br label %pad_operands.exit

pad_operands.exit:                                ; preds = %if.then.i, %while.end.pad_operands.exit_crit_edge
  %add226 = add nuw i32 %write_pos.1.lcssa, 10
  %and227 = and i32 %add226, -4
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %92 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and227, ptr %avc_data_length, align 8
  %call228 = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %cmp229 = icmp slt i32 %call228, 0
  br i1 %cmp229, label %pad_operands.exit.out_crit_edge, label %if.end232

pad_operands.exit.out_crit_edge:                  ; preds = %pad_operands.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end232:                                        ; preds = %pad_operands.exit
  %93 = ptrtoint ptr %avc_data to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %avc_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %94)
  %cmp234.not = icmp eq i8 %94, 9
  br i1 %cmp234.not, label %if.end232.out_crit_edge, label %do.end239

if.end232.out_crit_edge:                          ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end239:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  %conv233 = zext i8 %94 to i32
  %95 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fdtv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.27, i32 noundef %conv233) #8
  br label %out

out:                                              ; preds = %do.end239, %if.end232.out_crit_edge, %pad_operands.exit.out_crit_edge, %if.end163.out_crit_edge, %if.then145.out_crit_edge, %while.body.out_crit_edge, %if.end85.out_crit_edge
  %ret.0 = phi i32 [ %call228, %pad_operands.exit.out_crit_edge ], [ -13, %do.end239 ], [ %call228, %if.end232.out_crit_edge ], [ -22, %if.end85.out_crit_edge ], [ -22, %while.body.out_crit_edge ], [ -22, %if.then145.out_crit_edge ], [ -22, %if.end163.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @debug_pmt(ptr noundef %msg, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %length) #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %msg, i32 noundef %length, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_get_time_date(ptr noundef %fdtv, ptr nocapture noundef writeonly %interval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 87, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %arrayidx14, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 503)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %13 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i38 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %14 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i38, align 1
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %conv.i, 127
  %phi.bo.i = add nuw nsw i32 %and4.i, 8
  %length.0.i = select i1 %tobool.not.i, i32 8, i32 %phi.bo.i
  %arrayidx18 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %length.0.i
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %18 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv19, ptr %interval, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_enter_menu(ptr noundef %fdtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit2 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit2, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx4 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 86, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %arrayidx12, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 3)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %13 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_ca_get_mmi(ptr noundef %fdtv, ptr nocapture noundef writeonly %mmi_object, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avc_data = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26
  %avc_mutex = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %avc_mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %avc_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %avc_data, align 1
  %subunit = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 17
  %1 = ptrtoint ptr %subunit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subunit, align 8
  %3 = or i8 %2, 40
  %subunit4 = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %subunit4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %subunit4, align 1
  %opcode = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opcode, align 1
  %operand = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %operand to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %operand, align 1
  %arrayidx6 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -121, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 87, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 8
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %arrayidx14, align 1
  %arrayidx.i = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 9
  %12 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 503)
  %avc_data_length = getelementptr inbounds %struct.firedtv, ptr %fdtv, i32 0, i32 25
  %13 = ptrtoint ptr %avc_data_length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %avc_data_length, align 8
  %call = tail call fastcc i32 @avc_write(ptr noundef %fdtv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i40 = getelementptr %struct.firedtv, ptr %fdtv, i32 0, i32 26, i32 10
  %14 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i40, align 1
  %conv.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %len, align 4
  %17 = load i8, ptr %arrayidx.i40, align 1
  %conv.i42 = zext i8 %17 to i32
  %and.i = and i32 %conv.i42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %conv.i42, 127
  %phi.bo.i = add nuw nsw i32 %and4.i, 8
  %length.0.i = select i1 %tobool.not.i, i32 8, i32 %phi.bo.i
  %arrayidx19 = getelementptr [509 x i8], ptr %operand, i32 0, i32 %length.0.i
  %18 = call ptr @memcpy(ptr %mmi_object, ptr %arrayidx19, i32 %conv.i)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %avc_mutex) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmp_establish_pp_connection(ptr noundef %fdtv, i32 noundef %plug, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %opcr = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %opcr) #5
  %0 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %opcr, align 4, !annotation !183
  %1 = getelementptr inbounds [2 x i32], ptr %opcr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !183
  %shl = shl i32 %plug, 2
  %conv = sext i32 %shl to i64
  %add = add nsw i64 %conv, 281474708277508
  %call.i = call i32 @fdtv_read(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cmp_read.exit.thread, label %repeat.preheader

repeat.preheader:                                 ; preds = %entry
  %and1.i = shl i32 %channel, 16
  %shl2.i = and i32 %and1.i, 4128768
  %3 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %opcr, align 4
  br label %repeat

cmp_read.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.75) #8
  br label %cleanup

repeat:                                           ; preds = %if.then44.repeat_crit_edge, %repeat.preheader
  %6 = phi i32 [ %.pr, %repeat.preheader ], [ %20, %if.then44.repeat_crit_edge ]
  %attempts.0 = phi i32 [ 0, %repeat.preheader ], [ %inc, %if.then44.repeat_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.end5:                                          ; preds = %repeat
  %9 = and i32 %6, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end5
  %shr.i65 = lshr i32 %6, 16
  %and.i66 = and i32 %shr.i65, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i66, i32 %channel)
  %cmp13.not = icmp eq i32 %and.i66, %channel
  %10 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fdtv, align 8
  br i1 %cmp13.not, label %do.end23, label %do.end18

do.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32) #8
  br label %cleanup

do.end23:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.35) #8
  br label %if.end28

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %and.i67 = and i32 %6, -4193281
  %or.i = or i32 %shl2.i, %and.i67
  %or.i69 = or i32 %or.i, 32768
  %12 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i69, ptr %opcr, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %do.end23
  %13 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opcr, align 4
  %and.i73 = and i32 %14, -1056964609
  %15 = add i32 %14, 16777216
  %shl2.i75 = and i32 %15, 1056964608
  %or.i76 = or i32 %shl2.i75, %and.i73
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i76, ptr %1, align 4
  store i32 %6, ptr %opcr, align 4
  %call.i77 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp.i78 = icmp slt i32 %call.i77, 0
  br i1 %cmp.i78, label %cmp_lock.exit.thread, label %if.end40

cmp_lock.exit.thread:                             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.77) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %20)
  %cmp42.not = icmp eq i32 %6, %20
  br i1 %cmp42.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  %inc = add nuw nsw i32 %attempts.0, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %if.then44.cleanup_crit_edge, label %if.then44.repeat_crit_edge

if.then44.repeat_crit_edge:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %repeat

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.then44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %cmp_lock.exit.thread, %do.end18, %do.end, %cmp_read.exit.thread
  %retval.0 = phi i32 [ -16, %do.end18 ], [ -16, %do.end ], [ %call.i, %cmp_read.exit.thread ], [ %call.i77, %cmp_lock.exit.thread ], [ 0, %if.end40.cleanup_crit_edge ], [ -16, %if.then44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %opcr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cmp_break_pp_connection(ptr noundef %fdtv, i32 noundef %plug, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %opcr = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %opcr) #5
  %0 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %opcr, align 4, !annotation !183
  %1 = getelementptr inbounds [2 x i32], ptr %opcr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !183
  %shl = shl i32 %plug, 2
  %conv = sext i32 %shl to i64
  %add = add nsw i64 %conv, 281474708277508
  %call.i = call i32 @fdtv_read(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %repeat.preheader

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

repeat.preheader:                                 ; preds = %entry
  %3 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool.not = icmp sgt i32 %.pr, -1
  br i1 %tobool.not, label %repeat.preheader.cleanup.sink.split_crit_edge, label %lor.lhs.false

repeat.preheader.cleanup.sink.split_crit_edge:    ; preds = %repeat.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %repeat.preheader
  %4 = and i32 %.pr, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp ne i32 %4, 0
  %shr.i43 = lshr i32 %.pr, 16
  %and.i44 = and i32 %shr.i43, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44, i32 %channel)
  %cmp10.not = icmp eq i32 %and.i44, %channel
  %or.cond51 = select i1 %tobool6.not, i1 %cmp10.not, i1 false
  br i1 %or.cond51, label %if.end13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13:                                         ; preds = %lor.lhs.false
  %and.i47 = and i32 %.pr, -1056964609
  %5 = add nsw i32 %.pr, 1056964608
  %shl2.i = and i32 %5, 1056964608
  %or.i = or i32 %shl2.i, %and.i47
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %1, align 4
  %7 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.pr, ptr %opcr, align 4
  %call.i48 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %if.end13.cleanup.sink.split_crit_edge, label %if.end25

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr, i32 %9)
  %cmp27.not.not = icmp eq i32 %.pr, %9
  br i1 %cmp27.not.not, label %if.end25.cleanup_crit_edge, label %repeat.1

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

repeat.1:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.1 = icmp sgt i32 %9, -1
  br i1 %tobool.not.1, label %repeat.1.cleanup.sink.split_crit_edge, label %lor.lhs.false.1

repeat.1.cleanup.sink.split_crit_edge:            ; preds = %repeat.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false.1:                                  ; preds = %repeat.1
  %10 = and i32 %9, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.1 = icmp ne i32 %10, 0
  %shr.i43.1 = lshr i32 %9, 16
  %and.i44.1 = and i32 %shr.i43.1, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44.1, i32 %channel)
  %cmp10.not.1 = icmp eq i32 %and.i44.1, %channel
  %or.cond51.1 = select i1 %tobool6.not.1, i1 %cmp10.not.1, i1 false
  br i1 %or.cond51.1, label %if.end13.1, label %lor.lhs.false.1.cleanup.sink.split_crit_edge

lor.lhs.false.1.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13.1:                                       ; preds = %lor.lhs.false.1
  %and.i47.1 = and i32 %9, -1056964609
  %11 = add nsw i32 %9, 1056964608
  %shl2.i.1 = and i32 %11, 1056964608
  %or.i.1 = or i32 %shl2.i.1, %and.i47.1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i.1, ptr %1, align 4
  %13 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %opcr, align 4
  %call.i48.1 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.1)
  %cmp.i49.1 = icmp slt i32 %call.i48.1, 0
  br i1 %cmp.i49.1, label %if.end13.1.cleanup.sink.split_crit_edge, label %if.end25.1

if.end13.1.cleanup.sink.split_crit_edge:          ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25.1:                                       ; preds = %if.end13.1
  %14 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %15)
  %cmp27.not.1.not = icmp eq i32 %9, %15
  br i1 %cmp27.not.1.not, label %if.end25.1.cleanup_crit_edge, label %repeat.2

if.end25.1.cleanup_crit_edge:                     ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

repeat.2:                                         ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.2 = icmp sgt i32 %15, -1
  br i1 %tobool.not.2, label %repeat.2.cleanup.sink.split_crit_edge, label %lor.lhs.false.2

repeat.2.cleanup.sink.split_crit_edge:            ; preds = %repeat.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false.2:                                  ; preds = %repeat.2
  %16 = and i32 %15, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.2 = icmp ne i32 %16, 0
  %shr.i43.2 = lshr i32 %15, 16
  %and.i44.2 = and i32 %shr.i43.2, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44.2, i32 %channel)
  %cmp10.not.2 = icmp eq i32 %and.i44.2, %channel
  %or.cond51.2 = select i1 %tobool6.not.2, i1 %cmp10.not.2, i1 false
  br i1 %or.cond51.2, label %if.end13.2, label %lor.lhs.false.2.cleanup.sink.split_crit_edge

lor.lhs.false.2.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13.2:                                       ; preds = %lor.lhs.false.2
  %and.i47.2 = and i32 %15, -1056964609
  %17 = add nsw i32 %15, 1056964608
  %shl2.i.2 = and i32 %17, 1056964608
  %or.i.2 = or i32 %shl2.i.2, %and.i47.2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.2, ptr %1, align 4
  %19 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %opcr, align 4
  %call.i48.2 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.2)
  %cmp.i49.2 = icmp slt i32 %call.i48.2, 0
  br i1 %cmp.i49.2, label %if.end13.2.cleanup.sink.split_crit_edge, label %if.end25.2

if.end13.2.cleanup.sink.split_crit_edge:          ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25.2:                                       ; preds = %if.end13.2
  %20 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp27.not.2.not = icmp eq i32 %15, %21
  br i1 %cmp27.not.2.not, label %if.end25.2.cleanup_crit_edge, label %repeat.3

if.end25.2.cleanup_crit_edge:                     ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

repeat.3:                                         ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool.not.3 = icmp sgt i32 %21, -1
  br i1 %tobool.not.3, label %repeat.3.cleanup.sink.split_crit_edge, label %lor.lhs.false.3

repeat.3.cleanup.sink.split_crit_edge:            ; preds = %repeat.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false.3:                                  ; preds = %repeat.3
  %22 = and i32 %21, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not.3 = icmp ne i32 %22, 0
  %shr.i43.3 = lshr i32 %21, 16
  %and.i44.3 = and i32 %shr.i43.3, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44.3, i32 %channel)
  %cmp10.not.3 = icmp eq i32 %and.i44.3, %channel
  %or.cond51.3 = select i1 %tobool6.not.3, i1 %cmp10.not.3, i1 false
  br i1 %or.cond51.3, label %if.end13.3, label %lor.lhs.false.3.cleanup.sink.split_crit_edge

lor.lhs.false.3.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13.3:                                       ; preds = %lor.lhs.false.3
  %and.i47.3 = and i32 %21, -1056964609
  %23 = add nsw i32 %21, 1056964608
  %shl2.i.3 = and i32 %23, 1056964608
  %or.i.3 = or i32 %shl2.i.3, %and.i47.3
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.3, ptr %1, align 4
  %25 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %opcr, align 4
  %call.i48.3 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.3)
  %cmp.i49.3 = icmp slt i32 %call.i48.3, 0
  br i1 %cmp.i49.3, label %if.end13.3.cleanup.sink.split_crit_edge, label %if.end25.3

if.end13.3.cleanup.sink.split_crit_edge:          ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25.3:                                       ; preds = %if.end13.3
  %26 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %27)
  %cmp27.not.3.not = icmp eq i32 %21, %27
  br i1 %cmp27.not.3.not, label %if.end25.3.cleanup_crit_edge, label %repeat.4

if.end25.3.cleanup_crit_edge:                     ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

repeat.4:                                         ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool.not.4 = icmp sgt i32 %27, -1
  br i1 %tobool.not.4, label %repeat.4.cleanup.sink.split_crit_edge, label %lor.lhs.false.4

repeat.4.cleanup.sink.split_crit_edge:            ; preds = %repeat.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false.4:                                  ; preds = %repeat.4
  %28 = and i32 %27, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not.4 = icmp ne i32 %28, 0
  %shr.i43.4 = lshr i32 %27, 16
  %and.i44.4 = and i32 %shr.i43.4, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44.4, i32 %channel)
  %cmp10.not.4 = icmp eq i32 %and.i44.4, %channel
  %or.cond51.4 = select i1 %tobool6.not.4, i1 %cmp10.not.4, i1 false
  br i1 %or.cond51.4, label %if.end13.4, label %lor.lhs.false.4.cleanup.sink.split_crit_edge

lor.lhs.false.4.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13.4:                                       ; preds = %lor.lhs.false.4
  %and.i47.4 = and i32 %27, -1056964609
  %29 = add nsw i32 %27, 1056964608
  %shl2.i.4 = and i32 %29, 1056964608
  %or.i.4 = or i32 %shl2.i.4, %and.i47.4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i.4, ptr %1, align 4
  %31 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %opcr, align 4
  %call.i48.4 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.4)
  %cmp.i49.4 = icmp slt i32 %call.i48.4, 0
  br i1 %cmp.i49.4, label %if.end13.4.cleanup.sink.split_crit_edge, label %if.end25.4

if.end13.4.cleanup.sink.split_crit_edge:          ; preds = %if.end13.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end25.4:                                       ; preds = %if.end13.4
  %32 = ptrtoint ptr %opcr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %opcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %33)
  %cmp27.not.4.not = icmp eq i32 %27, %33
  br i1 %cmp27.not.4.not, label %if.end25.4.cleanup_crit_edge, label %repeat.5

if.end25.4.cleanup_crit_edge:                     ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

repeat.5:                                         ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool.not.5 = icmp sgt i32 %33, -1
  br i1 %tobool.not.5, label %repeat.5.cleanup.sink.split_crit_edge, label %lor.lhs.false.5

repeat.5.cleanup.sink.split_crit_edge:            ; preds = %repeat.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false.5:                                  ; preds = %repeat.5
  %34 = and i32 %33, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.5 = icmp ne i32 %34, 0
  %shr.i43.5 = lshr i32 %33, 16
  %and.i44.5 = and i32 %shr.i43.5, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44.5, i32 %channel)
  %cmp10.not.5 = icmp eq i32 %and.i44.5, %channel
  %or.cond51.5 = select i1 %tobool6.not.5, i1 %cmp10.not.5, i1 false
  br i1 %or.cond51.5, label %if.end13.5, label %lor.lhs.false.5.cleanup.sink.split_crit_edge

lor.lhs.false.5.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13.5:                                       ; preds = %lor.lhs.false.5
  %and.i47.5 = and i32 %33, -1056964609
  %35 = add nsw i32 %33, 1056964608
  %shl2.i.5 = and i32 %35, 1056964608
  %or.i.5 = or i32 %shl2.i.5, %and.i47.5
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.5, ptr %1, align 4
  %37 = ptrtoint ptr %opcr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %opcr, align 4
  %call.i48.5 = call i32 @fdtv_lock(ptr noundef %fdtv, i64 noundef %add, ptr noundef nonnull %opcr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.5)
  %cmp.i49.5 = icmp slt i32 %call.i48.5, 0
  br i1 %cmp.i49.5, label %if.end13.5.cleanup.sink.split_crit_edge, label %if.end13.5.cleanup_crit_edge

if.end13.5.cleanup_crit_edge:                     ; preds = %if.end13.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.5.cleanup.sink.split_crit_edge:          ; preds = %if.end13.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13.5.cleanup.sink.split_crit_edge, %lor.lhs.false.5.cleanup.sink.split_crit_edge, %repeat.5.cleanup.sink.split_crit_edge, %if.end13.4.cleanup.sink.split_crit_edge, %lor.lhs.false.4.cleanup.sink.split_crit_edge, %repeat.4.cleanup.sink.split_crit_edge, %if.end13.3.cleanup.sink.split_crit_edge, %lor.lhs.false.3.cleanup.sink.split_crit_edge, %repeat.3.cleanup.sink.split_crit_edge, %if.end13.2.cleanup.sink.split_crit_edge, %lor.lhs.false.2.cleanup.sink.split_crit_edge, %repeat.2.cleanup.sink.split_crit_edge, %if.end13.1.cleanup.sink.split_crit_edge, %lor.lhs.false.1.cleanup.sink.split_crit_edge, %repeat.1.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %repeat.preheader.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.77.sink = phi ptr [ @.str.75, %entry.cleanup.sink.split_crit_edge ], [ @.str.37, %repeat.preheader.cleanup.sink.split_crit_edge ], [ @.str.37, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end13.cleanup.sink.split_crit_edge ], [ @.str.37, %repeat.1.cleanup.sink.split_crit_edge ], [ @.str.37, %lor.lhs.false.1.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end13.1.cleanup.sink.split_crit_edge ], [ @.str.37, %repeat.2.cleanup.sink.split_crit_edge ], [ @.str.37, %lor.lhs.false.2.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end13.2.cleanup.sink.split_crit_edge ], [ @.str.37, %repeat.3.cleanup.sink.split_crit_edge ], [ @.str.37, %lor.lhs.false.3.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end13.3.cleanup.sink.split_crit_edge ], [ @.str.37, %repeat.4.cleanup.sink.split_crit_edge ], [ @.str.37, %lor.lhs.false.4.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end13.4.cleanup.sink.split_crit_edge ], [ @.str.37, %repeat.5.cleanup.sink.split_crit_edge ], [ @.str.37, %lor.lhs.false.5.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end13.5.cleanup.sink.split_crit_edge ]
  %38 = ptrtoint ptr %fdtv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fdtv, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull %.str.77.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.5.cleanup_crit_edge, %if.end25.4.cleanup_crit_edge, %if.end25.3.cleanup_crit_edge, %if.end25.2.cleanup_crit_edge, %if.end25.1.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %opcr) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_write(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdtv_lock(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !159, !161, !163, !164, !165, !166, !168, !169, !170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 116, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype381, !1, !"__UNIQUE_ID_debugtype381", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug382, !4, !"__UNIQUE_ID_debug382", i1 false, i1 false}
!4 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 117, i32 1}
!5 = !{ptr @__param_fake_ca_system_ids, !6, !"__param_fake_ca_system_ids", i1 false, i1 false}
!6 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 139, i32 1}
!7 = !{ptr @__UNIQUE_ID_fake_ca_system_idstype383, !6, !"__UNIQUE_ID_fake_ca_system_idstype383", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_fake_ca_system_ids384, !9, !"__UNIQUE_ID_fake_ca_system_ids384", i1 false, i1 false}
!9 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 140, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 289, i32 4}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @avc_recv._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @avc_recv._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 296, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @avc_recv._entry.5, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @avc_recv._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 738, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @avc_identify_subunit._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @avc_identify_subunit._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 777, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @avc_tuner_status._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @avc_tuner_status._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 784, i32 3}
!35 = !{ptr @avc_tuner_status._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @avc_tuner_status._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 866, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @avc_lnb_control._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @avc_lnb_control._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1114, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @avc_ca_pmt._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @avc_ca_pmt._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1156, i32 4}
!49 = !{ptr @avc_ca_pmt._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @avc_ca_pmt._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1190, i32 5}
!53 = !{ptr @avc_ca_pmt._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @avc_ca_pmt._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1225, i32 3}
!57 = !{ptr @avc_ca_pmt._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @avc_ca_pmt._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1390, i32 3}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cmp_establish_pp_connection._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cmp_establish_pp_connection._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1398, i32 4}
!66 = !{ptr @cmp_establish_pp_connection._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cmp_establish_pp_connection._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1401, i32 3}
!70 = !{ptr @cmp_establish_pp_connection._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cmp_establish_pp_connection._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1449, i32 3}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @cmp_break_pp_connection._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @cmp_break_pp_connection._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @avc_debug, !78, !"avc_debug", i1 false, i1 false}
!78 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 115, i32 12}
!79 = !{ptr @num_fake_ca_system_ids, !80, !"num_fake_ca_system_ids", i1 false, i1 false}
!80 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 137, i32 21}
!81 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!82 = !{ptr @__param_str_fake_ca_system_ids, !6, !"__param_str_fake_ca_system_ids", i1 false, i1 false}
!83 = !{ptr @__param_arr_fake_ca_system_ids, !6, !"__param_arr_fake_ca_system_ids", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 207, i32 31}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 207, i32 43}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 214, i32 3}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @debug_fcp._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @debug_fcp._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 168, i32 5}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 171, i32 5}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 173, i32 38}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 175, i32 10}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 182, i32 10}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 187, i32 5}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 189, i32 46}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 191, i32 44}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 193, i32 45}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 195, i32 42}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 197, i32 42}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 148, i32 11}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 148, i32 31}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 149, i32 11}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 149, i32 39}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 150, i32 11}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 150, i32 38}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 151, i32 11}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 151, i32 32}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 152, i32 11}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 152, i32 36}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 153, i32 11}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 153, i32 31}
!139 = !{ptr @debug_fcp_ctype.ctypes, !140, !"ctypes", i1 false, i1 false}
!140 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 147, i32 21}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 157, i32 21}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 243, i32 4}
!145 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @avc_write._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @avc_write._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 257, i32 2}
!150 = !{ptr @avc_write._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @avc_write._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @fake_ca_system_ids, !153, !"fake_ca_system_ids", i1 false, i1 false}
!153 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 138, i32 12}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 225, i32 2}
!156 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @debug_pmt._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @debug_pmt._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 226, i32 28}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1341, i32 3}
!163 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @cmp_read._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @cmp_read._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/firewire/firedtv-avc.c", i32 1352, i32 3}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @cmp_lock._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @cmp_lock._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{i8 0, i8 2}
!182 = !{i64 2157805424, i64 2157805925, i64 2157805461, i64 2157805517, i64 2157805551, i64 2157805575, i64 2157805616, i64 2157805637, i64 2157805665, i64 2157805699}
!183 = !{!"auto-init"}
