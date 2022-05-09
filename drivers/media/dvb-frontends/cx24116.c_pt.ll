; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx24116.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24116.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx24116_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24116_attach\09\09\09\09"
module asm "\09.long\09__crc_cx24116_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24116_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24116_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24116_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cx24116_modfec = type { i32, i32, i32, i8, i8 }
%struct.cx24116_state = type { ptr, ptr, %struct.dvb_frontend, %struct.cx24116_tuning, %struct.cx24116_tuning, i8, i8, %struct.cx24116_cmd }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.cx24116_tuning = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.cx24116_cmd = type { i8, [30 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [14 x i8] c"cx24116.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"cx24116.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [60 x i8] c"cx24116.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__param_str_toneburst = internal constant [18 x i8] c"cx24116.toneburst\00", align 1
@toneburst = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_toneburst = internal constant %struct.kernel_param { ptr @__param_str_toneburst, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @toneburst } }, section "__param", align 4
@__UNIQUE_ID_tonebursttype292 = internal constant [31 x i8] c"cx24116.parmtype=toneburst:int\00", section ".modinfo", align 1
@__UNIQUE_ID_toneburst293 = internal constant [89 x i8] c"cx24116.parm=toneburst:DiSEqC toneburst 0=OFF, 1=TONE CACHE, 2=MESSAGE CACHE (default:1)\00", section ".modinfo", align 1
@__param_str_esno_snr = internal constant [17 x i8] c"cx24116.esno_snr\00", align 1
@esno_snr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_esno_snr = internal constant %struct.kernel_param { ptr @__param_str_esno_snr, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @esno_snr } }, section "__param", align 4
@__UNIQUE_ID_esno_snrtype294 = internal constant [30 x i8] c"cx24116.parmtype=esno_snr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_esno_snr295 = internal constant [88 x i8] c"cx24116.parm=esno_snr:SNR return units, 0=PERCENTAGE 0-100, 1=ESNO(db * 10) (default:0)\00", section ".modinfo", align 1
@cx24116_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016cx24116: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx24116.c\00", [58 x i8] zeroinitializer }, align 32
@cx24116_attach._entry_ptr = internal global ptr @cx24116_attach._entry, section ".printk_index", align 4
@cx24116_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016Invalid probe, probably not a CX24116 device\0A\00", [48 x i8] zeroinitializer }, align 32
@cx24116_attach._entry_ptr.5 = internal global ptr @cx24116_attach._entry.3, section ".printk_index", align 4
@cx24116_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24116/CX24118\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @cx24116_release, ptr null, ptr @cx24116_initfe, ptr @cx24116_sleep, ptr null, ptr null, ptr null, ptr @cx24116_tune, ptr @cx24116_get_algo, ptr @cx24116_set_frontend, ptr null, ptr null, ptr @cx24116_read_status, ptr @cx24116_read_ber, ptr @cx24116_read_signal_strength, ptr @cx24116_read_snr, ptr @cx24116_read_ucblocks, ptr null, ptr @cx24116_send_diseqc_msg, ptr null, ptr @cx24116_diseqc_send_burst, ptr @cx24116_set_tone, ptr @cx24116_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_cx24116_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24116_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24116_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24116_attach to i32), ptr @__kstrtab_cx24116_attach, ptr @__kstrtabns_cx24116_attach }, section "___ksymtab+cx24116_attach", align 4
@__UNIQUE_ID_description296 = internal constant [78 x i8] c"cx24116.description=DVB Frontend module for Conexant cx24116/cx24118 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [27 x i8] c"cx24116.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [49 x i8] c"cx24116.file=drivers/media/dvb-frontends/cx24116\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"cx24116.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx24116_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: reg=0x%x (error=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24116_readreg\00", [16 x i8] zeroinitializer }, align 32
@cx24116_readreg._entry_ptr = internal global ptr @cx24116_readreg._entry, section ".printk_index", align 4
@cx24116_readreg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cx24116: read reg 0x%02x, value 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@cx24116_readreg._entry_ptr.10 = internal global ptr @cx24116_readreg._entry.8, section ".printk_index", align 4
@cx24116_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24116_release\00", [16 x i8] zeroinitializer }, align 32
@cx24116_release._entry_ptr = internal global ptr @cx24116_release._entry, section ".printk_index", align 4
@cx24116_initfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016cx24116: %s()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_initfe\00", [17 x i8] zeroinitializer }, align 32
@cx24116_initfe._entry_ptr = internal global ptr @cx24116_initfe._entry, section ".printk_index", align 4
@cx24116_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cx24116: %s: write reg 0x%02x, value 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24116_writereg\00", [47 x i8] zeroinitializer }, align 32
@cx24116_writereg._entry_ptr = internal global ptr @cx24116_writereg._entry, section ".printk_index", align 4
@cx24116_writereg._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x, value == 0x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@cx24116_writereg._entry_ptr.18 = internal global ptr @cx24116_writereg._entry.16, section ".printk_index", align 4
@cx24116_cmd_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24116_cmd_execute\00", [44 x i8] zeroinitializer }, align 32
@cx24116_cmd_execute._entry_ptr = internal global ptr @cx24116_cmd_execute._entry, section ".printk_index", align 4
@cx24116_cmd_execute._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s(): Unable initialise the firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@cx24116_cmd_execute._entry_ptr.22 = internal global ptr @cx24116_cmd_execute._entry.20, section ".printk_index", align 4
@cx24116_cmd_execute._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cx24116: %s: 0x%02x == 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@cx24116_cmd_execute._entry_ptr.25 = internal global ptr @cx24116_cmd_execute._entry.23, section ".printk_index", align 4
@cx24116_cmd_execute._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s() Firmware not responding\0A\00", [32 x i8] zeroinitializer }, align 32
@cx24116_cmd_execute._entry_ptr.28 = internal global ptr @cx24116_cmd_execute._entry.26, section ".printk_index", align 4
@cx24116_firmware_ondemand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.29, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24116_firmware_ondemand\00", [38 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry_ptr = internal global ptr @cx24116_firmware_ondemand._entry, section ".printk_index", align 4
@cx24116_firmware_ondemand._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Waiting for firmware upload (%s)...\0A\00", [53 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry_ptr.32 = internal global ptr @cx24116_firmware_ondemand._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-fe-cx24116.fw\00", [46 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Waiting for firmware upload(2)...\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry_ptr.36 = internal global ptr @cx24116_firmware_ondemand._entry.34, section ".printk_index", align 4
@cx24116_firmware_ondemand._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: No firmware uploaded (timeout or file not found?)\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry_ptr.39 = internal global ptr @cx24116_firmware_ondemand._entry.37, section ".printk_index", align 4
@cx24116_firmware_ondemand._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Writing firmware to device failed\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry_ptr.42 = internal global ptr @cx24116_firmware_ondemand._entry.40, section ".printk_index", align 4
@cx24116_firmware_ondemand._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Firmware upload %s\0A\00", [38 x i8] zeroinitializer }, align 32
@cx24116_firmware_ondemand._entry_ptr.45 = internal global ptr @cx24116_firmware_ondemand._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@cx24116_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24116_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@cx24116_load_firmware._entry_ptr = internal global ptr @cx24116_load_firmware._entry, section ".printk_index", align 4
@cx24116_load_firmware._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016cx24116: Firmware is %zu bytes (%02x %02x .. %02x %02x)\0A\00", [37 x i8] zeroinitializer }, align 32
@cx24116_load_firmware._entry_ptr.51 = internal global ptr @cx24116_load_firmware._entry.49, section ".printk_index", align 4
@cx24116_load_firmware._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: FW version %i.%i.%i.%i\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24116_load_firmware._entry_ptr.54 = internal global ptr @cx24116_load_firmware._entry.52, section ".printk_index", align 4
@cx24116_writeregN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cx24116: %s:  write regN 0x%02x, len = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx24116_writeregN\00", [46 x i8] zeroinitializer }, align 32
@cx24116_writeregN._entry_ptr = internal global ptr @cx24116_writeregN._entry, section ".printk_index", align 4
@cx24116_writeregN._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24116_writeregN._entry_ptr.59 = internal global ptr @cx24116_writeregN._entry.57, section ".printk_index", align 4
@cx24116_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.60, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx24116_sleep\00", [18 x i8] zeroinitializer }, align 32
@cx24116_sleep._entry_ptr = internal global ptr @cx24116_sleep._entry, section ".printk_index", align 4
@cx24116_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.61, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24116_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr = internal global ptr @cx24116_set_frontend._entry, section ".printk_index", align 4
@cx24116_set_frontend._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx24116: %s: DVB-S delivery system selected\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.64 = internal global ptr @cx24116_set_frontend._entry.62, section ".printk_index", align 4
@cx24116_set_frontend._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cx24116: %s: unsupported modulation selected (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.67 = internal global ptr @cx24116_set_frontend._entry.65, section ".printk_index", align 4
@cx24116_set_frontend._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cx24116: %s: unsupported rolloff selected (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.70 = internal global ptr @cx24116_set_frontend._entry.68, section ".printk_index", align 4
@cx24116_set_frontend._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016cx24116: %s: DVB-S2 delivery system selected\0A\00", [48 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.73 = internal global ptr @cx24116_set_frontend._entry.71, section ".printk_index", align 4
@cx24116_set_frontend._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.75 = internal global ptr @cx24116_set_frontend._entry.74, section ".printk_index", align 4
@cx24116_set_frontend._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.61, ptr @.str.2, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cx24116: %s: unsupported pilot mode selected (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.78 = internal global ptr @cx24116_set_frontend._entry.76, section ".printk_index", align 4
@cx24116_set_frontend._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.80 = internal global ptr @cx24116_set_frontend._entry.79, section ".printk_index", align 4
@cx24116_set_frontend._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.61, ptr @.str.2, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016cx24116: %s: unsupported delivery system selected (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.83 = internal global ptr @cx24116_set_frontend._entry.81, section ".printk_index", align 4
@cx24116_set_frontend._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.61, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx24116: %s:   delsys      = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.86 = internal global ptr @cx24116_set_frontend._entry.84, section ".printk_index", align 4
@cx24116_set_frontend._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.61, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx24116: %s:   modulation  = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.89 = internal global ptr @cx24116_set_frontend._entry.87, section ".printk_index", align 4
@cx24116_set_frontend._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.61, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx24116: %s:   frequency   = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.92 = internal global ptr @cx24116_set_frontend._entry.90, section ".printk_index", align 4
@cx24116_set_frontend._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.61, ptr @.str.2, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cx24116: %s:   pilot       = %d (val = 0x%02x)\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.95 = internal global ptr @cx24116_set_frontend._entry.93, section ".printk_index", align 4
@cx24116_set_frontend._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.61, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx24116: %s:   retune      = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.98 = internal global ptr @cx24116_set_frontend._entry.96, section ".printk_index", align 4
@cx24116_set_frontend._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.61, ptr @.str.2, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cx24116: %s:   rolloff     = %d (val = 0x%02x)\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.101 = internal global ptr @cx24116_set_frontend._entry.99, section ".printk_index", align 4
@cx24116_set_frontend._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.61, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx24116: %s:   symbol_rate = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.104 = internal global ptr @cx24116_set_frontend._entry.102, section ".printk_index", align 4
@cx24116_set_frontend._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.61, ptr @.str.2, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016cx24116: %s:   FEC         = %d (mask/val = 0x%02x/0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.107 = internal global ptr @cx24116_set_frontend._entry.105, section ".printk_index", align 4
@cx24116_set_frontend._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.61, ptr @.str.2, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cx24116: %s:   Inversion   = %d (val = 0x%02x)\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.110 = internal global ptr @cx24116_set_frontend._entry.108, section ".printk_index", align 4
@cx24116_set_frontend._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.61, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016cx24116: %s: Tuned\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.113 = internal global ptr @cx24116_set_frontend._entry.111, section ".printk_index", align 4
@cx24116_set_frontend._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.61, ptr @.str.2, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016cx24116: %s: Not tuned\0A\00", [38 x i8] zeroinitializer }, align 32
@cx24116_set_frontend._entry_ptr.116 = internal global ptr @cx24116_set_frontend._entry.114, section ".printk_index", align 4
@cx24116_set_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016cx24116: %s(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24116_set_inversion\00", [42 x i8] zeroinitializer }, align 32
@cx24116_set_inversion._entry_ptr = internal global ptr @cx24116_set_inversion._entry, section ".printk_index", align 4
@cx24116_set_fec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016cx24116: %s(0x%02x,0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24116_set_fec\00", [16 x i8] zeroinitializer }, align 32
@cx24116_set_fec._entry_ptr = internal global ptr @cx24116_set_fec._entry, section ".printk_index", align 4
@CX24116_MODFEC_MODES = internal constant { [24 x %struct.cx24116_modfec], [96 x i8] } { [24 x %struct.cx24116_modfec] [%struct.cx24116_modfec { i32 5, i32 0, i32 0, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 1, i8 2, i8 46 }, %struct.cx24116_modfec { i32 5, i32 0, i32 2, i8 4, i8 47 }, %struct.cx24116_modfec { i32 5, i32 0, i32 3, i8 8, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 4, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 5, i8 32, i8 49 }, %struct.cx24116_modfec { i32 5, i32 0, i32 6, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 7, i8 -128, i8 50 }, %struct.cx24116_modfec { i32 5, i32 0, i32 8, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 5, i32 0, i32 9, i8 -2, i8 48 }, %struct.cx24116_modfec { i32 6, i32 0, i32 1, i8 0, i8 4 }, %struct.cx24116_modfec { i32 6, i32 0, i32 10, i8 0, i8 5 }, %struct.cx24116_modfec { i32 6, i32 0, i32 2, i8 0, i8 6 }, %struct.cx24116_modfec { i32 6, i32 0, i32 3, i8 0, i8 7 }, %struct.cx24116_modfec { i32 6, i32 0, i32 4, i8 0, i8 8 }, %struct.cx24116_modfec { i32 6, i32 0, i32 5, i8 0, i8 9 }, %struct.cx24116_modfec { i32 6, i32 0, i32 8, i8 0, i8 10 }, %struct.cx24116_modfec { i32 6, i32 0, i32 11, i8 0, i8 11 }, %struct.cx24116_modfec { i32 6, i32 9, i32 10, i8 0, i8 12 }, %struct.cx24116_modfec { i32 6, i32 9, i32 2, i8 0, i8 13 }, %struct.cx24116_modfec { i32 6, i32 9, i32 3, i8 0, i8 14 }, %struct.cx24116_modfec { i32 6, i32 9, i32 5, i8 0, i8 15 }, %struct.cx24116_modfec { i32 6, i32 9, i32 8, i8 0, i8 16 }, %struct.cx24116_modfec { i32 6, i32 9, i32 11, i8 0, i8 17 }], [96 x i8] zeroinitializer }, align 32
@cx24116_set_fec._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cx24116: %s() mask/val = 0x%02x/0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@cx24116_set_fec._entry_ptr.123 = internal global ptr @cx24116_set_fec._entry.121, section ".printk_index", align 4
@cx24116_lookup_fecmod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.124, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24116_lookup_fecmod\00", [42 x i8] zeroinitializer }, align 32
@cx24116_lookup_fecmod._entry_ptr = internal global ptr @cx24116_lookup_fecmod._entry, section ".printk_index", align 4
@cx24116_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.125, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx24116_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@cx24116_set_symbolrate._entry_ptr = internal global ptr @cx24116_set_symbolrate._entry, section ".printk_index", align 4
@cx24116_set_symbolrate._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cx24116: %s() unsupported symbol_rate = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cx24116_set_symbolrate._entry_ptr.128 = internal global ptr @cx24116_set_symbolrate._entry.126, section ".printk_index", align 4
@cx24116_set_symbolrate._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016cx24116: %s() symbol_rate = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cx24116_set_symbolrate._entry_ptr.131 = internal global ptr @cx24116_set_symbolrate._entry.129, section ".printk_index", align 4
@cx24116_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx24116: %s: status = 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24116_read_status\00", [44 x i8] zeroinitializer }, align 32
@cx24116_read_status._entry_ptr = internal global ptr @cx24116_read_status._entry, section ".printk_index", align 4
@cx24116_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.134, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24116_read_ber\00", [47 x i8] zeroinitializer }, align 32
@cx24116_read_ber._entry_ptr = internal global ptr @cx24116_read_ber._entry, section ".printk_index", align 4
@cx24116_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.135, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx24116_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@cx24116_read_signal_strength._entry_ptr = internal global ptr @cx24116_read_signal_strength._entry, section ".printk_index", align 4
@cx24116_read_signal_strength._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx24116: %s: raw / cooked = 0x%04x / 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24116_read_signal_strength._entry_ptr.138 = internal global ptr @cx24116_read_signal_strength._entry.136, section ".printk_index", align 4
@cx24116_read_snr_esno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.139, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24116_read_snr_esno\00", [42 x i8] zeroinitializer }, align 32
@cx24116_read_snr_esno._entry_ptr = internal global ptr @cx24116_read_snr_esno._entry, section ".printk_index", align 4
@cx24116_read_snr_esno._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016cx24116: %s: raw 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@cx24116_read_snr_esno._entry_ptr.142 = internal global ptr @cx24116_read_snr_esno._entry.140, section ".printk_index", align 4
@cx24116_read_snr_pct.snr_tab = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 6554, i32 13107, i32 19661, i32 26215, i32 32768, i32 39322, i32 45875, i32 52429, i32 58983, i32 65536, i32 72090, i32 78643, i32 85197, i32 91751, i32 98304], [32 x i8] zeroinitializer }, align 32
@cx24116_read_snr_pct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.143, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24116_read_snr_pct\00", [43 x i8] zeroinitializer }, align 32
@cx24116_read_snr_pct._entry_ptr = internal global ptr @cx24116_read_snr_pct._entry, section ".printk_index", align 4
@cx24116_read_snr_pct._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx24116: %s: raw / cooked = 0x%02x / 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24116_read_snr_pct._entry_ptr.146 = internal global ptr @cx24116_read_snr_pct._entry.144, section ".printk_index", align 4
@cx24116_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.147, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24116_read_ucblocks\00", [42 x i8] zeroinitializer }, align 32
@cx24116_read_ucblocks._entry_ptr = internal global ptr @cx24116_read_ucblocks._entry, section ".printk_index", align 4
@cx24116_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016cx24116: %s(\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx24116_send_diseqc_msg\00", [40 x i8] zeroinitializer }, align 32
@cx24116_send_diseqc_msg._entry_ptr = internal global ptr @cx24116_send_diseqc_msg._entry, section ".printk_index", align 4
@cx24116_send_diseqc_msg._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0160x%02x\00", [23 x i8] zeroinitializer }, align 32
@cx24116_send_diseqc_msg._entry_ptr.152 = internal global ptr @cx24116_send_diseqc_msg._entry.150, section ".printk_index", align 4
@cx24116_send_diseqc_msg._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016, \00", [27 x i8] zeroinitializer }, align 32
@cx24116_send_diseqc_msg._entry_ptr.155 = internal global ptr @cx24116_send_diseqc_msg._entry.153, section ".printk_index", align 4
@cx24116_send_diseqc_msg._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.149, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c") toneburst=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24116_send_diseqc_msg._entry_ptr.158 = internal global ptr @cx24116_send_diseqc_msg._entry.156, section ".printk_index", align 4
@cx24116_send_diseqc_msg._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.149, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016cx24116: %s burst=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24116_send_diseqc_msg._entry_ptr.161 = internal global ptr @cx24116_send_diseqc_msg._entry.159, section ".printk_index", align 4
@cx24116_wait_for_lnb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016cx24116: %s() qstatus = 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24116_wait_for_lnb\00", [43 x i8] zeroinitializer }, align 32
@cx24116_wait_for_lnb._entry_ptr = internal global ptr @cx24116_wait_for_lnb._entry, section ".printk_index", align 4
@cx24116_wait_for_lnb._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx24116: %s(): LNB not ready\0A\00", [32 x i8] zeroinitializer }, align 32
@cx24116_wait_for_lnb._entry_ptr.166 = internal global ptr @cx24116_wait_for_lnb._entry.164, section ".printk_index", align 4
@cx24116_diseqc_send_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx24116: %s(%d) toneburst=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24116_diseqc_send_burst\00", [38 x i8] zeroinitializer }, align 32
@cx24116_diseqc_send_burst._entry_ptr = internal global ptr @cx24116_diseqc_send_burst._entry, section ".printk_index", align 4
@cx24116_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.169, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24116_set_tone\00", [47 x i8] zeroinitializer }, align 32
@cx24116_set_tone._entry_ptr = internal global ptr @cx24116_set_tone._entry, section ".printk_index", align 4
@cx24116_set_tone._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Invalid, tone=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24116_set_tone._entry_ptr.172 = internal global ptr @cx24116_set_tone._entry.170, section ".printk_index", align 4
@cx24116_set_tone._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx24116: %s: setting tone on\0A\00", [32 x i8] zeroinitializer }, align 32
@cx24116_set_tone._entry_ptr.175 = internal global ptr @cx24116_set_tone._entry.173, section ".printk_index", align 4
@cx24116_set_tone._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cx24116: %s: setting tone off\0A\00", [63 x i8] zeroinitializer }, align 32
@cx24116_set_tone._entry_ptr.178 = internal global ptr @cx24116_set_tone._entry.176, section ".printk_index", align 4
@cx24116_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016cx24116: %s: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24116_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@cx24116_set_voltage._entry_ptr = internal global ptr @cx24116_set_voltage._entry, section ".printk_index", align 4
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_13\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_18\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 35, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"toneburst\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 120, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [9 x i8] c"esno_snr\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 126, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1111, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1126, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"cx24116_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1452, i32 38 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 259, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 265, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1099, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1149, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 195, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 200, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 519, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 524, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 531, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 542, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 469, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 478, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 482, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 485, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 496, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 501, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 558, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 559, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 666, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 229, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 234, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1181, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1210, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1214, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1218, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1228, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1236, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1243, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1261, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1278, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1285, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1311, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1312, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1313, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1314, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1316, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1317, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1319, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1320, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1322, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1407, i32 5 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1413, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 274, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 427, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [21 x i8] c"CX24116_MODFEC_MODES\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 365, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 437, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 406, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 445, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 450, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 455, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 679, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 699, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 718, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 733, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 774, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 779, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [8 x i8] c"snr_tab\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 744, i32 19 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 750, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 760, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 796, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 958, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 960, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 962, i32 5 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 964, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1010, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 817, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 827, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1049, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 866, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 868, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 887, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 891, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.695 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx24116.c\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 838, i32 2 }
@llvm.compiler.used = appending global [256 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_esno_snr295, ptr @__UNIQUE_ID_esno_snrtype294, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__UNIQUE_ID_toneburst293, ptr @__UNIQUE_ID_tonebursttype292, ptr @__ksymtab_cx24116_attach, ptr @__param_debug, ptr @__param_esno_snr, ptr @__param_toneburst, ptr @cx24116_attach._entry, ptr @cx24116_attach._entry.3, ptr @cx24116_attach._entry_ptr, ptr @cx24116_attach._entry_ptr.5, ptr @cx24116_cmd_execute._entry, ptr @cx24116_cmd_execute._entry.20, ptr @cx24116_cmd_execute._entry.23, ptr @cx24116_cmd_execute._entry.26, ptr @cx24116_cmd_execute._entry_ptr, ptr @cx24116_cmd_execute._entry_ptr.22, ptr @cx24116_cmd_execute._entry_ptr.25, ptr @cx24116_cmd_execute._entry_ptr.28, ptr @cx24116_diseqc_send_burst._entry, ptr @cx24116_diseqc_send_burst._entry_ptr, ptr @cx24116_firmware_ondemand._entry, ptr @cx24116_firmware_ondemand._entry.30, ptr @cx24116_firmware_ondemand._entry.34, ptr @cx24116_firmware_ondemand._entry.37, ptr @cx24116_firmware_ondemand._entry.40, ptr @cx24116_firmware_ondemand._entry.43, ptr @cx24116_firmware_ondemand._entry_ptr, ptr @cx24116_firmware_ondemand._entry_ptr.32, ptr @cx24116_firmware_ondemand._entry_ptr.36, ptr @cx24116_firmware_ondemand._entry_ptr.39, ptr @cx24116_firmware_ondemand._entry_ptr.42, ptr @cx24116_firmware_ondemand._entry_ptr.45, ptr @cx24116_initfe._entry, ptr @cx24116_initfe._entry_ptr, ptr @cx24116_load_firmware._entry, ptr @cx24116_load_firmware._entry.49, ptr @cx24116_load_firmware._entry.52, ptr @cx24116_load_firmware._entry_ptr, ptr @cx24116_load_firmware._entry_ptr.51, ptr @cx24116_load_firmware._entry_ptr.54, ptr @cx24116_lookup_fecmod._entry, ptr @cx24116_lookup_fecmod._entry_ptr, ptr @cx24116_read_ber._entry, ptr @cx24116_read_ber._entry_ptr, ptr @cx24116_read_signal_strength._entry, ptr @cx24116_read_signal_strength._entry.136, ptr @cx24116_read_signal_strength._entry_ptr, ptr @cx24116_read_signal_strength._entry_ptr.138, ptr @cx24116_read_snr_esno._entry, ptr @cx24116_read_snr_esno._entry.140, ptr @cx24116_read_snr_esno._entry_ptr, ptr @cx24116_read_snr_esno._entry_ptr.142, ptr @cx24116_read_snr_pct._entry, ptr @cx24116_read_snr_pct._entry.144, ptr @cx24116_read_snr_pct._entry_ptr, ptr @cx24116_read_snr_pct._entry_ptr.146, ptr @cx24116_read_status._entry, ptr @cx24116_read_status._entry_ptr, ptr @cx24116_read_ucblocks._entry, ptr @cx24116_read_ucblocks._entry_ptr, ptr @cx24116_readreg._entry, ptr @cx24116_readreg._entry.8, ptr @cx24116_readreg._entry_ptr, ptr @cx24116_readreg._entry_ptr.10, ptr @cx24116_release._entry, ptr @cx24116_release._entry_ptr, ptr @cx24116_send_diseqc_msg._entry, ptr @cx24116_send_diseqc_msg._entry.150, ptr @cx24116_send_diseqc_msg._entry.153, ptr @cx24116_send_diseqc_msg._entry.156, ptr @cx24116_send_diseqc_msg._entry.159, ptr @cx24116_send_diseqc_msg._entry_ptr, ptr @cx24116_send_diseqc_msg._entry_ptr.152, ptr @cx24116_send_diseqc_msg._entry_ptr.155, ptr @cx24116_send_diseqc_msg._entry_ptr.158, ptr @cx24116_send_diseqc_msg._entry_ptr.161, ptr @cx24116_set_fec._entry, ptr @cx24116_set_fec._entry.121, ptr @cx24116_set_fec._entry_ptr, ptr @cx24116_set_fec._entry_ptr.123, ptr @cx24116_set_frontend._entry, ptr @cx24116_set_frontend._entry.102, ptr @cx24116_set_frontend._entry.105, ptr @cx24116_set_frontend._entry.108, ptr @cx24116_set_frontend._entry.111, ptr @cx24116_set_frontend._entry.114, ptr @cx24116_set_frontend._entry.62, ptr @cx24116_set_frontend._entry.65, ptr @cx24116_set_frontend._entry.68, ptr @cx24116_set_frontend._entry.71, ptr @cx24116_set_frontend._entry.74, ptr @cx24116_set_frontend._entry.76, ptr @cx24116_set_frontend._entry.79, ptr @cx24116_set_frontend._entry.81, ptr @cx24116_set_frontend._entry.84, ptr @cx24116_set_frontend._entry.87, ptr @cx24116_set_frontend._entry.90, ptr @cx24116_set_frontend._entry.93, ptr @cx24116_set_frontend._entry.96, ptr @cx24116_set_frontend._entry.99, ptr @cx24116_set_frontend._entry_ptr, ptr @cx24116_set_frontend._entry_ptr.101, ptr @cx24116_set_frontend._entry_ptr.104, ptr @cx24116_set_frontend._entry_ptr.107, ptr @cx24116_set_frontend._entry_ptr.110, ptr @cx24116_set_frontend._entry_ptr.113, ptr @cx24116_set_frontend._entry_ptr.116, ptr @cx24116_set_frontend._entry_ptr.64, ptr @cx24116_set_frontend._entry_ptr.67, ptr @cx24116_set_frontend._entry_ptr.70, ptr @cx24116_set_frontend._entry_ptr.73, ptr @cx24116_set_frontend._entry_ptr.75, ptr @cx24116_set_frontend._entry_ptr.78, ptr @cx24116_set_frontend._entry_ptr.80, ptr @cx24116_set_frontend._entry_ptr.83, ptr @cx24116_set_frontend._entry_ptr.86, ptr @cx24116_set_frontend._entry_ptr.89, ptr @cx24116_set_frontend._entry_ptr.92, ptr @cx24116_set_frontend._entry_ptr.95, ptr @cx24116_set_frontend._entry_ptr.98, ptr @cx24116_set_inversion._entry, ptr @cx24116_set_inversion._entry_ptr, ptr @cx24116_set_symbolrate._entry, ptr @cx24116_set_symbolrate._entry.126, ptr @cx24116_set_symbolrate._entry.129, ptr @cx24116_set_symbolrate._entry_ptr, ptr @cx24116_set_symbolrate._entry_ptr.128, ptr @cx24116_set_symbolrate._entry_ptr.131, ptr @cx24116_set_tone._entry, ptr @cx24116_set_tone._entry.170, ptr @cx24116_set_tone._entry.173, ptr @cx24116_set_tone._entry.176, ptr @cx24116_set_tone._entry_ptr, ptr @cx24116_set_tone._entry_ptr.172, ptr @cx24116_set_tone._entry_ptr.175, ptr @cx24116_set_tone._entry_ptr.178, ptr @cx24116_set_voltage._entry, ptr @cx24116_set_voltage._entry_ptr, ptr @cx24116_sleep._entry, ptr @cx24116_sleep._entry_ptr, ptr @cx24116_wait_for_lnb._entry, ptr @cx24116_wait_for_lnb._entry.164, ptr @cx24116_wait_for_lnb._entry_ptr, ptr @cx24116_wait_for_lnb._entry_ptr.166, ptr @cx24116_writereg._entry, ptr @cx24116_writereg._entry.16, ptr @cx24116_writereg._entry_ptr, ptr @cx24116_writereg._entry_ptr.18, ptr @cx24116_writeregN._entry, ptr @cx24116_writeregN._entry.57, ptr @cx24116_writeregN._entry_ptr, ptr @cx24116_writeregN._entry_ptr.59, ptr @debug, ptr @toneburst, ptr @esno_snr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @cx24116_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.77, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @CX24116_MODFEC_MODES, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @cx24116_read_snr_pct.snr_tab, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneburst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esno_snr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_readreg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_initfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_writereg._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_cmd_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_cmd_execute._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_cmd_execute._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_cmd_execute._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_firmware_ondemand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_firmware_ondemand._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_firmware_ondemand._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_firmware_ondemand._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_firmware_ondemand._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_firmware_ondemand._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_load_firmware._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_load_firmware._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_writeregN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_writeregN._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_frontend._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_fec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CX24116_MODFEC_MODES to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_fec._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_lookup_fecmod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_symbolrate._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_symbolrate._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_signal_strength._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_snr_esno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_snr_esno._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_snr_pct.snr_tab to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_snr_pct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_snr_pct._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_send_diseqc_msg._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_send_diseqc_msg._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_send_diseqc_msg._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_send_diseqc_msg._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_wait_for_lnb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_wait_for_lnb._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_diseqc_send_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_tone._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_tone._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_tone._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24116_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx24116_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1164) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %config7 = getelementptr inbounds %struct.cx24116_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config7, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %call9 = tail call fastcc i32 @cx24116_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -1)
  %shl = shl i32 %call9, 8
  %call10 = tail call fastcc i32 @cx24116_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -2)
  %or = or i32 %shl, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1281, i32 %or)
  %cmp11.not = icmp eq i32 %or, 1281
  br i1 %cmp11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %frontend = getelementptr inbounds %struct.cx24116_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.cx24116_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @cx24116_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx24116_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then12 ], [ %frontend, %if.end18 ], [ null, %do.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #8
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #8
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config = getelementptr inbounds %struct.cx24116_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 4
  %conv5 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1, ptr %buf8, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i8 %reg to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %conv12, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp14 = icmp sgt i32 %19, 1
  br i1 %cmp14, label %do.end19, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = zext i8 %reg to i32
  %20 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1, align 1
  %conv22 = zext i8 %21 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv21, i32 noundef %conv22) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %if.end.if.end24_crit_edge
  %22 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1, align 1
  %conv26 = zext i8 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv26, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx24116_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_initfe(ptr noundef %fe) #0 align 64 {
entry:
  %cmd.i62 = alloca %struct.cx24116_cmd, align 1
  %cmd.i = alloca %struct.cx24116_cmd, align 1
  %buf.i43 = alloca [2 x i8], align 1
  %msg.i44 = alloca %struct.i2c_msg, align 4
  %buf.i27 = alloca [2 x i8], align 1
  %msg.i28 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %2 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -32, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv2.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf3.i, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp sgt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %do.end3.if.end.i_crit_edge

do.end3.if.end.i_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 224, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end3.if.end.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.not.i, label %if.end.i.cx24116_writereg.exit_crit_edge, label %do.end11.i

if.end.i.cx24116_writereg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i, i32 noundef 224, i32 noundef 0) #11
  br label %cx24116_writereg.exit

cx24116_writereg.exit:                            ; preds = %do.end11.i, %if.end.i.cx24116_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i27) #8
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i27, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -31, ptr %buf.i27, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i28) #8
  %24 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv2.i30 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv2.i30, ptr %msg.i28, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i31, align 2
  %buf3.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %32 = ptrtoint ptr %buf3.i33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i27, ptr %buf3.i33, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i34 = icmp sgt i32 %33, 1
  br i1 %cmp.i34, label %do.end.i36, label %cx24116_writereg.exit.if.end.i39_crit_edge

cx24116_writereg.exit.if.end.i39_crit_edge:       ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i39

do.end.i36:                                       ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 225, i32 noundef 0) #11
  br label %if.end.i39

