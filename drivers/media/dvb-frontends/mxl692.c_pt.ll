; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mxl692.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mxl692.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.mxl692_dev = type { %struct.dvb_frontend, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32 }
%struct.mxl692_config = type { i8, i8, ptr }
%struct.MXL_EAGLE_DEV_XTAL_T = type { i8, i8, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.MXL_EAGLE_MPEGOUT_PARAMS_T = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.MXL_EAGLE_MPEG_PAD_DRIVE_T }
%struct.MXL_EAGLE_MPEG_PAD_DRIVE_T = type { i8, i8, i8, i8 }
%struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T = type <{ i8, i8, i8, i8, i8, i32, i32 }>
%struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T = type <{ i32, i8, i8 }>
%struct.MXL_EAGLE_ATSC_DEMOD_STATUS_T = type <{ i16, i16, i32, i8, i8, i8 }>
%struct.MXL_EAGLE_QAM_DEMOD_STATUS_T = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.MXL_EAGLE_DEV_VER_T = type { i8, [5 x i8], [5 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.MXL_EAGLE_HOST_MSG_HEADER_T = type { i8, i8, i8, i8, i32 }
%struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T = type { i32, i32, i32 }

@__initcall__kmod_mxl692__335_1366_mxl692_driver_init6 = internal global ptr @mxl692_driver_init, section ".initcall6.init", align 4
@mxl692_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mxl692_probe, ptr @mxl692_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mxl692_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mxl692_driver_exit = internal global ptr @mxl692_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author336 = internal constant [48 x i8] c"mxl692.author=Brad Love <brad@nextdimension.cc>\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [61 x i8] c"mxl692.description=MaxLinear MxL692 demodulator/tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware338 = internal constant [36 x i8] c"mxl692.firmware=dvb-demod-mxl692.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [47 x i8] c"mxl692.file=drivers/media/dvb-frontends/mxl692\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [19 x i8] c"mxl692.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mxl692\00", [25 x i8] zeroinitializer }, align 32
@mxl692_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mxl692\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mxl692_probe.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxl692_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/mxl692.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kzalloc() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@mxl692_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"MaxLinear MxL692 VSB tuner-demodulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2097152 }, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @mxl692_init, ptr @mxl692_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxl692_set_frontend, ptr null, ptr @mxl692_get_frontend, ptr @mxl692_read_status, ptr null, ptr null, ptr @mxl692_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@mxl692_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->i2c_lock\00", [17 x i8] zeroinitializer }, align 32
@mxl692_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MaxLinear mxl692 successfully attached\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxl692_probe._entry_ptr = internal global ptr @mxl692_probe._entry, section ".printk_index", align 4
@mxl692_probe.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed %d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mxl692_init.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mxl692_init\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb-demod-mxl692.fw\00", [44 x i8] zeroinitializer }, align 32
@mxl692_init.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware missing? %s\0A\00", [42 x i8] zeroinitializer }, align 32
@mxl692_init.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"err %d\0A\00", [24 x i8] zeroinitializer }, align 32
@mxl692_reset.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.10, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxl692_reset\00", [19 x i8] zeroinitializer }, align 32
@mxl692_reset.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.13, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl692_memwrite\00", [16 x i8] zeroinitializer }, align 32
@mxl692_memwrite.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.13, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_i2c_write.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxl692_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c write error!\0A\00", [46 x i8] zeroinitializer }, align 32
@mxl692_memread.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.13, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl692_memread\00", [17 x i8] zeroinitializer }, align 32
@mxl692_i2c_read.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl692_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c read error!\0A\00", [47 x i8] zeroinitializer }, align 32
@mxl692_config_regulators.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.10, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxl692_config_regulators\00", [39 x i8] zeroinitializer }, align 32
@mxl692_config_regulators.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.13, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_config_xtal.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.10, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxl692_config_xtal\00", [45 x i8] zeroinitializer }, align 32
@mxl692_config_xtal.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.13, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_fwdownload.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.10, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxl692_fwdownload\00", [46 x i8] zeroinitializer }, align 32
@mxl692_fwdownload.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.13, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_validate_fw_header.fw_hdr = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M1\10\02@\00\00\80", [24 x i8] zeroinitializer }, align 32
@mxl692_validate_fw_header.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl692_validate_fw_header\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failed\0A\00", [24 x i8] zeroinitializer }, align 32
@mxl692_write_fw_block.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.13, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxl692_write_fw_block\00", [42 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxl692_i2c_writeread\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout=%d   status=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx header status code: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Something failed seq=%s  opcode=%s  pSize=%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"X\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.34, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rx_header->payloadSize=%d   rx_payload_expected=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.35, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx checksum failure\0A\00", [43 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.36, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no rx payload?!?\0A\00", [46 x i8] zeroinitializer }, align 32
@mxl692_i2c_writeread.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.13, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxl692_opwrite\00", [17 x i8] zeroinitializer }, align 32
@mxl692_opwrite.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"opcode %s  err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@MXL_EAGLE_OPCODE_STRING = internal constant { [40 x ptr], [32 x i8] } { [40 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid opcode\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DEVICE_DEMODULATOR_TYPE_SET\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DEVICE_MPEG_OUT_PARAMS_SET\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DEVICE_POWERMODE_SET\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DEVICE_GPIO_DIRECTION_SET\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DEVICE_GPO_LEVEL_SET\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DEVICE_INTR_MASK_SET\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEVICE_IO_MUX_SET\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEVICE_VERSION_GET\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEVICE_STATUS_GET\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DEVICE_GPI_LEVEL_GET\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TUNER_CHANNEL_TUNE_SET\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TUNER_LOCK_STATUS_GET\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TUNER_AGC_STATUS_GET\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATSC_INIT_SET\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATSC_ACQUIRE_CARRIER_SET\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ATSC_STATUS_GET\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ATSC_ERROR_COUNTERS_GET\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ATSC_EQUALIZER_FILTER_DFE_TAPS_GET\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ATSC_EQUALIZER_FILTER_FFE_TAPS_GET\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QAM_PARAMS_SET\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QAM_RESTART_SET\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QAM_STATUS_GET\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"QAM_ERROR_COUNTERS_GET\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"QAM_CONSTELLATION_VALUE_GET\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"QAM_EQUALIZER_FILTER_FFE_GET\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"QAM_EQUALIZER_FILTER_SPUR_START_GET\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"QAM_EQUALIZER_FILTER_SPUR_END_GET\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"QAM_EQUALIZER_FILTER_DFE_TAPS_NUMBER_GET\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"QAM_EQUALIZER_FILTER_DFE_START_GET\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"QAM_EQUALIZER_FILTER_DFE_MIDDLE_GET\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"QAM_EQUALIZER_FILTER_DFE_END_GET\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OOB_PARAMS_SET\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OOB_RESTART_SET\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OOB_ERROR_COUNTERS_GET\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OOB_STATUS_GET\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMA_INIT_SET\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMA_PARAMS_SET\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SMA_TRANSMIT_SET\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMA_RECEIVE_GET\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INTERNAL\00", [23 x i8] zeroinitializer }, align 32
@mxl692_opread.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxl692_opread\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ix=%d   size=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mxl692_opread.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.13, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_get_versions.chip_id = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"691\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"248\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"692\00", [28 x i8] zeroinitializer }, align 32
@mxl692_get_versions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MxL692_DEMOD Chip ID: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl692_get_versions\00", [44 x i8] zeroinitializer }, align 32
@mxl692_get_versions._entry_ptr = internal global ptr @mxl692_get_versions._entry, section ".printk_index", align 4
@mxl692_get_versions._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 645, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MxL692_DEMOD FW Version: %d.%d.%d.%d_RC%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mxl692_get_versions._entry_ptr.90 = internal global ptr @mxl692_get_versions._entry.88, section ".printk_index", align 4
@mxl692_powermode.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxl692_powermode\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@mxl692_powermode.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.13, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_set_frontend.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.10, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl692_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@mxl692_set_frontend.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"already set up\0A\00", [16 x i8] zeroinitializer }, align 32
@mxl692_set_frontend.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.97, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DEVICE_DEMODULATOR_TYPE_SET...FAIL  err 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@mxl692_set_frontend.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.98, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" Tuning Freq: %d %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATSC\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QAM\00", [28 x i8] zeroinitializer }, align 32
@mxl692_set_frontend.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.13, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_read_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.10, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxl692_read_status\00", [45 x i8] zeroinitializer }, align 32
@mxl692_read_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.13, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_read_ber_ucb.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.10, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl692_read_ber_ucb\00", [44 x i8] zeroinitializer }, align 32
@mxl692_read_ber_ucb.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%llu   %llu\0A\00", [19 x i8] zeroinitializer }, align 32
@mxl692_read_ber_ucb.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.13, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxl692_read_snr.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.10, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl692_read_snr\00", [16 x i8] zeroinitializer }, align 32
@mxl692_read_snr.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.13, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"mxl692_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1357, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1359, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"mxl692_id_table\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1351, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1321, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"mxl692_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1292, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1329, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1332, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1336, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 862, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 888, i32 39 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 890, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 931, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 655, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 310, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 46, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 366, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 63, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 682, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 718, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 580, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"fw_hdr\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 218, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 243, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 295, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 506, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 513, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 521, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 526, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 542, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 551, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 390, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 407, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [24 x i8] c"MXL_EAGLE_OPCODE_STRING\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 107, i32 27 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 376, i32 9 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 109, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 110, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 111, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 112, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 113, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 114, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 115, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 116, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 117, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 118, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 121, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 122, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 123, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 126, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 127, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 128, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 129, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 130, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 131, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 134, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 135, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 136, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 137, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 138, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 139, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 140, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 141, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 142, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 143, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 144, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 145, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 148, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 149, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 150, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 151, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 154, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 155, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 156, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 157, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/mxl692_defs.h\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 160, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 428, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant [8 x i8] c"chip_id\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 626, i32 28 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 626, i32 41 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 626, i32 48 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 626, i32 55 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 626, i32 62 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 636, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 639, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 834, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 958, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 975, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 990, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1058, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1227, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1172, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1199, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private constant [40 x i8] c"../drivers/media/dvb-frontends/mxl692.c\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1123, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_firmware338, ptr @__UNIQUE_ID_license340, ptr @__exitcall_mxl692_driver_exit, ptr @__initcall__kmod_mxl692__335_1366_mxl692_driver_init6, ptr @mxl692_driver_exit, ptr @mxl692_get_versions._entry, ptr @mxl692_get_versions._entry.88, ptr @mxl692_get_versions._entry_ptr, ptr @mxl692_get_versions._entry_ptr.90, ptr @mxl692_probe._entry, ptr @mxl692_probe._entry_ptr, ptr @mxl692_driver, ptr @.str, ptr @mxl692_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mxl692_ops, ptr @mxl692_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mxl692_validate_fw_header.fw_hdr, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @MXL_EAGLE_OPCODE_STRING, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @mxl692_get_versions.chip_id, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_validate_fw_header.fw_hdr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MXL_EAGLE_OPCODE_STRING to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_get_versions.chip_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_get_versions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl692_get_versions._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mxl692_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxl692_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @mxl692_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1160) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_probe.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_probe, %if.then6)) #9
          to label %do.body19 [label %if.then6], !srcloc !284

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_probe.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.body19

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %ops, ptr @mxl692_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %i2c_client, align 8
  %fe11 = getelementptr inbounds %struct.mxl692_config, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fe11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe11, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %7, align 4
  %i2c_lock = getelementptr inbounds %struct.mxl692_dev, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mxl692_probe.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  br label %cleanup

do.body19:                                        ; preds = %if.then6, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_probe.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_probe, %if.then31)) #9
          to label %cleanup [label %if.then31], !srcloc !284

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_probe.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef -12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %if.then31 ], [ -19, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_remove(ptr nocapture noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %demodulator_priv, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_init(ptr nocapture noundef %fe) #2 align 64 {
entry:
  %mode.i = alloca i8, align 1
  %firmware = alloca ptr, align 4
  %xtal_config = alloca %struct.MXL_EAGLE_DEV_XTAL_T, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #9
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %xtal_config) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_init.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 4
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_init.__UNIQUE_ID_ddebug318, ptr noundef %dev4, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %init_done = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %init_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %init_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.warm_crit_edge

do.end.warm_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %warm

if.end7:                                          ; preds = %do.end
  %seqnum = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %seqnum, align 4
  %call8 = tail call fastcc i32 @mxl692_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.body75_crit_edge

if.end7.do.body75_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

if.end11:                                         ; preds = %if.end7
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #9
  %call12 = tail call fastcc i32 @mxl692_config_regulators(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.do.body75_crit_edge

if.end11.do.body75_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

if.end15:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %xtal_config to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 26, ptr %xtal_config, align 1
  %clk_out_div_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %xtal_config, i32 0, i32 2
  %11 = ptrtoint ptr %clk_out_div_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %clk_out_div_enable, align 1
  %clk_out_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %xtal_config, i32 0, i32 1
  %12 = ptrtoint ptr %clk_out_enable to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %clk_out_enable, align 1
  %xtal_calibration_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %xtal_config, i32 0, i32 4
  %13 = ptrtoint ptr %xtal_calibration_enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %xtal_calibration_enable, align 1
  %xtal_sharing_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %xtal_config, i32 0, i32 3
  %14 = ptrtoint ptr %xtal_sharing_enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %xtal_sharing_enable, align 1
  %call16 = call fastcc i32 @mxl692_config_xtal(ptr noundef %1, ptr noundef nonnull %xtal_config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.do.body75_crit_edge

if.end15.do.body75_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

if.end19:                                         ; preds = %if.end15
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call21 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.11, ptr noundef %dev20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end42, label %do.body24

do.body24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_init.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_init, %if.then36)) #9
          to label %do.body75 [label %if.then36], !srcloc !284

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client, align 4
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_init.__UNIQUE_ID_ddebug319, ptr noundef %dev38, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #9
  br label %do.body75

if.end42:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %firmware, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %call43 = call fastcc i32 @mxl692_fwdownload(ptr noundef %1, ptr noundef %20, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %23 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %24) #9
  br i1 %tobool44.not, label %if.end46, label %if.end42.do.body75_crit_edge

if.end42.do.body75_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

if.end46:                                         ; preds = %if.end42
  %call47 = call fastcc i32 @mxl692_get_versions(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.do.body75_crit_edge

if.end46.do.body75_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %power_mode = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %power_mode, align 4
  br label %warm

warm:                                             ; preds = %if.end50, %do.end.warm_crit_edge
  %power_mode51 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %power_mode51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_mode51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.not = icmp eq i32 %27, 1
  br i1 %cmp.not, label %warm.if.end57_crit_edge, label %if.then52

warm.if.end57_crit_edge:                          ; preds = %warm
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then52:                                        ; preds = %warm
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode.i) #9
  %28 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %mode.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_powermode.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_init, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !284

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_client, align 4
  %dev3.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_powermode.__UNIQUE_ID_ddebug316, ptr noundef %dev3.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.94) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then52
  %call5.i = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 2, ptr noundef nonnull %mode.i, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end56, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_powermode.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_init, %if.then20.i)) #9
          to label %mxl692_powermode.exit [label %if.then20.i], !srcloc !284

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_client, align 4
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_powermode.__UNIQUE_ID_ddebug317, ptr noundef %dev22.i, ptr noundef nonnull @.str.13, i32 noundef %call5.i) #9
  br label %mxl692_powermode.exit

mxl692_powermode.exit:                            ; preds = %if.then20.i, %do.body8.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i) #9
  br label %do.body75

if.end56:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %power_mode51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %power_mode51, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i) #9
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #9
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %warm.if.end57_crit_edge
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %34 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %cnr, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %stat, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %36 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %post_bit_error, align 4
  %stat61 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %37 = ptrtoint ptr %stat61 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %stat61, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %38 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %post_bit_count, align 1
  %stat66 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %39 = ptrtoint ptr %stat66 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %stat66, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %40 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %block_error, align 2
  %stat71 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %41 = ptrtoint ptr %stat71 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %stat71, align 1
  %42 = ptrtoint ptr %init_done to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %init_done, align 4
  br label %cleanup

do.body75:                                        ; preds = %mxl692_powermode.exit, %if.end46.do.body75_crit_edge, %if.end42.do.body75_crit_edge, %if.then36, %do.body24, %if.end15.do.body75_crit_edge, %if.end11.do.body75_crit_edge, %if.end7.do.body75_crit_edge
  %status.0 = phi i32 [ %call5.i, %mxl692_powermode.exit ], [ %call8, %if.end7.do.body75_crit_edge ], [ %call12, %if.end11.do.body75_crit_edge ], [ %call16, %if.end15.do.body75_crit_edge ], [ %call21, %if.then36 ], [ %call47, %if.end46.do.body75_crit_edge ], [ %call21, %do.body24 ], [ %call43, %if.end42.do.body75_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_init.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_init, %if.then87)) #9
          to label %cleanup [label %if.then87], !srcloc !284

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_client, align 4
  %dev89 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_init.__UNIQUE_ID_ddebug320, ptr noundef %dev89, ptr noundef nonnull @.str.13, i32 noundef %status.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %do.body75, %if.end57
  %retval.0 = phi i32 [ 0, %if.end57 ], [ %status.0, %if.then87 ], [ %status.0, %do.body75 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %xtal_config) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %power_mode = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode.i) #9
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mode.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_powermode.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_sleep, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !284

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %dev3.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_powermode.__UNIQUE_ID_ddebug316, ptr noundef %dev3.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %call5.i = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 2, ptr noundef nonnull %mode.i, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end26.i, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_powermode.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_sleep, %if.then20.i)) #9
          to label %mxl692_powermode.exit [label %if.then20.i], !srcloc !284

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client21.i = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client21.i, align 4
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_powermode.__UNIQUE_ID_ddebug317, ptr noundef %dev22.i, ptr noundef nonnull @.str.13, i32 noundef %call5.i) #9
  br label %mxl692_powermode.exit

if.end26.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %power_mode, align 4
  br label %mxl692_powermode.exit

mxl692_powermode.exit:                            ; preds = %if.end26.i, %if.then20.i, %do.body8.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i) #9
  br label %if.end

if.end:                                           ; preds = %mxl692_powermode.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_set_frontend(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %mpeg_params = alloca %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, align 1
  %qam_params = alloca %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, align 1
  %tuner_params = alloca %struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T, align 4
  %op_param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mpeg_params) #9
  %2 = call ptr @memset(ptr %mpeg_params, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %qam_params) #9
  %3 = call ptr @memset(ptr %qam_params, i32 0, i32 13)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tuner_params) #9
  %4 = call ptr @memset(ptr %tuner_params, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %op_param) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_set_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_set_frontend.__UNIQUE_ID_ddebug321, ptr noundef %dev3, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modulation, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end.cleanup_crit_edge [
    i32 7, label %do.end.sw.epilog_crit_edge
    i32 6, label %do.end.sw.bb4_crit_edge
    i32 3, label %do.end.sw.bb4_crit_edge204
    i32 4, label %do.end.sw.bb4_crit_edge205
    i32 5, label %do.end.sw.bb4_crit_edge206
  ]

do.end.sw.bb4_crit_edge206:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

do.end.sw.bb4_crit_edge205:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

do.end.sw.bb4_crit_edge204:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

do.end.sw.bb4_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %do.end.sw.bb4_crit_edge, %do.end.sw.bb4_crit_edge204, %do.end.sw.bb4_crit_edge205, %do.end.sw.bb4_crit_edge206
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %do.end.sw.epilog_crit_edge
  %cmp96 = phi ptr [ @.str.100, %sw.bb4 ], [ @.str.99, %do.end.sw.epilog_crit_edge ]
  %switch = phi i1 [ false, %sw.bb4 ], [ true, %do.end.sw.epilog_crit_edge ]
  %demod_type.0 = phi i32 [ 0, %sw.bb4 ], [ 2, %do.end.sw.epilog_crit_edge ]
  %current_frequency = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_frequency, align 4
  %12 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end26_crit_edge

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %sw.epilog
  %demod_type5 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %demod_type5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %demod_type5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %demod_type.0)
  %cmp6 = icmp eq i32 %15, %demod_type.0
  br i1 %cmp6, label %do.body8, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.body8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_set_frontend, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !284

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client21 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %i2c_client21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client21, align 4
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_set_frontend.__UNIQUE_ID_ddebug322, ptr noundef %dev22, ptr noundef nonnull @.str.96) #9
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %sw.epilog.if.end26_crit_edge
  %18 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %current_frequency, align 4
  %demod_type28 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %demod_type28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %demod_type28, align 4
  %conv = trunc i32 %demod_type.0 to i8
  %20 = ptrtoint ptr %op_param to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %op_param, align 1
  %call29 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %op_param, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end50, label %do.body32

do.body32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_set_frontend, %if.then44)) #9
          to label %do.body120 [label %if.then44], !srcloc !284

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client45 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %i2c_client45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client45, align 4
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_set_frontend.__UNIQUE_ID_ddebug323, ptr noundef %dev46, ptr noundef nonnull @.str.97, i32 noundef %call29) #9
  br label %do.body120

if.end50:                                         ; preds = %if.end26
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #9
  %23 = ptrtoint ptr %mpeg_params to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %mpeg_params, align 1
  %msb_first = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 1
  %24 = ptrtoint ptr %msb_first to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %msb_first, align 1
  %mpeg_sync_pulse_width = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 2
  %25 = ptrtoint ptr %mpeg_sync_pulse_width to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %mpeg_sync_pulse_width, align 1
  %mpeg_valid_pol = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 3
  %26 = ptrtoint ptr %mpeg_valid_pol to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %mpeg_valid_pol, align 1
  %mpeg_sync_pol = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 4
  %27 = ptrtoint ptr %mpeg_sync_pol to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %mpeg_sync_pol, align 1
  %mpeg_clk_pol = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 5
  %28 = ptrtoint ptr %mpeg_clk_pol to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %mpeg_clk_pol, align 1
  %mpeg3wire_mode_enable = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 6
  %29 = ptrtoint ptr %mpeg3wire_mode_enable to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mpeg3wire_mode_enable, align 1
  %mpeg_clk_freq = getelementptr inbounds %struct.MXL_EAGLE_MPEGOUT_PARAMS_T, ptr %mpeg_params, i32 0, i32 7
  %30 = ptrtoint ptr %mpeg_clk_freq to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %mpeg_clk_freq, align 1
  %call52 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %mpeg_params, i8 noundef zeroext 12, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %switch, label %sw.bb51, label %if.end61

sw.bb51:                                          ; preds = %if.end50
  br i1 %tobool53.not, label %sw.bb51.sw.epilog78_crit_edge, label %sw.bb51.do.body120_crit_edge

sw.bb51.do.body120_crit_edge:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

sw.bb51.sw.epilog78_crit_edge:                    ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog78

if.end61:                                         ; preds = %if.end50
  br i1 %tobool53.not, label %if.end65, label %if.end61.do.body120_crit_edge

if.end61.do.body120_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

if.end65:                                         ; preds = %if.end61
  %31 = ptrtoint ptr %qam_params to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %qam_params, align 1
  %qam_type = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %qam_params, i32 0, i32 1
  %32 = ptrtoint ptr %qam_type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 7, ptr %qam_type, align 1
  %iq_flip = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %qam_params, i32 0, i32 2
  %33 = ptrtoint ptr %iq_flip to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %iq_flip, align 1
  %34 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp68 = icmp eq i32 %35, 3
  %spec.select = select i1 %cmp68, i32 5057000, i32 5361000
  %36 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %qam_params, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %spec.select, ptr %36, align 1
  %symbol_rate_256qam_hz = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_PARAMS_T, ptr %qam_params, i32 0, i32 6
  %38 = ptrtoint ptr %symbol_rate_256qam_hz to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 5361000, ptr %symbol_rate_256qam_hz, align 1
  %call73 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 19, ptr noundef nonnull %qam_params, i8 noundef zeroext 13, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end65.sw.epilog78_crit_edge, label %if.end65.do.body120_crit_edge

if.end65.do.body120_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

if.end65.sw.epilog78_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %if.end65.sw.epilog78_crit_edge, %sw.bb51.sw.epilog78_crit_edge
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #9
  %39 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dtv_property_cache, align 4
  %41 = ptrtoint ptr %tuner_params to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tuner_params, align 4
  %bandwidth = getelementptr inbounds %struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T, ptr %tuner_params, i32 0, i32 2
  %42 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %bandwidth, align 1
  %tune_mode = getelementptr inbounds %struct.MXL_EAGLE_TUNER_CHANNEL_PARAMS_T, ptr %tuner_params, i32 0, i32 1
  %43 = ptrtoint ptr %tune_mode to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %tune_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_set_frontend, %if.then92)) #9
          to label %do.end100 [label %if.then92], !srcloc !284

if.then92:                                        ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client93 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %i2c_client93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_client93, align 4
  %dev94 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %tuner_params to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tuner_params, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_set_frontend.__UNIQUE_ID_ddebug324, ptr noundef %dev94, ptr noundef nonnull @.str.98, i32 noundef %47, ptr noundef nonnull %cmp96) #9
  br label %do.end100

do.end100:                                        ; preds = %if.then92, %sw.epilog78
  %call101 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 10, ptr noundef nonnull %tuner_params, i8 noundef zeroext 6, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %do.end100.do.body120_crit_edge

do.end100.do.body120_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

if.end104:                                        ; preds = %do.end100
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #9
  br i1 %switch, label %sw.bb105, label %sw.bb110

sw.bb105:                                         ; preds = %if.end104
  %call106 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 13, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %sw.bb105.sw.epilog116_crit_edge, label %sw.bb105.do.body120_crit_edge

sw.bb105.do.body120_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

sw.bb105.sw.epilog116_crit_edge:                  ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog116

sw.bb110:                                         ; preds = %if.end104
  %call111 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %sw.bb110.sw.epilog116_crit_edge, label %sw.bb110.do.body120_crit_edge