if.end.i39:                                       ; preds = %do.end.i36, %cx24116_writereg.exit.if.end.i39_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call5.i37 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i28, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i37)
  %cmp6.not.i38 = icmp eq i32 %call5.i37, 1
  br i1 %cmp6.not.i38, label %if.end.i39.cx24116_writereg.exit42_crit_edge, label %do.end11.i41

if.end.i39.cx24116_writereg.exit42_crit_edge:     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit42

do.end11.i41:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i37, i32 noundef 225, i32 noundef 0) #11
  br label %cx24116_writereg.exit42

cx24116_writereg.exit42:                          ; preds = %do.end11.i41, %if.end.i39.cx24116_writereg.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i28) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i27) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i43) #8
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i43, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -22, ptr %buf.i43, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44) #8
  %39 = getelementptr inbounds i8, ptr %msg.i44, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv2.i46 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i44 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv2.i46, ptr %msg.i44, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i47, align 2
  %buf3.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 3
  %47 = ptrtoint ptr %buf3.i49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i43, ptr %buf3.i49, align 4
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i50 = icmp sgt i32 %48, 1
  br i1 %cmp.i50, label %do.end.i52, label %cx24116_writereg.exit42.if.end.i55_crit_edge

cx24116_writereg.exit42.if.end.i55_crit_edge:     ; preds = %cx24116_writereg.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i55

do.end.i52:                                       ; preds = %cx24116_writereg.exit42
  call void @__sanitizer_cov_trace_pc() #10
  %call.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 234, i32 noundef 0) #11
  br label %if.end.i55

if.end.i55:                                       ; preds = %do.end.i52, %cx24116_writereg.exit42.if.end.i55_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call5.i53 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i44, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i53)
  %cmp6.not.i54 = icmp eq i32 %call5.i53, 1
  br i1 %cmp6.not.i54, label %if.end.i55.cx24116_writereg.exit58_crit_edge, label %do.end11.i57

if.end.i55.cx24116_writereg.exit58_crit_edge:     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit58

do.end11.i57:                                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i53, i32 noundef 234, i32 noundef 0) #11
  br label %cx24116_writereg.exit58

cx24116_writereg.exit58:                          ; preds = %do.end11.i57, %if.end.i55.cx24116_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43) #8
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 54, ptr %2, align 1
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %3, align 1
  %53 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %cmd, align 1
  %call9 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end11, label %cx24116_writereg.exit58.cleanup_crit_edge