sw.bb110.do.body120_crit_edge:                    ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

sw.bb110.sw.epilog116_crit_edge:                  ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog116

sw.epilog116:                                     ; preds = %sw.bb110.sw.epilog116_crit_edge, %sw.bb105.sw.epilog116_crit_edge
  %48 = ptrtoint ptr %demod_type28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %demod_type.0, ptr %demod_type28, align 4
  %49 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dtv_property_cache, align 4
  %51 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %current_frequency, align 4
  br label %cleanup

do.body120:                                       ; preds = %sw.bb110.do.body120_crit_edge, %sw.bb105.do.body120_crit_edge, %do.end100.do.body120_crit_edge, %if.end65.do.body120_crit_edge, %if.end61.do.body120_crit_edge, %sw.bb51.do.body120_crit_edge, %if.then44, %do.body32
  %status.0 = phi i32 [ %call29, %if.then44 ], [ %call101, %do.end100.do.body120_crit_edge ], [ %call111, %sw.bb110.do.body120_crit_edge ], [ %call106, %sw.bb105.do.body120_crit_edge ], [ %call52, %if.end61.do.body120_crit_edge ], [ %call73, %if.end65.do.body120_crit_edge ], [ %call52, %sw.bb51.do.body120_crit_edge ], [ %call29, %do.body32 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_set_frontend, %if.then132)) #9
          to label %cleanup [label %if.then132], !srcloc !284

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client133 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %i2c_client133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_client133, align 4
  %dev134 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_set_frontend.__UNIQUE_ID_ddebug325, ptr noundef %dev134, ptr noundef nonnull @.str.13, i32 noundef %status.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %do.body120, %sw.epilog116, %if.then20, %do.body8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog116 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then20 ], [ %status.0, %if.then132 ], [ 0, %do.body8 ], [ %status.0, %do.body120 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %op_param) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tuner_params) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %qam_params) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mpeg_params) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxl692_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %modulation, align 4
  %modulation1 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %modulation1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %modulation1, align 4
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %rx_buf = alloca [58 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %rx_buf) #9
  %2 = call ptr @memset(ptr %rx_buf, i32 0, i32 58)
  %demod_type1 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_type1, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_status, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client, align 4
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_status.__UNIQUE_ID_ddebug331, ptr noundef %dev4, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %4, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb19
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %call5 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 15, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %rx_buf, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %atsc_lock = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_STATUS_T, ptr %rx_buf, i32 0, i32 4
  %9 = ptrtoint ptr %atsc_lock to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %atsc_lock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then8

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %or12 = or i32 %12, 31
  store i32 %or12, ptr %status, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stat, align 1
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_buf, align 2
  %16 = sdiv i16 %15, 10
  %conv14 = sext i16 %16 to i64
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %do.end
  %call21 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 21, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %rx_buf, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true23:                                  ; preds = %sw.bb19
  %qam_locked = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_STATUS_T, ptr %rx_buf, i32 0, i32 5
  %17 = ptrtoint ptr %qam_locked to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %qam_locked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br i1 %tobool25.not, label %land.lhs.true23.sw.epilog_crit_edge, label %if.then26

land.lhs.true23.sw.epilog_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %or31 = or i32 %20, 31
  store i32 %or31, ptr %status, align 4
  %stat33 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %21 = ptrtoint ptr %stat33 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %stat33, align 1
  %snr_db_tenths36 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_STATUS_T, ptr %rx_buf, i32 0, i32 8
  %22 = ptrtoint ptr %snr_db_tenths36 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %snr_db_tenths36, align 4
  %24 = udiv i16 %23, 10
  %25 = zext i16 %24 to i64
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then26, %if.then8
  %.sink = phi i64 [ %25, %if.then26 ], [ %conv14, %if.then8 ]
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %.sink, ptr %26, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true23.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %mxl_status.0 = phi i32 [ 0, %do.end.sw.epilog_crit_edge ], [ %call21, %sw.bb19.sw.epilog_crit_edge ], [ 0, %land.lhs.true23.sw.epilog_crit_edge ], [ %call5, %sw.bb.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %and = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then46, label %if.end61

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %cnr47 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %30 = ptrtoint ptr %cnr47 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %cnr47, align 1
  %stat49 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %31 = ptrtoint ptr %stat49 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %stat49, align 1
  %stat52 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %32 = ptrtoint ptr %stat52 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %stat52, align 1
  %stat55 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %33 = ptrtoint ptr %stat55 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %stat55, align 1
  %stat58 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %34 = ptrtoint ptr %stat58 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %stat58, align 1
  br label %cleanup

if.end61:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mxl_status.0)
  %tobool62.not = icmp eq i32 %mxl_status.0, 0
  br i1 %tobool62.not, label %if.else, label %do.body64

do.body64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_status, %if.then76)) #9
          to label %cleanup [label %if.then76], !srcloc !284

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client77 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %i2c_client77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_client77, align 4
  %dev78 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_status.__UNIQUE_ID_ddebug332, ptr noundef %dev78, ptr noundef nonnull @.str.13, i32 noundef %mxl_status.0) #9
  br label %cleanup

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = call fastcc i32 @mxl692_read_ber_ucb(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then76, %do.body64, %if.then46
  %retval.0 = phi i32 [ 0, %if.then46 ], [ %mxl_status.0, %if.then76 ], [ %call82, %if.else ], [ %mxl_status.0, %do.body64 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %rx_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl692_read_snr(ptr nocapture noundef %fe, ptr nocapture noundef %snr) #2 align 64 {
entry:
  %rx_buf = alloca [58 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %rx_buf) #9
  %2 = call ptr @memset(ptr %rx_buf, i32 0, i32 58)
  %demod_type1 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_type1, align 4
  %5 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %snr, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_snr.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_snr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client, align 4
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_snr.__UNIQUE_ID_ddebug326, ptr noundef %dev4, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %4, label %do.end.if.end45_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb14
  ]

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

sw.bb:                                            ; preds = %do.end
  %call5 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 15, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %rx_buf, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %sw.bb.do.body27_crit_edge

sw.bb.do.body27_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rx_buf, align 2
  %11 = sdiv i16 %10, 10
  %12 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %snr, align 2
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stat, align 1
  %14 = load i16, ptr %snr, align 2
  %conv9 = zext i16 %14 to i64
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %conv9, ptr %15, align 1
  br label %if.end45

sw.bb14:                                          ; preds = %do.end
  %call16 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 21, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %rx_buf, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %sw.bb14.do.body27_crit_edge

sw.bb14.do.body27_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %snr_db_tenths19 = getelementptr inbounds %struct.MXL_EAGLE_QAM_DEMOD_STATUS_T, ptr %rx_buf, i32 0, i32 8
  %17 = ptrtoint ptr %snr_db_tenths19 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %snr_db_tenths19, align 4
  %19 = udiv i16 %18, 10
  %20 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %snr, align 2
  br label %if.end45

do.body27:                                        ; preds = %sw.bb14.do.body27_crit_edge, %sw.bb.do.body27_crit_edge
  %mxl_status.0 = phi i32 [ %call16, %sw.bb14.do.body27_crit_edge ], [ %call5, %sw.bb.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_snr.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_snr, %if.then39)) #9
          to label %if.end45 [label %if.then39], !srcloc !284

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client40 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %i2c_client40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client40, align 4
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_snr.__UNIQUE_ID_ddebug327, ptr noundef %dev41, ptr noundef nonnull @.str.13, i32 noundef %mxl_status.0) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %do.body27, %if.then18, %if.then7, %do.end.if.end45_crit_edge
  %mxl_status.065 = phi i32 [ %mxl_status.0, %if.then39 ], [ %mxl_status.0, %do.body27 ], [ 0, %do.end.if.end45_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %rx_buf) #9
  ret i32 %mxl_status.065
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %dev_type = alloca i32, align 4
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_type) #9
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %dev_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #9
  %1 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %reg_val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_reset.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_reset.__UNIQUE_ID_ddebug310, ptr noundef %dev3, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -2147483392, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err_finish, label %do.end.do.body16_crit_edge

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

err_finish:                                       ; preds = %do.end
  %call8 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef 1879048584, ptr noundef nonnull %dev_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool14.not = icmp eq i32 %call8, 0
  br i1 %tobool14.not, label %err_finish.if.end34_crit_edge, label %err_finish.do.body16_crit_edge

err_finish.do.body16_crit_edge:                   ; preds = %err_finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

err_finish.if.end34_crit_edge:                    ; preds = %err_finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body16:                                        ; preds = %err_finish.do.body16_crit_edge, %do.end.do.body16_crit_edge
  %status.047 = phi i32 [ %call8, %err_finish.do.body16_crit_edge ], [ %call4, %do.end.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_reset.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_reset, %if.then28)) #9
          to label %if.end34 [label %if.then28], !srcloc !284

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client29 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_client29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client29, align 4
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_reset.__UNIQUE_ID_ddebug311, ptr noundef %dev30, ptr noundef nonnull @.str.13, i32 noundef %status.047) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body16, %err_finish.if.end34_crit_edge
  %status.048 = phi i32 [ %status.047, %if.then28 ], [ 0, %err_finish.if.end34_crit_edge ], [ %status.047, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_type) #9
  ret i32 %status.048
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_config_regulators(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #9
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_config_regulators.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_config_regulators, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_config_regulators.__UNIQUE_ID_ddebug312, ptr noundef %dev3, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef -1879048192, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.do.body20_crit_edge

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.end7:                                          ; preds = %do.end
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %and = and i32 %4, 16777215
  %or = or i32 %and, 268435456
  store i32 %or, ptr %reg_val, align 4
  %call8 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048192, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.do.body20_crit_edge

if.end7.do.body20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef -1879048168, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err_finish, label %if.end11.do.body20_crit_edge

if.end11.do.body20_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

err_finish:                                       ; preds = %if.end11
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  %or16 = or i32 %6, 2048
  store i32 %or16, ptr %reg_val, align 4
  %call17 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048168, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err_finish.if.end38_crit_edge, label %err_finish.do.body20_crit_edge

err_finish.do.body20_crit_edge:                   ; preds = %err_finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

err_finish.if.end38_crit_edge:                    ; preds = %err_finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.body20:                                        ; preds = %err_finish.do.body20_crit_edge, %if.end11.do.body20_crit_edge, %if.end7.do.body20_crit_edge, %do.end.do.body20_crit_edge
  %status.07 = phi i32 [ %call17, %err_finish.do.body20_crit_edge ], [ %call12, %if.end11.do.body20_crit_edge ], [ %call8, %if.end7.do.body20_crit_edge ], [ %call4, %do.end.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_config_regulators.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_config_regulators, %if.then32)) #9
          to label %if.end38 [label %if.then32], !srcloc !284

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client33 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client33 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client33, align 4
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_config_regulators.__UNIQUE_ID_ddebug313, ptr noundef %dev34, ptr noundef nonnull @.str.13, i32 noundef %status.07) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %do.body20, %err_finish.if.end38_crit_edge
  %status.08 = phi i32 [ %status.07, %if.then32 ], [ 0, %err_finish.if.end38_crit_edge ], [ %status.07, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #9
  ret i32 %status.08
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_config_xtal(ptr noundef %dev, ptr nocapture noundef readonly %dev_xtal) unnamed_addr #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  %reg_val1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #9
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val1) #9
  %1 = ptrtoint ptr %reg_val1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg_val1, align 4, !annotation !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_config_xtal.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_config_xtal, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_config_xtal.__UNIQUE_ID_ddebug314, ptr noundef %dev3, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef -1879048192, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.do.body102_crit_edge

do.end.do.body102_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end7:                                          ; preds = %do.end
  %4 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_val, align 4
  %and = and i32 %5, -288
  %6 = ptrtoint ptr %dev_xtal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_xtal, align 1
  %conv = zext i8 %7 to i32
  %or = or i32 %and, %conv
  %clk_out_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %dev_xtal, i32 0, i32 1
  %8 = ptrtoint ptr %clk_out_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clk_out_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  %masksel = select i1 %tobool9.not, i32 0, i32 256
  %cond = or i32 %masksel, %or
  %10 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %reg_val, align 4
  %call12 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048192, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.do.body102_crit_edge

if.end7.do.body102_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end15:                                         ; preds = %if.end7
  %clk_out_div_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %dev_xtal, i32 0, i32 2
  %11 = ptrtoint ptr %clk_out_div_enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %clk_out_div_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_val, align 4
  %and21 = and i32 %14, -513
  %masksel169 = select i1 %tobool17.not, i32 0, i32 512
  %cond23 = or i32 %and21, %masksel169
  store i32 %cond23, ptr %reg_val, align 4
  %call24 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048192, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end15.do.body102_crit_edge

if.end15.do.body102_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end27:                                         ; preds = %if.end15
  %xtal_sharing_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %dev_xtal, i32 0, i32 3
  %15 = ptrtoint ptr %xtal_sharing_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %xtal_sharing_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_val, align 4
  %and33 = and i32 %18, -66561
  %masksel170 = select i1 %tobool29.not, i32 0, i32 66560
  %cond35 = or i32 %and33, %masksel170
  store i32 %cond35, ptr %reg_val, align 4
  %call36 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048192, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end27.do.body102_crit_edge