cx24116_writereg.exit58.cleanup_crit_edge:        ; preds = %cx24116_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %cx24116_writereg.exit58
  %54 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd.i) #8
  %56 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1
  %57 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 1
  %58 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 2
  %59 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 3
  %60 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 4
  %61 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 5
  %62 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 6
  %63 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i, i32 0, i32 1, i32 7
  %64 = getelementptr inbounds i8, ptr %cmd.i, i32 9
  %65 = call ptr @memset(ptr %64, i32 255, i32 22)
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 32, ptr %56, align 1
  %67 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %57, align 1
  %68 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %58, align 1
  %69 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %59, align 1
  %70 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -113, ptr %60, align 1
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 40, ptr %61, align 1
  %72 = load i32, ptr @toneburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i59 = icmp ne i32 %72, 0
  %conv.i = zext i1 %cmp.i59 to i8
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i, ptr %62, align 1
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %63, align 1
  %75 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 8, ptr %cmd.i, align 1
  %call.i60 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp15.not.i = icmp eq i32 %call.i60, 0
  br i1 %cmp15.not.i, label %if.end15, label %cx24116_diseqc_init.exit

cx24116_diseqc_init.exit:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %dsec_cmd.i = getelementptr inbounds %struct.cx24116_state, ptr %55, i32 0, i32 7
  %args17.i = getelementptr inbounds %struct.cx24116_state, ptr %55, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %args17.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 33, ptr %args17.i, align 1
  %arrayidx21.i = getelementptr %struct.cx24116_state, ptr %55, i32 0, i32 7, i32 1, i32 1
  %77 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx21.i, align 1
  %arrayidx24.i = getelementptr %struct.cx24116_state, ptr %55, i32 0, i32 7, i32 1, i32 2
  %78 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %arrayidx24.i, align 1
  %arrayidx27.i = getelementptr %struct.cx24116_state, ptr %55, i32 0, i32 7, i32 1, i32 3
  %79 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx27.i, align 1
  %arrayidx30.i = getelementptr %struct.cx24116_state, ptr %55, i32 0, i32 7, i32 1, i32 4
  %80 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx30.i, align 1
  %arrayidx33.i = getelementptr %struct.cx24116_state, ptr %55, i32 0, i32 7, i32 1, i32 5
  %81 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx33.i, align 1
  %82 = ptrtoint ptr %dsec_cmd.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 6, ptr %dsec_cmd.i, align 2
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd.i) #8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd.i62) #8
  %83 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i62, i32 0, i32 1
  %84 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd.i62, i32 0, i32 1, i32 1
  %85 = getelementptr inbounds i8, ptr %cmd.i62, i32 3
  %86 = call ptr @memset(ptr %85, i32 255, i32 28)
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i, label %if.end15.do.end5.i_crit_edge, label %do.end.i64

if.end15.do.end5.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i64:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i64, %if.end15.do.end5.i_crit_edge
  %call6.i = call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.not.i, label %if.end9.i, label %do.end5.i.cx24116_set_voltage.exit_crit_edge

do.end5.i.cx24116_set_voltage.exit_crit_edge:     ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_set_voltage.exit

if.end9.i:                                        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 100) #8
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 34, ptr %83, align 1
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %84, align 1
  %90 = ptrtoint ptr %cmd.i62 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %cmd.i62, align 1
  call void @msleep(i32 noundef 15) #8
  %call14.i = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd.i62) #8
  br label %cx24116_set_voltage.exit

cx24116_set_voltage.exit:                         ; preds = %if.end9.i, %do.end5.i.cx24116_set_voltage.exit_crit_edge
  %retval.0.i = phi i32 [ %call14.i, %if.end9.i ], [ %call6.i, %do.end5.i.cx24116_set_voltage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd.i62) #8
  br label %cleanup

cleanup:                                          ; preds = %cx24116_set_voltage.exit, %cx24116_diseqc_init.exit, %cx24116_writereg.exit58.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cx24116_set_voltage.exit ], [ %call9, %cx24116_writereg.exit58.cleanup_crit_edge ], [ %call.i60, %cx24116_diseqc_init.exit ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i34 = alloca [2 x i8], align 1
  %msg.i35 = alloca %struct.i2c_msg, align 4
  %buf.i18 = alloca [2 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %2 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds i8, ptr %cmd, i32 3
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.60) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 54, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %3, align 1
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %cmd, align 1
  %call6 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -22, ptr %buf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  %config.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv2.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf3.i, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp sgt i32 %22, 1
  br i1 %cmp.i, label %do.end.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 234, i32 noundef 255) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end8.if.end.i_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.not.i, label %if.end.i.cx24116_writereg.exit_crit_edge, label %do.end11.i

if.end.i.cx24116_writereg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i, i32 noundef 234, i32 noundef 255) #11
  br label %cx24116_writereg.exit

cx24116_writereg.exit:                            ; preds = %do.end11.i, %if.end.i.cx24116_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18) #8
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i18, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -31, ptr %buf.i18, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #8
  %28 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv2.i21 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv2.i21, ptr %msg.i19, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i22, align 2
  %buf3.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %36 = ptrtoint ptr %buf3.i24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i18, ptr %buf3.i24, align 4
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i25 = icmp sgt i32 %37, 1
  br i1 %cmp.i25, label %do.end.i27, label %cx24116_writereg.exit.if.end.i30_crit_edge

cx24116_writereg.exit.if.end.i30_crit_edge:       ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i30

do.end.i27:                                       ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 225, i32 noundef 1) #11
  br label %if.end.i30

if.end.i30:                                       ; preds = %do.end.i27, %cx24116_writereg.exit.if.end.i30_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call5.i28 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i19, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i28)
  %cmp6.not.i29 = icmp eq i32 %call5.i28, 1
  br i1 %cmp6.not.i29, label %if.end.i30.cx24116_writereg.exit33_crit_edge, label %do.end11.i32

if.end.i30.cx24116_writereg.exit33_crit_edge:     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit33

do.end11.i32:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i28, i32 noundef 225, i32 noundef 1) #11
  br label %cx24116_writereg.exit33

cx24116_writereg.exit33:                          ; preds = %do.end11.i32, %if.end.i30.cx24116_writereg.exit33_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i34) #8
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i34, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -32, ptr %buf.i34, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i35) #8
  %43 = getelementptr inbounds i8, ptr %msg.i35, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv2.i37 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i35 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv2.i37, ptr %msg.i35, align 4
  %flags.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i38, align 2
  %buf3.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i35, i32 0, i32 3
  %51 = ptrtoint ptr %buf3.i40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i34, ptr %buf3.i40, align 4
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i41 = icmp sgt i32 %52, 1
  br i1 %cmp.i41, label %do.end.i43, label %cx24116_writereg.exit33.if.end.i46_crit_edge

cx24116_writereg.exit33.if.end.i46_crit_edge:     ; preds = %cx24116_writereg.exit33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i46

do.end.i43:                                       ; preds = %cx24116_writereg.exit33
  call void @__sanitizer_cov_trace_pc() #10
  %call.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 224, i32 noundef 1) #11
  br label %if.end.i46

if.end.i46:                                       ; preds = %do.end.i43, %cx24116_writereg.exit33.if.end.i46_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call5.i44 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i35, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i44)
  %cmp6.not.i45 = icmp eq i32 %call5.i44, 1
  br i1 %cmp6.not.i45, label %if.end.i46.cx24116_writereg.exit49_crit_edge, label %do.end11.i48

if.end.i46.cx24116_writereg.exit49_crit_edge:     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit49

do.end11.i48:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i44, i32 noundef 224, i32 noundef 1) #11
  br label %cx24116_writereg.exit49

cx24116_writereg.exit49:                          ; preds = %do.end11.i48, %if.end.i46.cx24116_writereg.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i35) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i34) #8
  br label %cleanup

cleanup:                                          ; preds = %cx24116_writereg.exit49, %do.end3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %delay, align 4
  br i1 %re_tune, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @cx24116_set_frontend(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv.i, align 4
  %call.i = tail call fastcc i32 @cx24116_readreg(ptr noundef %2, i8 noundef zeroext -99) #8
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end3.do.end4.i_crit_edge, label %do.end.i

if.end3.do.end4.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %call.i, 15
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef %and.i) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end3.do.end4.i_crit_edge
  %4 = and i32 %call.i, 7
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %status, align 4
  %and19.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.end4.i.return_crit_edge, label %if.then21.i

do.end4.i.return_crit_edge:                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then21.i:                                      ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %or22.i = or i32 %7, 24
  store i32 %or22.i, ptr %status, align 4
  br label %return

return:                                           ; preds = %if.then21.i, %do.end4.i.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ 0, %do.end4.i.return_crit_edge ], [ 0, %if.then21.i ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24116_get_algo(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %2 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %9 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %10 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %11 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %12 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 10
  %13 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %14 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 12
  %15 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 13
  %16 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 14
  %17 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 15
  %18 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 16
  %19 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 17
  %20 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 18
  %21 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.61) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %23 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delivery_system, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.body124 [
    i32 5, label %do.body4
    i32 6, label %do.body46
  ]

do.body4:                                         ; preds = %do.end3
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not = icmp eq i32 %26, 0
  br i1 %tobool5.not, label %do.body4.do.end14_crit_edge, label %do.end9

do.body4.do.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end9, %do.body4.do.end14_crit_edge
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %if.end28, label %do.body16

do.body16:                                        ; preds = %do.end14
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool17.not = icmp eq i32 %29, 0
  br i1 %tobool17.not, label %do.body16.cleanup_crit_edge, label %do.end21

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.61, i32 noundef %28) #11
  br label %cleanup

if.end28:                                         ; preds = %do.end14
  %pilot_val = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 11
  %30 = ptrtoint ptr %pilot_val to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pilot_val, align 1
  %rolloff = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %31 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rolloff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp29.not = icmp eq i32 %32, 0
  br i1 %cmp29.not, label %if.end28.sw.epilog136_crit_edge, label %do.body31

if.end28.sw.epilog136_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog136

do.body31:                                        ; preds = %if.end28
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool32.not = icmp eq i32 %33, 0
  br i1 %tobool32.not, label %do.body31.cleanup_crit_edge, label %do.end36

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %32) #11
  br label %cleanup

do.body46:                                        ; preds = %do.end3
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool47.not = icmp eq i32 %34, 0
  br i1 %tobool47.not, label %do.body46.do.end56_crit_edge, label %do.end51

do.body46.do.end56_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end51:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.61) #11
  br label %do.end56

do.end56:                                         ; preds = %do.end51, %do.body46.do.end56_crit_edge
  %modulation57 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %modulation57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %modulation57, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %36, label %do.body62 [
    i32 9, label %do.end56.if.end74_crit_edge
    i32 0, label %do.end56.if.end74_crit_edge645
  ]

do.end56.if.end74_crit_edge645:                   ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end56.if.end74_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.body62:                                        ; preds = %do.end56
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool63.not = icmp eq i32 %38, 0
  br i1 %tobool63.not, label %do.body62.cleanup_crit_edge, label %do.end67

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end67:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.61, i32 noundef %36) #11
  br label %cleanup

if.end74:                                         ; preds = %do.end56.if.end74_crit_edge, %do.end56.if.end74_crit_edge645
  %pilot = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %39 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pilot, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %40, label %do.body86 [
    i32 2, label %sw.bb75
    i32 1, label %if.end74.sw.epilog_crit_edge
    i32 0, label %sw.bb83
  ]

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp77 = icmp eq i32 %36, 0
  %conv = select i1 %cmp77, i8 0, i8 64
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body86:                                        ; preds = %if.end74
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool87.not = icmp eq i32 %42, 0
  br i1 %tobool87.not, label %do.body86.cleanup_crit_edge, label %do.end91

do.body86.cleanup_crit_edge:                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end91:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.61, i32 noundef %40) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb83, %sw.bb75, %if.end74.sw.epilog_crit_edge
  %.sink = phi i8 [ 64, %sw.bb83 ], [ %conv, %sw.bb75 ], [ 0, %if.end74.sw.epilog_crit_edge ]
  %retune.0 = phi i32 [ 1, %sw.bb83 ], [ 2, %sw.bb75 ], [ %40, %if.end74.sw.epilog_crit_edge ]
  %pilot_val85 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 11
  %43 = ptrtoint ptr %pilot_val85 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %pilot_val85, align 1
  %rolloff98 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %44 = ptrtoint ptr %rolloff98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rolloff98, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %45, label %do.body110 [
    i32 1, label %sw.epilog.sw.epilog136_crit_edge
    i32 2, label %sw.bb102
    i32 0, label %sw.bb105
  ]

sw.epilog.sw.epilog136_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog136

sw.bb102:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog136

sw.bb105:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog136

do.body110:                                       ; preds = %sw.epilog
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool111.not = icmp eq i32 %47, 0
  br i1 %tobool111.not, label %do.body110.cleanup_crit_edge, label %do.end115

do.body110.cleanup_crit_edge:                     ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end115:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %45) #11
  br label %cleanup

do.body124:                                       ; preds = %do.end3
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool125.not = icmp eq i32 %48, 0
  br i1 %tobool125.not, label %do.body124.cleanup_crit_edge, label %do.end129

do.body124.cleanup_crit_edge:                     ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end129:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.61, i32 noundef %24) #11
  br label %cleanup

sw.epilog136:                                     ; preds = %sw.bb105, %sw.bb102, %sw.epilog.sw.epilog136_crit_edge, %if.end28.sw.epilog136_crit_edge
  %.sink630 = phi i8 [ 1, %sw.bb102 ], [ 2, %sw.bb105 ], [ 2, %if.end28.sw.epilog136_crit_edge ], [ 0, %sw.epilog.sw.epilog136_crit_edge ]
  %retune.1 = phi i32 [ %retune.0, %sw.bb102 ], [ %retune.0, %sw.bb105 ], [ 1, %if.end28.sw.epilog136_crit_edge ], [ %retune.0, %sw.epilog.sw.epilog136_crit_edge ]
  %rolloff_val101 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 12
  %49 = ptrtoint ptr %rolloff_val101 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink630, ptr %rolloff_val101, align 4
  %50 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delivery_system, align 4
  %dnxt138 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4
  %delsys = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 4
  %52 = ptrtoint ptr %delsys to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %delsys, align 4
  %modulation139 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %modulation139 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %modulation139, align 4
  %modulation141 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 5
  %55 = ptrtoint ptr %modulation141 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %modulation141, align 4
  %56 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dtv_property_cache, align 4
  %58 = ptrtoint ptr %dnxt138 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dnxt138, align 4
  %pilot144 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %59 = ptrtoint ptr %pilot144 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pilot144, align 4
  %pilot146 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 6
  %61 = ptrtoint ptr %pilot146 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pilot146, align 4
  %rolloff147 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %62 = ptrtoint ptr %rolloff147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rolloff147, align 4
  %rolloff149 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 7
  %64 = ptrtoint ptr %rolloff149 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rolloff149, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %65 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %inversion, align 4
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i, label %sw.epilog136.do.end2.i_crit_edge, label %do.end.i

sw.epilog136.do.end2.i_crit_edge:                 ; preds = %sw.epilog136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i

do.end.i:                                         ; preds = %sw.epilog136
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef %66) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %sw.epilog136.do.end2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %68 = icmp ult i32 %66, 3
  br i1 %68, label %switch.lookup, label %do.end2.i.cleanup_crit_edge

do.end2.i.cleanup_crit_edge:                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %do.end2.i
  %switch.cast = trunc i32 %66 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 787456, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %inversion_val8.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 10
  %69 = ptrtoint ptr %inversion_val8.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %switch.masked, ptr %inversion_val8.i, align 2
  %inversion10.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 2
  %70 = ptrtoint ptr %inversion10.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %66, ptr %inversion10.i, align 4
  %71 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delivery_system, align 4
  %73 = ptrtoint ptr %modulation139 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %modulation139, align 4
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %75 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fec_inner, align 4
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i559 = icmp eq i32 %77, 0
  br i1 %tobool.not.i559, label %switch.lookup.for.body.i.i.preheader_crit_edge, label %do.end3.i

switch.lookup.for.body.i.i.preheader_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.preheader

do.end3.i:                                        ; preds = %switch.lookup
  %call.i560 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef %74, i32 noundef %76) #11
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %do.end3.i.for.body.i.i.preheader_crit_edge, label %do.end.i.i

do.end3.i.for.body.i.i.preheader_crit_edge:       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.preheader

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.124, i32 noundef %74, i32 noundef %76) #11
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %do.end.i.i, %do.end3.i.for.body.i.i.preheader_crit_edge, %switch.lookup.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.01.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %i.01.i.i
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %72)
  %cmp4.i.i = icmp eq i32 %79, %72
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %modulation.i.i = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %i.01.i.i, i32 1
  %80 = ptrtoint ptr %modulation.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %modulation.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %74)
  %cmp6.i.i = icmp eq i32 %81, %74
  br i1 %cmp6.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %fec.i.i = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %i.01.i.i, i32 2
  %82 = ptrtoint ptr %fec.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fec.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %76)
  %cmp9.i.i = icmp eq i32 %83, %76
  br i1 %cmp9.i.i, label %if.end6.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 24
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %land.lhs.true7.i.i
  %fec7.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 3
  %84 = ptrtoint ptr %fec7.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %76, ptr %fec7.i, align 4
  %val.i = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %i.01.i.i, i32 4
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %val.i, align 1
  %fec_val.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 8
  %87 = ptrtoint ptr %fec_val.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %fec_val.i, align 4
  %mask.i = getelementptr [24 x %struct.cx24116_modfec], ptr @CX24116_MODFEC_MODES, i32 0, i32 %i.01.i.i, i32 3
  %88 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mask.i, align 4
  %fec_mask.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 9
  %90 = ptrtoint ptr %fec_mask.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %fec_mask.i, align 1
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool12.not.i = icmp eq i32 %91, 0
  br i1 %tobool12.not.i, label %if.end161.thread, label %if.end161

if.end161.thread:                                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %symbol_rate577 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %92 = ptrtoint ptr %symbol_rate577 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %symbol_rate577, align 4
  br label %do.end2.i565

if.end161:                                        ; preds = %if.end6.i
  %conv.i = zext i8 %89 to i32
  %conv22.i = zext i8 %86 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, i32 noundef %conv.i, i32 noundef %conv22.i) #11
  %.pr = load i32, ptr @debug, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %94 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i562 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i562, label %if.end161.do.end2.i565_crit_edge, label %do.end.i564

if.end161.do.end2.i565_crit_edge:                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2.i565

do.end.i564:                                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %call.i563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.125, i32 noundef %95) #11
  br label %do.end2.i565