if.end27.do.body102_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end39:                                         ; preds = %if.end27
  %call40 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef -1879048144, ptr noundef nonnull %reg_val1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.do.body102_crit_edge

if.end39.do.body102_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end43:                                         ; preds = %if.end39
  %xtal_calibration_enable = getelementptr inbounds %struct.MXL_EAGLE_DEV_XTAL_T, ptr %dev_xtal, i32 0, i32 4
  %19 = ptrtoint ptr %xtal_calibration_enable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xtal_calibration_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool44.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %reg_val1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_val1, align 4
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end43
  %and46 = and i32 %22, -51
  %or47 = or i32 %and46, 48
  %23 = ptrtoint ptr %reg_val1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or47, ptr %reg_val1, align 4
  %call48 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048144, ptr noundef nonnull %reg_val1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then45.if.end67_crit_edge, label %if.then45.do.body102_crit_edge

if.then45.do.body102_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.then45.if.end67_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.else:                                          ; preds = %if.end43
  %or52 = or i32 %22, 2
  %24 = ptrtoint ptr %reg_val1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or52, ptr %reg_val1, align 4
  %call53 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048144, ptr noundef nonnull %reg_val1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.else.do.body102_crit_edge

if.else.do.body102_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end56:                                         ; preds = %if.else
  %call57 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef -1879048148, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.do.body102_crit_edge

if.end56.do.body102_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end60:                                         ; preds = %if.end56
  %25 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_val, align 4
  %and61 = and i32 %26, -1056964609
  %or62 = or i32 %and61, 167772160
  store i32 %or62, ptr %reg_val, align 4
  %call63 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1879048148, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end60.if.end67_crit_edge, label %if.end60.do.body102_crit_edge

if.end60.do.body102_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %if.end60.if.end67_crit_edge, %if.then45.if.end67_crit_edge
  %call68 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef 1879048208, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.do.body102_crit_edge

if.end67.do.body102_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end71:                                         ; preds = %if.end67
  %27 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_val, align 4
  %or72 = or i32 %28, 8
  store i32 %or72, ptr %reg_val, align 4
  %call73 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef 1879048208, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end71.do.body102_crit_edge

if.end71.do.body102_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end76:                                         ; preds = %if.end71
  %call77 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef 1879048216, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.do.body102_crit_edge

if.end76.do.body102_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end80:                                         ; preds = %if.end76
  %29 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_val, align 4
  %or81 = or i32 %30, 16
  store i32 %or81, ptr %reg_val, align 4
  %call82 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef 1879048216, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.do.body102_crit_edge

if.end80.do.body102_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end85:                                         ; preds = %if.end80
  %call86 = call fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef -1878982324, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.do.body102_crit_edge

if.end85.do.body102_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end89:                                         ; preds = %if.end85
  %31 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_val, align 4
  %and90 = and i32 %32, -4097
  store i32 %and90, ptr %reg_val, align 4
  %call91 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1878982324, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end89.do.body102_crit_edge

if.end89.do.body102_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

if.end94:                                         ; preds = %if.end89
  %33 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_val, align 4
  %or95 = or i32 %34, 4096
  store i32 %or95, ptr %reg_val, align 4
  %call96 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef -1878982324, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err_finish, label %if.end94.do.body102_crit_edge

if.end94.do.body102_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

err_finish:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 45000, i32 noundef 55000, i32 noundef 2) #9
  br label %if.end120

do.body102:                                       ; preds = %if.end94.do.body102_crit_edge, %if.end89.do.body102_crit_edge, %if.end85.do.body102_crit_edge, %if.end80.do.body102_crit_edge, %if.end76.do.body102_crit_edge, %if.end71.do.body102_crit_edge, %if.end67.do.body102_crit_edge, %if.end60.do.body102_crit_edge, %if.end56.do.body102_crit_edge, %if.else.do.body102_crit_edge, %if.then45.do.body102_crit_edge, %if.end39.do.body102_crit_edge, %if.end27.do.body102_crit_edge, %if.end15.do.body102_crit_edge, %if.end7.do.body102_crit_edge, %do.end.do.body102_crit_edge
  %status.0.ph = phi i32 [ %call63, %if.end60.do.body102_crit_edge ], [ %call57, %if.end56.do.body102_crit_edge ], [ %call53, %if.else.do.body102_crit_edge ], [ %call96, %if.end94.do.body102_crit_edge ], [ %call91, %if.end89.do.body102_crit_edge ], [ %call86, %if.end85.do.body102_crit_edge ], [ %call82, %if.end80.do.body102_crit_edge ], [ %call77, %if.end76.do.body102_crit_edge ], [ %call73, %if.end71.do.body102_crit_edge ], [ %call68, %if.end67.do.body102_crit_edge ], [ %call48, %if.then45.do.body102_crit_edge ], [ %call40, %if.end39.do.body102_crit_edge ], [ %call36, %if.end27.do.body102_crit_edge ], [ %call24, %if.end15.do.body102_crit_edge ], [ %call12, %if.end7.do.body102_crit_edge ], [ %call4, %do.end.do.body102_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_config_xtal.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_config_xtal, %if.then114)) #9
          to label %if.end120 [label %if.then114], !srcloc !284

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client115 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %i2c_client115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_client115, align 4
  %dev116 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_config_xtal.__UNIQUE_ID_ddebug315, ptr noundef %dev116, ptr noundef nonnull @.str.13, i32 noundef %status.0.ph) #9
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %do.body102, %err_finish
  %status.0167 = phi i32 [ %status.0.ph, %if.then114 ], [ 0, %err_finish ], [ %status.0.ph, %do.body102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #9
  ret i32 %status.0167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_fwdownload(ptr noundef %dev, ptr nocapture noundef readonly %firmware_buf, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  %ix = alloca i32, align 4
  %reg_val = alloca i32, align 4
  %rx_buf = alloca [58 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ix) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #9
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %reg_val, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %rx_buf) #9
  %1 = call ptr @memset(ptr %rx_buf, i32 0, i32 58)
  %2 = add i32 %buf_len, -76001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75985, i32 %2)
  %3 = icmp ult i32 %2, -75985
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_lock = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_fwdownload.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_fwdownload, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !284

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client, align 4
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_fwdownload.__UNIQUE_ID_ddebug308, ptr noundef %dev5, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %firmware_buf, ptr noundef nonnull dereferenceable(8) @mxl692_validate_fw_header.fw_hdr, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.do.body.i_crit_edge

do.end.do.body.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i:                                         ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %firmware_buf, i32 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %sub.i = add nsw i32 %buf_len, -16
  %shr.i = lshr i32 %7, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr.i)
  %cmp1.not.i = icmp eq i32 %sub.i, %shr.i
  br i1 %cmp1.not.i, label %for.cond.preheader.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %buf_len)
  %cmp437.i = icmp ugt i32 %buf_len, 16
  br i1 %cmp437.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.err_finish.i_crit_edge

for.cond.preheader.i.err_finish.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_finish.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ix.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 16, %for.cond.preheader.i.for.body.i_crit_edge ]
  %temp_cksum.038.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %firmware_buf, i32 %ix.039.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %temp_cksum.038.i, %conv.i
  %inc.i = add nuw i32 %ix.039.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %inc.i, %buf_len
  br i1 %exitcond.not.i, label %for.body.i.err_finish.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.err_finish.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_finish.i

err_finish.i:                                     ; preds = %for.body.i.err_finish.i_crit_edge, %for.cond.preheader.i.err_finish.i_crit_edge
  %temp_cksum.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.err_finish.i_crit_edge ], [ %phi.cast.i, %for.body.i.err_finish.i_crit_edge ]
  %arrayidx8.i = getelementptr i8, ptr %firmware_buf, i32 11
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %temp_cksum.0.lcssa.i, i32 %conv9.i)
  %cmp10.not.i = icmp eq i32 %temp_cksum.0.lcssa.i, %conv9.i
  br i1 %cmp10.not.i, label %if.end10, label %err_finish.i.do.body.i_crit_edge

err_finish.i.do.body.i_crit_edge:                 ; preds = %err_finish.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %err_finish.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge, %do.end.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_validate_fw_header.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_fwdownload, %if.then19.i)) #9
          to label %err_finish [label %if.then19.i], !srcloc !284

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_validate_fw_header.__UNIQUE_ID_ddebug292, ptr noundef %dev20.i, ptr noundef nonnull @.str.26) #9
  br label %err_finish

if.end10:                                         ; preds = %err_finish.i
  %14 = ptrtoint ptr %ix to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %ix, align 4
  %call11 = call fastcc i32 @mxl692_write_fw_block(ptr noundef %dev, ptr noundef %firmware_buf, ptr noundef nonnull %ix)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_finish_crit_edge

if.end10.err_finish_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_finish

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @mxl692_write_fw_block(ptr noundef %dev, ptr noundef %firmware_buf, ptr noundef nonnull %ix)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_finish_crit_edge

if.end14.err_finish_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_finish

if.end18:                                         ; preds = %if.end14
  %call19 = call fastcc i32 @mxl692_memwrite(ptr noundef %dev, i32 noundef 1879048216, ptr noundef nonnull %reg_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_finish_crit_edge

if.end18.err_finish_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_finish

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #9
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 55000, i32 noundef 2) #9
  %call26 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %dev, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %rx_buf, i8 noundef zeroext 4)
  br label %cleanup

err_finish:                                       ; preds = %if.end18.err_finish_crit_edge, %if.end14.err_finish_crit_edge, %if.end10.err_finish_crit_edge, %if.then19.i, %do.body.i
  %status.1 = phi i32 [ %call11, %if.end10.err_finish_crit_edge ], [ %call15, %if.end14.err_finish_crit_edge ], [ %call19, %if.end18.err_finish_crit_edge ], [ -22, %if.then19.i ], [ -22, %do.body.i ]
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_fwdownload.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_fwdownload, %if.then43)) #9
          to label %cleanup [label %if.then43], !srcloc !284

if.then43:                                        ; preds = %err_finish
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client44 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %i2c_client44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client44, align 4
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_fwdownload.__UNIQUE_ID_ddebug309, ptr noundef %dev45, ptr noundef nonnull @.str.13, i32 noundef %status.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %err_finish, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ %status.1, %if.then43 ], [ %status.1, %err_finish ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %rx_buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ix) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_get_versions(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %dev_ver = alloca %struct.MXL_EAGLE_DEV_VER_T, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %dev_ver) #9
  %0 = call ptr @memset(ptr %dev_ver, i32 0, i32 11)
  %call = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %dev, i8 noundef zeroext 7, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %dev_ver, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %dev_ver to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dev_ver, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @mxl692_get_versions.chip_id, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.86, ptr noundef %6) #13
  %7 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client, align 4
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %firmware_ver = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %dev_ver, i32 0, i32 1
  %9 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %firmware_ver, align 1
  %conv = zext i8 %10 to i32
  %arrayidx9 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %dev_ver, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %arrayidx12 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %dev_ver, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %arrayidx15 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %dev_ver, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %arrayidx18 = getelementptr inbounds %struct.MXL_EAGLE_DEV_VER_T, ptr %dev_ver, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.89, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %conv19) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %dev_ver) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_memwrite(ptr nocapture noundef readonly %dev, i32 noundef %addr, ptr nocapture noundef readonly %buffer) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %local_buf = alloca [58 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %local_buf) #9
  %0 = getelementptr inbounds i8, ptr %local_buf, i32 10
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %incdec.ptr = getelementptr inbounds i8, ptr %local_buf, i32 1
  %2 = ptrtoint ptr %local_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -4, ptr %local_buf, align 1
  %incdec.ptr7 = getelementptr inbounds i8, ptr %local_buf, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %incdec.ptr, align 1
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %buffer, align 1
  %arrayidx.i = getelementptr inbounds i8, ptr %local_buf, i32 5
  %6 = trunc i32 %addr to i8
  %7 = lshr i32 %addr, 24
  %8 = trunc i32 %7 to i8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %6, ptr %incdec.ptr7, align 1
  %arrayidx22.i = getelementptr inbounds i8, ptr %local_buf, i32 4
  %11 = lshr i32 %addr, 8
  %12 = trunc i32 %11 to i8
  %arrayidx25.i = getelementptr inbounds i8, ptr %local_buf, i32 3
  %13 = lshr i32 %addr, 16
  %14 = trunc i32 %13 to i8
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx22.i, align 1
  %16 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %arrayidx25.i, align 1
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %local_buf, i32 9
  %17 = trunc i32 %5 to i8
  %arrayidx2.i.1 = getelementptr inbounds i8, ptr %local_buf, i32 6
  %18 = lshr i32 %5, 24
  %19 = trunc i32 %18 to i8
  %20 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.i.1, align 1
  %21 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %arrayidx2.i.1, align 1
  %arrayidx22.i.1 = getelementptr inbounds i8, ptr %local_buf, i32 8
  %22 = lshr i32 %5, 8
  %23 = trunc i32 %22 to i8
  %arrayidx25.i.1 = getelementptr inbounds i8, ptr %local_buf, i32 7
  %24 = lshr i32 %5, 16
  %25 = trunc i32 %24 to i8
  %26 = ptrtoint ptr %arrayidx22.i.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx22.i.1, align 1
  %27 = ptrtoint ptr %arrayidx25.i.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %23, ptr %arrayidx25.i.1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %28 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 720895, ptr %28, align 4
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %30 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr1.i, align 2
  %34 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %local_buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %37 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl692_i2c_write.exit.thread, label %do.body.i