do.end2.i565:                                     ; preds = %do.end.i564, %if.end161.do.end2.i565_crit_edge, %if.end161.thread
  %96 = phi i32 [ %93, %if.end161.thread ], [ %95, %do.end.i564 ], [ %95, %if.end161.do.end2.i565_crit_edge ]
  %symbol_rate_max.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 6
  %97 = ptrtoint ptr %symbol_rate_max.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %symbol_rate_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %96)
  %cmp.i = icmp ult i32 %98, %96
  br i1 %cmp.i, label %do.end2.i565.do.body8.i_crit_edge, label %lor.lhs.false.i

do.end2.i565.do.body8.i_crit_edge:                ; preds = %do.end2.i565
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

lor.lhs.false.i:                                  ; preds = %do.end2.i565
  %symbol_rate_min.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 5
  %99 = ptrtoint ptr %symbol_rate_min.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %symbol_rate_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %96)
  %cmp6.i = icmp ugt i32 %100, %96
  br i1 %cmp6.i, label %lor.lhs.false.i.do.body8.i_crit_edge, label %if.end17.i

lor.lhs.false.i.do.body8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

do.body8.i:                                       ; preds = %lor.lhs.false.i.do.body8.i_crit_edge, %do.end2.i565.do.body8.i_crit_edge
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool9.not.i = icmp eq i32 %101, 0
  br i1 %tobool9.not.i, label %do.body8.i.cleanup_crit_edge, label %cx24116_set_symbolrate.exit

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %symbol_rate.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %96, ptr %symbol_rate.i, align 4
  %103 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool19.not.i = icmp eq i32 %103, 0
  br i1 %tobool19.not.i, label %if.end166.thread, label %if.end166

if.end166.thread:                                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %demodulator_priv, align 4
  %dcur.i590 = getelementptr inbounds %struct.cx24116_state, ptr %105, i32 0, i32 3
  %dnxt.i591 = getelementptr inbounds %struct.cx24116_state, ptr %105, i32 0, i32 4
  %106 = call ptr @memcpy(ptr %dcur.i590, ptr %dnxt.i591, i32 40)
  br label %do.body179

cx24116_set_symbolrate.exit:                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, i32 noundef %96) #11
  br label %cleanup

if.end166:                                        ; preds = %if.end17.i
  %call24.i587 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.125, i32 noundef %96) #11
  %.pr589 = load i32, ptr @debug, align 4
  %107 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %demodulator_priv, align 4
  %dcur.i = getelementptr inbounds %struct.cx24116_state, ptr %108, i32 0, i32 3
  %dnxt.i = getelementptr inbounds %struct.cx24116_state, ptr %108, i32 0, i32 4
  %109 = call ptr @memcpy(ptr %dcur.i, ptr %dnxt.i, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr589)
  %tobool168.not = icmp eq i32 %.pr589, 0
  br i1 %tobool168.not, label %if.end166.do.body179_crit_edge, label %do.end172

if.end166.do.body179_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body179

do.end172:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %delsys174 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 4
  %110 = ptrtoint ptr %delsys174 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %delsys174, align 4
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.61, i32 noundef %111) #11
  br label %do.body179

do.body179:                                       ; preds = %do.end172, %if.end166.do.body179_crit_edge, %if.end166.thread
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool180.not = icmp eq i32 %112, 0
  br i1 %tobool180.not, label %do.body179.do.end291_crit_edge, label %do.body192

do.body179.do.end291_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body192:                                       ; preds = %do.body179
  %modulation187 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 5
  %113 = ptrtoint ptr %modulation187 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %modulation187, align 4
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.61, i32 noundef %114) #11
  %.pr593 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr593)
  %tobool193.not = icmp eq i32 %.pr593, 0
  br i1 %tobool193.not, label %do.body192.do.end291_crit_edge, label %do.body205

do.body192.do.end291_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body205:                                       ; preds = %do.body192
  %dcur199 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3
  %115 = ptrtoint ptr %dcur199 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dcur199, align 4
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.61, i32 noundef %116) #11
  %.pr595 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr595)
  %tobool206.not = icmp eq i32 %.pr595, 0
  br i1 %tobool206.not, label %do.body205.do.end291_crit_edge, label %do.body221

do.body205.do.end291_crit_edge:                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body221:                                       ; preds = %do.body205
  %pilot213 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 6
  %117 = ptrtoint ptr %pilot213 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pilot213, align 4
  %pilot_val215 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 11
  %119 = ptrtoint ptr %pilot_val215 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %pilot_val215, align 1
  %conv216 = zext i8 %120 to i32
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.61, i32 noundef %118, i32 noundef %conv216) #11
  %.pr597.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr597.pr)
  %tobool222.not = icmp eq i32 %.pr597.pr, 0
  br i1 %tobool222.not, label %do.body221.do.end291_crit_edge, label %do.body232

do.body221.do.end291_crit_edge:                   ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body232:                                       ; preds = %do.body221
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.61, i32 noundef %retune.1) #11
  %.pr599 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr599)
  %tobool233.not = icmp eq i32 %.pr599, 0
  br i1 %tobool233.not, label %do.body232.do.end291_crit_edge, label %do.body248

do.body232.do.end291_crit_edge:                   ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body248:                                       ; preds = %do.body232
  %rolloff240 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 7
  %121 = ptrtoint ptr %rolloff240 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rolloff240, align 4
  %rolloff_val242 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 12
  %123 = ptrtoint ptr %rolloff_val242 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %rolloff_val242, align 4
  %conv243 = zext i8 %124 to i32
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.61, i32 noundef %122, i32 noundef %conv243) #11
  %.pr601.pr.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr601.pr.pr)
  %tobool249.not = icmp eq i32 %.pr601.pr.pr, 0
  br i1 %tobool249.not, label %do.body248.do.end291_crit_edge, label %do.body261

do.body248.do.end291_crit_edge:                   ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body261:                                       ; preds = %do.body248
  %symbol_rate256 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 1
  %125 = ptrtoint ptr %symbol_rate256 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %symbol_rate256, align 4
  %call257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.61, i32 noundef %126) #11
  %.pr603 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr603)
  %tobool262.not = icmp eq i32 %.pr603, 0
  br i1 %tobool262.not, label %do.body261.do.end291_crit_edge, label %do.body277

do.body261.do.end291_crit_edge:                   ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.body277:                                       ; preds = %do.body261
  %fec = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 3
  %127 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fec, align 4
  %fec_mask = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 9
  %129 = ptrtoint ptr %fec_mask to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %fec_mask, align 1
  %conv270 = zext i8 %130 to i32
  %fec_val = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 8
  %131 = ptrtoint ptr %fec_val to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %fec_val, align 4
  %conv272 = zext i8 %132 to i32
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.61, i32 noundef %128, i32 noundef %conv270, i32 noundef %conv272) #11
  %.pr605.pr.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr605.pr.pr)
  %tobool278.not = icmp eq i32 %.pr605.pr.pr, 0
  br i1 %tobool278.not, label %do.body277.do.end291_crit_edge, label %do.end282

do.body277.do.end291_crit_edge:                   ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end291

do.end282:                                        ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #10
  %inversion285 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %inversion285 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %inversion285, align 4
  %inversion_val = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 10
  %135 = ptrtoint ptr %inversion_val to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %inversion_val, align 2
  %conv287 = zext i8 %136 to i32
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.61, i32 noundef %134, i32 noundef %conv287) #11
  br label %do.end291

do.end291:                                        ; preds = %do.end282, %do.body277.do.end291_crit_edge, %do.body261.do.end291_crit_edge, %do.body248.do.end291_crit_edge, %do.body232.do.end291_crit_edge, %do.body221.do.end291_crit_edge, %do.body205.do.end291_crit_edge, %do.body192.do.end291_crit_edge, %do.body179.do.end291_crit_edge
  %config = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 1
  %137 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.cx24116_config, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_ts_params, align 4
  %tobool292.not = icmp eq ptr %140, null
  br i1 %tobool292.not, label %do.end291.if.end297_crit_edge, label %if.then293

do.end291.if.end297_crit_edge:                    ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297

if.then293:                                       ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #10
  %call296 = tail call i32 %140(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %do.end291.if.end297_crit_edge
  %141 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 21, ptr %2, align 1
  %142 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %3, align 1
  %143 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 2, ptr %cmd, align 1
  %call300 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %cmp301.not = icmp eq i32 %call300, 0
  br i1 %cmp301.not, label %if.end304, label %if.end297.cleanup_crit_edge

if.end297.cleanup_crit_edge:                      ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end304:                                        ; preds = %if.end297
  %144 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 17, ptr %2, align 1
  %dcur307 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3
  %145 = ptrtoint ptr %dcur307 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dcur307, align 4
  %and = lshr i32 %146, 16
  %conv309 = trunc i32 %and to i8
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv309, ptr %3, align 1
  %and314 = lshr i32 %146, 8
  %conv316 = trunc i32 %and314 to i8
  %148 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv316, ptr %4, align 1
  %conv322 = trunc i32 %146 to i8
  %149 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv322, ptr %5, align 1
  %symbol_rate326 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 1
  %150 = ptrtoint ptr %symbol_rate326 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %symbol_rate326, align 4
  %div = udiv i32 %151, 1000
  %and327 = lshr i32 %div, 8
  %conv329 = trunc i32 %and327 to i8
  %152 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv329, ptr %6, align 1
  %conv336 = trunc i32 %div to i8
  %153 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv336, ptr %7, align 1
  %inversion_val340 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 10
  %154 = ptrtoint ptr %inversion_val340 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %inversion_val340, align 2
  %156 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %8, align 1
  %fec_val344 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 8
  %157 = ptrtoint ptr %fec_val344 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %fec_val344, align 4
  %pilot_val347 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 11
  %159 = ptrtoint ptr %pilot_val347 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %pilot_val347, align 1
  %or558 = or i8 %160, %158
  %161 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %or558, ptr %9, align 1
  %162 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 19, ptr %10, align 1
  %163 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -120, ptr %11, align 1
  %164 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %12, align 1
  %165 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %13, align 1
  %rolloff_val361 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 12
  %166 = ptrtoint ptr %rolloff_val361 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %rolloff_val361, align 4
  %168 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %14, align 1
  %fec_mask365 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 9
  %169 = ptrtoint ptr %fec_mask365 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %fec_mask365, align 1
  %171 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %151)
  %cmp370 = icmp ugt i32 %151, 30000000
  %. = select i1 %cmp370, i8 4, i8 6
  %.637 = zext i1 %cmp370 to i8
  %.638 = select i1 %cmp370, i8 119, i8 -6
  %.639 = select i1 %cmp370, i8 54, i8 36
  %.640 = select i1 %cmp370, i32 68, i32 70
  %.641 = zext i1 %cmp370 to i32
  %172 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %., ptr %16, align 1
  %173 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %17, align 1
  %174 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %.637, ptr %18, align 1
  %175 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %.638, ptr %19, align 1
  %176 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %.639, ptr %20, align 1
  tail call fastcc void @cx24116_writereg(ptr noundef %1, i32 noundef 243, i32 noundef %.640)
  tail call fastcc void @cx24116_writereg(ptr noundef %1, i32 noundef 249, i32 noundef %.641)
  %177 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 19, ptr %cmd, align 1
  %pilot440 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 3, i32 6
  br label %do.body399

do.body399:                                       ; preds = %do.cond449.do.body399_crit_edge, %if.end304
  %retune.2 = phi i32 [ %retune.1, %if.end304 ], [ 1, %do.cond449.do.body399_crit_edge ]
  %call400 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -99)
  %and401 = and i32 %call400, 192
  tail call fastcc void @cx24116_writereg(ptr noundef %1, i32 noundef 157, i32 noundef %and401)
  %call403 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %cmp404.not = icmp eq i32 %call403, 0
  br i1 %cmp404.not, label %do.body399.for.body_crit_edge, label %do.body399.tuned_crit_edge

do.body399.tuned_crit_edge:                       ; preds = %do.body399
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuned

do.body399.for.body_crit_edge:                    ; preds = %do.body399
  br label %for.body

for.body:                                         ; preds = %if.end426.for.body_crit_edge, %do.body399.for.body_crit_edge
  %i.0627 = phi i32 [ %inc427, %if.end426.for.body_crit_edge ], [ 0, %do.body399.for.body_crit_edge ]
  %178 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %demodulator_priv, align 4
  %call.i568 = tail call fastcc i32 @cx24116_readreg(ptr noundef %179, i8 noundef zeroext -99) #8
  %180 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i569 = icmp eq i32 %180, 0
  br i1 %tobool.not.i569, label %for.body.do.end4.i_crit_edge, label %do.end.i570

for.body.do.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i570:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %call.i568, 15
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef %and.i) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i570, %for.body.do.end4.i_crit_edge
  %181 = and i32 %call.i568, 1
  %and19.i = and i32 %call.i568, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or22.i = or i32 %call.i568, 8
  %tunerstat.1 = select i1 %tobool20.not.i, i32 %181, i32 %or22.i
  %and411 = and i32 %tunerstat.1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and411)
  %cmp412 = icmp eq i32 %and411, 9
  br i1 %cmp412, label %do.body415, label %if.end426

do.body415:                                       ; preds = %do.end4.i
  %182 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool416.not = icmp eq i32 %182, 0
  br i1 %tobool416.not, label %do.body415.tuned_crit_edge, label %do.end420

do.body415.tuned_crit_edge:                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuned

do.end420:                                        ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #10
  %call422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.61) #11
  br label %tuned

if.end426:                                        ; preds = %do.end4.i
  tail call void @msleep(i32 noundef 10) #8
  %inc427 = add nuw nsw i32 %i.0627, 1
  %exitcond.not = icmp eq i32 %inc427, 50
  br i1 %exitcond.not, label %do.body428, label %if.end426.for.body_crit_edge

if.end426.for.body_crit_edge:                     ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body428:                                       ; preds = %if.end426
  %183 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool429.not = icmp eq i32 %183, 0
  br i1 %tobool429.not, label %do.body428.do.end438_crit_edge, label %do.end433

do.body428.do.end438_crit_edge:                   ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end438

do.end433:                                        ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #10
  %call435 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.61) #11
  br label %do.end438

do.end438:                                        ; preds = %do.end433, %do.body428.do.end438_crit_edge
  %184 = ptrtoint ptr %pilot440 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pilot440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %185)
  %cmp441 = icmp eq i32 %185, 2
  br i1 %cmp441, label %if.then443, label %do.end438.do.cond449_crit_edge

do.end438.do.cond449_crit_edge:                   ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond449

if.then443:                                       ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %9, align 1
  %188 = xor i8 %187, 64
  store i8 %188, ptr %9, align 1
  br label %do.cond449

do.cond449:                                       ; preds = %if.then443, %do.end438.do.cond449_crit_edge
  %tobool450.not = icmp eq i32 %retune.2, 1
  br i1 %tobool450.not, label %do.cond449.tuned_crit_edge, label %do.cond449.do.body399_crit_edge

do.cond449.do.body399_crit_edge:                  ; preds = %do.cond449
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body399

do.cond449.tuned_crit_edge:                       ; preds = %do.cond449
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuned

tuned:                                            ; preds = %do.cond449.tuned_crit_edge, %do.end420, %do.body415.tuned_crit_edge, %do.body399.tuned_crit_edge
  %189 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 21, ptr %2, align 1
  %190 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %3, align 1
  %191 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 2, ptr %cmd, align 1
  %call457 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %tuned, %if.end297.cleanup_crit_edge, %cx24116_set_symbolrate.exit, %do.body8.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %do.end2.i.cleanup_crit_edge, %do.end129, %do.body124.cleanup_crit_edge, %do.end115, %do.body110.cleanup_crit_edge, %do.end91, %do.body86.cleanup_crit_edge, %do.end67, %do.body62.cleanup_crit_edge, %do.end36, %do.body31.cleanup_crit_edge, %do.end21, %do.body16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call457, %tuned ], [ -95, %do.end21 ], [ -95, %do.body16.cleanup_crit_edge ], [ -95, %do.end36 ], [ -95, %do.body31.cleanup_crit_edge ], [ -95, %do.end67 ], [ -95, %do.body62.cleanup_crit_edge ], [ -95, %do.end91 ], [ -95, %do.body86.cleanup_crit_edge ], [ -95, %do.end115 ], [ -95, %do.body110.cleanup_crit_edge ], [ -95, %do.end129 ], [ -95, %do.body124.cleanup_crit_edge ], [ -95, %cx24116_set_symbolrate.exit ], [ %call300, %if.end297.cleanup_crit_edge ], [ -22, %do.end2.i.cleanup_crit_edge ], [ -95, %do.body8.i.cleanup_crit_edge ], [ -95, %for.inc.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -99)
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call, 15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef %and) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = and i32 %call, 3
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status, align 4
  %and14 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end4.if.end18_crit_edge, label %if.then16

do.end4.if.end18_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %or17 = or i32 %6, 4
  store i32 %or17, ptr %status, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.end4.if.end18_crit_edge
  %and19 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %or22 = or i32 %8, 24
  store i32 %or22, ptr %status, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.134) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -58)
  %shl = shl i32 %call4, 24
  %call5 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -57)
  %shl6 = shl i32 %call5, 16
  %or = or i32 %shl6, %shl
  %call7 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -56)
  %shl8 = shl i32 %call7, 8
  %or9 = or i32 %or, %shl8
  %call10 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -55)
  %or11 = or i32 %or9, %call10
  %3 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or11, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_read_signal_strength(ptr noundef %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %2 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %cmd, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 29)
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.135) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 25, ptr %2, align 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cmd, align 1
  %call4 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %call7 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -99)
  %and = and i32 %call7, 192
  %call8 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -98)
  %shl = shl i32 %call8, 6
  %shl.masked = and i32 %shl, 65472
  %conv9 = or i32 %shl.masked, %and
  %8 = trunc i32 %conv9 to i16
  %conv10 = sub i16 0, %8
  %9 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv10, ptr %signal_strength, align 2
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end6.cleanup_crit_edge, label %do.end16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv19 = zext i16 %conv10 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef %conv9, i32 noundef %conv19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @esno_snr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv.i, align 4
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.do.end3.i_crit_edge, label %do.end.i

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.139) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then.do.end3.i_crit_edge
  %call4.i = tail call fastcc i32 @cx24116_readreg(ptr noundef %2, i8 noundef zeroext -93) #8
  %shl.i = shl i32 %call4.i, 8
  %call5.i = tail call fastcc i32 @cx24116_readreg(ptr noundef %2, i8 noundef zeroext -43) #8
  %or.i = or i32 %shl.i, %call5.i
  %conv.i = trunc i32 %or.i to i16
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %snr, align 2
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %do.end3.i.return_crit_edge, label %do.end11.i

do.end3.i.return_crit_edge:                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end11.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.i = and i32 %or.i, 65535
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139, i32 noundef %conv13.i) #11
  br label %return

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.do.end3.i9_crit_edge, label %do.end.i7

if.else.do.end3.i9_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i9

do.end.i7:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.143) #11
  br label %do.end3.i9

do.end3.i9:                                       ; preds = %do.end.i7, %if.else.do.end3.i9_crit_edge
  %call4.i8 = tail call fastcc i32 @cx24116_readreg(ptr noundef %2, i8 noundef zeroext -43) #8
  %conv5.i = and i32 %call4.i8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %conv5.i)
  %cmp.i = icmp ugt i32 %conv5.i, 159
  br i1 %cmp.i, label %do.end3.i9.do.body15.i_crit_edge, label %if.else.i

do.end3.i9.do.body15.i_crit_edge:                 ; preds = %do.end3.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

if.else.i:                                        ; preds = %do.end3.i9
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = lshr i32 %call4.i8, 4
  %6 = and i32 %and.i, 15
  %arrayidx.i = getelementptr [16 x i32], ptr @cx24116_read_snr_pct.snr_tab, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %and10.i = and i32 %call4.i8, 15
  %arrayidx11.i = getelementptr [16 x i32], ptr @cx24116_read_snr_pct.snr_tab, i32 0, i32 %and10.i
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11.i, align 4
  %shr12.i = lshr i32 %10, 4
  %add.i = add i32 %shr12.i, %8
  %conv13.i10 = trunc i32 %add.i to i16
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.else.i, %do.end3.i9.do.body15.i_crit_edge
  %storemerge.i = phi i16 [ %conv13.i10, %if.else.i ], [ -1, %do.end3.i9.do.body15.i_crit_edge ]
  %11 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %storemerge.i, ptr %snr, align 2
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not.i = icmp eq i32 %12, 0
  br i1 %tobool16.not.i, label %do.body15.i.return_crit_edge, label %do.end20.i

do.body15.i.return_crit_edge:                     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i = zext i16 %storemerge.i to i32
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.143, i32 noundef %conv5.i, i32 noundef %conv23.i) #11
  br label %return

return:                                           ; preds = %do.end20.i, %do.body15.i.return_crit_edge, %do.end11.i, %do.end3.i.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.147) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -54)
  %shl = shl i32 %call4, 8
  %call5 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -53)
  %or = or i32 %shl, %call5
  %3 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_send_diseqc_msg(ptr noundef %fe, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp ugt i8 %3, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %do.end

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end:                                           ; preds = %if.end
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149) #11
  %5 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp5153.not = icmp eq i8 %6, 0
  br i1 %cmp5153.not, label %do.end.do.end26_crit_edge, label %do.end.do.end9_crit_edge

do.end.do.end9_crit_edge:                         ; preds = %do.end
  br label %do.end9

do.end.do.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end9:                                          ; preds = %if.end23.do.end9_crit_edge, %do.end.do.end9_crit_edge
  %i.0154 = phi i32 [ %inc, %if.end23.do.end9_crit_edge ], [ 0, %do.end.do.end9_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr %d, i32 0, i32 %i.0154
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %8 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %conv11) #11
  %inc = add nuw nsw i32 %i.0154, 1
  %9 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msg_len, align 1
  %conv14 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv14)
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %do.end20, label %do.end9.if.end23_crit_edge

do.end9.if.end23_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end20:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #11
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %do.end9.if.end23_crit_edge
  %11 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msg_len, align 1
  %conv4 = zext i8 %12 to i32
  %cmp5 = icmp ult i32 %inc, %conv4
  br i1 %cmp5, label %if.end23.do.end9_crit_edge, label %if.end23.do.end26_crit_edge

if.end23.do.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.end23.do.end9_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end26:                                         ; preds = %if.end23.do.end26_crit_edge, %do.end.do.end26_crit_edge
  %13 = load i32, ptr @toneburst, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i32 noundef %13) #11
  %14 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %msg_len, align 1
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.end.if.end29_crit_edge
  %15 = phi i8 [ %.pr, %do.end26 ], [ %3, %if.end.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp33156.not = icmp eq i8 %15, 0
  br i1 %cmp33156.not, label %if.end29.for.end40_crit_edge, label %if.end29.for.body35_crit_edge

if.end29.for.body35_crit_edge:                    ; preds = %if.end29
  br label %for.body35

if.end29.for.end40_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end40

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %if.end29.for.body35_crit_edge
  %i.1157 = phi i32 [ %inc39, %for.body35.for.body35_crit_edge ], [ 0, %if.end29.for.body35_crit_edge ]
  %arrayidx37 = getelementptr [6 x i8], ptr %d, i32 0, i32 %i.1157
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx37, align 1
  %add = add nuw nsw i32 %i.1157, 6
  %arrayidx38 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 %add
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx38, align 1
  %inc39 = add nuw nsw i32 %i.1157, 1
  %19 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msg_len, align 1
  %conv32 = zext i8 %20 to i32
  %cmp33 = icmp ult i32 %inc39, %conv32
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.for.end40_crit_edge

for.body35.for.end40_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end40

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.end40:                                        ; preds = %for.body35.for.end40_crit_edge, %if.end29.for.end40_crit_edge
  %.lcssa = phi i8 [ 0, %if.end29.for.end40_crit_edge ], [ %20, %for.body35.for.end40_crit_edge ]
  %dsec_cmd42 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 7
  %arrayidx44 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 5
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.lcssa, ptr %arrayidx44, align 1
  %add49 = add i8 %.lcssa, 6
  %22 = ptrtoint ptr %dsec_cmd42 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %add49, ptr %dsec_cmd42, align 2
  %23 = load i32, ptr @toneburst, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %23, label %for.end40.if.end103_crit_edge [
    i32 2, label %for.end40.cleanup_crit_edge
    i32 0, label %if.then57
    i32 1, label %if.then64
  ]

for.end40.cleanup_crit_edge:                      ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end40.if.end103_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then57:                                        ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx60 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx60, align 1
  br label %if.end103

if.then64:                                        ; preds = %for.end40
  %26 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp67 = icmp ugt i8 %27, 3
  br i1 %cmp67, label %land.lhs.true, label %if.then64.if.end82_crit_edge

if.then64.if.end82_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

land.lhs.true:                                    ; preds = %if.then64
  %arrayidx70 = getelementptr [6 x i8], ptr %d, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %29)
  %cmp72 = icmp eq i8 %29, 56
  br i1 %cmp72, label %if.then74, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx76 = getelementptr [6 x i8], ptr %d, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx76, align 1
  %32 = lshr i8 %31, 2
  %33 = and i8 %32, 1
  %arrayidx81 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx81, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then74, %land.lhs.true.if.end82_crit_edge, %if.then64.if.end82_crit_edge
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool83.not = icmp eq i32 %35, 0
  br i1 %tobool83.not, label %if.end82.if.end103_crit_edge, label %do.end90

if.end82.if.end103_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx94 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %37 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.149, i32 noundef %conv95) #11
  br label %if.end103

if.end103:                                        ; preds = %do.end90, %if.end82.if.end103_crit_edge, %if.then57, %for.end40.if.end103_crit_edge
  %call104 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105.not = icmp eq i32 %call104, 0
  br i1 %cmp105.not, label %if.end108, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end108:                                        ; preds = %if.end103
  tail call void @msleep(i32 noundef 100) #8
  %call110 = tail call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef %dsec_cmd42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111.not = icmp eq i32 %call110, 0
  br i1 %cmp111.not, label %if.end114, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx44, align 1
  %conv118 = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv118, 4
  %40 = load i32, ptr @toneburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp119 = icmp eq i32 %40, 0
  %cond = select i1 %cmp119, i32 30, i32 60
  %add121 = add nuw nsw i32 %cond, %shl
  tail call void @msleep(i32 noundef %add121) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.end108.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %for.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end114 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end40.cleanup_crit_edge ], [ %call104, %if.end103.cleanup_crit_edge ], [ %call110, %if.end108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_diseqc_send_burst(ptr noundef %fe, i32 noundef %burst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @toneburst, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, i32 noundef %burst, i32 noundef %3) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %burst, label %do.end3.cleanup_crit_edge [
    i32 0, label %do.end3.if.end12_crit_edge
    i32 1, label %if.then6
  ]

do.end3.if.end12_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %do.end3.if.end12_crit_edge
  %.sink = phi i8 [ 1, %if.then6 ], [ 0, %do.end3.if.end12_crit_edge ]
  %arrayidx9 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %arrayidx9, align 1
  %6 = load i32, ptr @toneburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp13.not = icmp eq i32 %6, 2
  br i1 %cmp13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  tail call void @msleep(i32 noundef 100) #8
  %dsec_cmd20 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 7
  %call21 = tail call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef %dsec_cmd20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx27 = getelementptr %struct.cx24116_state, ptr %1, i32 0, i32 7, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx27, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %add = add nuw nsw i32 %shl, 60
  tail call void @msleep(i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %do.end3.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_set_tone(ptr noundef %fe, i32 noundef %tone) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %4 = getelementptr inbounds i8, ptr %cmd, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 27)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.169, i32 noundef %tone) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tone)
  %switch = icmp ult i32 %tone, 2
  br i1 %switch, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.169, i32 noundef %tone) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end3
  %call12 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  tail call void @msleep(i32 noundef 15) #8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 35, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %10 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %tone, label %if.end15.sw.epilog_crit_edge [
    i32 0, label %do.body20
    i32 1, label %do.body34
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body20:                                        ; preds = %if.end15
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %do.body20.sw.epilog.sink.split_crit_edge, label %do.body20.sw.epilog.sink.split.sink.split_crit_edge

do.body20.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.sink.split

do.body20.sw.epilog.sink.split_crit_edge:         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.body34:                                        ; preds = %if.end15
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not = icmp eq i32 %12, 0
  br i1 %tobool35.not, label %do.body34.sw.epilog.sink.split_crit_edge, label %do.body34.sw.epilog.sink.split.sink.split_crit_edge

do.body34.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.sink.split

do.body34.sw.epilog.sink.split_crit_edge:         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %do.body34.sw.epilog.sink.split.sink.split_crit_edge, %do.body20.sw.epilog.sink.split.sink.split_crit_edge
  %.str.177.sink = phi ptr [ @.str.174, %do.body20.sw.epilog.sink.split.sink.split_crit_edge ], [ @.str.177, %do.body34.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %do.body20.sw.epilog.sink.split.sink.split_crit_edge ], [ 0, %do.body34.sw.epilog.sink.split.sink.split_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.177.sink, ptr noundef nonnull @.str.169) #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %do.body34.sw.epilog.sink.split_crit_edge, %do.body20.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %do.body20.sw.epilog.sink.split_crit_edge ], [ 0, %do.body34.sw.epilog.sink.split_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split.sink.split ]
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end15.sw.epilog_crit_edge
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %cmd, align 1
  tail call void @msleep(i32 noundef 15) #8
  %call47 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end11.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ %call47, %sw.epilog ], [ %call12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24116_set_voltage(ptr noundef %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds i8, ptr %cmd, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 28)
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp2 = icmp eq i32 %voltage, 1
  %cond = select i1 %cmp2, ptr @.str.182, ptr @.str.183
  %cond3 = select i1 %cmp, ptr @.str.181, ptr %cond
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, ptr noundef nonnull %cond3) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call fastcc i32 @cx24116_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 100) #8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 34, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp10 = icmp eq i32 %voltage, 1
  %conv = zext i1 %cmp10 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %1, align 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %cmd, align 1
  tail call void @msleep(i32 noundef 15) #8
  %call14 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end9 ], [ %call6, %do.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24116_writereg(ptr nocapture noundef readonly %state, i32 noundef %reg, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv = trunc i32 %reg to i8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %buf, align 1
  %conv1 = trunc i32 %data to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %config = getelementptr inbounds %struct.cx24116_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv2 = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv2, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf3, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %reg, i32 noundef %data) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %call5 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end.cleanup_crit_edge, label %do.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5, i32 noundef %reg, i32 noundef %data) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  %buf.i62 = alloca [2 x i8], align 1
  %msg.i63 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end3.thread, label %do.end3

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #8
  %3 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !357
  br label %do.end3.i

do.end3:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19) #11
  %.pr = load i32, ptr @debug, align 4
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #8
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end3.do.end3.i_crit_edge, label %do.end.i

do.end3.do.end3.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.29) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end3.do.end3.i_crit_edge, %do.end3.thread
  %7 = phi ptr [ %1, %do.end3.thread ], [ %5, %do.end.i ], [ %5, %do.end3.do.end3.i_crit_edge ]
  %call4.i = tail call fastcc i32 @cx24116_readreg(ptr noundef %7, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %do.end3.i.cx24116_firmware_ondemand.exit.thread87_crit_edge

do.end3.i.cx24116_firmware_ondemand.exit.thread87_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_firmware_ondemand.exit.thread87

if.then5.i:                                       ; preds = %do.end3.i
  %skip_fw_load.i = getelementptr inbounds %struct.cx24116_state, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %skip_fw_load.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %skip_fw_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %do.end11.i, label %if.then5.i.cx24116_firmware_ondemand.exit.thread87_crit_edge

if.then5.i.cx24116_firmware_ondemand.exit.thread87_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_firmware_ondemand.exit.thread87

do.end11.i:                                       ; preds = %if.then5.i
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33) #11
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %call14.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.33, ptr noundef %13) #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool20.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool20.not.i, label %if.end27.i, label %cx24116_firmware_ondemand.exit.thread

cx24116_firmware_ondemand.exit.thread:            ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.29) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %cleanup.sink.split

if.end27.i:                                       ; preds = %do.end11.i
  %14 = ptrtoint ptr %skip_fw_load.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %skip_fw_load.i, align 4
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 4
  %call29.i = call fastcc i32 @cx24116_load_firmware(ptr noundef %fe, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %for.cond.preheader.critedge, label %do.end34.i

do.end34.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29) #11
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %18) #8
  %call43.i.c90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.47) #11
  %19 = ptrtoint ptr %skip_fw_load.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %skip_fw_load.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %cleanup.sink.split

cx24116_firmware_ondemand.exit.thread87:          ; preds = %if.then5.i.cx24116_firmware_ondemand.exit.thread87_crit_edge, %do.end3.i.cx24116_firmware_ondemand.exit.thread87_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %for.cond.preheader

for.cond.preheader.critedge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %21) #8
  %call43.i.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.46) #11
  %22 = ptrtoint ptr %skip_fw_load.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %skip_fw_load.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.critedge, %cx24116_firmware_ondemand.exit.thread87
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp1283.not = icmp eq i8 %24, 0
  br i1 %cmp1283.not, label %for.cond.preheader.for.end_crit_edge, label %do.body14.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body14.lr.ph:                                  ; preds = %for.cond.preheader
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %do.body14

do.body14:                                        ; preds = %cx24116_writereg.exit.do.body14_crit_edge, %do.body14.lr.ph
  %i.084 = phi i32 [ 0, %do.body14.lr.ph ], [ %inc, %cx24116_writereg.exit.do.body14_crit_edge ]
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not = icmp eq i32 %27, 0
  br i1 %tobool15.not, label %do.body14.do.end25_crit_edge, label %do.end19

do.body14.do.end25_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 %i.084
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %29 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef %i.084, i32 noundef %conv21) #11
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %do.body14.do.end25_crit_edge
  %arrayidx27 = getelementptr %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 %i.084
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %conv.i = trunc i32 %i.084 to i8
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %buf.i, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %26, align 4
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv2.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv2.i, ptr %msg.i, align 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %26, align 4
  %41 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i, ptr %buf3.i, align 4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i57 = icmp sgt i32 %42, 1
  br i1 %cmp.i57, label %do.end.i59, label %do.end25.if.end.i_crit_edge

do.end25.if.end.i_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i59:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %i.084, i32 noundef %conv28) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i59, %do.end25.if.end.i_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.not.i, label %if.end.i.cx24116_writereg.exit_crit_edge, label %do.end11.i61

if.end.i.cx24116_writereg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit

do.end11.i61:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i, i32 noundef %i.084, i32 noundef %conv28) #11
  br label %cx24116_writereg.exit

cx24116_writereg.exit:                            ; preds = %do.end11.i61, %if.end.i.cx24116_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %inc = add nuw nsw i32 %i.084, 1
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cmd, align 1
  %conv = zext i8 %46 to i32
  %cmp12 = icmp ult i32 %inc, %conv
  br i1 %cmp12, label %cx24116_writereg.exit.do.body14_crit_edge, label %cx24116_writereg.exit.for.end_crit_edge

cx24116_writereg.exit.for.end_crit_edge:          ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cx24116_writereg.exit.do.body14_crit_edge:        ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.end:                                          ; preds = %cx24116_writereg.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %cx24116_writereg.exit.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i62) #8
  %47 = getelementptr inbounds [2 x i8], ptr %buf.i62, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 31, ptr %buf.i62, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63) #8
  %50 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 196607, ptr %50, align 4
  %config.i64 = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %config.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i64, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv2.i65 = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv2.i65, ptr %msg.i63, align 4
  %flags.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i66, align 2
  %buf3.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %58 = ptrtoint ptr %buf3.i68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buf.i62, ptr %buf3.i68, align 4
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i69 = icmp sgt i32 %59, 1
  br i1 %cmp.i69, label %do.end.i71, label %for.end.if.end.i74_crit_edge

for.end.if.end.i74_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i74

do.end.i71:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 31, i32 noundef 1) #11
  br label %if.end.i74

if.end.i74:                                       ; preds = %do.end.i71, %for.end.if.end.i74_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call5.i72 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i63, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i72)
  %cmp6.not.i73 = icmp eq i32 %call5.i72, 1
  br i1 %cmp6.not.i73, label %if.end.i74.cx24116_writereg.exit77_crit_edge, label %do.end11.i76

if.end.i74.cx24116_writereg.exit77_crit_edge:     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit77

do.end11.i76:                                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i72, i32 noundef 31, i32 noundef 1) #11
  br label %cx24116_writereg.exit77