mxl692_i2c_write.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %cleanup

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_memwrite, %if.then6.i)) #9
          to label %mxl692_i2c_write.exit [label %if.then6.i], !srcloc !284

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_write.__UNIQUE_ID_ddebug290, ptr noundef %dev8.i, ptr noundef nonnull @.str.18) #9
  br label %mxl692_i2c_write.exit

mxl692_i2c_write.exit:                            ; preds = %if.then6.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.then18, label %mxl692_i2c_write.exit.cleanup_crit_edge

mxl692_i2c_write.exit.cleanup_crit_edge:          ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_memwrite.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_memwrite, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !284

if.then32:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_client.i, align 4
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_memwrite.__UNIQUE_ID_ddebug295, ptr noundef %dev34, ptr noundef nonnull @.str.13, i32 noundef -121) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then18, %mxl692_i2c_write.exit.cleanup_crit_edge, %mxl692_i2c_write.exit.thread
  %retval.0 = phi i32 [ 0, %mxl692_i2c_write.exit.cleanup_crit_edge ], [ -121, %if.then32 ], [ 0, %mxl692_i2c_write.exit.thread ], [ -121, %if.then18 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %local_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_memread(ptr noundef %dev, i32 noundef %addr, ptr noundef %buffer) unnamed_addr #2 align 64 {
entry:
  %msg.i1 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %local_buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %local_buf) #9
  %incdec.ptr = getelementptr inbounds i8, ptr %local_buf, i32 1
  %0 = ptrtoint ptr %local_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -5, ptr %local_buf, align 1
  %incdec.ptr1 = getelementptr inbounds i8, ptr %local_buf, i32 2
  %1 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %incdec.ptr, align 1
  %arrayidx.i = getelementptr inbounds i8, ptr %local_buf, i32 5
  %2 = trunc i32 %addr to i8
  %3 = lshr i32 %addr, 24
  %4 = trunc i32 %3 to i8
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx.i, align 1
  %6 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %2, ptr %incdec.ptr1, align 1
  %arrayidx22.i = getelementptr inbounds i8, ptr %local_buf, i32 4
  %7 = lshr i32 %addr, 8
  %8 = trunc i32 %7 to i8
  %arrayidx25.i = getelementptr inbounds i8, ptr %local_buf, i32 3
  %9 = lshr i32 %addr, 16
  %10 = trunc i32 %9 to i8
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx22.i, align 1
  %12 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %8, ptr %arrayidx25.i, align 1
  %i2c_lock = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 458751, ptr %13, align 4
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr1.i, align 2
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %local_buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl692_i2c_write.exit.thread, label %do.body.i

mxl692_i2c_write.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.then

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_memread, %if.then6.i)) #9
          to label %mxl692_i2c_write.exit [label %if.then6.i], !srcloc !284

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_write.__UNIQUE_ID_ddebug290, ptr noundef %dev8.i, ptr noundef nonnull @.str.18) #9
  br label %mxl692_i2c_write.exit

mxl692_i2c_write.exit:                            ; preds = %if.then6.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %mxl692_i2c_write.exit.if.then_crit_edge, label %mxl692_i2c_write.exit.do.body_crit_edge

mxl692_i2c_write.exit.do.body_crit_edge:          ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

mxl692_i2c_write.exit.if.then_crit_edge:          ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mxl692_i2c_write.exit.if.then_crit_edge, %mxl692_i2c_write.exit.thread
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1) #9
  %26 = getelementptr inbounds i8, ptr %msg.i1, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327679, ptr %26, align 4
  %28 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i3 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %addr1.i3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr1.i3, align 2
  %32 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i1, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags.i4, align 2
  %buf.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buffer, ptr %buf.i6, align 4
  %adapter.i7 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i7, align 8
  %call.i8 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 1
  br i1 %cmp.not.i9, label %mxl692_i2c_read.exit.thread, label %do.body.i10

mxl692_i2c_read.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #9
  br label %if.end11.thread

do.body.i10:                                      ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_read.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_memread, %if.then6.i12)) #9
          to label %mxl692_i2c_read.exit [label %if.then6.i12], !srcloc !284

if.then6.i12:                                     ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i11 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_read.__UNIQUE_ID_ddebug291, ptr noundef %dev8.i11, ptr noundef nonnull @.str.21) #9
  br label %mxl692_i2c_read.exit

mxl692_i2c_read.exit:                             ; preds = %if.then6.i12, %do.body.i10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp5 = icmp slt i32 %call.i8, 0
  br i1 %cmp5, label %mxl692_i2c_read.exit.do.body_crit_edge, label %mxl692_i2c_read.exit.if.end11.thread_crit_edge

mxl692_i2c_read.exit.if.end11.thread_crit_edge:   ; preds = %mxl692_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.thread

mxl692_i2c_read.exit.do.body_crit_edge:           ; preds = %mxl692_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end11.thread:                                  ; preds = %mxl692_i2c_read.exit.if.end11.thread_crit_edge, %mxl692_i2c_read.exit.thread
  %arrayidx.i13 = getelementptr i8, ptr %buffer, i32 3
  %39 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i13, align 1
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buffer, align 1
  store i8 %42, ptr %arrayidx.i13, align 1
  store i8 %40, ptr %buffer, align 1
  %arrayidx22.i14 = getelementptr i8, ptr %buffer, i32 2
  %43 = ptrtoint ptr %arrayidx22.i14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx22.i14, align 1
  %arrayidx25.i15 = getelementptr i8, ptr %buffer, i32 1
  %45 = ptrtoint ptr %arrayidx25.i15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx25.i15, align 1
  store i8 %46, ptr %arrayidx22.i14, align 1
  store i8 %44, ptr %arrayidx25.i15, align 1
  call void @mutex_unlock(ptr noundef %i2c_lock) #9
  br label %if.end21

do.body:                                          ; preds = %mxl692_i2c_read.exit.do.body_crit_edge, %mxl692_i2c_write.exit.do.body_crit_edge
  call void @mutex_unlock(ptr noundef %i2c_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_memread.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_memread, %if.then18)) #9
          to label %if.end21 [label %if.then18], !srcloc !284

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_client.i, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_memread.__UNIQUE_ID_ddebug296, ptr noundef %dev19, ptr noundef nonnull @.str.13, i32 noundef -121) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.body, %if.end11.thread
  %status.021 = phi i32 [ 0, %if.end11.thread ], [ -121, %if.then18 ], [ -121, %do.body ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %local_buf) #9
  ret i32 %status.021
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_write_fw_block(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buffer, ptr nocapture noundef %index) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %local_buf = alloca [58 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %local_buf) #9
  %0 = call ptr @memset(ptr %local_buf, i32 0, i32 58)
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr i8, ptr %buffer, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %4)
  %cmp = icmp eq i8 %4, 83
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %add = add i32 %2, 1
  %arrayidx2 = getelementptr i8, ptr %buffer, i32 %add
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv3, 16
  %add4 = add i32 %2, 2
  %arrayidx5 = getelementptr i8, ptr %buffer, i32 %add4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %add8 = add i32 %2, 3
  %arrayidx9 = getelementptr i8, ptr %buffer, i32 %add8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %or11 = or i32 %or, %conv10
  %add12 = add nuw nsw i32 %or11, 3
  %and = and i32 %add12, 33554428
  %add13 = add i32 %2, 4
  %arrayidx14 = getelementptr i8, ptr %buffer, i32 %add13
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %add17 = add i32 %2, 5
  %arrayidx18 = getelementptr i8, ptr %buffer, i32 %add17
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %shl20, %shl16
  %add22 = add i32 %2, 6
  %arrayidx23 = getelementptr i8, ptr %buffer, i32 %add22
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %16 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or26 = or i32 %or21, %shl25
  %add27 = add i32 %2, 7
  %arrayidx28 = getelementptr i8, ptr %buffer, i32 %add27
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %18 to i32
  %or30 = or i32 %or26, %conv29
  %add31 = add i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp32.not15 = icmp eq i32 %and, 0
  br i1 %cmp32.not15, label %if.then.if.end53.thread9_crit_edge, label %while.body.lr.ph

if.then.if.end53.thread9_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.thread9

while.body.lr.ph:                                 ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, ptr %local_buf, i32 1
  %incdec.ptr40 = getelementptr inbounds i8, ptr %local_buf, i32 2
  %arrayidx.i = getelementptr inbounds i8, ptr %local_buf, i32 5
  %arrayidx22.i = getelementptr inbounds i8, ptr %local_buf, i32 4
  %arrayidx25.i = getelementptr inbounds i8, ptr %local_buf, i32 3
  %add.ptr = getelementptr inbounds i8, ptr %local_buf, i32 6
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %while.body

if.end53.thread9:                                 ; preds = %if.end.if.end53.thread9_crit_edge, %if.then.if.end53.thread9_crit_edge
  %ix.0.lcssa = phi i32 [ %add31, %if.then.if.end53.thread9_crit_edge ], [ %add52, %if.end.if.end53.thread9_crit_edge ]
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ix.0.lcssa, ptr %index, align 4
  br label %if.end62

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %ix.018 = phi i32 [ %add31, %while.body.lr.ph ], [ %add52, %if.end.while.body_crit_edge ]
  %prevchunk_len.017 = phi i32 [ 0, %while.body.lr.ph ], [ %add51, %if.end.while.body_crit_edge ]
  %total_len.016 = phi i32 [ %and, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %21 = call i32 @llvm.umin.i32(i32 %total_len.016, i32 52)
  %22 = ptrtoint ptr %local_buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -4, ptr %local_buf, align 1
  %23 = trunc i32 %21 to i8
  %conv39 = add nuw nsw i8 %23, 4
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv39, ptr %incdec.ptr, align 1
  %add41 = add i32 %prevchunk_len.017, %or30
  %25 = trunc i32 %add41 to i8
  %26 = lshr i32 %add41, 24
  %27 = trunc i32 %26 to i8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx.i, align 1
  %29 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %incdec.ptr40, align 1
  %30 = lshr i32 %add41, 8
  %31 = trunc i32 %30 to i8
  %32 = lshr i32 %add41, 16
  %33 = trunc i32 %32 to i8
  %34 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx22.i, align 1
  %35 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %31, ptr %arrayidx25.i, align 1
  %arrayidx42 = getelementptr i8, ptr %buffer, i32 %ix.018
  %36 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx42, i32 %21)
  %and.i = and i32 %21, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp13.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp13.not.i, label %while.body.for.end.i_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.for.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %i.014.i = phi i32 [ %add45.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %add.i = or i32 %i.014.i, 3
  %arrayidx.i1 = getelementptr i8, ptr %add.ptr, i32 %add.i
  %37 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i1, align 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 %i.014.i
  %39 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx2.i, align 1
  store i8 %40, ptr %arrayidx.i1, align 1
  store i8 %38, ptr %arrayidx2.i, align 1
  %add21.i = or i32 %i.014.i, 2
  %arrayidx22.i2 = getelementptr i8, ptr %add.ptr, i32 %add21.i
  %41 = ptrtoint ptr %arrayidx22.i2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx22.i2, align 1
  %add24.i = or i32 %i.014.i, 1
  %arrayidx25.i3 = getelementptr i8, ptr %add.ptr, i32 %add24.i
  %43 = ptrtoint ptr %arrayidx25.i3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx25.i3, align 1
  store i8 %44, ptr %arrayidx22.i2, align 1
  store i8 %42, ptr %arrayidx25.i3, align 1
  %add45.i = add nuw nsw i32 %i.014.i, 4
  %cmp.i = icmp ult i32 %add45.i, %and.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.body.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %while.body.for.end.i_crit_edge ], [ %add45.i, %for.body.i.for.end.i_crit_edge ]
  %and46.i = and i32 %21, 3
  %45 = zext i32 %and46.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %and46.i, label %for.end.unreachabledefault.i [
    i32 0, label %for.end.i.convert_endian.exit_crit_edge
    i32 1, label %for.end.i.convert_endian.exit_crit_edge30
    i32 2, label %sw.bb47.i
    i32 3, label %sw.bb72.i
  ]

for.end.i.convert_endian.exit_crit_edge30:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert_endian.exit

for.end.i.convert_endian.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert_endian.exit