cx24116_writereg.exit77:                          ; preds = %do.end11.i76, %if.end.i74.cx24116_writereg.exit77_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i62) #8
  %smax = call i32 @llvm.smax.i32(i32 %i.0.lcssa, i32 65)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %cx24116_writereg.exit77
  %i.1 = phi i32 [ %i.0.lcssa, %cx24116_writereg.exit77 ], [ %inc33, %while.body.while.cond_crit_edge ]
  %call31 = call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 10) #8
  %inc33 = add nuw nsw i32 %i.1, 1
  %exitcond = icmp eq i32 %i.1, %smax
  br i1 %exitcond, label %while.body.cleanup.sink.split_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %do.end34.i, %cx24116_firmware_ondemand.exit.thread
  %.str.27.sink = phi ptr [ @.str.21, %cx24116_firmware_ondemand.exit.thread ], [ @.str.21, %do.end34.i ], [ @.str.27, %while.body.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call14.i, %cx24116_firmware_ondemand.exit.thread ], [ %call29.i, %do.end34.i ], [ -121, %while.body.cleanup.sink.split_crit_edge ]
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink, ptr noundef nonnull @.str.19) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_load_firmware(ptr noundef %fe, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %buf.i462 = alloca [2 x i8], align 1
  %msg.i463 = alloca %struct.i2c_msg, align 4
  %buf.i446 = alloca [2 x i8], align 1
  %msg.i447 = alloca %struct.i2c_msg, align 4
  %buf.i430 = alloca [2 x i8], align 1
  %msg.i431 = alloca %struct.i2c_msg, align 4
  %buf.i414 = alloca [2 x i8], align 1
  %msg.i415 = alloca %struct.i2c_msg, align 4
  %buf.i398 = alloca [2 x i8], align 1
  %msg.i399 = alloca %struct.i2c_msg, align 4
  %msg.i392 = alloca %struct.i2c_msg, align 4
  %buf.i376 = alloca [2 x i8], align 1
  %msg.i377 = alloca %struct.i2c_msg, align 4
  %buf.i360 = alloca [2 x i8], align 1
  %msg.i361 = alloca %struct.i2c_msg, align 4
  %buf.i344 = alloca [2 x i8], align 1
  %msg.i345 = alloca %struct.i2c_msg, align 4
  %buf.i328 = alloca [2 x i8], align 1
  %msg.i329 = alloca %struct.i2c_msg, align 4
  %buf.i312 = alloca [2 x i8], align 1
  %msg.i313 = alloca %struct.i2c_msg, align 4
  %buf.i296 = alloca [2 x i8], align 1
  %msg.i297 = alloca %struct.i2c_msg, align 4
  %buf.i280 = alloca [2 x i8], align 1
  %msg.i281 = alloca %struct.i2c_msg, align 4
  %buf.i264 = alloca [2 x i8], align 1
  %msg.i265 = alloca %struct.i2c_msg, align 4
  %buf.i248 = alloca [2 x i8], align 1
  %msg.i249 = alloca %struct.i2c_msg, align 4
  %buf.i232 = alloca [2 x i8], align 1
  %msg.i233 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %cmd = alloca %struct.cx24116_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #8
  %2 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %9 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %10 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %11 = getelementptr inbounds %struct.cx24116_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %12 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.do.end26_crit_edge, label %do.body4

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.body4:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %do.body4.do.end26_crit_edge, label %do.end9

do.body4.do.end26_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv = zext i8 %19 to i32
  %arrayidx12 = getelementptr i8, ptr %17, i32 1
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %21 to i32
  %sub = add i32 %15, -2
  %arrayidx16 = getelementptr i8, ptr %17, i32 %sub
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %23 to i32
  %sub20 = add i32 %15, -1
  %arrayidx21 = getelementptr i8, ptr %17, i32 %sub20
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %25 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %15, i32 noundef %conv, i32 noundef %conv13, i32 noundef %conv17, i32 noundef %conv22) #11
  br label %do.end26

do.end26:                                         ; preds = %do.end9, %do.body4.do.end26_crit_edge, %entry.do.end26_crit_edge
  %config = getelementptr inbounds %struct.cx24116_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config, align 4
  %reset_device = getelementptr inbounds %struct.cx24116_config, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %reset_device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset_device, align 4
  %tobool27.not = icmp eq ptr %29, null
  br i1 %tobool27.not, label %do.end26.if.end32_crit_edge, label %if.then28

do.end26.if.end32_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 %29(ptr noundef %fe) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %do.end26.if.end32_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -27, ptr %buf.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %33 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4
  %35 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv2.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %33, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i, ptr %buf3.i, align 4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i = icmp sgt i32 %42, 1
  br i1 %cmp.i, label %do.end.i, label %if.end32.if.end.i_crit_edge

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 229, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end32.if.end.i_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call5.i = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.not.i, label %if.end.i.cx24116_writereg.exit_crit_edge, label %do.end11.i

if.end.i.cx24116_writereg.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i, i32 noundef 229, i32 noundef 0) #11
  br label %cx24116_writereg.exit

cx24116_writereg.exit:                            ; preds = %do.end11.i, %if.end.i.cx24116_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i232) #8
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i232, i32 0, i32 1
  %46 = ptrtoint ptr %buf.i232 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -15, ptr %buf.i232, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 8, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i233) #8
  %48 = getelementptr inbounds i8, ptr %msg.i233, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 4
  %50 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  %conv2.i235 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i233 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv2.i235, ptr %msg.i233, align 4
  %flags.i236 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i233, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i236 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i236, align 2
  store i16 2, ptr %48, align 4
  %buf3.i238 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i233, i32 0, i32 3
  %56 = ptrtoint ptr %buf3.i238 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i232, ptr %buf3.i238, align 4
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i239 = icmp sgt i32 %57, 1
  br i1 %cmp.i239, label %do.end.i241, label %cx24116_writereg.exit.if.end.i244_crit_edge

cx24116_writereg.exit.if.end.i244_crit_edge:      ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i244

do.end.i241:                                      ; preds = %cx24116_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 241, i32 noundef 8) #11
  br label %if.end.i244

if.end.i244:                                      ; preds = %do.end.i241, %cx24116_writereg.exit.if.end.i244_crit_edge
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call5.i242 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i233, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i242)
  %cmp6.not.i243 = icmp eq i32 %call5.i242, 1
  br i1 %cmp6.not.i243, label %if.end.i244.cx24116_writereg.exit247_crit_edge, label %do.end11.i246

if.end.i244.cx24116_writereg.exit247_crit_edge:   ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit247

do.end11.i246:                                    ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i242, i32 noundef 241, i32 noundef 8) #11
  br label %cx24116_writereg.exit247

cx24116_writereg.exit247:                         ; preds = %do.end11.i246, %if.end.i244.cx24116_writereg.exit247_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i233) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i232) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i248) #8
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i248, i32 0, i32 1
  %61 = ptrtoint ptr %buf.i248 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -14, ptr %buf.i248, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 19, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i249) #8
  %63 = getelementptr inbounds i8, ptr %msg.i249, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %63, align 4
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv2.i251 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i249 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv2.i251, ptr %msg.i249, align 4
  %flags.i252 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i252 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i252, align 2
  store i16 2, ptr %63, align 4
  %buf3.i254 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 0, i32 3
  %71 = ptrtoint ptr %buf3.i254 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i248, ptr %buf3.i254, align 4
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i255 = icmp sgt i32 %72, 1
  br i1 %cmp.i255, label %do.end.i257, label %cx24116_writereg.exit247.if.end.i260_crit_edge

cx24116_writereg.exit247.if.end.i260_crit_edge:   ; preds = %cx24116_writereg.exit247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i260

do.end.i257:                                      ; preds = %cx24116_writereg.exit247
  call void @__sanitizer_cov_trace_pc() #10
  %call.i256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 242, i32 noundef 19) #11
  br label %if.end.i260

if.end.i260:                                      ; preds = %do.end.i257, %cx24116_writereg.exit247.if.end.i260_crit_edge
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call5.i258 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i249, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i258)
  %cmp6.not.i259 = icmp eq i32 %call5.i258, 1
  br i1 %cmp6.not.i259, label %if.end.i260.cx24116_writereg.exit263_crit_edge, label %do.end11.i262

if.end.i260.cx24116_writereg.exit263_crit_edge:   ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit263

do.end11.i262:                                    ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i258, i32 noundef 242, i32 noundef 19) #11
  br label %cx24116_writereg.exit263

cx24116_writereg.exit263:                         ; preds = %do.end11.i262, %if.end.i260.cx24116_writereg.exit263_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i249) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i248) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i264) #8
  %75 = getelementptr inbounds [2 x i8], ptr %buf.i264, i32 0, i32 1
  %76 = ptrtoint ptr %buf.i264 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -32, ptr %buf.i264, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 3, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i265) #8
  %78 = getelementptr inbounds i8, ptr %msg.i265, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %78, align 4
  %80 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 4
  %conv2.i267 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i265 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv2.i267, ptr %msg.i265, align 4
  %flags.i268 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i265, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i268 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i268, align 2
  store i16 2, ptr %78, align 4
  %buf3.i270 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i265, i32 0, i32 3
  %86 = ptrtoint ptr %buf3.i270 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i264, ptr %buf3.i270, align 4
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i271 = icmp sgt i32 %87, 1
  br i1 %cmp.i271, label %do.end.i273, label %cx24116_writereg.exit263.if.end.i276_crit_edge

cx24116_writereg.exit263.if.end.i276_crit_edge:   ; preds = %cx24116_writereg.exit263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i276

do.end.i273:                                      ; preds = %cx24116_writereg.exit263
  call void @__sanitizer_cov_trace_pc() #10
  %call.i272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 224, i32 noundef 3) #11
  br label %if.end.i276

if.end.i276:                                      ; preds = %do.end.i273, %cx24116_writereg.exit263.if.end.i276_crit_edge
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call5.i274 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i265, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i274)
  %cmp6.not.i275 = icmp eq i32 %call5.i274, 1
  br i1 %cmp6.not.i275, label %if.end.i276.cx24116_writereg.exit279_crit_edge, label %do.end11.i278

if.end.i276.cx24116_writereg.exit279_crit_edge:   ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit279

do.end11.i278:                                    ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i274, i32 noundef 224, i32 noundef 3) #11
  br label %cx24116_writereg.exit279

cx24116_writereg.exit279:                         ; preds = %do.end11.i278, %if.end.i276.cx24116_writereg.exit279_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i265) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i264) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i280) #8
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i280, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i280 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -32, ptr %buf.i280, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i281) #8
  %93 = getelementptr inbounds i8, ptr %msg.i281, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %93, align 4
  %95 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4
  %conv2.i283 = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i281 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv2.i283, ptr %msg.i281, align 4
  %flags.i284 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i281, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i284 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i284, align 2
  store i16 2, ptr %93, align 4
  %buf3.i286 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i281, i32 0, i32 3
  %101 = ptrtoint ptr %buf3.i286 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i280, ptr %buf3.i286, align 4
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.i287 = icmp sgt i32 %102, 1
  br i1 %cmp.i287, label %do.end.i289, label %cx24116_writereg.exit279.if.end.i292_crit_edge

cx24116_writereg.exit279.if.end.i292_crit_edge:   ; preds = %cx24116_writereg.exit279
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i292

do.end.i289:                                      ; preds = %cx24116_writereg.exit279
  call void @__sanitizer_cov_trace_pc() #10
  %call.i288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 224, i32 noundef 0) #11
  br label %if.end.i292

if.end.i292:                                      ; preds = %do.end.i289, %cx24116_writereg.exit279.if.end.i292_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %call5.i290 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msg.i281, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i290)
  %cmp6.not.i291 = icmp eq i32 %call5.i290, 1
  br i1 %cmp6.not.i291, label %if.end.i292.cx24116_writereg.exit295_crit_edge, label %do.end11.i294

if.end.i292.cx24116_writereg.exit295_crit_edge:   ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit295

do.end11.i294:                                    ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i290, i32 noundef 224, i32 noundef 0) #11
  br label %cx24116_writereg.exit295

cx24116_writereg.exit295:                         ; preds = %do.end11.i294, %if.end.i292.cx24116_writereg.exit295_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i281) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i280) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i296) #8
  %105 = getelementptr inbounds [2 x i8], ptr %buf.i296, i32 0, i32 1
  %106 = ptrtoint ptr %buf.i296 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -13, ptr %buf.i296, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 70, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i297) #8
  %108 = getelementptr inbounds i8, ptr %msg.i297, i32 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %108, align 4
  %110 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %config, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 4
  %conv2.i299 = zext i8 %113 to i16
  %114 = ptrtoint ptr %msg.i297 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv2.i299, ptr %msg.i297, align 4
  %flags.i300 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i297, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i300 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i300, align 2
  store i16 2, ptr %108, align 4
  %buf3.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i297, i32 0, i32 3
  %116 = ptrtoint ptr %buf3.i302 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %buf.i296, ptr %buf3.i302, align 4
  %117 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp.i303 = icmp sgt i32 %117, 1
  br i1 %cmp.i303, label %do.end.i305, label %cx24116_writereg.exit295.if.end.i308_crit_edge

cx24116_writereg.exit295.if.end.i308_crit_edge:   ; preds = %cx24116_writereg.exit295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i308

do.end.i305:                                      ; preds = %cx24116_writereg.exit295
  call void @__sanitizer_cov_trace_pc() #10
  %call.i304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 243, i32 noundef 70) #11
  br label %if.end.i308

if.end.i308:                                      ; preds = %do.end.i305, %cx24116_writereg.exit295.if.end.i308_crit_edge
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call5.i306 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i297, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i306)
  %cmp6.not.i307 = icmp eq i32 %call5.i306, 1
  br i1 %cmp6.not.i307, label %if.end.i308.cx24116_writereg.exit311_crit_edge, label %do.end11.i310

if.end.i308.cx24116_writereg.exit311_crit_edge:   ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit311

do.end11.i310:                                    ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i306, i32 noundef 243, i32 noundef 70) #11
  br label %cx24116_writereg.exit311

cx24116_writereg.exit311:                         ; preds = %do.end11.i310, %if.end.i308.cx24116_writereg.exit311_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i297) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i296) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i312) #8
  %120 = getelementptr inbounds [2 x i8], ptr %buf.i312, i32 0, i32 1
  %121 = ptrtoint ptr %buf.i312 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -7, ptr %buf.i312, align 1
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i313) #8
  %123 = getelementptr inbounds i8, ptr %msg.i313, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %123, align 4
  %125 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 4
  %conv2.i315 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i313 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv2.i315, ptr %msg.i313, align 4
  %flags.i316 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i316 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i316, align 2
  store i16 2, ptr %123, align 4
  %buf3.i318 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 3
  %131 = ptrtoint ptr %buf3.i318 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i312, ptr %buf3.i318, align 4
  %132 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp.i319 = icmp sgt i32 %132, 1
  br i1 %cmp.i319, label %do.end.i321, label %cx24116_writereg.exit311.if.end.i324_crit_edge

cx24116_writereg.exit311.if.end.i324_crit_edge:   ; preds = %cx24116_writereg.exit311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i324

do.end.i321:                                      ; preds = %cx24116_writereg.exit311
  call void @__sanitizer_cov_trace_pc() #10
  %call.i320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 249, i32 noundef 0) #11
  br label %if.end.i324

if.end.i324:                                      ; preds = %do.end.i321, %cx24116_writereg.exit311.if.end.i324_crit_edge
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call5.i322 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i313, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i322)
  %cmp6.not.i323 = icmp eq i32 %call5.i322, 1
  br i1 %cmp6.not.i323, label %if.end.i324.cx24116_writereg.exit327_crit_edge, label %do.end11.i326

if.end.i324.cx24116_writereg.exit327_crit_edge:   ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit327

do.end11.i326:                                    ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i322, i32 noundef 249, i32 noundef 0) #11
  br label %cx24116_writereg.exit327

cx24116_writereg.exit327:                         ; preds = %do.end11.i326, %if.end.i324.cx24116_writereg.exit327_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i313) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i312) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i328) #8
  %135 = getelementptr inbounds [2 x i8], ptr %buf.i328, i32 0, i32 1
  %136 = ptrtoint ptr %buf.i328 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -16, ptr %buf.i328, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 3, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i329) #8
  %138 = getelementptr inbounds i8, ptr %msg.i329, i32 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %138, align 4
  %140 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %config, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 4
  %conv2.i331 = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i329 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv2.i331, ptr %msg.i329, align 4
  %flags.i332 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i329, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i332 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i332, align 2
  store i16 2, ptr %138, align 4
  %buf3.i334 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i329, i32 0, i32 3
  %146 = ptrtoint ptr %buf3.i334 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i328, ptr %buf3.i334, align 4
  %147 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp.i335 = icmp sgt i32 %147, 1
  br i1 %cmp.i335, label %do.end.i337, label %cx24116_writereg.exit327.if.end.i340_crit_edge

cx24116_writereg.exit327.if.end.i340_crit_edge:   ; preds = %cx24116_writereg.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i340

do.end.i337:                                      ; preds = %cx24116_writereg.exit327
  call void @__sanitizer_cov_trace_pc() #10
  %call.i336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 3) #11
  br label %if.end.i340

if.end.i340:                                      ; preds = %do.end.i337, %cx24116_writereg.exit327.if.end.i340_crit_edge
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %call5.i338 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i329, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i338)
  %cmp6.not.i339 = icmp eq i32 %call5.i338, 1
  br i1 %cmp6.not.i339, label %if.end.i340.cx24116_writereg.exit343_crit_edge, label %do.end11.i342

if.end.i340.cx24116_writereg.exit343_crit_edge:   ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit343

do.end11.i342:                                    ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i338, i32 noundef 240, i32 noundef 3) #11
  br label %cx24116_writereg.exit343

cx24116_writereg.exit343:                         ; preds = %do.end11.i342, %if.end.i340.cx24116_writereg.exit343_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i329) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i328) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i344) #8
  %150 = getelementptr inbounds [2 x i8], ptr %buf.i344, i32 0, i32 1
  %151 = ptrtoint ptr %buf.i344 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -12, ptr %buf.i344, align 1
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -127, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i345) #8
  %153 = getelementptr inbounds i8, ptr %msg.i345, i32 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %153, align 4
  %155 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %config, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 4
  %conv2.i347 = zext i8 %158 to i16
  %159 = ptrtoint ptr %msg.i345 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv2.i347, ptr %msg.i345, align 4
  %flags.i348 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i345, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i348 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i348, align 2
  store i16 2, ptr %153, align 4
  %buf3.i350 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i345, i32 0, i32 3
  %161 = ptrtoint ptr %buf3.i350 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %buf.i344, ptr %buf3.i350, align 4
  %162 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp.i351 = icmp sgt i32 %162, 1
  br i1 %cmp.i351, label %do.end.i353, label %cx24116_writereg.exit343.if.end.i356_crit_edge

cx24116_writereg.exit343.if.end.i356_crit_edge:   ; preds = %cx24116_writereg.exit343
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i356

do.end.i353:                                      ; preds = %cx24116_writereg.exit343
  call void @__sanitizer_cov_trace_pc() #10
  %call.i352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 244, i32 noundef 129) #11
  br label %if.end.i356

if.end.i356:                                      ; preds = %do.end.i353, %cx24116_writereg.exit343.if.end.i356_crit_edge
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %call5.i354 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i345, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i354)
  %cmp6.not.i355 = icmp eq i32 %call5.i354, 1
  br i1 %cmp6.not.i355, label %if.end.i356.cx24116_writereg.exit359_crit_edge, label %do.end11.i358

if.end.i356.cx24116_writereg.exit359_crit_edge:   ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit359

do.end11.i358:                                    ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i354, i32 noundef 244, i32 noundef 129) #11
  br label %cx24116_writereg.exit359

cx24116_writereg.exit359:                         ; preds = %do.end11.i358, %if.end.i356.cx24116_writereg.exit359_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i345) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i344) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i360) #8
  %165 = getelementptr inbounds [2 x i8], ptr %buf.i360, i32 0, i32 1
  %166 = ptrtoint ptr %buf.i360 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -11, ptr %buf.i360, align 1
  %167 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i361) #8
  %168 = getelementptr inbounds i8, ptr %msg.i361, i32 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %168, align 4
  %170 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %config, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 4
  %conv2.i363 = zext i8 %173 to i16
  %174 = ptrtoint ptr %msg.i361 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv2.i363, ptr %msg.i361, align 4
  %flags.i364 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i361, i32 0, i32 1
  %175 = ptrtoint ptr %flags.i364 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %flags.i364, align 2
  store i16 2, ptr %168, align 4
  %buf3.i366 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i361, i32 0, i32 3
  %176 = ptrtoint ptr %buf3.i366 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %buf.i360, ptr %buf3.i366, align 4
  %177 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp.i367 = icmp sgt i32 %177, 1
  br i1 %cmp.i367, label %do.end.i369, label %cx24116_writereg.exit359.if.end.i372_crit_edge

cx24116_writereg.exit359.if.end.i372_crit_edge:   ; preds = %cx24116_writereg.exit359
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i372

do.end.i369:                                      ; preds = %cx24116_writereg.exit359
  call void @__sanitizer_cov_trace_pc() #10
  %call.i368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 245, i32 noundef 0) #11
  br label %if.end.i372

if.end.i372:                                      ; preds = %do.end.i369, %cx24116_writereg.exit359.if.end.i372_crit_edge
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %call5.i370 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msg.i361, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i370)
  %cmp6.not.i371 = icmp eq i32 %call5.i370, 1
  br i1 %cmp6.not.i371, label %if.end.i372.cx24116_writereg.exit375_crit_edge, label %do.end11.i374

if.end.i372.cx24116_writereg.exit375_crit_edge:   ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit375

do.end11.i374:                                    ; preds = %if.end.i372
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i370, i32 noundef 245, i32 noundef 0) #11
  br label %cx24116_writereg.exit375

cx24116_writereg.exit375:                         ; preds = %do.end11.i374, %if.end.i372.cx24116_writereg.exit375_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i361) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i360) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i376) #8
  %180 = getelementptr inbounds [2 x i8], ptr %buf.i376, i32 0, i32 1
  %181 = ptrtoint ptr %buf.i376 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -10, ptr %buf.i376, align 1
  %182 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %180, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i377) #8
  %183 = getelementptr inbounds i8, ptr %msg.i377, i32 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %183, align 4
  %185 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %config, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 4
  %conv2.i379 = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i377 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv2.i379, ptr %msg.i377, align 4
  %flags.i380 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i377, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i380 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i380, align 2
  store i16 2, ptr %183, align 4
  %buf3.i382 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i377, i32 0, i32 3
  %191 = ptrtoint ptr %buf3.i382 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %buf.i376, ptr %buf3.i382, align 4
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp.i383 = icmp sgt i32 %192, 1
  br i1 %cmp.i383, label %do.end.i385, label %cx24116_writereg.exit375.if.end.i388_crit_edge

cx24116_writereg.exit375.if.end.i388_crit_edge:   ; preds = %cx24116_writereg.exit375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i388

do.end.i385:                                      ; preds = %cx24116_writereg.exit375
  call void @__sanitizer_cov_trace_pc() #10
  %call.i384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 246, i32 noundef 0) #11
  br label %if.end.i388

if.end.i388:                                      ; preds = %do.end.i385, %cx24116_writereg.exit375.if.end.i388_crit_edge
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %call5.i386 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i377, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i386)
  %cmp6.not.i387 = icmp eq i32 %call5.i386, 1
  br i1 %cmp6.not.i387, label %if.end.i388.cx24116_writereg.exit391_crit_edge, label %do.end11.i390

if.end.i388.cx24116_writereg.exit391_crit_edge:   ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit391

do.end11.i390:                                    ; preds = %if.end.i388
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i386, i32 noundef 246, i32 noundef 0) #11
  br label %cx24116_writereg.exit391

cx24116_writereg.exit391:                         ; preds = %do.end11.i390, %if.end.i388.cx24116_writereg.exit391_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i377) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i376) #8
  %195 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %config, align 4
  %i2c_wr_max = getelementptr inbounds %struct.cx24116_config, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %i2c_wr_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool45.not = icmp eq i16 %198, 0
  %conv49 = zext i16 %198 to i32
  %phi.bo = add nsw i32 %conv49, -1
  %max.0 = select i1 %tobool45.not, i32 2147483646, i32 %phi.bo
  %199 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp479 = icmp sgt i32 %200, 0
  br i1 %cmp479, label %for.body.lr.ph, label %cx24116_writereg.exit391.for.end_crit_edge

cx24116_writereg.exit391.for.end_crit_edge:       ; preds = %cx24116_writereg.exit391
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %cx24116_writereg.exit391
  %data59 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %201 = getelementptr inbounds i8, ptr %msg.i392, i32 4
  %flags.i394 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i392, i32 0, i32 1
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i392, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx24116_writeregN.exit.for.body_crit_edge, %for.body.lr.ph
  %remaining.0480 = phi i32 [ %200, %for.body.lr.ph ], [ %sub66, %cx24116_writeregN.exit.for.body_crit_edge ]
  %202 = call i32 @llvm.smin.i32(i32 %remaining.0480, i32 %max.0)
  %203 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data59, align 4
  %205 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i392) #8
  %207 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %201, align 4
  %conv.i = and i32 %202, 65535
  %add.i = add nuw nsw i32 %conv.i, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %for.body.cx24116_writeregN.exit_crit_edge, label %if.end.i396

for.body.cx24116_writeregN.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writeregN.exit

if.end.i396:                                      ; preds = %for.body
  %sub61 = sub i32 %206, %remaining.0480
  %arrayidx62 = getelementptr i8, ptr %204, i32 %sub61
  %208 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 -9, ptr %call9.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 1
  %209 = call ptr @memcpy(ptr %add.ptr.i, ptr %arrayidx62, i32 %conv.i)
  %210 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %config, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %211, align 4
  %conv3.i = zext i8 %213 to i16
  %214 = ptrtoint ptr %msg.i392 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv3.i, ptr %msg.i392, align 4
  %215 = ptrtoint ptr %flags.i394 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %flags.i394, align 2
  %216 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call9.i.i, ptr %buf4.i, align 4
  %conv7.i = trunc i32 %add.i to i16
  %217 = ptrtoint ptr %201 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv7.i, ptr %201, align 4
  %218 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp.i395 = icmp sgt i32 %218, 1
  br i1 %cmp.i395, label %do.end.i397, label %if.end.i396.if.end13.i_crit_edge

if.end.i396.if.end13.i_crit_edge:                 ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

do.end.i397:                                      ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 247, i32 noundef %conv.i) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i397, %if.end.i396.if.end13.i_crit_edge
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 4
  %call14.i = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %msg.i392, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 1
  br i1 %cmp15.not.i, label %if.end13.i.if.end23.i_crit_edge, label %do.end20.i

if.end13.i.if.end23.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %call14.i, i32 noundef 247) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end20.i, %if.end13.i.if.end23.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cx24116_writeregN.exit

cx24116_writeregN.exit:                           ; preds = %if.end23.i, %for.body.cx24116_writeregN.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i392) #8
  %sub66 = sub i32 %remaining.0480, %max.0
  %cmp = icmp sgt i32 %sub66, 0
  br i1 %cmp, label %cx24116_writeregN.exit.for.body_crit_edge, label %cx24116_writeregN.exit.for.end_crit_edge

cx24116_writeregN.exit.for.end_crit_edge:         ; preds = %cx24116_writeregN.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cx24116_writeregN.exit.for.body_crit_edge:        ; preds = %cx24116_writeregN.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cx24116_writeregN.exit.for.end_crit_edge, %cx24116_writereg.exit391.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i398) #8
  %221 = getelementptr inbounds [2 x i8], ptr %buf.i398, i32 0, i32 1
  %222 = ptrtoint ptr %buf.i398 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -12, ptr %buf.i398, align 1
  %223 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 16, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i399) #8
  %224 = getelementptr inbounds i8, ptr %msg.i399, i32 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 196607, ptr %224, align 4
  %226 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %config, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %227, align 4
  %conv2.i401 = zext i8 %229 to i16
  %230 = ptrtoint ptr %msg.i399 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv2.i401, ptr %msg.i399, align 4
  %flags.i402 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i399, i32 0, i32 1
  %231 = ptrtoint ptr %flags.i402 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %flags.i402, align 2
  %buf3.i404 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i399, i32 0, i32 3
  %232 = ptrtoint ptr %buf3.i404 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %buf.i398, ptr %buf3.i404, align 4
  %233 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %233)
  %cmp.i405 = icmp sgt i32 %233, 1
  br i1 %cmp.i405, label %do.end.i407, label %for.end.if.end.i410_crit_edge

for.end.if.end.i410_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i410

do.end.i407:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i406 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 244, i32 noundef 16) #11
  br label %if.end.i410

if.end.i410:                                      ; preds = %do.end.i407, %for.end.if.end.i410_crit_edge
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %1, align 4
  %call5.i408 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %msg.i399, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i408)
  %cmp6.not.i409 = icmp eq i32 %call5.i408, 1
  br i1 %cmp6.not.i409, label %if.end.i410.cx24116_writereg.exit413_crit_edge, label %do.end11.i412

if.end.i410.cx24116_writereg.exit413_crit_edge:   ; preds = %if.end.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit413

do.end11.i412:                                    ; preds = %if.end.i410
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i408, i32 noundef 244, i32 noundef 16) #11
  br label %cx24116_writereg.exit413

cx24116_writereg.exit413:                         ; preds = %do.end11.i412, %if.end.i410.cx24116_writereg.exit413_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i399) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i398) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i414) #8
  %236 = getelementptr inbounds [2 x i8], ptr %buf.i414, i32 0, i32 1
  %237 = ptrtoint ptr %buf.i414 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -16, ptr %buf.i414, align 1
  %238 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i415) #8
  %239 = getelementptr inbounds i8, ptr %msg.i415, i32 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 196607, ptr %239, align 4
  %241 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %config, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %242, align 4
  %conv2.i417 = zext i8 %244 to i16
  %245 = ptrtoint ptr %msg.i415 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv2.i417, ptr %msg.i415, align 4
  %flags.i418 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i415, i32 0, i32 1
  %246 = ptrtoint ptr %flags.i418 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %flags.i418, align 2
  %buf3.i420 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i415, i32 0, i32 3
  %247 = ptrtoint ptr %buf3.i420 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %buf.i414, ptr %buf3.i420, align 4
  %248 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %248)
  %cmp.i421 = icmp sgt i32 %248, 1
  br i1 %cmp.i421, label %do.end.i423, label %cx24116_writereg.exit413.if.end.i426_crit_edge

cx24116_writereg.exit413.if.end.i426_crit_edge:   ; preds = %cx24116_writereg.exit413
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i426

do.end.i423:                                      ; preds = %cx24116_writereg.exit413
  call void @__sanitizer_cov_trace_pc() #10
  %call.i422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 0) #11
  br label %if.end.i426

if.end.i426:                                      ; preds = %do.end.i423, %cx24116_writereg.exit413.if.end.i426_crit_edge
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %1, align 4
  %call5.i424 = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %msg.i415, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i424)
  %cmp6.not.i425 = icmp eq i32 %call5.i424, 1
  br i1 %cmp6.not.i425, label %if.end.i426.cx24116_writereg.exit429_crit_edge, label %do.end11.i428

if.end.i426.cx24116_writereg.exit429_crit_edge:   ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit429

do.end11.i428:                                    ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i424, i32 noundef 240, i32 noundef 0) #11
  br label %cx24116_writereg.exit429

cx24116_writereg.exit429:                         ; preds = %do.end11.i428, %if.end.i426.cx24116_writereg.exit429_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i415) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i414) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i430) #8
  %251 = getelementptr inbounds [2 x i8], ptr %buf.i430, i32 0, i32 1
  %252 = ptrtoint ptr %buf.i430 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 -8, ptr %buf.i430, align 1
  %253 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 6, ptr %251, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i431) #8
  %254 = getelementptr inbounds i8, ptr %msg.i431, i32 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 196607, ptr %254, align 4
  %256 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %config, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %257, align 4
  %conv2.i433 = zext i8 %259 to i16
  %260 = ptrtoint ptr %msg.i431 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv2.i433, ptr %msg.i431, align 4
  %flags.i434 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 0, i32 1
  %261 = ptrtoint ptr %flags.i434 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %flags.i434, align 2
  %buf3.i436 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 0, i32 3
  %262 = ptrtoint ptr %buf3.i436 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %buf.i430, ptr %buf3.i436, align 4
  %263 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %263)
  %cmp.i437 = icmp sgt i32 %263, 1
  br i1 %cmp.i437, label %do.end.i439, label %cx24116_writereg.exit429.if.end.i442_crit_edge

cx24116_writereg.exit429.if.end.i442_crit_edge:   ; preds = %cx24116_writereg.exit429
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i442

do.end.i439:                                      ; preds = %cx24116_writereg.exit429
  call void @__sanitizer_cov_trace_pc() #10
  %call.i438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 248, i32 noundef 6) #11
  br label %if.end.i442

if.end.i442:                                      ; preds = %do.end.i439, %cx24116_writereg.exit429.if.end.i442_crit_edge
  %264 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %1, align 4
  %call5.i440 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %msg.i431, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i440)
  %cmp6.not.i441 = icmp eq i32 %call5.i440, 1
  br i1 %cmp6.not.i441, label %if.end.i442.cx24116_writereg.exit445_crit_edge, label %do.end11.i444

if.end.i442.cx24116_writereg.exit445_crit_edge:   ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit445

do.end11.i444:                                    ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i440, i32 noundef 248, i32 noundef 6) #11
  br label %cx24116_writereg.exit445

cx24116_writereg.exit445:                         ; preds = %do.end11.i444, %if.end.i442.cx24116_writereg.exit445_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i431) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i430) #8
  %266 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 16, ptr %2, align 1
  %267 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 5, ptr %3, align 1
  %268 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 -36, ptr %4, align 1
  %269 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -38, ptr %5, align 1
  %270 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 -82, ptr %6, align 1
  %271 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -86, ptr %7, align 1
  %272 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 4, ptr %8, align 1
  %273 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -99, ptr %9, align 1
  %274 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 -4, ptr %10, align 1
  %275 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 6, ptr %11, align 1
  %276 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 10, ptr %cmd, align 1
  %call90 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %if.end94, label %cx24116_writereg.exit445.cleanup_crit_edge

cx24116_writereg.exit445.cleanup_crit_edge:       ; preds = %cx24116_writereg.exit445
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end94:                                         ; preds = %cx24116_writereg.exit445
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i446) #8
  %277 = getelementptr inbounds [2 x i8], ptr %buf.i446, i32 0, i32 1
  %278 = ptrtoint ptr %buf.i446 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 -99, ptr %buf.i446, align 1
  %279 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %277, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i447) #8
  %280 = getelementptr inbounds i8, ptr %msg.i447, i32 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 196607, ptr %280, align 4
  %282 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %config, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %283, align 4
  %conv2.i449 = zext i8 %285 to i16
  %286 = ptrtoint ptr %msg.i447 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv2.i449, ptr %msg.i447, align 4
  %flags.i450 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i447, i32 0, i32 1
  %287 = ptrtoint ptr %flags.i450 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %flags.i450, align 2
  %buf3.i452 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i447, i32 0, i32 3
  %288 = ptrtoint ptr %buf3.i452 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %buf.i446, ptr %buf3.i452, align 4
  %289 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %289)
  %cmp.i453 = icmp sgt i32 %289, 1
  br i1 %cmp.i453, label %do.end.i455, label %if.end94.if.end.i458_crit_edge

if.end94.if.end.i458_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i458

do.end.i455:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %call.i454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 157, i32 noundef 0) #11
  br label %if.end.i458

if.end.i458:                                      ; preds = %do.end.i455, %if.end94.if.end.i458_crit_edge
  %290 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %1, align 4
  %call5.i456 = call i32 @i2c_transfer(ptr noundef %291, ptr noundef nonnull %msg.i447, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i456)
  %cmp6.not.i457 = icmp eq i32 %call5.i456, 1
  br i1 %cmp6.not.i457, label %if.end.i458.cx24116_writereg.exit461_crit_edge, label %do.end11.i460

if.end.i458.cx24116_writereg.exit461_crit_edge:   ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit461

do.end11.i460:                                    ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i456, i32 noundef 157, i32 noundef 0) #11
  br label %cx24116_writereg.exit461

cx24116_writereg.exit461:                         ; preds = %do.end11.i460, %if.end.i458.cx24116_writereg.exit461_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i447) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i446) #8
  %292 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 20, ptr %2, align 1
  %293 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 0, ptr %3, align 1
  %294 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 0, ptr %4, align 1
  %295 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 3, ptr %cmd, align 1
  %call103 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104.not = icmp eq i32 %call103, 0
  br i1 %cmp104.not, label %if.end107, label %cx24116_writereg.exit461.cleanup_crit_edge