sw.bb47.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add48.i = or i32 %i.0.lcssa.i, 1
  %arrayidx49.i = getelementptr i8, ptr %add.ptr, i32 %add48.i
  %46 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx49.i, align 1
  %arrayidx52.i = getelementptr i8, ptr %add.ptr, i32 %i.0.lcssa.i
  %48 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx52.i, align 1
  store i8 %49, ptr %arrayidx49.i, align 1
  store i8 %47, ptr %arrayidx52.i, align 1
  br label %convert_endian.exit

sw.bb72.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add73.i = or i32 %i.0.lcssa.i, 2
  %arrayidx74.i = getelementptr i8, ptr %add.ptr, i32 %add73.i
  %50 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx74.i, align 1
  %arrayidx77.i = getelementptr i8, ptr %add.ptr, i32 %i.0.lcssa.i
  %52 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx77.i, align 1
  store i8 %53, ptr %arrayidx74.i, align 1
  store i8 %51, ptr %arrayidx77.i, align 1
  br label %convert_endian.exit

for.end.unreachabledefault.i:                     ; preds = %for.end.i
  unreachable

convert_endian.exit:                              ; preds = %sw.bb72.i, %sw.bb47.i, %for.end.i.convert_endian.exit_crit_edge, %for.end.i.convert_endian.exit_crit_edge30
  %54 = trunc i32 %21 to i16
  %conv46 = add nuw nsw i16 %54, 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %55 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %19, align 4
  %56 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr1.i, align 2
  %60 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %msg.i, align 4
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i, align 2
  store i16 %conv46, ptr %19, align 4
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %local_buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 3
  %63 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl692_i2c_write.exit.thread, label %do.body.i

mxl692_i2c_write.exit.thread:                     ; preds = %convert_endian.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.end

do.body.i:                                        ; preds = %convert_endian.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_write_fw_block, %if.then6.i)) #9
          to label %mxl692_i2c_write.exit [label %if.then6.i], !srcloc !284

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_write.__UNIQUE_ID_ddebug290, ptr noundef %dev8.i, ptr noundef nonnull @.str.18) #9
  br label %mxl692_i2c_write.exit

mxl692_i2c_write.exit:                            ; preds = %if.then6.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48 = icmp slt i32 %call.i, 0
  br i1 %cmp48, label %if.end53, label %mxl692_i2c_write.exit.if.end_crit_edge

mxl692_i2c_write.exit.if.end_crit_edge:           ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %mxl692_i2c_write.exit.if.end_crit_edge, %mxl692_i2c_write.exit.thread
  %add51 = add i32 %prevchunk_len.017, %21
  %sub = sub i32 %total_len.016, %21
  %add52 = add i32 %ix.018, %21
  %cmp32.not = icmp eq i32 %sub, 0
  br i1 %cmp32.not, label %if.end.if.end53.thread9_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.if.end53.thread9_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.thread9

if.end53:                                         ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %ix.018, ptr %index, align 4
  br label %do.body

do.body:                                          ; preds = %if.end53, %entry.do.body_crit_edge
  %status.17 = phi i32 [ -121, %if.end53 ], [ -22, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_write_fw_block.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_write_fw_block, %if.then59)) #9
          to label %if.end62 [label %if.then59], !srcloc !284

if.then59:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %68 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c_client, align 4
  %dev60 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_write_fw_block.__UNIQUE_ID_ddebug293, ptr noundef %dev60, ptr noundef nonnull @.str.13, i32 noundef %status.17) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %do.body, %if.end53.thread9
  %status.18 = phi i32 [ %status.17, %if.then59 ], [ 0, %if.end53.thread9 ], [ %status.17, %do.body ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %local_buf) #9
  ret i32 %status.18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_i2c_writeread(ptr noundef %dev, i8 noundef zeroext %opcode, ptr noundef readonly %tx_payload, i8 noundef zeroext %tx_payload_size, ptr noundef writeonly %rx_payload, i8 noundef zeroext %rx_payload_expected) unnamed_addr #2 align 64 {
entry:
  %tx_buf = alloca [58 x i8], align 1
  %rx_buf = alloca [58 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %tx_buf) #9
  %0 = getelementptr inbounds i8, ptr %tx_buf, i32 3
  %1 = call ptr @memset(ptr %0, i32 0, i32 55)
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %rx_buf) #9
  %2 = call ptr @memset(ptr %rx_buf, i32 0, i32 58)
  %i2c_lock = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #9
  %conv = zext i8 %tx_payload_size to i32
  %add = add nuw nsw i32 %conv, 8
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %opcode, ptr %tx_buf, align 1
  %seqnum = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %seqnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seqnum, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %seqnum, align 4
  %conv3 = trunc i32 %5 to i8
  %seqnum4 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %tx_buf, i32 0, i32 1
  %6 = ptrtoint ptr %seqnum4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %seqnum4, align 1
  %payload_size = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %tx_buf, i32 0, i32 2
  %7 = ptrtoint ptr %payload_size to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tx_payload_size, ptr %payload_size, align 1
  %checksum = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %tx_buf, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp6 = icmp eq i32 %inc, 0
  br i1 %cmp6, label %if.then8, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %seqnum, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry.if.end10_crit_edge
  %tobool.not = icmp eq ptr %tx_payload, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_payload_size)
  %cmp12.not = icmp eq i8 %tx_payload_size, 0
  %or.cond = or i1 %tobool.not, %cmp12.not
  br i1 %or.cond, label %if.end10.for.body.preheader.i_crit_edge, label %if.then14

if.end10.for.body.preheader.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr inbounds [58 x i8], ptr %tx_buf, i32 0, i32 8
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %tx_payload, i32 %conv)
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then14, %if.end10.for.body.preheader.i_crit_edge
  %10 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %checksum, align 1
  %sub.i = add nuw nsw i32 %conv, 11
  %div6.i = lshr i32 %sub.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %cur_cksum.09.i = phi i32 [ %add1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %ix.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %tx_buf, i32 %ix.08.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add1.i = add i32 %12, %cur_cksum.09.i
  %inc.i = add nuw nsw i32 %ix.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div6.i
  br i1 %exitcond.not.i, label %mxl692_checksum.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mxl692_checksum.exit:                             ; preds = %for.body.i
  %phi.bo.i = xor i32 %add1.i, -559038737
  %13 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %phi.bo.i, ptr %checksum, align 1
  %call27 = call fastcc i32 @mxl692_opwrite(ptr noundef %dev, ptr noundef nonnull %tx_buf, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body.preheader, label %mxl692_checksum.exit.do.body238_crit_edge

mxl692_checksum.exit.do.body238_crit_edge:        ; preds = %mxl692_checksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body238

do.body.preheader:                                ; preds = %mxl692_checksum.exit
  %seqnum42 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %rx_buf, i32 0, i32 1
  %checksum46 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %rx_buf, i32 0, i32 4
  %conv33 = zext i8 %rx_payload_expected to i32
  %add34 = add nuw nsw i32 %conv33, 8
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %timeout.0 = phi i32 [ %dec, %land.rhs.do.body_crit_edge ], [ 40, %do.body.preheader ]
  %call35 = call fastcc i32 @mxl692_opread(ptr noundef %dev, ptr noundef nonnull %rx_buf, i32 noundef %add34)
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp36 = icmp ne i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp39 = icmp eq i32 %call35, 0
  %or.cond320 = select i1 %cmp36, i1 %cmp39, i1 false
  br i1 %or.cond320, label %land.lhs.true41, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true41:                                  ; preds = %do.body
  %14 = ptrtoint ptr %seqnum42 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %seqnum42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp44 = icmp eq i8 %15, 0
  br i1 %cmp44, label %land.rhs, label %land.lhs.true41.do.end_crit_edge

land.lhs.true41.do.end_crit_edge:                 ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %land.lhs.true41
  %16 = ptrtoint ptr %checksum46 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %checksum46, align 1
  %cmp47 = icmp eq i32 %17, 0
  br i1 %cmp47, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %land.lhs.true41.do.end_crit_edge, %do.body.do.end_crit_edge
  %call35.lcssa = phi i32 [ %call35, %do.body.do.end_crit_edge ], [ 0, %land.lhs.true41.do.end_crit_edge ], [ 0, %land.rhs.do.end_crit_edge ]
  %cmp39.lcssa = phi i1 [ %cmp39, %do.body.do.end_crit_edge ], [ true, %land.lhs.true41.do.end_crit_edge ], [ true, %land.rhs.do.end_crit_edge ]
  %or.cond321 = select i1 %cmp36, i1 %cmp39.lcssa, i1 false
  br i1 %or.cond321, label %if.end63, label %do.body53

do.body53:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then58)) #9
          to label %do.body238 [label %if.then58], !srcloc !284

if.then58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client, align 4
  %dev59 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug301, ptr noundef %dev59, ptr noundef nonnull @.str.29, i32 noundef %dec, i32 noundef %call35.lcssa) #9
  br label %do.body238

if.end63:                                         ; preds = %do.end
  %status64 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %rx_buf, i32 0, i32 3
  %20 = ptrtoint ptr %status64 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool65.not = icmp eq i8 %21, 0
  br i1 %tobool65.not, label %if.end87, label %do.body67

do.body67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then79)) #9
          to label %do.body238 [label %if.then79], !srcloc !284

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client80 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_client80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client80, align 4
  %dev81 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %status64 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %status64, align 1
  %conv83 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug302, ptr noundef %dev81, ptr noundef nonnull @.str.30, i32 noundef %conv83) #9
  br label %do.body238

if.end87:                                         ; preds = %if.end63
  %26 = ptrtoint ptr %seqnum42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %seqnum42, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %conv3)
  %cmp92.not = icmp eq i8 %27, %conv3
  br i1 %cmp92.not, label %lor.lhs.false94, label %if.end87.do.body108_crit_edge

if.end87.do.body108_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

lor.lhs.false94:                                  ; preds = %if.end87
  %28 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rx_buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %opcode)
  %cmp99.not = icmp eq i8 %29, %opcode
  br i1 %cmp99.not, label %lor.lhs.false101, label %lor.lhs.false94.do.body108_crit_edge

lor.lhs.false94.do.body108_crit_edge:             ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

lor.lhs.false101:                                 ; preds = %lor.lhs.false94
  %payload_size102 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %rx_buf, i32 0, i32 2
  %30 = ptrtoint ptr %payload_size102 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %payload_size102, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %rx_payload_expected)
  %cmp105.not = icmp eq i8 %31, %rx_payload_expected
  br i1 %cmp105.not, label %if.end173, label %lor.lhs.false101.do.body108_crit_edge

lor.lhs.false101.do.body108_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

do.body108:                                       ; preds = %lor.lhs.false101.do.body108_crit_edge, %lor.lhs.false94.do.body108_crit_edge, %if.end87.do.body108_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then120)) #9
          to label %do.end144 [label %if.then120], !srcloc !284

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client121 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %i2c_client121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_client121, align 4
  %dev122 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %seqnum42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %seqnum42, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %conv3)
  %cmp127.not = icmp eq i8 %35, %conv3
  %cond = select i1 %cmp127.not, ptr @.str.33, ptr @.str.32
  %36 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rx_buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %opcode)
  %cmp133.not = icmp eq i8 %37, %opcode
  %cond135 = select i1 %cmp133.not, ptr @.str.33, ptr @.str.32
  %payload_size136 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %rx_buf, i32 0, i32 2
  %38 = ptrtoint ptr %payload_size136 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %payload_size136, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %rx_payload_expected)
  %cmp139.not = icmp eq i8 %39, %rx_payload_expected
  %cond141 = select i1 %cmp139.not, ptr @.str.33, ptr @.str.32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug303, ptr noundef %dev122, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond, ptr noundef nonnull %cond135, ptr noundef nonnull %cond141) #9
  br label %do.end144

do.end144:                                        ; preds = %if.then120, %do.body108
  %payload_size145 = getelementptr inbounds %struct.MXL_EAGLE_HOST_MSG_HEADER_T, ptr %rx_buf, i32 0, i32 2
  %40 = ptrtoint ptr %payload_size145 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %payload_size145, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %rx_payload_expected)
  %cmp148.not = icmp eq i8 %41, %rx_payload_expected
  br i1 %cmp148.not, label %do.end144.do.body238_crit_edge, label %do.body151

do.end144.do.body238_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body238

do.body151:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then163)) #9
          to label %do.body238 [label %if.then163], !srcloc !284

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client164 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %42 = ptrtoint ptr %i2c_client164 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_client164, align 4
  %dev165 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %payload_size145 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %payload_size145, align 1
  %conv167 = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug304, ptr noundef %dev165, ptr noundef nonnull @.str.34, i32 noundef %conv167, i32 noundef %conv33) #9
  br label %do.body238

if.end173:                                        ; preds = %lor.lhs.false101
  %46 = ptrtoint ptr %checksum46 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %checksum46, align 1
  store i32 0, ptr %checksum46, align 1
  %sub.i340 = add nuw nsw i32 %conv33, 11
  %div6.i342 = lshr i32 %sub.i340, 2
  br label %for.body.i350