cx24116_writereg.exit461.cleanup_crit_edge:       ; preds = %cx24116_writereg.exit461
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end107:                                        ; preds = %cx24116_writereg.exit461
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i462) #8
  %296 = getelementptr inbounds [2 x i8], ptr %buf.i462, i32 0, i32 1
  %297 = ptrtoint ptr %buf.i462 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 -27, ptr %buf.i462, align 1
  %298 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %296, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i463) #8
  %299 = getelementptr inbounds i8, ptr %msg.i463, i32 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 196607, ptr %299, align 4
  %301 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %config, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %302, align 4
  %conv2.i465 = zext i8 %304 to i16
  %305 = ptrtoint ptr %msg.i463 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 %conv2.i465, ptr %msg.i463, align 4
  %flags.i466 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i463, i32 0, i32 1
  %306 = ptrtoint ptr %flags.i466 to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 0, ptr %flags.i466, align 2
  %buf3.i468 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i463, i32 0, i32 3
  %307 = ptrtoint ptr %buf3.i468 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %buf.i462, ptr %buf3.i468, align 4
  %308 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %308)
  %cmp.i469 = icmp sgt i32 %308, 1
  br i1 %cmp.i469, label %do.end.i471, label %if.end107.if.end.i474_crit_edge

if.end107.if.end.i474_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i474

do.end.i471:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %call.i470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 229, i32 noundef 0) #11
  br label %if.end.i474

if.end.i474:                                      ; preds = %do.end.i471, %if.end107.if.end.i474_crit_edge
  %309 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %1, align 4
  %call5.i472 = call i32 @i2c_transfer(ptr noundef %310, ptr noundef nonnull %msg.i463, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i472)
  %cmp6.not.i473 = icmp eq i32 %call5.i472, 1
  br i1 %cmp6.not.i473, label %if.end.i474.cx24116_writereg.exit477_crit_edge, label %do.end11.i476

if.end.i474.cx24116_writereg.exit477_crit_edge:   ; preds = %if.end.i474
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx24116_writereg.exit477

do.end11.i476:                                    ; preds = %if.end.i474
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i475 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call5.i472, i32 noundef 229, i32 noundef 0) #11
  br label %cx24116_writereg.exit477

cx24116_writereg.exit477:                         ; preds = %do.end11.i476, %if.end.i474.cx24116_writereg.exit477_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i463) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i462) #8
  %311 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 19, ptr %2, align 1
  %312 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 1, ptr %3, align 1
  %313 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 117, ptr %4, align 1
  %314 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 0, ptr %5, align 1
  %315 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %config, align 4
  %mpg_clk_pos_pol = getelementptr inbounds %struct.cx24116_config, ptr %316, i32 0, i32 3
  %317 = ptrtoint ptr %mpg_clk_pos_pol to i32
  call void @__asan_load1_noabort(i32 %317)
  %bf.load = load i8, ptr %mpg_clk_pos_pol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %tobool118.not = icmp ult i8 %bf.load, 64
  %bf.lshr = lshr i8 %bf.load, 6
  %storemerge = select i1 %tobool118.not, i8 2, i8 %bf.lshr
  %318 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %storemerge, ptr %6, align 1
  %319 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 0, ptr %7, align 1
  %320 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 6, ptr %cmd, align 1
  %call133 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134.not = icmp eq i32 %call133, 0
  br i1 %cmp134.not, label %if.end137, label %cx24116_writereg.exit477.cleanup_crit_edge

cx24116_writereg.exit477.cleanup_crit_edge:       ; preds = %cx24116_writereg.exit477
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end137:                                        ; preds = %cx24116_writereg.exit477
  %321 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 53, ptr %2, align 1
  %322 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 2, ptr %cmd, align 1
  %323 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 0, ptr %3, align 1
  %call148 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149.not = icmp eq i32 %call148, 0
  br i1 %cmp149.not, label %if.end152, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end152:                                        ; preds = %if.end137
  %call153 = call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -106)
  %324 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 1, ptr %3, align 1
  %call148.1 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.1)
  %cmp149.not.1 = icmp eq i32 %call148.1, 0
  br i1 %cmp149.not.1, label %if.end152.1, label %if.end152.cleanup_crit_edge

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end152.1:                                      ; preds = %if.end152
  %call153.1 = call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -106)
  %325 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 2, ptr %3, align 1
  %call148.2 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.2)
  %cmp149.not.2 = icmp eq i32 %call148.2, 0
  br i1 %cmp149.not.2, label %if.end152.2, label %if.end152.1.cleanup_crit_edge

if.end152.1.cleanup_crit_edge:                    ; preds = %if.end152.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end152.2:                                      ; preds = %if.end152.1
  %call153.2 = call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -106)
  %326 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 3, ptr %3, align 1
  %call148.3 = call fastcc i32 @cx24116_cmd_execute(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.3)
  %cmp149.not.3 = icmp eq i32 %call148.3, 0
  br i1 %cmp149.not.3, label %if.end152.3, label %if.end152.2.cleanup_crit_edge

if.end152.2.cleanup_crit_edge:                    ; preds = %if.end152.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end152.3:                                      ; preds = %if.end152.2
  call void @__sanitizer_cov_trace_pc() #10
  %call153.3 = call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -106)
  %conv163 = and i32 %call153, 255
  %conv165 = and i32 %call153.1, 255
  %conv167 = and i32 %call153.2, 255
  %conv169 = and i32 %call153.3, 255
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48, i32 noundef %conv163, i32 noundef %conv165, i32 noundef %conv167, i32 noundef %conv169) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end152.3, %if.end152.2.cleanup_crit_edge, %if.end152.1.cleanup_crit_edge, %if.end152.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %cx24116_writereg.exit477.cleanup_crit_edge, %cx24116_writereg.exit461.cleanup_crit_edge, %cx24116_writereg.exit445.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end152.3 ], [ %call90, %cx24116_writereg.exit445.cleanup_crit_edge ], [ %call103, %cx24116_writereg.exit461.cleanup_crit_edge ], [ %call133, %cx24116_writereg.exit477.cleanup_crit_edge ], [ %call148, %if.end137.cleanup_crit_edge ], [ %call148.1, %if.end152.cleanup_crit_edge ], [ %call148.2, %if.end152.1.cleanup_crit_edge ], [ %call148.3, %if.end152.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24116_wait_for_lnb(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.end

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -68)
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef %call) #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %i.023 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call5 = tail call fastcc i32 @cx24116_readreg(ptr noundef %1, i8 noundef zeroext -68)
  %and = and i32 %call5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #8
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %do.body9, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body9:                                         ; preds = %if.end8
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %do.body9.cleanup_crit_edge, label %do.end14

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.163) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end14 ], [ -110, %do.body9.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !346, !347}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 37, i32 1}
!5 = !{ptr @__param_toneburst, !6, !"__param_toneburst", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 121, i32 1}
!7 = !{ptr @__UNIQUE_ID_tonebursttype292, !6, !"__UNIQUE_ID_tonebursttype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_toneburst293, !9, !"__UNIQUE_ID_toneburst293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 122, i32 1}
!10 = !{ptr @__param_esno_snr, !11, !"__param_esno_snr", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 127, i32 1}
!12 = !{ptr @__UNIQUE_ID_esno_snrtype294, !11, !"__UNIQUE_ID_esno_snrtype294", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_esno_snr295, !14, !"__UNIQUE_ID_esno_snr295", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 128, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1111, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cx24116_attach._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cx24116_attach._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1126, i32 3}
!23 = !{ptr @cx24116_attach._entry.3, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cx24116_attach._entry_ptr.5, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_cx24116_attach, !26, !"__ksymtab_cx24116_attach", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1136, i32 1}
!27 = !{ptr @__UNIQUE_ID_description296, !28, !"__UNIQUE_ID_description296", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1489, i32 1}
!29 = !{ptr @__UNIQUE_ID_author297, !30, !"__UNIQUE_ID_author297", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1490, i32 1}
!31 = !{ptr @__UNIQUE_ID_file298, !32, !"__UNIQUE_ID_file298", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1491, i32 1}
!33 = !{ptr @__UNIQUE_ID_license299, !32, !"__UNIQUE_ID_license299", i1 false, i1 false}
!34 = !{ptr @debug, !35, !"debug", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 35, i32 12}
!36 = !{ptr @esno_snr, !37, !"esno_snr", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 126, i32 12}
!38 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!39 = !{ptr @__param_str_toneburst, !6, !"__param_str_toneburst", i1 false, i1 false}
!40 = !{ptr @toneburst, !41, !"toneburst", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 120, i32 12}
!42 = !{ptr @__param_str_esno_snr, !11, !"__param_str_esno_snr", i1 false, i1 false}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 259, i32 3}
!45 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cx24116_readreg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cx24116_readreg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 265, i32 3}
!50 = !{ptr @cx24116_readreg._entry.8, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cx24116_readreg._entry_ptr.10, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @cx24116_ops, !53, !"cx24116_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1452, i32 38}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1099, i32 2}
!56 = !{ptr @cx24116_release._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cx24116_release._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1149, i32 2}
!60 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cx24116_initfe._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cx24116_initfe._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 195, i32 3}
!65 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cx24116_writereg._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cx24116_writereg._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 200, i32 3}
!70 = !{ptr @cx24116_writereg._entry.16, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cx24116_writereg._entry_ptr.18, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 519, i32 2}
!74 = !{ptr @cx24116_cmd_execute._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cx24116_cmd_execute._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 524, i32 3}
!78 = !{ptr @cx24116_cmd_execute._entry.20, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cx24116_cmd_execute._entry_ptr.22, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 531, i32 3}
!82 = !{ptr @cx24116_cmd_execute._entry.23, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cx24116_cmd_execute._entry_ptr.25, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 542, i32 4}
!86 = !{ptr @cx24116_cmd_execute._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cx24116_cmd_execute._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 469, i32 2}
!90 = !{ptr @cx24116_firmware_ondemand._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cx24116_firmware_ondemand._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 478, i32 3}
!94 = !{ptr @cx24116_firmware_ondemand._entry.30, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cx24116_firmware_ondemand._entry_ptr.32, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 482, i32 3}
!99 = !{ptr @cx24116_firmware_ondemand._entry.34, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cx24116_firmware_ondemand._entry_ptr.36, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 485, i32 4}
!103 = !{ptr @cx24116_firmware_ondemand._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @cx24116_firmware_ondemand._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 496, i32 4}
!107 = !{ptr @cx24116_firmware_ondemand._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cx24116_firmware_ondemand._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 501, i32 3}
!111 = !{ptr @cx24116_firmware_ondemand._entry.43, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cx24116_firmware_ondemand._entry_ptr.45, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 558, i32 2}
!117 = !{ptr @cx24116_load_firmware._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cx24116_load_firmware._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 559, i32 2}
!121 = !{ptr @cx24116_load_firmware._entry.49, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cx24116_load_firmware._entry_ptr.51, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 666, i32 2}
!125 = !{ptr @cx24116_load_firmware._entry.52, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cx24116_load_firmware._entry_ptr.54, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 229, i32 3}
!129 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cx24116_writeregN._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @cx24116_writeregN._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 234, i32 3}
!134 = !{ptr @cx24116_writeregN._entry.57, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cx24116_writeregN._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1181, i32 2}
!138 = !{ptr @cx24116_sleep._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cx24116_sleep._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1210, i32 2}
!142 = !{ptr @cx24116_set_frontend._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cx24116_set_frontend._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1214, i32 3}
!146 = !{ptr @cx24116_set_frontend._entry.62, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cx24116_set_frontend._entry_ptr.64, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1218, i32 4}
!150 = !{ptr @cx24116_set_frontend._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @cx24116_set_frontend._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1228, i32 4}
!154 = !{ptr @cx24116_set_frontend._entry.68, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @cx24116_set_frontend._entry_ptr.70, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1236, i32 3}
!158 = !{ptr @cx24116_set_frontend._entry.71, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @cx24116_set_frontend._entry_ptr.73, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @cx24116_set_frontend._entry.74, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1243, i32 4}
!162 = !{ptr @cx24116_set_frontend._entry_ptr.75, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1261, i32 4}
!165 = !{ptr @cx24116_set_frontend._entry.76, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @cx24116_set_frontend._entry_ptr.78, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @cx24116_set_frontend._entry.79, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1278, i32 4}
!169 = !{ptr @cx24116_set_frontend._entry_ptr.80, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1285, i32 3}
!172 = !{ptr @cx24116_set_frontend._entry.81, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @cx24116_set_frontend._entry_ptr.83, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1311, i32 2}
!176 = !{ptr @cx24116_set_frontend._entry.84, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @cx24116_set_frontend._entry_ptr.86, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1312, i32 2}
!180 = !{ptr @cx24116_set_frontend._entry.87, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @cx24116_set_frontend._entry_ptr.89, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1313, i32 2}
!184 = !{ptr @cx24116_set_frontend._entry.90, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @cx24116_set_frontend._entry_ptr.92, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1314, i32 2}
!188 = !{ptr @cx24116_set_frontend._entry.93, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @cx24116_set_frontend._entry_ptr.95, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1316, i32 2}
!192 = !{ptr @cx24116_set_frontend._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @cx24116_set_frontend._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1317, i32 2}
!196 = !{ptr @cx24116_set_frontend._entry.99, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @cx24116_set_frontend._entry_ptr.101, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1319, i32 2}
!200 = !{ptr @cx24116_set_frontend._entry.102, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @cx24116_set_frontend._entry_ptr.104, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1320, i32 2}
!204 = !{ptr @cx24116_set_frontend._entry.105, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @cx24116_set_frontend._entry_ptr.107, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1322, i32 2}
!208 = !{ptr @cx24116_set_frontend._entry.108, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @cx24116_set_frontend._entry_ptr.110, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1407, i32 5}
!212 = !{ptr @cx24116_set_frontend._entry.111, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @cx24116_set_frontend._entry_ptr.113, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1413, i32 3}
!216 = !{ptr @cx24116_set_frontend._entry.114, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @cx24116_set_frontend._entry_ptr.116, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.117, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 274, i32 2}
!220 = !{ptr @.str.118, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @cx24116_set_inversion._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @cx24116_set_inversion._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 427, i32 2}
!225 = !{ptr @.str.120, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @cx24116_set_fec._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @cx24116_set_fec._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.122, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 437, i32 2}
!230 = !{ptr @cx24116_set_fec._entry.121, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @cx24116_set_fec._entry_ptr.123, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.124, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 406, i32 2}
!234 = !{ptr @cx24116_lookup_fecmod._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @cx24116_lookup_fecmod._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @CX24116_MODFEC_MODES, !237, !"CX24116_MODFEC_MODES", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 365, i32 3}
!238 = !{ptr @.str.125, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 445, i32 2}
!240 = !{ptr @cx24116_set_symbolrate._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cx24116_set_symbolrate._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 450, i32 3}
!244 = !{ptr @cx24116_set_symbolrate._entry.126, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @cx24116_set_symbolrate._entry_ptr.128, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.130, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 455, i32 2}
!248 = !{ptr @cx24116_set_symbolrate._entry.129, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @cx24116_set_symbolrate._entry_ptr.131, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 679, i32 2}
!252 = !{ptr @.str.133, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @cx24116_read_status._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @cx24116_read_status._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.134, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 699, i32 2}
!257 = !{ptr @cx24116_read_ber._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @cx24116_read_ber._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.135, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 718, i32 2}
!261 = !{ptr @cx24116_read_signal_strength._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @cx24116_read_signal_strength._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 733, i32 2}
!265 = !{ptr @cx24116_read_signal_strength._entry.136, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @cx24116_read_signal_strength._entry_ptr.138, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.139, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 774, i32 2}
!269 = !{ptr @cx24116_read_snr_esno._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @cx24116_read_snr_esno._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.141, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 779, i32 2}
!273 = !{ptr @cx24116_read_snr_esno._entry.140, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @cx24116_read_snr_esno._entry_ptr.142, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @cx24116_read_snr_pct.snr_tab, !276, !"snr_tab", i1 false, i1 false}
!276 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 744, i32 19}
!277 = !{ptr @.str.143, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 750, i32 2}
!279 = !{ptr @cx24116_read_snr_pct._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @cx24116_read_snr_pct._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.145, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 760, i32 2}
!283 = !{ptr @cx24116_read_snr_pct._entry.144, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @cx24116_read_snr_pct._entry_ptr.146, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 796, i32 2}
!287 = !{ptr @cx24116_read_ucblocks._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @cx24116_read_ucblocks._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.148, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 958, i32 3}
!291 = !{ptr @.str.149, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @cx24116_send_diseqc_msg._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @cx24116_send_diseqc_msg._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 960, i32 4}
!296 = !{ptr @cx24116_send_diseqc_msg._entry.150, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @cx24116_send_diseqc_msg._entry_ptr.152, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.154, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 962, i32 5}
!300 = !{ptr @cx24116_send_diseqc_msg._entry.153, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @cx24116_send_diseqc_msg._entry_ptr.155, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.157, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 964, i32 3}
!304 = !{ptr @cx24116_send_diseqc_msg._entry.156, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @cx24116_send_diseqc_msg._entry_ptr.158, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.160, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1010, i32 4}
!308 = !{ptr @cx24116_send_diseqc_msg._entry.159, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @cx24116_send_diseqc_msg._entry_ptr.161, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.162, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 817, i32 2}
!312 = !{ptr @.str.163, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @cx24116_wait_for_lnb._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @cx24116_wait_for_lnb._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.165, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 827, i32 2}
!317 = !{ptr @cx24116_wait_for_lnb._entry.164, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @cx24116_wait_for_lnb._entry_ptr.166, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.167, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 1049, i32 2}
!321 = !{ptr @.str.168, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @cx24116_diseqc_send_burst._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @cx24116_diseqc_send_burst._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.169, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 866, i32 2}
!326 = !{ptr @cx24116_set_tone._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @cx24116_set_tone._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.171, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 868, i32 3}
!330 = !{ptr @cx24116_set_tone._entry.170, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @cx24116_set_tone._entry_ptr.172, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.174, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 887, i32 3}
!334 = !{ptr @cx24116_set_tone._entry.173, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @cx24116_set_tone._entry_ptr.175, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.177, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 891, i32 3}
!338 = !{ptr @cx24116_set_tone._entry.176, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @cx24116_set_tone._entry_ptr.178, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.179, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/dvb-frontends/cx24116.c", i32 838, i32 2}
!342 = !{ptr @.str.180, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @cx24116_set_voltage._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @cx24116_set_voltage._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.181, !341, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.182, !341, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.183, !341, !"<string literal>", i1 false, i1 false}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{!"auto-init"}