for.body.i350:                                    ; preds = %for.body.i350.for.body.i350_crit_edge, %if.end173
  %cur_cksum.09.i344 = phi i32 [ %add1.i347, %for.body.i350.for.body.i350_crit_edge ], [ 0, %if.end173 ]
  %ix.08.i345 = phi i32 [ %inc.i348, %for.body.i350.for.body.i350_crit_edge ], [ 0, %if.end173 ]
  %arrayidx.i346 = getelementptr i32, ptr %rx_buf, i32 %ix.08.i345
  %48 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i346, align 4
  %add1.i347 = add i32 %49, %cur_cksum.09.i344
  %inc.i348 = add nuw nsw i32 %ix.08.i345, 1
  %exitcond.not.i349 = icmp eq i32 %inc.i348, %div6.i342
  br i1 %exitcond.not.i349, label %for.end.loopexit.i352, label %for.body.i350.for.body.i350_crit_edge

for.body.i350.for.body.i350_crit_edge:            ; preds = %for.body.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i350

for.end.loopexit.i352:                            ; preds = %for.body.i350
  %phi.bo.i351 = xor i32 %add1.i347, -559038737
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %phi.bo.i351)
  %cmp181.not = icmp eq i32 %47, %phi.bo.i351
  br i1 %cmp181.not, label %if.end202, label %do.body184

do.body184:                                       ; preds = %for.end.loopexit.i352
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then196)) #9
          to label %do.body238 [label %if.then196], !srcloc !284

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client197 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %50 = ptrtoint ptr %i2c_client197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c_client197, align 4
  %dev198 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug305, ptr noundef %dev198, ptr noundef nonnull @.str.35) #9
  br label %do.body238

if.end202:                                        ; preds = %for.end.loopexit.i352
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rx_payload_expected)
  %cmp208.not = icmp eq i8 %rx_payload_expected, 0
  br i1 %cmp208.not, label %if.end202.if.end256_crit_edge, label %if.then210

if.end202.if.end256_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end256

if.then210:                                       ; preds = %if.end202
  %tobool211.not = icmp eq ptr %rx_payload, null
  br i1 %tobool211.not, label %do.body213, label %if.end231

do.body213:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then225)) #9
          to label %do.body238 [label %if.then225], !srcloc !284

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client226 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %52 = ptrtoint ptr %i2c_client226 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_client226, align 4
  %dev227 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug306, ptr noundef %dev227, ptr noundef nonnull @.str.36) #9
  br label %do.body238

if.end231:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr inbounds i8, ptr %rx_buf, i32 8
  %54 = call ptr @memcpy(ptr %rx_payload, ptr %add.ptr, i32 %conv33)
  br label %if.end256

do.body238:                                       ; preds = %if.then225, %do.body213, %if.then196, %do.body184, %if.then163, %do.body151, %do.end144.do.body238_crit_edge, %if.then79, %do.body67, %if.then58, %do.body53, %mxl692_checksum.exit.do.body238_crit_edge
  %status.0363 = phi i32 [ -110, %do.body53 ], [ -121, %do.body67 ], [ -121, %do.body151 ], [ -121, %do.body184 ], [ -121, %do.body213 ], [ -121, %if.then225 ], [ -121, %if.then196 ], [ -121, %do.end144.do.body238_crit_edge ], [ -121, %if.then163 ], [ -121, %if.then79 ], [ -110, %if.then58 ], [ -121, %mxl692_checksum.exit.do.body238_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_i2c_writeread, %if.then250)) #9
          to label %if.end256 [label %if.then250], !srcloc !284

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client251 = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %55 = ptrtoint ptr %i2c_client251 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c_client251, align 4
  %dev252 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_writeread.__UNIQUE_ID_ddebug307, ptr noundef %dev252, ptr noundef nonnull @.str.13, i32 noundef %status.0363) #9
  br label %if.end256

if.end256:                                        ; preds = %if.then250, %do.body238, %if.end231, %if.end202.if.end256_crit_edge
  %status.0364 = phi i32 [ %status.0363, %if.then250 ], [ %status.0363, %do.body238 ], [ 0, %if.end202.if.end256_crit_edge ], [ 0, %if.end231 ]
  call void @mutex_unlock(ptr noundef %i2c_lock) #9
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %rx_buf) #9
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %tx_buf) #9
  ret i32 %status.0364
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_opwrite(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buffer, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %local_buf = alloca [58 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %local_buf) #9
  %0 = getelementptr inbounds i8, ptr %local_buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  %incdec.ptr = getelementptr inbounds i8, ptr %local_buf, i32 1
  %2 = ptrtoint ptr %local_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -2, ptr %local_buf, align 1
  %conv = trunc i32 %and to i8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %local_buf, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %incdec.ptr, align 1
  %4 = call ptr @memcpy(ptr %incdec.ptr6, ptr %buffer, i32 %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13.not.i = icmp eq i32 %and, 0
  br i1 %cmp13.not.i, label %entry.convert_endian.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.convert_endian.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert_endian.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %add45.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.i = or i32 %i.014.i, 3
  %arrayidx.i = getelementptr i8, ptr %incdec.ptr6, i32 %add.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %incdec.ptr6, i32 %i.014.i
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  store i8 %8, ptr %arrayidx.i, align 1
  store i8 %6, ptr %arrayidx2.i, align 1
  %add21.i = or i32 %i.014.i, 2
  %arrayidx22.i = getelementptr i8, ptr %incdec.ptr6, i32 %add21.i
  %9 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx22.i, align 1
  %add24.i = or i32 %i.014.i, 1
  %arrayidx25.i = getelementptr i8, ptr %incdec.ptr6, i32 %add24.i
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx25.i, align 1
  store i8 %12, ptr %arrayidx22.i, align 1
  store i8 %10, ptr %arrayidx25.i, align 1
  %add45.i = add nuw i32 %i.014.i, 4
  %cmp.i = icmp ult i32 %add45.i, %and
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.convert_endian.exit_crit_edge

for.body.i.convert_endian.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert_endian.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

convert_endian.exit:                              ; preds = %for.body.i.convert_endian.exit_crit_edge, %entry.convert_endian.exit_crit_edge
  %13 = trunc i32 %and to i16
  %conv10 = or i16 %13, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr1.i, align 2
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  store i16 %conv10, ptr %14, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %local_buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl692_i2c_write.exit.thread, label %do.body.i

mxl692_i2c_write.exit.thread:                     ; preds = %convert_endian.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.end37

do.body.i:                                        ; preds = %convert_endian.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_opwrite, %if.then6.i)) #9
          to label %mxl692_i2c_write.exit [label %if.then6.i], !srcloc !284

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_write.__UNIQUE_ID_ddebug290, ptr noundef %dev8.i, ptr noundef nonnull @.str.18) #9
  br label %mxl692_i2c_write.exit

mxl692_i2c_write.exit:                            ; preds = %if.then6.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  %status.0 = select i1 %cmp12, i32 -121, i32 0
  br i1 %cmp12, label %do.body18, label %mxl692_i2c_write.exit.if.end37_crit_edge

mxl692_i2c_write.exit.if.end37_crit_edge:         ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.body18:                                        ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_opwrite.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_opwrite, %if.then30)) #9
          to label %if.end37 [label %if.then30], !srcloc !284

if.then30:                                        ; preds = %do.body18
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %30)
  %cmp.i51 = icmp ult i8 %30, 40
  br i1 %cmp.i51, label %if.then.i, label %if.then30.mxl692_opcode_string.exit_crit_edge

if.then30.mxl692_opcode_string.exit_crit_edge:    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %mxl692_opcode_string.exit

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %30 to i32
  %arrayidx.i52 = getelementptr [40 x ptr], ptr @MXL_EAGLE_OPCODE_STRING, i32 0, i32 %conv.i
  %31 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i52, align 4
  br label %mxl692_opcode_string.exit

mxl692_opcode_string.exit:                        ; preds = %if.then.i, %if.then30.mxl692_opcode_string.exit_crit_edge
  %retval.0.i53 = phi ptr [ %32, %if.then.i ], [ @.str.39, %if.then30.mxl692_opcode_string.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_opwrite.__UNIQUE_ID_ddebug298, ptr noundef %dev32, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i53, i32 noundef %status.0) #9
  br label %if.end37

if.end37:                                         ; preds = %mxl692_opcode_string.exit, %do.body18, %mxl692_i2c_write.exit.if.end37_crit_edge, %mxl692_i2c_write.exit.thread
  %status.056 = phi i32 [ 0, %mxl692_i2c_write.exit.thread ], [ -121, %mxl692_opcode_string.exit ], [ 0, %mxl692_i2c_write.exit.if.end37_crit_edge ], [ -121, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %local_buf) #9
  ret i32 %status.056
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_opread(ptr nocapture noundef readonly %dev, ptr noundef %buffer, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %msg.i51 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %local_buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %local_buf) #9
  %0 = ptrtoint ptr %local_buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -768, ptr %local_buf, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 196607, ptr %1, align 4
  %i2c_client.i = getelementptr inbounds %struct.mxl692_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %local_buf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mxl692_i2c_write.exit.thread, label %do.body.i

mxl692_i2c_write.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.then

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_write.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_opread, %if.then6.i)) #9
          to label %mxl692_i2c_write.exit [label %if.then6.i], !srcloc !284

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_write.__UNIQUE_ID_ddebug290, ptr noundef %dev8.i, ptr noundef nonnull @.str.18) #9
  br label %mxl692_i2c_write.exit

mxl692_i2c_write.exit:                            ; preds = %if.then6.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %mxl692_i2c_write.exit.if.then_crit_edge, label %mxl692_i2c_write.exit.do.body17_crit_edge

mxl692_i2c_write.exit.do.body17_crit_edge:        ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

mxl692_i2c_write.exit.if.then_crit_edge:          ; preds = %mxl692_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mxl692_i2c_write.exit.if.then_crit_edge, %mxl692_i2c_write.exit.thread
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp271.not = icmp eq i32 %and, 0
  br i1 %cmp271.not, label %if.then.if.end35_crit_edge, label %for.body.lr.ph

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

for.body.lr.ph:                                   ; preds = %if.then
  %14 = getelementptr inbounds i8, ptr %msg.i51, i32 4
  %flags.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 1
  %buf.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ix.072 = phi i32 [ 0, %for.body.lr.ph ], [ %add12, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buffer, i32 %ix.072
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i51) #9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4
  %16 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i, align 4
  %addr1.i53 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %addr1.i53 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr1.i53, align 2
  %20 = ptrtoint ptr %msg.i51 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i51, align 4
  %21 = ptrtoint ptr %flags.i54 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags.i54, align 2
  store i16 4, ptr %14, align 4
  %22 = ptrtoint ptr %buf.i56 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %buf.i56, align 4
  %adapter.i57 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i57, align 8
  %call.i58 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i51, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp.not.i59 = icmp eq i32 %call.i58, 1
  br i1 %cmp.not.i59, label %mxl692_i2c_read.exit.thread, label %do.body.i60

mxl692_i2c_read.exit.thread:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51) #9
  br label %for.inc

do.body.i60:                                      ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_i2c_read.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_opread, %if.then6.i62)) #9
          to label %mxl692_i2c_read.exit [label %if.then6.i62], !srcloc !284

if.then6.i62:                                     ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client.i, align 4
  %dev8.i61 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_i2c_read.__UNIQUE_ID_ddebug291, ptr noundef %dev8.i61, ptr noundef nonnull @.str.21) #9
  br label %mxl692_i2c_read.exit

mxl692_i2c_read.exit:                             ; preds = %if.then6.i62, %do.body.i60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp4 = icmp slt i32 %call.i58, 0
  br i1 %cmp4, label %do.body, label %mxl692_i2c_read.exit.for.inc_crit_edge

mxl692_i2c_read.exit.for.inc_crit_edge:           ; preds = %mxl692_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %mxl692_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_opread.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_opread, %if.then9)) #9
          to label %do.body17 [label %if.then9], !srcloc !284

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_opread.__UNIQUE_ID_ddebug299, ptr noundef %dev10, ptr noundef nonnull @.str.81, i32 noundef %ix.072, i32 noundef %and) #9
  br label %do.body17

for.inc:                                          ; preds = %mxl692_i2c_read.exit.for.inc_crit_edge, %mxl692_i2c_read.exit.thread
  %add12 = add nuw i32 %ix.072, 4
  %cmp2 = icmp ult i32 %add12, %and
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.body.i_crit_edge

for.inc.for.body.i_crit_edge:                     ; preds = %for.inc
  br label %for.body.i

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.inc.for.body.i_crit_edge
  %i.014.i = phi i32 [ %add45.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.inc.for.body.i_crit_edge ]
  %add.i = or i32 %i.014.i, 3
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 %add.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %buffer, i32 %i.014.i
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.i, align 1
  store i8 %32, ptr %arrayidx.i, align 1
  store i8 %30, ptr %arrayidx2.i, align 1
  %add21.i = or i32 %i.014.i, 2
  %arrayidx22.i = getelementptr i8, ptr %buffer, i32 %add21.i
  %33 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx22.i, align 1
  %add24.i = or i32 %i.014.i, 1
  %arrayidx25.i = getelementptr i8, ptr %buffer, i32 %add24.i
  %35 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx25.i, align 1
  store i8 %36, ptr %arrayidx22.i, align 1
  store i8 %34, ptr %arrayidx25.i, align 1
  %add45.i = add nuw i32 %i.014.i, 4
  %cmp.i = icmp ult i32 %add45.i, %and
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end35_crit_edge

for.body.i.if.end35_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body17:                                        ; preds = %if.then9, %do.body, %mxl692_i2c_write.exit.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_opread.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_opread, %if.then29)) #9
          to label %if.end35 [label %if.then29], !srcloc !284

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_client.i, align 4
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_opread.__UNIQUE_ID_ddebug300, ptr noundef %dev31, ptr noundef nonnull @.str.13, i32 noundef -121) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %do.body17, %for.body.i.if.end35_crit_edge, %if.then.if.end35_crit_edge
  %status.068 = phi i32 [ -121, %if.then29 ], [ -121, %do.body17 ], [ 0, %if.then.if.end35_crit_edge ], [ 0, %for.body.i.if.end35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %local_buf) #9
  ret i32 %status.068
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxl692_read_ber_ucb(ptr nocapture noundef %fe) unnamed_addr #2 align 64 {
entry:
  %rx_buf = alloca [58 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %rx_buf) #9
  %2 = call ptr @memset(ptr %rx_buf, i32 0, i32 58)
  %demod_type1 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_type1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_ber_ucb, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !284

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 4
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug328, ptr noundef %dev4, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cond = icmp eq i32 %4, 2
  br i1 %cond, label %sw.bb, label %do.end.if.end78_crit_edge

do.end.if.end78_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

sw.bb:                                            ; preds = %do.end
  %call5 = call fastcc i32 @mxl692_i2c_writeread(ptr noundef %1, i8 noundef zeroext 16, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %rx_buf, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %do.body60

if.then7:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then7.if.end10_crit_edge, label %if.else

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %error_bytes = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T, ptr %rx_buf, i32 0, i32 2
  %9 = ptrtoint ptr %error_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error_bytes, align 4
  %div = udiv i32 %10, %8
  %total_packets = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T, ptr %rx_buf, i32 0, i32 1
  %11 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_packets, align 4
  %mul = mul i32 %12, %div
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7.if.end10_crit_edge
  %utmp.0 = phi i32 [ %mul, %if.else ], [ 0, %if.then7.if.end10_crit_edge ]
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %stat, align 1
  %error_bytes11 = getelementptr inbounds %struct.MXL_EAGLE_ATSC_DEMOD_ERROR_COUNTERS_T, ptr %rx_buf, i32 0, i32 2
  %14 = ptrtoint ptr %error_bytes11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_bytes11, align 4
  %conv = zext i32 %15 to i64
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %16, align 1
  %add = add i64 %18, %conv
  store i64 %add, ptr %16, align 1
  %stat15 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %19 = ptrtoint ptr %stat15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %stat15, align 1
  %conv18 = zext i32 %utmp.0 to i64
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 1
  %add22 = add i64 %22, %conv18
  store i64 %add22, ptr %20, align 1
  %stat23 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %23 = ptrtoint ptr %stat23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %stat23, align 1
  %conv27 = zext i32 %8 to i64
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %24, align 1
  %add31 = add i64 %26, %conv27
  store i64 %add31, ptr %24, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_ber_ucb, %if.then44)) #9
          to label %if.end78 [label %if.then44], !srcloc !284

if.then44:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client45 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %i2c_client45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client45, align 4
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %20, align 1
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %24, align 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug329, ptr noundef %dev46, ptr noundef nonnull @.str.103, i64 noundef %30, i64 noundef %32) #9
  br label %if.end78

do.body60:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxl692_read_ber_ucb, %if.then72)) #9
          to label %if.end78 [label %if.then72], !srcloc !284

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_client73 = getelementptr inbounds %struct.mxl692_dev, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %i2c_client73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_client73, align 4
  %dev74 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug330, ptr noundef %dev74, ptr noundef nonnull @.str.13, i32 noundef %call5) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %do.body60, %if.then44, %if.end10, %do.end.if.end78_crit_edge
  %mxl_status.0109 = phi i32 [ %call5, %if.then72 ], [ 0, %if.end10 ], [ %call5, %do.body60 ], [ 0, %if.then44 ], [ 0, %do.end.if.end78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %rx_buf) #9
  ret i32 %mxl_status.0109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !76, !77, !79, !81, !82, !84, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !118, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !237, !239, !241, !242, !244, !245, !247, !248, !250, !251, !252, !253, !255, !257, !258, !260, !262, !263, !265, !266, !268, !270, !271, !273}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__initcall__kmod_mxl692__335_1366_mxl692_driver_init6, !1, !"__initcall__kmod_mxl692__335_1366_mxl692_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1366, i32 1}
!2 = !{ptr @__exitcall_mxl692_driver_exit, !1, !"__exitcall_mxl692_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author336, !4, !"__UNIQUE_ID_author336", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1368, i32 1}
!5 = !{ptr @__UNIQUE_ID_description337, !6, !"__UNIQUE_ID_description337", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1369, i32 1}
!7 = !{ptr @__UNIQUE_ID_firmware338, !8, !"__UNIQUE_ID_firmware338", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1370, i32 1}
!9 = !{ptr @__UNIQUE_ID_file339, !10, !"__UNIQUE_ID_file339", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1371, i32 1}
!11 = !{ptr @__UNIQUE_ID_license340, !10, !"__UNIQUE_ID_license340", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1359, i32 11}
!14 = !{ptr @mxl692_driver, !15, !"mxl692_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1357, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1321, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxl692_probe.__UNIQUE_ID_ddebug333, !17, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!21 = !{ptr @mxl692_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1329, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1332, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mxl692_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mxl692_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1336, i32 2}
!32 = !{ptr @mxl692_probe.__UNIQUE_ID_ddebug334, !31, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!33 = !{ptr @mxl692_ops, !34, !"mxl692_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1292, i32 38}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 862, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mxl692_init.__UNIQUE_ID_ddebug318, !36, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 888, i32 39}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 890, i32 3}
!43 = !{ptr @mxl692_init.__UNIQUE_ID_ddebug319, !42, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 931, i32 2}
!46 = !{ptr @mxl692_init.__UNIQUE_ID_ddebug320, !45, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 655, i32 2}
!49 = !{ptr @mxl692_reset.__UNIQUE_ID_ddebug310, !48, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!50 = !{ptr @mxl692_reset.__UNIQUE_ID_ddebug311, !51, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 672, i32 3}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 310, i32 3}
!54 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !53, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!56 = !{ptr @mxl692_memwrite.__UNIQUE_ID_ddebug295, !57, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 332, i32 2}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 46, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mxl692_i2c_write.__UNIQUE_ID_ddebug290, !59, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 366, i32 3}
!64 = !{ptr @mxl692_memread.__UNIQUE_ID_ddebug296, !63, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 63, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mxl692_i2c_read.__UNIQUE_ID_ddebug291, !66, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 682, i32 2}
!71 = !{ptr @mxl692_config_regulators.__UNIQUE_ID_ddebug312, !70, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!72 = !{ptr @mxl692_config_regulators.__UNIQUE_ID_ddebug313, !73, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 708, i32 3}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 718, i32 2}
!76 = !{ptr @mxl692_config_xtal.__UNIQUE_ID_ddebug314, !75, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!77 = !{ptr @mxl692_config_xtal.__UNIQUE_ID_ddebug315, !78, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 824, i32 3}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 580, i32 2}
!81 = !{ptr @mxl692_fwdownload.__UNIQUE_ID_ddebug308, !80, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!82 = !{ptr @mxl692_fwdownload.__UNIQUE_ID_ddebug309, !83, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 618, i32 3}
!84 = !{ptr @mxl692_validate_fw_header.fw_hdr, !85, !"fw_hdr", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 218, i32 18}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 243, i32 3}
!88 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mxl692_validate_fw_header.__UNIQUE_ID_ddebug292, !87, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 295, i32 3}
!92 = !{ptr @mxl692_write_fw_block.__UNIQUE_ID_ddebug293, !91, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 506, i32 3}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug301, !94, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 513, i32 3}
!99 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug302, !98, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 521, i32 3}
!102 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug303, !101, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!103 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 526, i32 4}
!107 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug304, !106, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 542, i32 3}
!110 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug305, !109, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 551, i32 4}
!113 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug306, !112, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!114 = !{ptr @mxl692_i2c_writeread.__UNIQUE_ID_ddebug307, !115, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 560, i32 3}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 390, i32 3}
!118 = distinct !{null, !117, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 407, i32 3}
!121 = !{ptr @mxl692_opwrite.__UNIQUE_ID_ddebug298, !120, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 376, i32 9}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 109, i32 2}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 110, i32 2}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 111, i32 2}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 112, i32 2}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 113, i32 2}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 114, i32 2}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 115, i32 2}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 116, i32 2}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 117, i32 2}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 118, i32 2}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 121, i32 2}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 122, i32 2}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 123, i32 2}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 126, i32 2}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 127, i32 2}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 128, i32 2}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 129, i32 2}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 130, i32 2}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 131, i32 2}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 134, i32 2}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 135, i32 2}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 136, i32 2}
!168 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 137, i32 2}
!170 = !{ptr @.str.63, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 138, i32 2}
!172 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 139, i32 2}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 140, i32 2}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 141, i32 2}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 142, i32 2}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 143, i32 2}
!182 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 144, i32 2}
!184 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 145, i32 2}
!186 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 148, i32 2}
!188 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 149, i32 2}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 150, i32 2}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 151, i32 2}
!194 = !{ptr @.str.75, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 154, i32 2}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 155, i32 2}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 156, i32 2}
!200 = !{ptr @.str.78, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 157, i32 2}
!202 = !{ptr @.str.79, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 160, i32 2}
!204 = !{ptr @MXL_EAGLE_OPCODE_STRING, !205, !"MXL_EAGLE_OPCODE_STRING", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/mxl692_defs.h", i32 107, i32 27}
!206 = !{ptr @.str.80, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 428, i32 5}
!208 = !{ptr @.str.81, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @mxl692_opread.__UNIQUE_ID_ddebug299, !207, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!210 = !{ptr @mxl692_opread.__UNIQUE_ID_ddebug300, !211, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 439, i32 3}
!212 = !{ptr @.str.82, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 626, i32 41}
!214 = !{ptr @.str.83, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 626, i32 48}
!216 = !{ptr @.str.84, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 626, i32 55}
!218 = !{ptr @.str.85, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 626, i32 62}
!220 = !{ptr @mxl692_get_versions.chip_id, !221, !"chip_id", i1 false, i1 false}
!221 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 626, i32 28}
!222 = !{ptr @.str.86, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 636, i32 2}
!224 = !{ptr @.str.87, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @mxl692_get_versions._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @mxl692_get_versions._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 639, i32 2}
!229 = !{ptr @mxl692_get_versions._entry.88, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @mxl692_get_versions._entry_ptr.90, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 834, i32 2}
!233 = !{ptr @.str.92, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @mxl692_powermode.__UNIQUE_ID_ddebug316, !232, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!235 = !{ptr @.str.93, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.94, !232, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @mxl692_powermode.__UNIQUE_ID_ddebug317, !238, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!238 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 844, i32 3}
!239 = !{ptr @.str.95, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 958, i32 2}
!241 = !{ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug321, !240, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!242 = !{ptr @.str.96, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 975, i32 3}
!244 = !{ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug322, !243, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!245 = !{ptr @.str.97, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 990, i32 3}
!247 = !{ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug323, !246, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1058, i32 2}
!250 = !{ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug324, !249, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!251 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @mxl692_set_frontend.__UNIQUE_ID_ddebug325, !254, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!254 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1096, i32 2}
!255 = !{ptr @.str.101, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1227, i32 2}
!257 = !{ptr @mxl692_read_status.__UNIQUE_ID_ddebug331, !256, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!258 = !{ptr @mxl692_read_status.__UNIQUE_ID_ddebug332, !259, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!259 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1285, i32 3}
!260 = !{ptr @.str.102, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1172, i32 2}
!262 = !{ptr @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug328, !261, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!263 = !{ptr @.str.103, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1199, i32 4}
!265 = !{ptr @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug329, !264, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!266 = !{ptr @mxl692_read_ber_ucb.__UNIQUE_ID_ddebug330, !267, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!267 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1210, i32 3}
!268 = !{ptr @.str.104, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1123, i32 2}
!270 = !{ptr @mxl692_read_snr.__UNIQUE_ID_ddebug326, !269, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!271 = !{ptr @mxl692_read_snr.__UNIQUE_ID_ddebug327, !272, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!272 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1158, i32 3}
!273 = !{ptr @mxl692_id_table, !274, !"mxl692_id_table", i1 false, i1 false}
!274 = !{!"../drivers/media/dvb-frontends/mxl692.c", i32 1351, i32 35}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{i64 2148199280, i64 2148199285, i64 2148199298, i64 2148199342, i64 2148199376, i64 2148199397}
!285 = !{!"auto-init"}
