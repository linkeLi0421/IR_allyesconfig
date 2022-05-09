; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ds3000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ds3000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ds3000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ds3000_attach\09\09\09\09"
module asm "\09.long\09__crc_ds3000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ds3000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ds3000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ds3000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.ds3000_state = type { ptr, ptr, %struct.dvb_frontend, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ds3000_config = type { i8, i8, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ds3000_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds3000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/ds3000.c\00", [59 x i8] zeroinitializer }, align 32
@ds3000_attach._entry_ptr = internal global ptr @ds3000_attach._entry, section ".printk_index", align 4
@ds3000_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Invalid probe, probably not a DS3000\0A\00", [56 x i8] zeroinitializer }, align 32
@ds3000_attach._entry_ptr.5 = internal global ptr @ds3000_attach._entry.3, section ".printk_index", align 4
@ds3000_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016DS3000 chip version: %d.%d attached.\0A\00", [56 x i8] zeroinitializer }, align 32
@ds3000_attach._entry_ptr.8 = internal global ptr @ds3000_attach._entry.6, section ".printk_index", align 4
@ds3000_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Montage Technology DS3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @ds3000_release, ptr null, ptr @ds3000_initfe, ptr null, ptr null, ptr null, ptr null, ptr @ds3000_tune, ptr @ds3000_get_algo, ptr @ds3000_set_frontend, ptr null, ptr null, ptr @ds3000_read_status, ptr @ds3000_read_ber, ptr @ds3000_read_signal_strength, ptr @ds3000_read_snr, ptr @ds3000_read_ucblocks, ptr null, ptr @ds3000_send_diseqc_msg, ptr null, ptr @ds3000_diseqc_send_burst, ptr @ds3000_set_tone, ptr @ds3000_set_voltage, ptr null, ptr null, ptr @ds3000_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_ds3000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ds3000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ds3000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ds3000_attach to i32), ptr @__kstrtab_ds3000_attach, ptr @__kstrtabns_ds3000_attach }, section "___ksymtab+ds3000_attach", align 4
@__param_str_debug = internal constant [13 x i8] c"ds3000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"ds3000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [59 x i8] c"ds3000.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [78 x i8] c"ds3000.description=DVB Frontend module for Montage Technology DS3000 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [61 x i8] c"ds3000.author=Konstantin Dimitrov <kosio.dimitrov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"ds3000.file=drivers/media/dvb-frontends/ds3000\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"ds3000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [33 x i8] c"ds3000.firmware=dvb-fe-ds3000.fw\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ds3000_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: reg=0x%x(error=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds3000_readreg\00", [17 x i8] zeroinitializer }, align 32
@ds3000_readreg._entry_ptr = internal global ptr @ds3000_readreg._entry, section ".printk_index", align 4
@ds3000_readreg._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: read reg 0x%02x, value 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@ds3000_readreg._entry_ptr.13 = internal global ptr @ds3000_readreg._entry.11, section ".printk_index", align 4
@ds3000_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds3000_set_voltage\00", [45 x i8] zeroinitializer }, align 32
@ds3000_set_voltage._entry_ptr = internal global ptr @ds3000_set_voltage._entry, section ".printk_index", align 4
@ds3000_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: write reg 0x%02x, value 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds3000_writereg\00", [16 x i8] zeroinitializer }, align 32
@ds3000_writereg._entry_ptr = internal global ptr @ds3000_writereg._entry, section ".printk_index", align 4
@ds3000_writereg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x, value == 0x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@ds3000_writereg._entry_ptr.20 = internal global ptr @ds3000_writereg._entry.18, section ".printk_index", align 4
@ds3000_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds3000_release\00", [17 x i8] zeroinitializer }, align 32
@ds3000_release._entry_ptr = internal global ptr @ds3000_release._entry, section ".printk_index", align 4
@ds3000_initfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds3000_initfe\00", [18 x i8] zeroinitializer }, align 32
@ds3000_initfe._entry_ptr = internal global ptr @ds3000_initfe._entry, section ".printk_index", align 4
@ds3000_initfe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Unable initialize firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@ds3000_initfe._entry_ptr.26 = internal global ptr @ds3000_initfe._entry.24, section ".printk_index", align 4
@ds3000_firmware_ondemand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.27, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ds3000_firmware_ondemand\00", [39 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry_ptr = internal global ptr @ds3000_firmware_ondemand._entry, section ".printk_index", align 4
@ds3000_firmware_ondemand._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Waiting for firmware upload (%s)...\0A\00", [53 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry_ptr.30 = internal global ptr @ds3000_firmware_ondemand._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-fe-ds3000.fw\00", [47 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Waiting for firmware upload(2)...\0A\00", [55 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry_ptr.34 = internal global ptr @ds3000_firmware_ondemand._entry.32, section ".printk_index", align 4
@ds3000_firmware_ondemand._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: No firmware uploaded (timeout or file not found?)\0A\00", [39 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry_ptr.37 = internal global ptr @ds3000_firmware_ondemand._entry.35, section ".printk_index", align 4
@ds3000_firmware_ondemand._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Writing firmware to device failed\0A\00", [57 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry_ptr.40 = internal global ptr @ds3000_firmware_ondemand._entry.38, section ".printk_index", align 4
@ds3000_firmware_ondemand._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Firmware upload %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ds3000_firmware_ondemand._entry_ptr.43 = internal global ptr @ds3000_firmware_ondemand._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@ds3000_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds3000_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@ds3000_load_firmware._entry_ptr = internal global ptr @ds3000_load_firmware._entry, section ".printk_index", align 4
@ds3000_load_firmware._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Firmware is %zu bytes (%02x %02x .. %02x %02x)\0A\00", [48 x i8] zeroinitializer }, align 32
@ds3000_load_firmware._entry_ptr.49 = internal global ptr @ds3000_load_firmware._entry.47, section ".printk_index", align 4
@ds3000_writeFW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: write reg 0x%02x, len = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds3000_writeFW\00", [17 x i8] zeroinitializer }, align 32
@ds3000_writeFW._entry_ptr = internal global ptr @ds3000_writeFW._entry, section ".printk_index", align 4
@ds3000_writeFW._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: write error(err == %i, reg == 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@ds3000_writeFW._entry_ptr.54 = internal global ptr @ds3000_writeFW._entry.52, section ".printk_index", align 4
@ds3000_get_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.55, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds3000_get_algo\00", [16 x i8] zeroinitializer }, align 32
@ds3000_get_algo._entry_ptr = internal global ptr @ds3000_get_algo._entry, section ".printk_index", align 4
@ds3000_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s() \00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds3000_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@ds3000_set_frontend._entry_ptr = internal global ptr @ds3000_set_frontend._entry, section ".printk_index", align 4
@ds3000_dvbs_init_tab = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"#\05\08\03\0C\00!T%\82'10\081@22355\FF:\007\108\109\02B`J@K\04M\91]\C8PwQwR6S6V\01cCd0e@h&iLp qpr\04s\00p@qpr\04s\00p`qpr\04s\00p\80qpr\04s\00p\A0qpr\04s\00p\1Fv\00w\D1x\0Cy\80\7F\04|\00\80\86\81\A6\85\04\CD\F4\903\A0D\C0\18\C3\10\C4\08\C5\80\C6\80\C7\0A\C8\1A\C9\80\FE\92\E0\F8\E6\8B\D0@\F8 \FA\0F\FD \AD \AE\07\B8\00", [62 x i8] zeroinitializer }, align 32
@ds3000_dvbs2_init_tab = internal constant { [192 x i8], [32 x i8] } { [192 x i8] c"#\0F\08\07\0C\00!T%\82'10\081222355\FF:\007\108\109\02B`J\80K\04M\81]\88P6Q6R6S6c`d\10e\10h\04i)p qpr\04s\00p@qpr\04s\00p`qpr\04s\00p\80qpr\04s\00p\A0qpr\04s\00p\1F\A0D\C0\08\C1\10\C2\08\C3\10\C4\08\C5\F0\C6\F0\C7\0A\C8\1A\C9\80\CA#\CB$\CEt\90\03v\80wBx\0Ay\80\AD@\AE\07\7F\D4|\00\80\A8\81\DA|\01\80\DA\81\EC|\02\80\CA\81\EB|\03\80\BA\81\DB\85\08\86\00\87\02\89\80\8BD\8C\AA\8A\10\BA\00\F5\04\FED\D22\B8\00", [32 x i8] zeroinitializer }, align 32
@ds3000_set_frontend._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s() symbol_rate %u out of range (%u ... %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@ds3000_set_frontend._entry_ptr.60 = internal global ptr @ds3000_set_frontend._entry.58, section ".printk_index", align 4
@ds3000_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: status = 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds3000_read_status\00", [45 x i8] zeroinitializer }, align 32
@ds3000_read_status._entry_ptr = internal global ptr @ds3000_read_status._entry, section ".printk_index", align 4
@ds3000_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.63, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds3000_read_ber\00", [16 x i8] zeroinitializer }, align 32
@ds3000_read_ber._entry_ptr = internal global ptr @ds3000_read_ber._entry, section ".printk_index", align 4
@ds3000_read_snr.dvbs_snr_tab = internal constant { [20 x i16], [56 x i8] } { [20 x i16] [i16 0, i16 6931, i16 10986, i16 13863, i16 16094, i16 17918, i16 19459, i16 20794, i16 21972, i16 23026, i16 23979, i16 24849, i16 25649, i16 26391, i16 27081, i16 27726, i16 28332, i16 28904, i16 29444, i16 29957], [56 x i8] zeroinitializer }, align 32
@ds3000_read_snr.dvbs2_snr_tab = internal constant { [80 x i16], [32 x i8] } { [80 x i16] [i16 0, i16 3010, i16 4771, i16 6021, i16 6990, i16 7781, i16 8451, i16 9031, i16 9542, i16 10000, i16 10414, i16 10792, i16 11139, i16 11461, i16 11761, i16 12041, i16 12304, i16 12553, i16 12788, i16 13010, i16 13222, i16 13424, i16 13617, i16 13802, i16 13979, i16 14150, i16 14314, i16 14472, i16 14624, i16 14771, i16 14914, i16 15052, i16 15185, i16 15315, i16 15441, i16 15563, i16 15682, i16 15798, i16 15911, i16 16021, i16 16128, i16 16232, i16 16335, i16 16435, i16 16532, i16 16628, i16 16721, i16 16812, i16 16902, i16 16990, i16 17076, i16 17160, i16 17243, i16 17324, i16 17404, i16 17482, i16 17559, i16 17634, i16 17709, i16 17782, i16 17853, i16 17924, i16 17993, i16 18062, i16 18129, i16 18195, i16 18261, i16 18325, i16 18388, i16 18451, i16 18513, i16 18573, i16 18633, i16 18692, i16 18751, i16 18808, i16 18865, i16 18921, i16 18976, i16 19031], [32 x i8] zeroinitializer }, align 32
@ds3000_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.64, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds3000_read_snr\00", [16 x i8] zeroinitializer }, align 32
@ds3000_read_snr._entry_ptr = internal global ptr @ds3000_read_snr._entry, section ".printk_index", align 4
@ds3000_read_snr._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: raw / cooked = 0x%02x / 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@ds3000_read_snr._entry_ptr.67 = internal global ptr @ds3000_read_snr._entry.65, section ".printk_index", align 4
@ds3000_read_snr._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ds3000_read_snr._entry_ptr.69 = internal global ptr @ds3000_read_snr._entry.68, section ".printk_index", align 4
@ds3000_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.70, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds3000_read_ucblocks\00", [43 x i8] zeroinitializer }, align 32
@ds3000_read_ucblocks._entry_ptr = internal global ptr @ds3000_read_ucblocks._entry, section ".printk_index", align 4
@ds3000_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s(\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ds3000_send_diseqc_msg\00", [41 x i8] zeroinitializer }, align 32
@ds3000_send_diseqc_msg._entry_ptr = internal global ptr @ds3000_send_diseqc_msg._entry, section ".printk_index", align 4
@ds3000_send_diseqc_msg._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%02x\00", [25 x i8] zeroinitializer }, align 32
@ds3000_send_diseqc_msg._entry_ptr.75 = internal global ptr @ds3000_send_diseqc_msg._entry.73, section ".printk_index", align 4
@ds3000_send_diseqc_msg._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@ds3000_send_diseqc_msg._entry_ptr.78 = internal global ptr @ds3000_send_diseqc_msg._entry.76, section ".printk_index", align 4
@ds3000_diseqc_send_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.79, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ds3000_diseqc_send_burst\00", [39 x i8] zeroinitializer }, align 32
@ds3000_diseqc_send_burst._entry_ptr = internal global ptr @ds3000_diseqc_send_burst._entry, section ".printk_index", align 4
@ds3000_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.80, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds3000_set_tone\00", [16 x i8] zeroinitializer }, align 32
@ds3000_set_tone._entry_ptr = internal global ptr @ds3000_set_tone._entry, section ".printk_index", align 4
@ds3000_set_tone._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Invalid, tone=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ds3000_set_tone._entry_ptr.83 = internal global ptr @ds3000_set_tone._entry.81, section ".printk_index", align 4
@ds3000_set_tone._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: setting tone on\0A\00", [43 x i8] zeroinitializer }, align 32
@ds3000_set_tone._entry_ptr.86 = internal global ptr @ds3000_set_tone._entry.84, section ".printk_index", align 4
@ds3000_set_tone._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: setting tone off\0A\00", [42 x i8] zeroinitializer }, align 32
@ds3000_set_tone._entry_ptr.89 = internal global ptr @ds3000_set_tone._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 21, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 827, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 842, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 846, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [11 x i8] c"ds3000_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1087, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 321, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 325, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 399, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 235, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 239, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 815, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1072, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1080, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 339, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 347, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 351, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 353, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 360, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 364, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 376, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 377, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 281, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 285, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1058, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 894, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [21 x i8] c"ds3000_dvbs_init_tab\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 36, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"ds3000_dvbs2_init_tab\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 121, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 944, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 453, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 466, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [13 x i8] c"dvbs_snr_tab\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 539, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant [14 x i8] c"dvbs2_snr_tab\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 544, i32 19 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 559, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 575, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 608, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 626, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 698, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 700, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 702, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 762, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 661, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 663, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 673, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [40 x i8] c"../drivers/media/dvb-frontends/ds3000.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 680, i32 3 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_ds3000_attach, ptr @__param_debug, ptr @ds3000_attach._entry, ptr @ds3000_attach._entry.3, ptr @ds3000_attach._entry.6, ptr @ds3000_attach._entry_ptr, ptr @ds3000_attach._entry_ptr.5, ptr @ds3000_attach._entry_ptr.8, ptr @ds3000_diseqc_send_burst._entry, ptr @ds3000_diseqc_send_burst._entry_ptr, ptr @ds3000_firmware_ondemand._entry, ptr @ds3000_firmware_ondemand._entry.28, ptr @ds3000_firmware_ondemand._entry.32, ptr @ds3000_firmware_ondemand._entry.35, ptr @ds3000_firmware_ondemand._entry.38, ptr @ds3000_firmware_ondemand._entry.41, ptr @ds3000_firmware_ondemand._entry_ptr, ptr @ds3000_firmware_ondemand._entry_ptr.30, ptr @ds3000_firmware_ondemand._entry_ptr.34, ptr @ds3000_firmware_ondemand._entry_ptr.37, ptr @ds3000_firmware_ondemand._entry_ptr.40, ptr @ds3000_firmware_ondemand._entry_ptr.43, ptr @ds3000_get_algo._entry, ptr @ds3000_get_algo._entry_ptr, ptr @ds3000_initfe._entry, ptr @ds3000_initfe._entry.24, ptr @ds3000_initfe._entry_ptr, ptr @ds3000_initfe._entry_ptr.26, ptr @ds3000_load_firmware._entry, ptr @ds3000_load_firmware._entry.47, ptr @ds3000_load_firmware._entry_ptr, ptr @ds3000_load_firmware._entry_ptr.49, ptr @ds3000_read_ber._entry, ptr @ds3000_read_ber._entry_ptr, ptr @ds3000_read_snr._entry, ptr @ds3000_read_snr._entry.65, ptr @ds3000_read_snr._entry.68, ptr @ds3000_read_snr._entry_ptr, ptr @ds3000_read_snr._entry_ptr.67, ptr @ds3000_read_snr._entry_ptr.69, ptr @ds3000_read_status._entry, ptr @ds3000_read_status._entry_ptr, ptr @ds3000_read_ucblocks._entry, ptr @ds3000_read_ucblocks._entry_ptr, ptr @ds3000_readreg._entry, ptr @ds3000_readreg._entry.11, ptr @ds3000_readreg._entry_ptr, ptr @ds3000_readreg._entry_ptr.13, ptr @ds3000_release._entry, ptr @ds3000_release._entry_ptr, ptr @ds3000_send_diseqc_msg._entry, ptr @ds3000_send_diseqc_msg._entry.73, ptr @ds3000_send_diseqc_msg._entry.76, ptr @ds3000_send_diseqc_msg._entry_ptr, ptr @ds3000_send_diseqc_msg._entry_ptr.75, ptr @ds3000_send_diseqc_msg._entry_ptr.78, ptr @ds3000_set_frontend._entry, ptr @ds3000_set_frontend._entry.58, ptr @ds3000_set_frontend._entry_ptr, ptr @ds3000_set_frontend._entry_ptr.60, ptr @ds3000_set_tone._entry, ptr @ds3000_set_tone._entry.81, ptr @ds3000_set_tone._entry.84, ptr @ds3000_set_tone._entry.87, ptr @ds3000_set_tone._entry_ptr, ptr @ds3000_set_tone._entry_ptr.83, ptr @ds3000_set_tone._entry_ptr.86, ptr @ds3000_set_tone._entry_ptr.89, ptr @ds3000_set_voltage._entry, ptr @ds3000_set_voltage._entry_ptr, ptr @ds3000_writeFW._entry, ptr @ds3000_writeFW._entry.52, ptr @ds3000_writeFW._entry_ptr, ptr @ds3000_writeFW._entry_ptr.54, ptr @ds3000_writereg._entry, ptr @ds3000_writereg._entry.18, ptr @ds3000_writereg._entry_ptr, ptr @ds3000_writereg._entry_ptr.20, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @ds3000_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @ds3000_dvbs_init_tab, ptr @ds3000_dvbs2_init_tab, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @ds3000_read_snr.dvbs_snr_tab, ptr @ds3000_read_snr.dvbs2_snr_tab, ptr @.str.64, ptr @.str.66, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_readreg._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_writereg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_initfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_initfe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_firmware_ondemand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_firmware_ondemand._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_firmware_ondemand._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_firmware_ondemand._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_firmware_ondemand._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_firmware_ondemand._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_load_firmware._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_writeFW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_writeFW._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_get_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_dvbs_init_tab to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_dvbs2_init_tab to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_frontend._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_snr.dvbs_snr_tab to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_snr.dvbs2_snr_tab to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_snr._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_snr._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_send_diseqc_msg._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_send_diseqc_msg._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_diseqc_send_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_tone._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_tone._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_set_tone._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ds3000_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #10
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %config8 = getelementptr inbounds %struct.ds3000_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config8, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %prevUCBS2 = getelementptr inbounds %struct.ds3000_state, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %prevUCBS2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %prevUCBS2, align 8
  %call10 = tail call fastcc i32 @ds3000_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0)
  %and = and i32 %call10, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and)
  %cmp.not = icmp eq i32 %and, 224
  br i1 %cmp.not, label %do.end20, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call fastcc i32 @ds3000_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 2)
  %call23 = tail call fastcc i32 @ds3000_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1)
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call22, i32 noundef %call23) #9
  %frontend = getelementptr inbounds %struct.ds3000_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.ds3000_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @ds3000_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.ds3000_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call27 = tail call i32 @ds3000_set_voltage(ptr noundef %frontend, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.then11, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ %frontend, %do.end20 ], [ null, %do.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ds3000_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #6
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #6
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config = getelementptr inbounds %struct.ds3000_state, ptr %state, i32 0, i32 1
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
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body14, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = zext i8 %reg to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %conv12, i32 noundef %call) #9
  br label %cleanup

do.body14:                                        ; preds = %entry
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %do.body14.do.end25_crit_edge, label %do.end18

do.body14.do.end25_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end18:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = zext i8 %reg to i32
  %20 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1, align 1
  %conv21 = zext i8 %21 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %conv20, i32 noundef %conv21) #9
  br label %do.end25

do.end25:                                         ; preds = %do.end18, %do.body14.do.end25_crit_edge
  %22 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1, align 1
  %conv27 = zext i8 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv27, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %voltage) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %conv6 = or i32 %call4, 3
  %3 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %do.end3.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = and i32 %call4, 252
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %4 = and i32 %call4, 252
  %conv15 = or i32 %4, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %do.end3.sw.epilog_crit_edge
  %data.0 = phi i32 [ %conv6, %do.end3.sw.epilog_crit_edge ], [ %conv15, %sw.bb9 ], [ %conv8, %sw.bb ]
  %conv16 = and i32 %data.0, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -94, ptr %buf.i, align 1
  %conv1.i = trunc i32 %data.0 to i8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv2.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf3.i, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %sw.epilog.do.end6.i_crit_edge, label %do.end.i

sw.epilog.do.end6.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv16) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.epilog.do.end6.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 162, i32 noundef %conv16) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds3000_release(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %set_lock_led = getelementptr inbounds %struct.ds3000_config, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_lock_led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_lock_led, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %fe, i32 noundef 0) #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_initfe(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i48.i.i = alloca [2 x i8], align 1
  %msg.i49.i.i = alloca %struct.i2c_msg, align 4
  %msg.i43.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %fw.i = alloca ptr, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext 8)
  %or = or i32 %call4, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %buf.i, align 1
  %conv1.i = trunc i32 %or to i8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv2.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %6, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf3.i, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.end3.do.end6.i_crit_edge, label %do.end.i

do.end3.do.end6.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef %or) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.end3.do.end6.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 8, i32 noundef %or) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @msleep(i32 noundef 1) #6
  %18 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #6
  %20 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !202
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i18 = icmp eq i32 %21, 0
  br i1 %tobool.not.i18, label %ds3000_writereg.exit.do.end3.i_crit_edge, label %do.end.i20

ds3000_writereg.exit.do.end3.i_crit_edge:         ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i20:                                       ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i20, %ds3000_writereg.exit.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @ds3000_readreg(ptr noundef %19, i8 noundef zeroext -78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end3.i.ds3000_firmware_ondemand.exit.thread_crit_edge, label %do.end9.i

do.end3.i.ds3000_firmware_ondemand.exit.thread_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_firmware_ondemand.exit.thread

do.end9.i:                                        ; preds = %do.end3.i
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31) #9
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i, align 8
  %call12.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.31, ptr noundef %25) #6
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool18.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool18.not.i, label %if.end25.i, label %do.end22.i

do.end22.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27) #9
  br label %ds3000_firmware_ondemand.exit.thread

if.end25.i:                                       ; preds = %do.end9.i
  %26 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw.i, align 4
  %28 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %demodulator_priv, align 4
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.end25.i.do.end26.i.i_crit_edge, label %do.body4.i.i

if.end25.i.do.end26.i.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26.i.i

do.body4.i.i:                                     ; preds = %if.end25.i
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #9
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool5.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.do.end26.i.i_crit_edge, label %do.end9.i.i

do.body4.i.i.do.end26.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26.i.i

do.end9.i.i:                                      ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv.i.i = zext i8 %36 to i32
  %arrayidx12.i.i = getelementptr i8, ptr %34, i32 1
  %37 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %38 to i32
  %sub.i.i = add i32 %32, -2
  %arrayidx16.i.i = getelementptr i8, ptr %34, i32 %sub.i.i
  %39 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %40 to i32
  %sub20.i.i = add i32 %32, -1
  %arrayidx21.i.i = getelementptr i8, ptr %34, i32 %sub20.i.i
  %41 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx21.i.i, align 1
  %conv22.i.i = zext i8 %42 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %32, i32 noundef %conv.i.i, i32 noundef %conv13.i.i, i32 noundef %conv17.i.i, i32 noundef %conv22.i.i) #9
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %do.end9.i.i, %do.body4.i.i.do.end26.i.i_crit_edge, %if.end25.i.do.end26.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -78, ptr %buf.i.i.i, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %46 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %config.i.i.i = getelementptr inbounds %struct.ds3000_state, ptr %29, i32 0, i32 1
  %48 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv2.i.i.i = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv2.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf3.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i, label %do.end26.i.i.do.end6.i.i.i_crit_edge, label %do.end.i.i.i

do.end26.i.i.do.end6.i.i.i_crit_edge:             ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i.i.i

do.end.i.i.i:                                     ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 178, i32 noundef 1) #9
  br label %do.end6.i.i.i

do.end6.i.i.i:                                    ; preds = %do.end.i.i.i, %do.end26.i.i.do.end6.i.i.i_crit_edge
  %56 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %29, align 4
  %call7.i.i.i = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call7.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %do.end6.i.i.i.ds3000_writereg.exit.i.i_crit_edge, label %do.end12.i.i.i

do.end6.i.i.i.ds3000_writereg.exit.i.i_crit_edge: ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit.i.i

do.end12.i.i.i:                                   ; preds = %do.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i.i.i, i32 noundef 178, i32 noundef 1) #9
  br label %ds3000_writereg.exit.i.i

ds3000_writereg.exit.i.i:                         ; preds = %do.end12.i.i.i, %do.end6.i.i.i.ds3000_writereg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #6
  %data28.i.i = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %58 = ptrtoint ptr %data28.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data28.i.i, align 4
  %60 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43.i.i) #6
  %62 = getelementptr inbounds i8, ptr %msg.i43.i.i, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2228223, ptr %62, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 33) #10
  %tobool.not.i44.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i44.i.i, label %ds3000_writereg.exit.i.i.ds3000_writeFW.exit.i.i_crit_edge, label %if.end.i.i.i

ds3000_writereg.exit.i.i.ds3000_writeFW.exit.i.i_crit_edge: ; preds = %ds3000_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writeFW.exit.i.i

if.end.i.i.i:                                     ; preds = %ds3000_writereg.exit.i.i
  %conv30.i.i = trunc i32 %61 to i16
  %65 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -80, ptr %call7.i.i.i.i, align 8
  %66 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv1.i.i.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i43.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv1.i.i.i, ptr %msg.i43.i.i, align 4
  %flags.i46.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i46.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i46.i.i, align 2
  %buf2.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i.i, ptr %buf2.i.i.i, align 4
  %conv4.i.i.i = and i32 %61, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv30.i.i)
  %cmp1.not.i.i.i = icmp eq i16 %conv30.i.i, 0
  br i1 %cmp1.not.i.i.i, label %if.end.i.i.i.error.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.i.error.i.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 1
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %do.end14.i.i.i
  %add.i.i.i = add nuw nsw i32 %i.02.i.i.i, 32
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %conv4.i.i.i
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.i.i.i.error.i.i.i_crit_edge

for.cond.i.i.i.error.i.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i.i.i

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr6.i.i.i = getelementptr i8, ptr %59, i32 %i.02.i.i.i
  %73 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %add.ptr6.i.i.i, i32 32)
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool7.not.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool7.not.i.i.i, label %for.body.i.i.i.do.end14.i.i.i_crit_edge, label %do.end.i47.i.i

for.body.i.i.i.do.end14.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i.i.i

do.end.i47.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 176, i32 noundef %conv4.i.i.i) #9
  br label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %do.end.i47.i.i, %for.body.i.i.i.do.end14.i.i.i_crit_edge
  %75 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %29, align 4
  %call15.i.i.i = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msg.i43.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15.i.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %call15.i.i.i, 1
  br i1 %cmp16.not.i.i.i, label %for.cond.i.i.i, label %do.end21.i.i.i

do.end21.i.i.i:                                   ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %call15.i.i.i, i32 noundef 176) #9
  br label %error.i.i.i

error.i.i.i:                                      ; preds = %do.end21.i.i.i, %for.cond.i.i.i.error.i.i.i_crit_edge, %if.end.i.i.i.error.i.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ -121, %do.end21.i.i.i ], [ 0, %if.end.i.i.i.error.i.i.i_crit_edge ], [ 0, %for.cond.i.i.i.error.i.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #6
  br label %ds3000_writeFW.exit.i.i

ds3000_writeFW.exit.i.i:                          ; preds = %error.i.i.i, %ds3000_writereg.exit.i.i.ds3000_writeFW.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %ret.0.i.i.i, %error.i.i.i ], [ -12, %ds3000_writereg.exit.i.i.ds3000_writeFW.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i48.i.i) #6
  %77 = getelementptr inbounds [2 x i8], ptr %buf.i48.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %buf.i48.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -78, ptr %buf.i48.i.i, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i49.i.i) #6
  %80 = getelementptr inbounds i8, ptr %msg.i49.i.i, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 196607, ptr %80, align 4
  %82 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv2.i51.i.i = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i49.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv2.i51.i.i, ptr %msg.i49.i.i, align 4
  %flags.i52.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i52.i.i, align 2
  %buf3.i54.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf3.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i48.i.i, ptr %buf3.i54.i.i, align 4
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i55.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i55.i.i, label %ds3000_writeFW.exit.i.i.do.end6.i60.i.i_crit_edge, label %do.end.i57.i.i

ds3000_writeFW.exit.i.i.do.end6.i60.i.i_crit_edge: ; preds = %ds3000_writeFW.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i60.i.i

do.end.i57.i.i:                                   ; preds = %ds3000_writeFW.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i56.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 178, i32 noundef 0) #9
  br label %do.end6.i60.i.i

do.end6.i60.i.i:                                  ; preds = %do.end.i57.i.i, %ds3000_writeFW.exit.i.i.do.end6.i60.i.i_crit_edge
  %90 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %29, align 4
  %call7.i58.i.i = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i49.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i58.i.i)
  %cmp.not.i59.i.i = icmp eq i32 %call7.i58.i.i, 1
  br i1 %cmp.not.i59.i.i, label %do.end6.i60.i.i.ds3000_load_firmware.exit.i_crit_edge, label %do.end12.i62.i.i

do.end6.i60.i.i.ds3000_load_firmware.exit.i_crit_edge: ; preds = %do.end6.i60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_load_firmware.exit.i

do.end12.i62.i.i:                                 ; preds = %do.end6.i60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i61.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i58.i.i, i32 noundef 178, i32 noundef 0) #9
  br label %ds3000_load_firmware.exit.i

ds3000_load_firmware.exit.i:                      ; preds = %do.end12.i62.i.i, %do.end6.i60.i.i.ds3000_load_firmware.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i49.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i48.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool27.not.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool27.not.i, label %ds3000_load_firmware.exit.i.if.end34.i_crit_edge, label %do.end31.i

ds3000_load_firmware.exit.i.if.end34.i_crit_edge: ; preds = %ds3000_load_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

do.end31.i:                                       ; preds = %ds3000_load_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.27) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %ds3000_load_firmware.exit.i.if.end34.i_crit_edge
  %92 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %93) #6
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool36.not.i = icmp eq i32 %94, 0
  br i1 %tobool36.not.i, label %if.end34.i.ds3000_firmware_ondemand.exit_crit_edge, label %do.end40.i

if.end34.i.ds3000_firmware_ondemand.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_firmware_ondemand.exit

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool27.not.i, ptr @.str.44, ptr @.str.45
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond.i) #9
  br label %ds3000_firmware_ondemand.exit

ds3000_firmware_ondemand.exit.thread:             ; preds = %do.end22.i, %do.end3.i.ds3000_firmware_ondemand.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %do.end3.i.ds3000_firmware_ondemand.exit.thread_crit_edge ], [ %call12.i, %do.end22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %do.end10

ds3000_firmware_ondemand.exit:                    ; preds = %do.end40.i, %if.end34.i.ds3000_firmware_ondemand.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br i1 %tobool27.not.i, label %ds3000_firmware_ondemand.exit.cleanup_crit_edge, label %ds3000_firmware_ondemand.exit.do.end10_crit_edge

ds3000_firmware_ondemand.exit.do.end10_crit_edge: ; preds = %ds3000_firmware_ondemand.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

ds3000_firmware_ondemand.exit.cleanup_crit_edge:  ; preds = %ds3000_firmware_ondemand.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %ds3000_firmware_ondemand.exit.do.end10_crit_edge, %ds3000_firmware_ondemand.exit.thread
  %retval.0.i23 = phi i32 [ %retval.0.i.ph, %ds3000_firmware_ondemand.exit.thread ], [ %retval.0.i.i.i, %ds3000_firmware_ondemand.exit.do.end10_crit_edge ]
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %ds3000_firmware_ondemand.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23, %do.end10 ], [ 0, %ds3000_firmware_ondemand.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %re_tune, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @ds3000_set_frontend(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %delay, align 4
  %call4 = tail call i32 @ds3000_read_status(ptr noundef %fe, ptr noundef %status)
  br label %return

return:                                           ; preds = %if.end3, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ %call4, %if.end3 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_get_algo(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %set_lock_led = getelementptr inbounds %struct.ds3000_config, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_lock_led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_lock_led, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %fe, i32 noundef 0) #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.55) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i823 = alloca [2 x i8], align 1
  %msg.i824 = alloca %struct.i2c_msg, align 4
  %buf.i807 = alloca [2 x i8], align 1
  %msg.i808 = alloca %struct.i2c_msg, align 4
  %buf.i791 = alloca [2 x i8], align 1
  %msg.i792 = alloca %struct.i2c_msg, align 4
  %buf.i775 = alloca [2 x i8], align 1
  %msg.i776 = alloca %struct.i2c_msg, align 4
  %buf.i759 = alloca [2 x i8], align 1
  %msg.i760 = alloca %struct.i2c_msg, align 4
  %buf.i743 = alloca [2 x i8], align 1
  %msg.i744 = alloca %struct.i2c_msg, align 4
  %buf.i726 = alloca [2 x i8], align 1
  %msg.i727 = alloca %struct.i2c_msg, align 4
  %buf.i709 = alloca [2 x i8], align 1
  %msg.i710 = alloca %struct.i2c_msg, align 4
  %buf.i693 = alloca [2 x i8], align 1
  %msg.i694 = alloca %struct.i2c_msg, align 4
  %buf.i677 = alloca [2 x i8], align 1
  %msg.i678 = alloca %struct.i2c_msg, align 4
  %buf.i661 = alloca [2 x i8], align 1
  %msg.i662 = alloca %struct.i2c_msg, align 4
  %buf.i644 = alloca [2 x i8], align 1
  %msg.i645 = alloca %struct.i2c_msg, align 4
  %buf.i628 = alloca [2 x i8], align 1
  %msg.i629 = alloca %struct.i2c_msg, align 4
  %buf.i612 = alloca [2 x i8], align 1
  %msg.i613 = alloca %struct.i2c_msg, align 4
  %buf.i596 = alloca [2 x i8], align 1
  %msg.i597 = alloca %struct.i2c_msg, align 4
  %buf.i579 = alloca [2 x i8], align 1
  %msg.i580 = alloca %struct.i2c_msg, align 4
  %buf.i563 = alloca [2 x i8], align 1
  %msg.i564 = alloca %struct.i2c_msg, align 4
  %buf.i547 = alloca [2 x i8], align 1
  %msg.i548 = alloca %struct.i2c_msg, align 4
  %buf.i530 = alloca [2 x i8], align 1
  %msg.i531 = alloca %struct.i2c_msg, align 4
  %buf.i514 = alloca [2 x i8], align 1
  %msg.i515 = alloca %struct.i2c_msg, align 4
  %buf.i498 = alloca [2 x i8], align 1
  %msg.i499 = alloca %struct.i2c_msg, align 4
  %buf.i482 = alloca [2 x i8], align 1
  %msg.i483 = alloca %struct.i2c_msg, align 4
  %buf.i465 = alloca [2 x i8], align 1
  %msg.i466 = alloca %struct.i2c_msg, align 4
  %buf.i449 = alloca [2 x i8], align 1
  %msg.i450 = alloca %struct.i2c_msg, align 4
  %buf.i433 = alloca [2 x i8], align 1
  %msg.i434 = alloca %struct.i2c_msg, align 4
  %buf.i417 = alloca [2 x i8], align 1
  %msg.i418 = alloca %struct.i2c_msg, align 4
  %buf.i401 = alloca [2 x i8], align 1
  %msg.i402 = alloca %struct.i2c_msg, align 4
  %buf.i385 = alloca [2 x i8], align 1
  %msg.i386 = alloca %struct.i2c_msg, align 4
  %buf.i369 = alloca [2 x i8], align 1
  %msg.i370 = alloca %struct.i2c_msg, align 4
  %buf.i353 = alloca [2 x i8], align 1
  %msg.i354 = alloca %struct.i2c_msg, align 4
  %buf.i337 = alloca [2 x i8], align 1
  %msg.i338 = alloca %struct.i2c_msg, align 4
  %buf.i321 = alloca [2 x i8], align 1
  %msg.i322 = alloca %struct.i2c_msg, align 4
  %buf.i305 = alloca [2 x i8], align 1
  %msg.i306 = alloca %struct.i2c_msg, align 4
  %buf.i289 = alloca [2 x i8], align 1
  %msg.i290 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frequency) #6
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %frequency, align 4, !annotation !202
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.ds3000_config, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_ts_params, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %8 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_params, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 %9(ptr noundef %fe) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %buf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -128, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
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
  store i16 2, ptr %13, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf3.i, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end16.do.end6.i_crit_edge, label %do.end.i

if.end16.do.end6.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 7, i32 noundef 128) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.end16.do.end6.i_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 7, i32 noundef 128) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i289) #6
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i289, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i289 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 7, ptr %buf.i289, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i290) #6
  %28 = getelementptr inbounds i8, ptr %msg.i290, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv2.i292 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i290 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv2.i292, ptr %msg.i290, align 4
  %flags.i293 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i293 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i293, align 2
  store i16 2, ptr %28, align 4
  %buf3.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290, i32 0, i32 3
  %36 = ptrtoint ptr %buf3.i295 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i289, ptr %buf3.i295, align 4
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i296 = icmp eq i32 %37, 0
  br i1 %tobool.not.i296, label %ds3000_writereg.exit.do.end6.i301_crit_edge, label %do.end.i298

ds3000_writereg.exit.do.end6.i301_crit_edge:      ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i301

do.end.i298:                                      ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 7, i32 noundef 0) #9
  br label %do.end6.i301

do.end6.i301:                                     ; preds = %do.end.i298, %ds3000_writereg.exit.do.end6.i301_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call7.i299 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i290, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i299)
  %cmp.not.i300 = icmp eq i32 %call7.i299, 1
  br i1 %cmp.not.i300, label %do.end6.i301.ds3000_writereg.exit304_crit_edge, label %do.end12.i303

do.end6.i301.ds3000_writereg.exit304_crit_edge:   ; preds = %do.end6.i301
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit304

do.end12.i303:                                    ; preds = %do.end6.i301
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i299, i32 noundef 7, i32 noundef 0) #9
  br label %ds3000_writereg.exit304

ds3000_writereg.exit304:                          ; preds = %do.end12.i303, %do.end6.i301.ds3000_writereg.exit304_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i290) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i289) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i305) #6
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i305, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i305 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -78, ptr %buf.i305, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i306) #6
  %43 = getelementptr inbounds i8, ptr %msg.i306, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4
  %45 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv2.i308 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i306 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv2.i308, ptr %msg.i306, align 4
  %flags.i309 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i306, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i309 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i309, align 2
  store i16 2, ptr %43, align 4
  %buf3.i311 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i306, i32 0, i32 3
  %51 = ptrtoint ptr %buf3.i311 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i305, ptr %buf3.i311, align 4
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i312 = icmp eq i32 %52, 0
  br i1 %tobool.not.i312, label %ds3000_writereg.exit304.do.end6.i317_crit_edge, label %do.end.i314

ds3000_writereg.exit304.do.end6.i317_crit_edge:   ; preds = %ds3000_writereg.exit304
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i317

do.end.i314:                                      ; preds = %ds3000_writereg.exit304
  call void @__sanitizer_cov_trace_pc() #8
  %call.i313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 178, i32 noundef 1) #9
  br label %do.end6.i317

do.end6.i317:                                     ; preds = %do.end.i314, %ds3000_writereg.exit304.do.end6.i317_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call7.i315 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i306, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i315)
  %cmp.not.i316 = icmp eq i32 %call7.i315, 1
  br i1 %cmp.not.i316, label %do.end6.i317.ds3000_writereg.exit320_crit_edge, label %do.end12.i319

do.end6.i317.ds3000_writereg.exit320_crit_edge:   ; preds = %do.end6.i317
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit320

do.end12.i319:                                    ; preds = %do.end6.i317
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i315, i32 noundef 178, i32 noundef 1) #9
  br label %ds3000_writereg.exit320

ds3000_writereg.exit320:                          ; preds = %do.end12.i319, %do.end6.i317.ds3000_writereg.exit320_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i306) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i305) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i321) #6
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i321, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i321 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %buf.i321, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i322) #6
  %58 = getelementptr inbounds i8, ptr %msg.i322, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %58, align 4
  %60 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %conv2.i324 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i322 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv2.i324, ptr %msg.i322, align 4
  %flags.i325 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i322, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i325 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i325, align 2
  store i16 2, ptr %58, align 4
  %buf3.i327 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i322, i32 0, i32 3
  %66 = ptrtoint ptr %buf3.i327 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i321, ptr %buf3.i327, align 4
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i328 = icmp eq i32 %67, 0
  br i1 %tobool.not.i328, label %ds3000_writereg.exit320.do.end6.i333_crit_edge, label %do.end.i330

ds3000_writereg.exit320.do.end6.i333_crit_edge:   ; preds = %ds3000_writereg.exit320
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i333

do.end.i330:                                      ; preds = %ds3000_writereg.exit320
  call void @__sanitizer_cov_trace_pc() #8
  %call.i329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 1) #9
  br label %do.end6.i333

do.end6.i333:                                     ; preds = %do.end.i330, %ds3000_writereg.exit320.do.end6.i333_crit_edge
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call7.i331 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i322, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i331)
  %cmp.not.i332 = icmp eq i32 %call7.i331, 1
  br i1 %cmp.not.i332, label %do.end6.i333.ds3000_writereg.exit336_crit_edge, label %do.end12.i335

do.end6.i333.ds3000_writereg.exit336_crit_edge:   ; preds = %do.end6.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit336

do.end12.i335:                                    ; preds = %do.end6.i333
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i331, i32 noundef 0, i32 noundef 1) #9
  br label %ds3000_writereg.exit336

ds3000_writereg.exit336:                          ; preds = %do.end12.i335, %do.end6.i333.ds3000_writereg.exit336_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i322) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i321) #6
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %70 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delivery_system, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %71, label %ds3000_writereg.exit336.cleanup_crit_edge [
    i32 5, label %for.cond.preheader
    i32 6, label %for.cond34.preheader
  ]

ds3000_writereg.exit336.cleanup_crit_edge:        ; preds = %ds3000_writereg.exit336
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond34.preheader:                             ; preds = %ds3000_writereg.exit336
  %73 = getelementptr inbounds [2 x i8], ptr %buf.i369, i32 0, i32 1
  %74 = getelementptr inbounds i8, ptr %msg.i370, i32 4
  %flags.i373 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i370, i32 0, i32 1
  %buf3.i375 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i370, i32 0, i32 3
  br label %for.body37

for.cond.preheader:                               ; preds = %ds3000_writereg.exit336
  %75 = getelementptr inbounds [2 x i8], ptr %buf.i337, i32 0, i32 1
  %76 = getelementptr inbounds i8, ptr %msg.i338, i32 4
  %flags.i341 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i338, i32 0, i32 1
  %buf3.i343 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i338, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ds3000_writereg.exit352.for.body_crit_edge, %for.cond.preheader
  %i.0853 = phi i32 [ 0, %for.cond.preheader ], [ %add24, %ds3000_writereg.exit352.for.body_crit_edge ]
  %arrayidx = getelementptr [162 x i8], ptr @ds3000_dvbs_init_tab, i32 0, i32 %i.0853
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %78 to i32
  %add = or i32 %i.0853, 1
  %arrayidx21 = getelementptr [162 x i8], ptr @ds3000_dvbs_init_tab, i32 0, i32 %add
  %79 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %80 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i337) #6
  %81 = ptrtoint ptr %buf.i337 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %78, ptr %buf.i337, align 1
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i338) #6
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %76, align 4
  %84 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 4
  %conv2.i340 = zext i8 %87 to i16
  %88 = ptrtoint ptr %msg.i338 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv2.i340, ptr %msg.i338, align 4
  %89 = ptrtoint ptr %flags.i341 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i341, align 2
  store i16 2, ptr %76, align 4
  %90 = ptrtoint ptr %buf3.i343 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf.i337, ptr %buf3.i343, align 4
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i344 = icmp eq i32 %91, 0
  br i1 %tobool.not.i344, label %for.body.do.end6.i349_crit_edge, label %do.end.i346

for.body.do.end6.i349_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i349

do.end.i346:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv22) #9
  br label %do.end6.i349

do.end6.i349:                                     ; preds = %do.end.i346, %for.body.do.end6.i349_crit_edge
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call7.i347 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i338, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i347)
  %cmp.not.i348 = icmp eq i32 %call7.i347, 1
  br i1 %cmp.not.i348, label %do.end6.i349.ds3000_writereg.exit352_crit_edge, label %do.end12.i351

do.end6.i349.ds3000_writereg.exit352_crit_edge:   ; preds = %do.end6.i349
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit352

do.end12.i351:                                    ; preds = %do.end6.i349
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i350 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i347, i32 noundef %conv, i32 noundef %conv22) #9
  br label %ds3000_writereg.exit352

ds3000_writereg.exit352:                          ; preds = %do.end12.i351, %do.end6.i349.ds3000_writereg.exit352_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i338) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i337) #6
  %add24 = add nuw nsw i32 %i.0853, 2
  %cmp = icmp ult i32 %i.0853, 160
  br i1 %cmp, label %ds3000_writereg.exit352.for.body_crit_edge, label %for.end

ds3000_writereg.exit352.for.body_crit_edge:       ; preds = %ds3000_writereg.exit352
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ds3000_writereg.exit352
  %call25 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -2)
  %94 = and i32 %call25, 192
  %conv30 = or i32 %94, 27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i353) #6
  %95 = getelementptr inbounds [2 x i8], ptr %buf.i353, i32 0, i32 1
  %96 = ptrtoint ptr %buf.i353 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -2, ptr %buf.i353, align 1
  %conv1.i = trunc i32 %conv30 to i8
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv1.i, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i354) #6
  %98 = getelementptr inbounds i8, ptr %msg.i354, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %98, align 4
  %100 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 4
  %conv2.i356 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i354 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv2.i356, ptr %msg.i354, align 4
  %flags.i357 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i354, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i357 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i357, align 2
  store i16 2, ptr %98, align 4
  %buf3.i359 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i354, i32 0, i32 3
  %106 = ptrtoint ptr %buf3.i359 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i353, ptr %buf3.i359, align 4
  %107 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i360 = icmp eq i32 %107, 0
  br i1 %tobool.not.i360, label %for.end.do.end6.i365_crit_edge, label %do.end.i362

for.end.do.end6.i365_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i365

do.end.i362:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 254, i32 noundef %conv30) #9
  br label %do.end6.i365

do.end6.i365:                                     ; preds = %do.end.i362, %for.end.do.end6.i365_crit_edge
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call7.i363 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i354, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i363)
  %cmp.not.i364 = icmp eq i32 %call7.i363, 1
  br i1 %cmp.not.i364, label %do.end6.i365.ds3000_writereg.exit368_crit_edge, label %do.end12.i367

do.end6.i365.ds3000_writereg.exit368_crit_edge:   ; preds = %do.end6.i365
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit368

do.end12.i367:                                    ; preds = %do.end6.i365
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i363, i32 noundef 254, i32 noundef %conv30) #9
  br label %ds3000_writereg.exit368

ds3000_writereg.exit368:                          ; preds = %do.end12.i367, %do.end6.i365.ds3000_writereg.exit368_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i354) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i353) #6
  br label %sw.epilog

for.body37:                                       ; preds = %ds3000_writereg.exit384.for.body37_crit_edge, %for.cond34.preheader
  %i.1852 = phi i32 [ 0, %for.cond34.preheader ], [ %add45, %ds3000_writereg.exit384.for.body37_crit_edge ]
  %arrayidx38 = getelementptr [192 x i8], ptr @ds3000_dvbs2_init_tab, i32 0, i32 %i.1852
  %110 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %111 to i32
  %add40 = or i32 %i.1852, 1
  %arrayidx41 = getelementptr [192 x i8], ptr @ds3000_dvbs2_init_tab, i32 0, i32 %add40
  %112 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %113 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i369) #6
  %114 = ptrtoint ptr %buf.i369 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %111, ptr %buf.i369, align 1
  %115 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %113, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i370) #6
  %116 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %74, align 4
  %117 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %config, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 4
  %conv2.i372 = zext i8 %120 to i16
  %121 = ptrtoint ptr %msg.i370 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv2.i372, ptr %msg.i370, align 4
  %122 = ptrtoint ptr %flags.i373 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i373, align 2
  store i16 2, ptr %74, align 4
  %123 = ptrtoint ptr %buf3.i375 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %buf.i369, ptr %buf3.i375, align 4
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i376 = icmp eq i32 %124, 0
  br i1 %tobool.not.i376, label %for.body37.do.end6.i381_crit_edge, label %do.end.i378

for.body37.do.end6.i381_crit_edge:                ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i381

do.end.i378:                                      ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  %call.i377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv39, i32 noundef %conv42) #9
  br label %do.end6.i381

do.end6.i381:                                     ; preds = %do.end.i378, %for.body37.do.end6.i381_crit_edge
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %call7.i379 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %msg.i370, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i379)
  %cmp.not.i380 = icmp eq i32 %call7.i379, 1
  br i1 %cmp.not.i380, label %do.end6.i381.ds3000_writereg.exit384_crit_edge, label %do.end12.i383

do.end6.i381.ds3000_writereg.exit384_crit_edge:   ; preds = %do.end6.i381
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit384

do.end12.i383:                                    ; preds = %do.end6.i381
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i379, i32 noundef %conv39, i32 noundef %conv42) #9
  br label %ds3000_writereg.exit384

ds3000_writereg.exit384:                          ; preds = %do.end12.i383, %do.end6.i381.ds3000_writereg.exit384_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i370) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i369) #6
  %add45 = add nuw nsw i32 %i.1852, 2
  %cmp35 = icmp ult i32 %i.1852, 190
  br i1 %cmp35, label %ds3000_writereg.exit384.for.body37_crit_edge, label %for.end46

ds3000_writereg.exit384.for.body37_crit_edge:     ; preds = %ds3000_writereg.exit384
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37

for.end46:                                        ; preds = %ds3000_writereg.exit384
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %127 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999999, i32 %128)
  %cmp47 = icmp ugt i32 %128, 29999999
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %for.end46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i385) #6
  %129 = getelementptr inbounds [2 x i8], ptr %buf.i385, i32 0, i32 1
  %130 = ptrtoint ptr %buf.i385 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -2, ptr %buf.i385, align 1
  %131 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 84, ptr %129, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i386) #6
  %132 = getelementptr inbounds i8, ptr %msg.i386, i32 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %132, align 4
  %134 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %config, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 4
  %conv2.i388 = zext i8 %137 to i16
  %138 = ptrtoint ptr %msg.i386 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv2.i388, ptr %msg.i386, align 4
  %flags.i389 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i386, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i389 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i389, align 2
  store i16 2, ptr %132, align 4
  %buf3.i391 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i386, i32 0, i32 3
  %140 = ptrtoint ptr %buf3.i391 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %buf.i385, ptr %buf3.i391, align 4
  %141 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i392 = icmp eq i32 %141, 0
  br i1 %tobool.not.i392, label %if.then49.do.end6.i397_crit_edge, label %do.end.i394

if.then49.do.end6.i397_crit_edge:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i397

do.end.i394:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %call.i393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 254, i32 noundef 84) #9
  br label %do.end6.i397

do.end6.i397:                                     ; preds = %do.end.i394, %if.then49.do.end6.i397_crit_edge
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %call7.i395 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %msg.i386, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i395)
  %cmp.not.i396 = icmp eq i32 %call7.i395, 1
  br i1 %cmp.not.i396, label %do.end6.i397.ds3000_writereg.exit400_crit_edge, label %do.end12.i399

do.end6.i397.ds3000_writereg.exit400_crit_edge:   ; preds = %do.end6.i397
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit400

do.end12.i399:                                    ; preds = %do.end6.i397
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i395, i32 noundef 254, i32 noundef 84) #9
  br label %ds3000_writereg.exit400

ds3000_writereg.exit400:                          ; preds = %do.end12.i399, %do.end6.i397.ds3000_writereg.exit400_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i386) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i385) #6
  br label %sw.epilog

if.else:                                          ; preds = %for.end46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i401) #6
  %144 = getelementptr inbounds [2 x i8], ptr %buf.i401, i32 0, i32 1
  %145 = ptrtoint ptr %buf.i401 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -2, ptr %buf.i401, align 1
  %146 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -104, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i402) #6
  %147 = getelementptr inbounds i8, ptr %msg.i402, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %147, align 4
  %149 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %config, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 4
  %conv2.i404 = zext i8 %152 to i16
  %153 = ptrtoint ptr %msg.i402 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv2.i404, ptr %msg.i402, align 4
  %flags.i405 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i405 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i405, align 2
  store i16 2, ptr %147, align 4
  %buf3.i407 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 0, i32 3
  %155 = ptrtoint ptr %buf3.i407 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %buf.i401, ptr %buf3.i407, align 4
  %156 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i408 = icmp eq i32 %156, 0
  br i1 %tobool.not.i408, label %if.else.do.end6.i413_crit_edge, label %do.end.i410

if.else.do.end6.i413_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i413

do.end.i410:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 254, i32 noundef 152) #9
  br label %do.end6.i413

do.end6.i413:                                     ; preds = %do.end.i410, %if.else.do.end6.i413_crit_edge
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %call7.i411 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i402, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i411)
  %cmp.not.i412 = icmp eq i32 %call7.i411, 1
  br i1 %cmp.not.i412, label %do.end6.i413.ds3000_writereg.exit416_crit_edge, label %do.end12.i415

do.end6.i413.ds3000_writereg.exit416_crit_edge:   ; preds = %do.end6.i413
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit416

do.end12.i415:                                    ; preds = %do.end6.i413
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i411, i32 noundef 254, i32 noundef 152) #9
  br label %ds3000_writereg.exit416

ds3000_writereg.exit416:                          ; preds = %do.end12.i415, %do.end6.i413.ds3000_writereg.exit416_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i402) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i401) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %ds3000_writereg.exit416, %ds3000_writereg.exit400, %ds3000_writereg.exit368
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i417) #6
  %159 = getelementptr inbounds [2 x i8], ptr %buf.i417, i32 0, i32 1
  %160 = ptrtoint ptr %buf.i417 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 41, ptr %buf.i417, align 1
  %161 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -128, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i418) #6
  %162 = getelementptr inbounds i8, ptr %msg.i418, i32 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %162, align 4
  %164 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %config, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %165, align 4
  %conv2.i420 = zext i8 %167 to i16
  %168 = ptrtoint ptr %msg.i418 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv2.i420, ptr %msg.i418, align 4
  %flags.i421 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i418, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i421 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i421, align 2
  store i16 2, ptr %162, align 4
  %buf3.i423 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i418, i32 0, i32 3
  %170 = ptrtoint ptr %buf3.i423 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %buf.i417, ptr %buf3.i423, align 4
  %171 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i424 = icmp eq i32 %171, 0
  br i1 %tobool.not.i424, label %sw.epilog.do.end6.i429_crit_edge, label %do.end.i426

sw.epilog.do.end6.i429_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i429

do.end.i426:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call.i425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 41, i32 noundef 128) #9
  br label %do.end6.i429

do.end6.i429:                                     ; preds = %do.end.i426, %sw.epilog.do.end6.i429_crit_edge
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %call7.i427 = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %msg.i418, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i427)
  %cmp.not.i428 = icmp eq i32 %call7.i427, 1
  br i1 %cmp.not.i428, label %do.end6.i429.ds3000_writereg.exit432_crit_edge, label %do.end12.i431

do.end6.i429.ds3000_writereg.exit432_crit_edge:   ; preds = %do.end6.i429
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit432

do.end12.i431:                                    ; preds = %do.end6.i429
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i427, i32 noundef 41, i32 noundef 128) #9
  br label %ds3000_writereg.exit432

ds3000_writereg.exit432:                          ; preds = %do.end12.i431, %do.end6.i429.ds3000_writereg.exit432_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i418) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i417) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i433) #6
  %174 = getelementptr inbounds [2 x i8], ptr %buf.i433, i32 0, i32 1
  %175 = ptrtoint ptr %buf.i433 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 37, ptr %buf.i433, align 1
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -118, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i434) #6
  %177 = getelementptr inbounds i8, ptr %msg.i434, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %177, align 4
  %179 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 4
  %conv2.i436 = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i434 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv2.i436, ptr %msg.i434, align 4
  %flags.i437 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i434, i32 0, i32 1
  %184 = ptrtoint ptr %flags.i437 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i437, align 2
  store i16 2, ptr %177, align 4
  %buf3.i439 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i434, i32 0, i32 3
  %185 = ptrtoint ptr %buf3.i439 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %buf.i433, ptr %buf3.i439, align 4
  %186 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i440 = icmp eq i32 %186, 0
  br i1 %tobool.not.i440, label %ds3000_writereg.exit432.do.end6.i445_crit_edge, label %do.end.i442

ds3000_writereg.exit432.do.end6.i445_crit_edge:   ; preds = %ds3000_writereg.exit432
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i445

do.end.i442:                                      ; preds = %ds3000_writereg.exit432
  call void @__sanitizer_cov_trace_pc() #8
  %call.i441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 37, i32 noundef 138) #9
  br label %do.end6.i445

do.end6.i445:                                     ; preds = %do.end.i442, %ds3000_writereg.exit432.do.end6.i445_crit_edge
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 4
  %call7.i443 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %msg.i434, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i443)
  %cmp.not.i444 = icmp eq i32 %call7.i443, 1
  br i1 %cmp.not.i444, label %do.end6.i445.ds3000_writereg.exit448_crit_edge, label %do.end12.i447

do.end6.i445.ds3000_writereg.exit448_crit_edge:   ; preds = %do.end6.i445
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit448

do.end12.i447:                                    ; preds = %do.end6.i445
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i443, i32 noundef 37, i32 noundef 138) #9
  br label %ds3000_writereg.exit448

ds3000_writereg.exit448:                          ; preds = %do.end12.i447, %do.end6.i445.ds3000_writereg.exit448_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i434) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i433) #6
  %symbol_rate55 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %189 = ptrtoint ptr %symbol_rate55 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %symbol_rate55, align 4
  %191 = add i32 %190, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44000001, i32 %191)
  %192 = icmp ult i32 %191, -44000001
  br i1 %192, label %do.body62, label %if.end74

do.body62:                                        ; preds = %ds3000_writereg.exit448
  %193 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool63.not = icmp eq i32 %193, 0
  br i1 %tobool63.not, label %do.body62.cleanup_crit_edge, label %do.end67

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end67:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %190, i32 noundef 1000000, i32 noundef 45000000) #9
  br label %cleanup

if.end74:                                         ; preds = %ds3000_writereg.exit448
  %div = udiv i32 %190, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 5001000, i32 %190)
  %cmp76 = icmp ult i32 %190, 5001000
  br i1 %cmp76, label %if.then78, label %if.else94

if.then78:                                        ; preds = %if.end74
  %div81.rhs.trunc = trunc i32 %div to i16
  %div81850 = udiv i16 29777, %div81.rhs.trunc
  %conv83 = add nuw nsw i16 %div81850, 1
  %194 = and i16 %conv83, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %cmp85.not = icmp eq i16 %194, 0
  %inc = add nuw nsw i16 %div81850, 2
  %spec.select = select i1 %cmp85.not, i16 %conv83, i16 %inc
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i449) #6
  %195 = getelementptr inbounds [2 x i8], ptr %buf.i449, i32 0, i32 1
  %196 = ptrtoint ptr %buf.i449 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -61, ptr %buf.i449, align 1
  %197 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 13, ptr %195, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i450) #6
  %198 = getelementptr inbounds i8, ptr %msg.i450, i32 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -1, ptr %198, align 4
  %200 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %config, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %201, align 4
  %conv2.i452 = zext i8 %203 to i16
  %204 = ptrtoint ptr %msg.i450 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv2.i452, ptr %msg.i450, align 4
  %flags.i453 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i450, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i453 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i453, align 2
  store i16 2, ptr %198, align 4
  %buf3.i455 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i450, i32 0, i32 3
  %206 = ptrtoint ptr %buf3.i455 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %buf.i449, ptr %buf3.i455, align 4
  %207 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i456 = icmp eq i32 %207, 0
  br i1 %tobool.not.i456, label %if.then78.do.end6.i461_crit_edge, label %do.end.i458

if.then78.do.end6.i461_crit_edge:                 ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i461

do.end.i458:                                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %call.i457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 195, i32 noundef 13) #9
  br label %do.end6.i461

do.end6.i461:                                     ; preds = %do.end.i458, %if.then78.do.end6.i461_crit_edge
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %call7.i459 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %msg.i450, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i459)
  %cmp.not.i460 = icmp eq i32 %call7.i459, 1
  br i1 %cmp.not.i460, label %do.end6.i461.ds3000_writereg.exit464_crit_edge, label %do.end12.i463

do.end6.i461.ds3000_writereg.exit464_crit_edge:   ; preds = %do.end6.i461
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit464

do.end12.i463:                                    ; preds = %do.end6.i461
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i459, i32 noundef 195, i32 noundef 13) #9
  br label %ds3000_writereg.exit464

ds3000_writereg.exit464:                          ; preds = %do.end12.i463, %do.end6.i461.ds3000_writereg.exit464_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i450) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i449) #6
  %conv90 = zext i16 %spec.select to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i465) #6
  %210 = getelementptr inbounds [2 x i8], ptr %buf.i465, i32 0, i32 1
  %211 = ptrtoint ptr %buf.i465 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -56, ptr %buf.i465, align 1
  %conv1.i467 = trunc i16 %spec.select to i8
  %212 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv1.i467, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i466) #6
  %213 = getelementptr inbounds i8, ptr %msg.i466, i32 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %213, align 4
  %215 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %config, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %216, align 4
  %conv2.i469 = zext i8 %218 to i16
  %219 = ptrtoint ptr %msg.i466 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv2.i469, ptr %msg.i466, align 4
  %flags.i470 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i466, i32 0, i32 1
  %220 = ptrtoint ptr %flags.i470 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %flags.i470, align 2
  store i16 2, ptr %213, align 4
  %buf3.i472 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i466, i32 0, i32 3
  %221 = ptrtoint ptr %buf3.i472 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %buf.i465, ptr %buf3.i472, align 4
  %222 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.i473 = icmp eq i32 %222, 0
  br i1 %tobool.not.i473, label %ds3000_writereg.exit464.do.end6.i478_crit_edge, label %do.end.i475

ds3000_writereg.exit464.do.end6.i478_crit_edge:   ; preds = %ds3000_writereg.exit464
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i478

do.end.i475:                                      ; preds = %ds3000_writereg.exit464
  call void @__sanitizer_cov_trace_pc() #8
  %call.i474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 200, i32 noundef %conv90) #9
  br label %do.end6.i478

do.end6.i478:                                     ; preds = %do.end.i475, %ds3000_writereg.exit464.do.end6.i478_crit_edge
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %1, align 4
  %call7.i476 = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %msg.i466, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i476)
  %cmp.not.i477 = icmp eq i32 %call7.i476, 1
  br i1 %cmp.not.i477, label %do.end6.i478.ds3000_writereg.exit481_crit_edge, label %do.end12.i480

do.end6.i478.ds3000_writereg.exit481_crit_edge:   ; preds = %do.end6.i478
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit481

do.end12.i480:                                    ; preds = %do.end6.i478
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i476, i32 noundef 200, i32 noundef %conv90) #9
  br label %ds3000_writereg.exit481

ds3000_writereg.exit481:                          ; preds = %do.end12.i480, %do.end6.i478.ds3000_writereg.exit481_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i466) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i465) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i482) #6
  %225 = getelementptr inbounds [2 x i8], ptr %buf.i482, i32 0, i32 1
  %226 = ptrtoint ptr %buf.i482 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 -60, ptr %buf.i482, align 1
  %227 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 16, ptr %225, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i483) #6
  %228 = getelementptr inbounds i8, ptr %msg.i483, i32 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 -1, ptr %228, align 4
  %230 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %config, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 4
  %conv2.i485 = zext i8 %233 to i16
  %234 = ptrtoint ptr %msg.i483 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv2.i485, ptr %msg.i483, align 4
  %flags.i486 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i483, i32 0, i32 1
  %235 = ptrtoint ptr %flags.i486 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %flags.i486, align 2
  store i16 2, ptr %228, align 4
  %buf3.i488 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i483, i32 0, i32 3
  %236 = ptrtoint ptr %buf3.i488 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %buf.i482, ptr %buf3.i488, align 4
  %237 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.not.i489 = icmp eq i32 %237, 0
  br i1 %tobool.not.i489, label %ds3000_writereg.exit481.do.end6.i494_crit_edge, label %do.end.i491

ds3000_writereg.exit481.do.end6.i494_crit_edge:   ; preds = %ds3000_writereg.exit481
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i494

do.end.i491:                                      ; preds = %ds3000_writereg.exit481
  call void @__sanitizer_cov_trace_pc() #8
  %call.i490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 196, i32 noundef 16) #9
  br label %do.end6.i494

do.end6.i494:                                     ; preds = %do.end.i491, %ds3000_writereg.exit481.do.end6.i494_crit_edge
  %238 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %1, align 4
  %call7.i492 = call i32 @i2c_transfer(ptr noundef %239, ptr noundef nonnull %msg.i483, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i492)
  %cmp.not.i493 = icmp eq i32 %call7.i492, 1
  br i1 %cmp.not.i493, label %do.end6.i494.ds3000_writereg.exit497_crit_edge, label %do.end12.i496

do.end6.i494.ds3000_writereg.exit497_crit_edge:   ; preds = %do.end6.i494
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit497

do.end12.i496:                                    ; preds = %do.end6.i494
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i492, i32 noundef 196, i32 noundef 16) #9
  br label %ds3000_writereg.exit497

ds3000_writereg.exit497:                          ; preds = %do.end12.i496, %do.end6.i494.ds3000_writereg.exit497_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i483) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i482) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i498) #6
  %240 = getelementptr inbounds [2 x i8], ptr %buf.i498, i32 0, i32 1
  %241 = ptrtoint ptr %buf.i498 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -57, ptr %buf.i498, align 1
  %242 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 14, ptr %240, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i499) #6
  %243 = getelementptr inbounds i8, ptr %msg.i499, i32 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %243, align 4
  %245 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %config, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %246, align 4
  %conv2.i501 = zext i8 %248 to i16
  %249 = ptrtoint ptr %msg.i499 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv2.i501, ptr %msg.i499, align 4
  %flags.i502 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i499, i32 0, i32 1
  %250 = ptrtoint ptr %flags.i502 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %flags.i502, align 2
  store i16 2, ptr %243, align 4
  %buf3.i504 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i499, i32 0, i32 3
  %251 = ptrtoint ptr %buf3.i504 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %buf.i498, ptr %buf3.i504, align 4
  %252 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool.not.i505 = icmp eq i32 %252, 0
  br i1 %tobool.not.i505, label %ds3000_writereg.exit497.do.end6.i510_crit_edge, label %do.end.i507

ds3000_writereg.exit497.do.end6.i510_crit_edge:   ; preds = %ds3000_writereg.exit497
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i510

do.end.i507:                                      ; preds = %ds3000_writereg.exit497
  call void @__sanitizer_cov_trace_pc() #8
  %call.i506 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 199, i32 noundef 14) #9
  br label %do.end6.i510

do.end6.i510:                                     ; preds = %do.end.i507, %ds3000_writereg.exit497.do.end6.i510_crit_edge
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %1, align 4
  %call7.i508 = call i32 @i2c_transfer(ptr noundef %254, ptr noundef nonnull %msg.i499, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i508)
  %cmp.not.i509 = icmp eq i32 %call7.i508, 1
  br i1 %cmp.not.i509, label %do.end6.i510.ds3000_writereg.exit513_crit_edge, label %do.end12.i512

do.end6.i510.ds3000_writereg.exit513_crit_edge:   ; preds = %do.end6.i510
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit513

do.end12.i512:                                    ; preds = %do.end6.i510
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i508, i32 noundef 199, i32 noundef 14) #9
  br label %ds3000_writereg.exit513

ds3000_writereg.exit513:                          ; preds = %do.end12.i512, %do.end6.i510.ds3000_writereg.exit513_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i499) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i498) #6
  br label %if.end146

if.else94:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001000, i32 %190)
  %cmp97 = icmp ult i32 %190, 10001000
  br i1 %cmp97, label %if.then99, label %if.else117

if.then99:                                        ; preds = %if.else94
  %div102 = udiv i32 92166, %div
  %255 = trunc i32 %div102 to i16
  %conv104 = add nuw nsw i16 %255, 1
  %256 = and i16 %conv104, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %cmp107.not = icmp eq i16 %256, 0
  %inc110 = add nuw nsw i16 %255, 2
  %spec.select288 = select i1 %cmp107.not, i16 %conv104, i16 %inc110
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i514) #6
  %257 = getelementptr inbounds [2 x i8], ptr %buf.i514, i32 0, i32 1
  %258 = ptrtoint ptr %buf.i514 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -61, ptr %buf.i514, align 1
  %259 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 7, ptr %257, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i515) #6
  %260 = getelementptr inbounds i8, ptr %msg.i515, i32 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 -1, ptr %260, align 4
  %262 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %config, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %263, align 4
  %conv2.i517 = zext i8 %265 to i16
  %266 = ptrtoint ptr %msg.i515 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv2.i517, ptr %msg.i515, align 4
  %flags.i518 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i515, i32 0, i32 1
  %267 = ptrtoint ptr %flags.i518 to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 0, ptr %flags.i518, align 2
  store i16 2, ptr %260, align 4
  %buf3.i520 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i515, i32 0, i32 3
  %268 = ptrtoint ptr %buf3.i520 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %buf.i514, ptr %buf3.i520, align 4
  %269 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.i521 = icmp eq i32 %269, 0
  br i1 %tobool.not.i521, label %if.then99.do.end6.i526_crit_edge, label %do.end.i523

if.then99.do.end6.i526_crit_edge:                 ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i526

do.end.i523:                                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  %call.i522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 195, i32 noundef 7) #9
  br label %do.end6.i526

do.end6.i526:                                     ; preds = %do.end.i523, %if.then99.do.end6.i526_crit_edge
  %270 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %1, align 4
  %call7.i524 = call i32 @i2c_transfer(ptr noundef %271, ptr noundef nonnull %msg.i515, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i524)
  %cmp.not.i525 = icmp eq i32 %call7.i524, 1
  br i1 %cmp.not.i525, label %do.end6.i526.ds3000_writereg.exit529_crit_edge, label %do.end12.i528

do.end6.i526.ds3000_writereg.exit529_crit_edge:   ; preds = %do.end6.i526
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit529

do.end12.i528:                                    ; preds = %do.end6.i526
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i524, i32 noundef 195, i32 noundef 7) #9
  br label %ds3000_writereg.exit529

ds3000_writereg.exit529:                          ; preds = %do.end12.i528, %do.end6.i526.ds3000_writereg.exit529_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i515) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i514) #6
  %conv113 = zext i16 %spec.select288 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i530) #6
  %272 = getelementptr inbounds [2 x i8], ptr %buf.i530, i32 0, i32 1
  %273 = ptrtoint ptr %buf.i530 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -56, ptr %buf.i530, align 1
  %conv1.i532 = trunc i16 %spec.select288 to i8
  %274 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv1.i532, ptr %272, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i531) #6
  %275 = getelementptr inbounds i8, ptr %msg.i531, i32 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 -1, ptr %275, align 4
  %277 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %config, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %278, align 4
  %conv2.i534 = zext i8 %280 to i16
  %281 = ptrtoint ptr %msg.i531 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv2.i534, ptr %msg.i531, align 4
  %flags.i535 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i531, i32 0, i32 1
  %282 = ptrtoint ptr %flags.i535 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 0, ptr %flags.i535, align 2
  store i16 2, ptr %275, align 4
  %buf3.i537 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i531, i32 0, i32 3
  %283 = ptrtoint ptr %buf3.i537 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %buf.i530, ptr %buf3.i537, align 4
  %284 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i538 = icmp eq i32 %284, 0
  br i1 %tobool.not.i538, label %ds3000_writereg.exit529.do.end6.i543_crit_edge, label %do.end.i540

ds3000_writereg.exit529.do.end6.i543_crit_edge:   ; preds = %ds3000_writereg.exit529
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i543

do.end.i540:                                      ; preds = %ds3000_writereg.exit529
  call void @__sanitizer_cov_trace_pc() #8
  %call.i539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 200, i32 noundef %conv113) #9
  br label %do.end6.i543

do.end6.i543:                                     ; preds = %do.end.i540, %ds3000_writereg.exit529.do.end6.i543_crit_edge
  %285 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %1, align 4
  %call7.i541 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %msg.i531, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i541)
  %cmp.not.i542 = icmp eq i32 %call7.i541, 1
  br i1 %cmp.not.i542, label %do.end6.i543.ds3000_writereg.exit546_crit_edge, label %do.end12.i545

do.end6.i543.ds3000_writereg.exit546_crit_edge:   ; preds = %do.end6.i543
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit546

do.end12.i545:                                    ; preds = %do.end6.i543
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i541, i32 noundef 200, i32 noundef %conv113) #9
  br label %ds3000_writereg.exit546

ds3000_writereg.exit546:                          ; preds = %do.end12.i545, %do.end6.i543.ds3000_writereg.exit546_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i531) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i530) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i547) #6
  %287 = getelementptr inbounds [2 x i8], ptr %buf.i547, i32 0, i32 1
  %288 = ptrtoint ptr %buf.i547 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 -60, ptr %buf.i547, align 1
  %289 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 9, ptr %287, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i548) #6
  %290 = getelementptr inbounds i8, ptr %msg.i548, i32 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 -1, ptr %290, align 4
  %292 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %config, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %293, align 4
  %conv2.i550 = zext i8 %295 to i16
  %296 = ptrtoint ptr %msg.i548 to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv2.i550, ptr %msg.i548, align 4
  %flags.i551 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i551 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i551, align 2
  store i16 2, ptr %290, align 4
  %buf3.i553 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i548, i32 0, i32 3
  %298 = ptrtoint ptr %buf3.i553 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %buf.i547, ptr %buf3.i553, align 4
  %299 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool.not.i554 = icmp eq i32 %299, 0
  br i1 %tobool.not.i554, label %ds3000_writereg.exit546.do.end6.i559_crit_edge, label %do.end.i556

ds3000_writereg.exit546.do.end6.i559_crit_edge:   ; preds = %ds3000_writereg.exit546
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i559

do.end.i556:                                      ; preds = %ds3000_writereg.exit546
  call void @__sanitizer_cov_trace_pc() #8
  %call.i555 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 196, i32 noundef 9) #9
  br label %do.end6.i559

do.end6.i559:                                     ; preds = %do.end.i556, %ds3000_writereg.exit546.do.end6.i559_crit_edge
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %1, align 4
  %call7.i557 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %msg.i548, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i557)
  %cmp.not.i558 = icmp eq i32 %call7.i557, 1
  br i1 %cmp.not.i558, label %do.end6.i559.ds3000_writereg.exit562_crit_edge, label %do.end12.i561

do.end6.i559.ds3000_writereg.exit562_crit_edge:   ; preds = %do.end6.i559
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit562

do.end12.i561:                                    ; preds = %do.end6.i559
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i560 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i557, i32 noundef 196, i32 noundef 9) #9
  br label %ds3000_writereg.exit562

ds3000_writereg.exit562:                          ; preds = %do.end12.i561, %do.end6.i559.ds3000_writereg.exit562_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i548) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i547) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i563) #6
  %302 = getelementptr inbounds [2 x i8], ptr %buf.i563, i32 0, i32 1
  %303 = ptrtoint ptr %buf.i563 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 -57, ptr %buf.i563, align 1
  %304 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 18, ptr %302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i564) #6
  %305 = getelementptr inbounds i8, ptr %msg.i564, i32 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 -1, ptr %305, align 4
  %307 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %config, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %308, align 4
  %conv2.i566 = zext i8 %310 to i16
  %311 = ptrtoint ptr %msg.i564 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv2.i566, ptr %msg.i564, align 4
  %flags.i567 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564, i32 0, i32 1
  %312 = ptrtoint ptr %flags.i567 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i567, align 2
  store i16 2, ptr %305, align 4
  %buf3.i569 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564, i32 0, i32 3
  %313 = ptrtoint ptr %buf3.i569 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %buf.i563, ptr %buf3.i569, align 4
  %314 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i570 = icmp eq i32 %314, 0
  br i1 %tobool.not.i570, label %ds3000_writereg.exit562.do.end6.i575_crit_edge, label %do.end.i572

ds3000_writereg.exit562.do.end6.i575_crit_edge:   ; preds = %ds3000_writereg.exit562
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i575

do.end.i572:                                      ; preds = %ds3000_writereg.exit562
  call void @__sanitizer_cov_trace_pc() #8
  %call.i571 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 199, i32 noundef 18) #9
  br label %do.end6.i575

do.end6.i575:                                     ; preds = %do.end.i572, %ds3000_writereg.exit562.do.end6.i575_crit_edge
  %315 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %1, align 4
  %call7.i573 = call i32 @i2c_transfer(ptr noundef %316, ptr noundef nonnull %msg.i564, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i573)
  %cmp.not.i574 = icmp eq i32 %call7.i573, 1
  br i1 %cmp.not.i574, label %do.end6.i575.ds3000_writereg.exit578_crit_edge, label %do.end12.i577

do.end6.i575.ds3000_writereg.exit578_crit_edge:   ; preds = %do.end6.i575
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit578

do.end12.i577:                                    ; preds = %do.end6.i575
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i576 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i573, i32 noundef 199, i32 noundef 18) #9
  br label %ds3000_writereg.exit578

ds3000_writereg.exit578:                          ; preds = %do.end12.i577, %do.end6.i575.ds3000_writereg.exit578_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i564) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i563) #6
  br label %if.end146

if.else117:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001000, i32 %190)
  %cmp120 = icmp ult i32 %190, 20001000
  br i1 %cmp120, label %if.then122, label %if.else133

if.then122:                                       ; preds = %if.else117
  %div125.rhs.trunc = trunc i32 %div to i16
  %div125851 = udiv i16 -1020, %div125.rhs.trunc
  %narrow = add nuw nsw i16 %div125851, 1
  %conv127 = zext i16 %narrow to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i579) #6
  %317 = getelementptr inbounds [2 x i8], ptr %buf.i579, i32 0, i32 1
  %318 = ptrtoint ptr %buf.i579 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 -61, ptr %buf.i579, align 1
  %conv1.i581 = trunc i16 %narrow to i8
  %319 = ptrtoint ptr %317 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv1.i581, ptr %317, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i580) #6
  %320 = getelementptr inbounds i8, ptr %msg.i580, i32 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 -1, ptr %320, align 4
  %322 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %config, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %323, align 4
  %conv2.i583 = zext i8 %325 to i16
  %326 = ptrtoint ptr %msg.i580 to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %conv2.i583, ptr %msg.i580, align 4
  %flags.i584 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i580, i32 0, i32 1
  %327 = ptrtoint ptr %flags.i584 to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 0, ptr %flags.i584, align 2
  store i16 2, ptr %320, align 4
  %buf3.i586 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i580, i32 0, i32 3
  %328 = ptrtoint ptr %buf3.i586 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %buf.i579, ptr %buf3.i586, align 4
  %329 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool.not.i587 = icmp eq i32 %329, 0
  br i1 %tobool.not.i587, label %if.then122.do.end6.i592_crit_edge, label %do.end.i589

if.then122.do.end6.i592_crit_edge:                ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i592

do.end.i589:                                      ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  %call.i588 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 195, i32 noundef %conv127) #9
  br label %do.end6.i592

do.end6.i592:                                     ; preds = %do.end.i589, %if.then122.do.end6.i592_crit_edge
  %330 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %1, align 4
  %call7.i590 = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %msg.i580, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i590)
  %cmp.not.i591 = icmp eq i32 %call7.i590, 1
  br i1 %cmp.not.i591, label %do.end6.i592.ds3000_writereg.exit595_crit_edge, label %do.end12.i594

do.end6.i592.ds3000_writereg.exit595_crit_edge:   ; preds = %do.end6.i592
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit595

do.end12.i594:                                    ; preds = %do.end6.i592
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i593 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i590, i32 noundef 195, i32 noundef %conv127) #9
  br label %ds3000_writereg.exit595

ds3000_writereg.exit595:                          ; preds = %do.end12.i594, %do.end6.i592.ds3000_writereg.exit595_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i580) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i579) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i596) #6
  %332 = getelementptr inbounds [2 x i8], ptr %buf.i596, i32 0, i32 1
  %333 = ptrtoint ptr %buf.i596 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 -56, ptr %buf.i596, align 1
  %334 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 14, ptr %332, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i597) #6
  %335 = getelementptr inbounds i8, ptr %msg.i597, i32 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 -1, ptr %335, align 4
  %337 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %config, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %338, align 4
  %conv2.i599 = zext i8 %340 to i16
  %341 = ptrtoint ptr %msg.i597 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %conv2.i599, ptr %msg.i597, align 4
  %flags.i600 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i597, i32 0, i32 1
  %342 = ptrtoint ptr %flags.i600 to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 0, ptr %flags.i600, align 2
  store i16 2, ptr %335, align 4
  %buf3.i602 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i597, i32 0, i32 3
  %343 = ptrtoint ptr %buf3.i602 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %buf.i596, ptr %buf3.i602, align 4
  %344 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool.not.i603 = icmp eq i32 %344, 0
  br i1 %tobool.not.i603, label %ds3000_writereg.exit595.do.end6.i608_crit_edge, label %do.end.i605

ds3000_writereg.exit595.do.end6.i608_crit_edge:   ; preds = %ds3000_writereg.exit595
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i608

do.end.i605:                                      ; preds = %ds3000_writereg.exit595
  call void @__sanitizer_cov_trace_pc() #8
  %call.i604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 200, i32 noundef 14) #9
  br label %do.end6.i608

do.end6.i608:                                     ; preds = %do.end.i605, %ds3000_writereg.exit595.do.end6.i608_crit_edge
  %345 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %1, align 4
  %call7.i606 = call i32 @i2c_transfer(ptr noundef %346, ptr noundef nonnull %msg.i597, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i606)
  %cmp.not.i607 = icmp eq i32 %call7.i606, 1
  br i1 %cmp.not.i607, label %do.end6.i608.ds3000_writereg.exit611_crit_edge, label %do.end12.i610

do.end6.i608.ds3000_writereg.exit611_crit_edge:   ; preds = %do.end6.i608
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit611

do.end12.i610:                                    ; preds = %do.end6.i608
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i609 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i606, i32 noundef 200, i32 noundef 14) #9
  br label %ds3000_writereg.exit611

ds3000_writereg.exit611:                          ; preds = %do.end12.i610, %do.end6.i608.ds3000_writereg.exit611_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i597) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i596) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i612) #6
  %347 = getelementptr inbounds [2 x i8], ptr %buf.i612, i32 0, i32 1
  %348 = ptrtoint ptr %buf.i612 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 -60, ptr %buf.i612, align 1
  %349 = ptrtoint ptr %347 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 7, ptr %347, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i613) #6
  %350 = getelementptr inbounds i8, ptr %msg.i613, i32 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 -1, ptr %350, align 4
  %352 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %config, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %353, align 4
  %conv2.i615 = zext i8 %355 to i16
  %356 = ptrtoint ptr %msg.i613 to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %conv2.i615, ptr %msg.i613, align 4
  %flags.i616 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i613, i32 0, i32 1
  %357 = ptrtoint ptr %flags.i616 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 0, ptr %flags.i616, align 2
  store i16 2, ptr %350, align 4
  %buf3.i618 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i613, i32 0, i32 3
  %358 = ptrtoint ptr %buf3.i618 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %buf.i612, ptr %buf3.i618, align 4
  %359 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool.not.i619 = icmp eq i32 %359, 0
  br i1 %tobool.not.i619, label %ds3000_writereg.exit611.do.end6.i624_crit_edge, label %do.end.i621

ds3000_writereg.exit611.do.end6.i624_crit_edge:   ; preds = %ds3000_writereg.exit611
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i624

do.end.i621:                                      ; preds = %ds3000_writereg.exit611
  call void @__sanitizer_cov_trace_pc() #8
  %call.i620 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 196, i32 noundef 7) #9
  br label %do.end6.i624

do.end6.i624:                                     ; preds = %do.end.i621, %ds3000_writereg.exit611.do.end6.i624_crit_edge
  %360 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %1, align 4
  %call7.i622 = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %msg.i613, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i622)
  %cmp.not.i623 = icmp eq i32 %call7.i622, 1
  br i1 %cmp.not.i623, label %do.end6.i624.ds3000_writereg.exit627_crit_edge, label %do.end12.i626

do.end6.i624.ds3000_writereg.exit627_crit_edge:   ; preds = %do.end6.i624
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit627

do.end12.i626:                                    ; preds = %do.end6.i624
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i625 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i622, i32 noundef 196, i32 noundef 7) #9
  br label %ds3000_writereg.exit627

ds3000_writereg.exit627:                          ; preds = %do.end12.i626, %do.end6.i624.ds3000_writereg.exit627_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i613) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i612) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i628) #6
  %362 = getelementptr inbounds [2 x i8], ptr %buf.i628, i32 0, i32 1
  %363 = ptrtoint ptr %buf.i628 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 -57, ptr %buf.i628, align 1
  %364 = ptrtoint ptr %362 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 24, ptr %362, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i629) #6
  %365 = getelementptr inbounds i8, ptr %msg.i629, i32 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 -1, ptr %365, align 4
  %367 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %config, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %368, align 4
  %conv2.i631 = zext i8 %370 to i16
  %371 = ptrtoint ptr %msg.i629 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %conv2.i631, ptr %msg.i629, align 4
  %flags.i632 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i629, i32 0, i32 1
  %372 = ptrtoint ptr %flags.i632 to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 0, ptr %flags.i632, align 2
  store i16 2, ptr %365, align 4
  %buf3.i634 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i629, i32 0, i32 3
  %373 = ptrtoint ptr %buf3.i634 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %buf.i628, ptr %buf3.i634, align 4
  %374 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool.not.i635 = icmp eq i32 %374, 0
  br i1 %tobool.not.i635, label %ds3000_writereg.exit627.do.end6.i640_crit_edge, label %do.end.i637

ds3000_writereg.exit627.do.end6.i640_crit_edge:   ; preds = %ds3000_writereg.exit627
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i640

do.end.i637:                                      ; preds = %ds3000_writereg.exit627
  call void @__sanitizer_cov_trace_pc() #8
  %call.i636 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 199, i32 noundef 24) #9
  br label %do.end6.i640

do.end6.i640:                                     ; preds = %do.end.i637, %ds3000_writereg.exit627.do.end6.i640_crit_edge
  %375 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %1, align 4
  %call7.i638 = call i32 @i2c_transfer(ptr noundef %376, ptr noundef nonnull %msg.i629, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i638)
  %cmp.not.i639 = icmp eq i32 %call7.i638, 1
  br i1 %cmp.not.i639, label %do.end6.i640.ds3000_writereg.exit643_crit_edge, label %do.end12.i642

do.end6.i640.ds3000_writereg.exit643_crit_edge:   ; preds = %do.end6.i640
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit643

do.end12.i642:                                    ; preds = %do.end6.i640
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i638, i32 noundef 199, i32 noundef 24) #9
  br label %ds3000_writereg.exit643

ds3000_writereg.exit643:                          ; preds = %do.end12.i642, %do.end6.i640.ds3000_writereg.exit643_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i629) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i628) #6
  br label %if.end146

if.else133:                                       ; preds = %if.else117
  %div136 = udiv i32 129032, %div
  %conv138 = add nuw nsw i32 %div136, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i644) #6
  %377 = getelementptr inbounds [2 x i8], ptr %buf.i644, i32 0, i32 1
  %378 = ptrtoint ptr %buf.i644 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 -61, ptr %buf.i644, align 1
  %conv1.i646 = trunc i32 %conv138 to i8
  %379 = ptrtoint ptr %377 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %conv1.i646, ptr %377, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i645) #6
  %380 = getelementptr inbounds i8, ptr %msg.i645, i32 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 -1, ptr %380, align 4
  %382 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %config, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %383, align 4
  %conv2.i648 = zext i8 %385 to i16
  %386 = ptrtoint ptr %msg.i645 to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %conv2.i648, ptr %msg.i645, align 4
  %flags.i649 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i645, i32 0, i32 1
  %387 = ptrtoint ptr %flags.i649 to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 0, ptr %flags.i649, align 2
  store i16 2, ptr %380, align 4
  %buf3.i651 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i645, i32 0, i32 3
  %388 = ptrtoint ptr %buf3.i651 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %buf.i644, ptr %buf3.i651, align 4
  %389 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool.not.i652 = icmp eq i32 %389, 0
  br i1 %tobool.not.i652, label %if.else133.do.end6.i657_crit_edge, label %do.end.i654

if.else133.do.end6.i657_crit_edge:                ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i657

do.end.i654:                                      ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #8
  %call.i653 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 195, i32 noundef %conv138) #9
  br label %do.end6.i657

do.end6.i657:                                     ; preds = %do.end.i654, %if.else133.do.end6.i657_crit_edge
  %390 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %1, align 4
  %call7.i655 = call i32 @i2c_transfer(ptr noundef %391, ptr noundef nonnull %msg.i645, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i655)
  %cmp.not.i656 = icmp eq i32 %call7.i655, 1
  br i1 %cmp.not.i656, label %do.end6.i657.ds3000_writereg.exit660_crit_edge, label %do.end12.i659

do.end6.i657.ds3000_writereg.exit660_crit_edge:   ; preds = %do.end6.i657
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit660

do.end12.i659:                                    ; preds = %do.end6.i657
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i658 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i655, i32 noundef 195, i32 noundef %conv138) #9
  br label %ds3000_writereg.exit660

ds3000_writereg.exit660:                          ; preds = %do.end12.i659, %do.end6.i657.ds3000_writereg.exit660_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i645) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i644) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i661) #6
  %392 = getelementptr inbounds [2 x i8], ptr %buf.i661, i32 0, i32 1
  %393 = ptrtoint ptr %buf.i661 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 -56, ptr %buf.i661, align 1
  %394 = ptrtoint ptr %392 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 10, ptr %392, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i662) #6
  %395 = getelementptr inbounds i8, ptr %msg.i662, i32 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 -1, ptr %395, align 4
  %397 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %config, align 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %398, align 4
  %conv2.i664 = zext i8 %400 to i16
  %401 = ptrtoint ptr %msg.i662 to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %conv2.i664, ptr %msg.i662, align 4
  %flags.i665 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i662, i32 0, i32 1
  %402 = ptrtoint ptr %flags.i665 to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 0, ptr %flags.i665, align 2
  store i16 2, ptr %395, align 4
  %buf3.i667 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i662, i32 0, i32 3
  %403 = ptrtoint ptr %buf3.i667 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %buf.i661, ptr %buf3.i667, align 4
  %404 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not.i668 = icmp eq i32 %404, 0
  br i1 %tobool.not.i668, label %ds3000_writereg.exit660.do.end6.i673_crit_edge, label %do.end.i670

ds3000_writereg.exit660.do.end6.i673_crit_edge:   ; preds = %ds3000_writereg.exit660
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i673

do.end.i670:                                      ; preds = %ds3000_writereg.exit660
  call void @__sanitizer_cov_trace_pc() #8
  %call.i669 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 200, i32 noundef 10) #9
  br label %do.end6.i673

do.end6.i673:                                     ; preds = %do.end.i670, %ds3000_writereg.exit660.do.end6.i673_crit_edge
  %405 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %1, align 4
  %call7.i671 = call i32 @i2c_transfer(ptr noundef %406, ptr noundef nonnull %msg.i662, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i671)
  %cmp.not.i672 = icmp eq i32 %call7.i671, 1
  br i1 %cmp.not.i672, label %do.end6.i673.ds3000_writereg.exit676_crit_edge, label %do.end12.i675

do.end6.i673.ds3000_writereg.exit676_crit_edge:   ; preds = %do.end6.i673
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit676

do.end12.i675:                                    ; preds = %do.end6.i673
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i674 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i671, i32 noundef 200, i32 noundef 10) #9
  br label %ds3000_writereg.exit676

ds3000_writereg.exit676:                          ; preds = %do.end12.i675, %do.end6.i673.ds3000_writereg.exit676_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i662) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i661) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i677) #6
  %407 = getelementptr inbounds [2 x i8], ptr %buf.i677, i32 0, i32 1
  %408 = ptrtoint ptr %buf.i677 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 -60, ptr %buf.i677, align 1
  %409 = ptrtoint ptr %407 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 5, ptr %407, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i678) #6
  %410 = getelementptr inbounds i8, ptr %msg.i678, i32 4
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 -1, ptr %410, align 4
  %412 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %config, align 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %413, align 4
  %conv2.i680 = zext i8 %415 to i16
  %416 = ptrtoint ptr %msg.i678 to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %conv2.i680, ptr %msg.i678, align 4
  %flags.i681 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i678, i32 0, i32 1
  %417 = ptrtoint ptr %flags.i681 to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 0, ptr %flags.i681, align 2
  store i16 2, ptr %410, align 4
  %buf3.i683 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i678, i32 0, i32 3
  %418 = ptrtoint ptr %buf3.i683 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %buf.i677, ptr %buf3.i683, align 4
  %419 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool.not.i684 = icmp eq i32 %419, 0
  br i1 %tobool.not.i684, label %ds3000_writereg.exit676.do.end6.i689_crit_edge, label %do.end.i686

ds3000_writereg.exit676.do.end6.i689_crit_edge:   ; preds = %ds3000_writereg.exit676
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i689

do.end.i686:                                      ; preds = %ds3000_writereg.exit676
  call void @__sanitizer_cov_trace_pc() #8
  %call.i685 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 196, i32 noundef 5) #9
  br label %do.end6.i689

do.end6.i689:                                     ; preds = %do.end.i686, %ds3000_writereg.exit676.do.end6.i689_crit_edge
  %420 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %1, align 4
  %call7.i687 = call i32 @i2c_transfer(ptr noundef %421, ptr noundef nonnull %msg.i678, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i687)
  %cmp.not.i688 = icmp eq i32 %call7.i687, 1
  br i1 %cmp.not.i688, label %do.end6.i689.ds3000_writereg.exit692_crit_edge, label %do.end12.i691

do.end6.i689.ds3000_writereg.exit692_crit_edge:   ; preds = %do.end6.i689
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit692

do.end12.i691:                                    ; preds = %do.end6.i689
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i690 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i687, i32 noundef 196, i32 noundef 5) #9
  br label %ds3000_writereg.exit692

ds3000_writereg.exit692:                          ; preds = %do.end12.i691, %do.end6.i689.ds3000_writereg.exit692_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i678) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i677) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i693) #6
  %422 = getelementptr inbounds [2 x i8], ptr %buf.i693, i32 0, i32 1
  %423 = ptrtoint ptr %buf.i693 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 -57, ptr %buf.i693, align 1
  %424 = ptrtoint ptr %422 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 36, ptr %422, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i694) #6
  %425 = getelementptr inbounds i8, ptr %msg.i694, i32 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 -1, ptr %425, align 4
  %427 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %config, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %428, align 4
  %conv2.i696 = zext i8 %430 to i16
  %431 = ptrtoint ptr %msg.i694 to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 %conv2.i696, ptr %msg.i694, align 4
  %flags.i697 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i694, i32 0, i32 1
  %432 = ptrtoint ptr %flags.i697 to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 0, ptr %flags.i697, align 2
  store i16 2, ptr %425, align 4
  %buf3.i699 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i694, i32 0, i32 3
  %433 = ptrtoint ptr %buf3.i699 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %buf.i693, ptr %buf3.i699, align 4
  %434 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %434)
  %tobool.not.i700 = icmp eq i32 %434, 0
  br i1 %tobool.not.i700, label %ds3000_writereg.exit692.do.end6.i705_crit_edge, label %do.end.i702

ds3000_writereg.exit692.do.end6.i705_crit_edge:   ; preds = %ds3000_writereg.exit692
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i705

do.end.i702:                                      ; preds = %ds3000_writereg.exit692
  call void @__sanitizer_cov_trace_pc() #8
  %call.i701 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 199, i32 noundef 36) #9
  br label %do.end6.i705

do.end6.i705:                                     ; preds = %do.end.i702, %ds3000_writereg.exit692.do.end6.i705_crit_edge
  %435 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %1, align 4
  %call7.i703 = call i32 @i2c_transfer(ptr noundef %436, ptr noundef nonnull %msg.i694, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i703)
  %cmp.not.i704 = icmp eq i32 %call7.i703, 1
  br i1 %cmp.not.i704, label %do.end6.i705.ds3000_writereg.exit708_crit_edge, label %do.end12.i707

do.end6.i705.ds3000_writereg.exit708_crit_edge:   ; preds = %do.end6.i705
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit708

do.end12.i707:                                    ; preds = %do.end6.i705
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i703, i32 noundef 199, i32 noundef 36) #9
  br label %ds3000_writereg.exit708

ds3000_writereg.exit708:                          ; preds = %do.end12.i707, %do.end6.i705.ds3000_writereg.exit708_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i694) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i693) #6
  br label %if.end146

if.end146:                                        ; preds = %ds3000_writereg.exit708, %ds3000_writereg.exit643, %ds3000_writereg.exit578, %ds3000_writereg.exit513
  %437 = ptrtoint ptr %symbol_rate55 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %symbol_rate55, align 4
  %div148 = udiv i32 %438, 1000
  %shl = shl i32 %div148, 16
  %add149 = or i32 %shl, 47872
  %div150 = udiv i32 %add149, 96000
  %and153 = and i32 %div150, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i709) #6
  %439 = getelementptr inbounds [2 x i8], ptr %buf.i709, i32 0, i32 1
  %440 = ptrtoint ptr %buf.i709 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 97, ptr %buf.i709, align 1
  %conv1.i711 = trunc i32 %div150 to i8
  %441 = ptrtoint ptr %439 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %conv1.i711, ptr %439, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i710) #6
  %442 = getelementptr inbounds i8, ptr %msg.i710, i32 4
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 -1, ptr %442, align 4
  %444 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %config, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %445, align 4
  %conv2.i713 = zext i8 %447 to i16
  %448 = ptrtoint ptr %msg.i710 to i32
  call void @__asan_store2_noabort(i32 %448)
  store i16 %conv2.i713, ptr %msg.i710, align 4
  %flags.i714 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i710, i32 0, i32 1
  %449 = ptrtoint ptr %flags.i714 to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 0, ptr %flags.i714, align 2
  store i16 2, ptr %442, align 4
  %buf3.i716 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i710, i32 0, i32 3
  %450 = ptrtoint ptr %buf3.i716 to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %buf.i709, ptr %buf3.i716, align 4
  %451 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %tobool.not.i717 = icmp eq i32 %451, 0
  br i1 %tobool.not.i717, label %if.end146.do.end6.i722_crit_edge, label %do.end.i719

if.end146.do.end6.i722_crit_edge:                 ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i722

do.end.i719:                                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %call.i718 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 97, i32 noundef %and153) #9
  br label %do.end6.i722

do.end6.i722:                                     ; preds = %do.end.i719, %if.end146.do.end6.i722_crit_edge
  %452 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %1, align 4
  %call7.i720 = call i32 @i2c_transfer(ptr noundef %453, ptr noundef nonnull %msg.i710, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i720)
  %cmp.not.i721 = icmp eq i32 %call7.i720, 1
  br i1 %cmp.not.i721, label %do.end6.i722.ds3000_writereg.exit725_crit_edge, label %do.end12.i724

do.end6.i722.ds3000_writereg.exit725_crit_edge:   ; preds = %do.end6.i722
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit725

do.end12.i724:                                    ; preds = %do.end6.i722
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i723 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i720, i32 noundef 97, i32 noundef %and153) #9
  br label %ds3000_writereg.exit725

ds3000_writereg.exit725:                          ; preds = %do.end12.i724, %do.end6.i722.ds3000_writereg.exit725_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i710) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i709) #6
  %454 = lshr i32 %div150, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i726) #6
  %455 = getelementptr inbounds [2 x i8], ptr %buf.i726, i32 0, i32 1
  %456 = ptrtoint ptr %buf.i726 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 98, ptr %buf.i726, align 1
  %conv1.i728 = trunc i32 %454 to i8
  %457 = ptrtoint ptr %455 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %conv1.i728, ptr %455, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i727) #6
  %458 = getelementptr inbounds i8, ptr %msg.i727, i32 4
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 -1, ptr %458, align 4
  %460 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %config, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %461, align 4
  %conv2.i730 = zext i8 %463 to i16
  %464 = ptrtoint ptr %msg.i727 to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 %conv2.i730, ptr %msg.i727, align 4
  %flags.i731 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i727, i32 0, i32 1
  %465 = ptrtoint ptr %flags.i731 to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 0, ptr %flags.i731, align 2
  store i16 2, ptr %458, align 4
  %buf3.i733 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i727, i32 0, i32 3
  %466 = ptrtoint ptr %buf3.i733 to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr %buf.i726, ptr %buf3.i733, align 4
  %467 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %tobool.not.i734 = icmp eq i32 %467, 0
  br i1 %tobool.not.i734, label %ds3000_writereg.exit725.do.end6.i739_crit_edge, label %do.end.i736

ds3000_writereg.exit725.do.end6.i739_crit_edge:   ; preds = %ds3000_writereg.exit725
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i739

do.end.i736:                                      ; preds = %ds3000_writereg.exit725
  call void @__sanitizer_cov_trace_pc() #8
  %call.i735 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 98, i32 noundef %454) #9
  br label %do.end6.i739

do.end6.i739:                                     ; preds = %do.end.i736, %ds3000_writereg.exit725.do.end6.i739_crit_edge
  %468 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %1, align 4
  %call7.i737 = call i32 @i2c_transfer(ptr noundef %469, ptr noundef nonnull %msg.i727, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i737)
  %cmp.not.i738 = icmp eq i32 %call7.i737, 1
  br i1 %cmp.not.i738, label %do.end6.i739.ds3000_writereg.exit742_crit_edge, label %do.end12.i741

do.end6.i739.ds3000_writereg.exit742_crit_edge:   ; preds = %do.end6.i739
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit742

do.end12.i741:                                    ; preds = %do.end6.i739
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i740 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i737, i32 noundef 98, i32 noundef %454) #9
  br label %ds3000_writereg.exit742

ds3000_writereg.exit742:                          ; preds = %do.end12.i741, %do.end6.i739.ds3000_writereg.exit742_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i727) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i726) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i743) #6
  %470 = getelementptr inbounds [2 x i8], ptr %buf.i743, i32 0, i32 1
  %471 = ptrtoint ptr %buf.i743 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 86, ptr %buf.i743, align 1
  %472 = ptrtoint ptr %470 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 0, ptr %470, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i744) #6
  %473 = getelementptr inbounds i8, ptr %msg.i744, i32 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 -1, ptr %473, align 4
  %475 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %config, align 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %476, align 4
  %conv2.i746 = zext i8 %478 to i16
  %479 = ptrtoint ptr %msg.i744 to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 %conv2.i746, ptr %msg.i744, align 4
  %flags.i747 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i744, i32 0, i32 1
  %480 = ptrtoint ptr %flags.i747 to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 0, ptr %flags.i747, align 2
  store i16 2, ptr %473, align 4
  %buf3.i749 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i744, i32 0, i32 3
  %481 = ptrtoint ptr %buf3.i749 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %buf.i743, ptr %buf3.i749, align 4
  %482 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %482)
  %tobool.not.i750 = icmp eq i32 %482, 0
  br i1 %tobool.not.i750, label %ds3000_writereg.exit742.do.end6.i755_crit_edge, label %do.end.i752

ds3000_writereg.exit742.do.end6.i755_crit_edge:   ; preds = %ds3000_writereg.exit742
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i755

do.end.i752:                                      ; preds = %ds3000_writereg.exit742
  call void @__sanitizer_cov_trace_pc() #8
  %call.i751 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 86, i32 noundef 0) #9
  br label %do.end6.i755

do.end6.i755:                                     ; preds = %do.end.i752, %ds3000_writereg.exit742.do.end6.i755_crit_edge
  %483 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %1, align 4
  %call7.i753 = call i32 @i2c_transfer(ptr noundef %484, ptr noundef nonnull %msg.i744, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i753)
  %cmp.not.i754 = icmp eq i32 %call7.i753, 1
  br i1 %cmp.not.i754, label %do.end6.i755.ds3000_writereg.exit758_crit_edge, label %do.end12.i757

do.end6.i755.ds3000_writereg.exit758_crit_edge:   ; preds = %do.end6.i755
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit758

do.end12.i757:                                    ; preds = %do.end6.i755
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i756 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i753, i32 noundef 86, i32 noundef 0) #9
  br label %ds3000_writereg.exit758

ds3000_writereg.exit758:                          ; preds = %do.end12.i757, %do.end6.i755.ds3000_writereg.exit758_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i744) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i743) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i759) #6
  %485 = getelementptr inbounds [2 x i8], ptr %buf.i759, i32 0, i32 1
  %486 = ptrtoint ptr %buf.i759 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 118, ptr %buf.i759, align 1
  %487 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 0, ptr %485, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i760) #6
  %488 = getelementptr inbounds i8, ptr %msg.i760, i32 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 -1, ptr %488, align 4
  %490 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %config, align 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %491, align 4
  %conv2.i762 = zext i8 %493 to i16
  %494 = ptrtoint ptr %msg.i760 to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %conv2.i762, ptr %msg.i760, align 4
  %flags.i763 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i760, i32 0, i32 1
  %495 = ptrtoint ptr %flags.i763 to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 0, ptr %flags.i763, align 2
  store i16 2, ptr %488, align 4
  %buf3.i765 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i760, i32 0, i32 3
  %496 = ptrtoint ptr %buf3.i765 to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %buf.i759, ptr %buf3.i765, align 4
  %497 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %497)
  %tobool.not.i766 = icmp eq i32 %497, 0
  br i1 %tobool.not.i766, label %ds3000_writereg.exit758.do.end6.i771_crit_edge, label %do.end.i768

ds3000_writereg.exit758.do.end6.i771_crit_edge:   ; preds = %ds3000_writereg.exit758
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i771

do.end.i768:                                      ; preds = %ds3000_writereg.exit758
  call void @__sanitizer_cov_trace_pc() #8
  %call.i767 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 118, i32 noundef 0) #9
  br label %do.end6.i771

do.end6.i771:                                     ; preds = %do.end.i768, %ds3000_writereg.exit758.do.end6.i771_crit_edge
  %498 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %1, align 4
  %call7.i769 = call i32 @i2c_transfer(ptr noundef %499, ptr noundef nonnull %msg.i760, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i769)
  %cmp.not.i770 = icmp eq i32 %call7.i769, 1
  br i1 %cmp.not.i770, label %do.end6.i771.ds3000_writereg.exit774_crit_edge, label %do.end12.i773

do.end6.i771.ds3000_writereg.exit774_crit_edge:   ; preds = %do.end6.i771
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit774

do.end12.i773:                                    ; preds = %do.end6.i771
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i769, i32 noundef 118, i32 noundef 0) #9
  br label %ds3000_writereg.exit774

ds3000_writereg.exit774:                          ; preds = %do.end12.i773, %do.end6.i771.ds3000_writereg.exit774_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i760) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i759) #6
  %500 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %config, align 4
  %ci_mode = getelementptr inbounds %struct.ds3000_config, ptr %501, i32 0, i32 1
  %502 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %ci_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %503)
  %tobool161.not = icmp eq i8 %503, 0
  br i1 %tobool161.not, label %ds3000_writereg.exit774.if.end170_crit_edge, label %if.then162

ds3000_writereg.exit774.if.end170_crit_edge:      ; preds = %ds3000_writereg.exit774
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then162:                                       ; preds = %ds3000_writereg.exit774
  %504 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %505)
  %cond = icmp eq i32 %505, 6
  br i1 %cond, label %sw.bb167, label %sw.default165

sw.default165:                                    ; preds = %if.then162
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i775) #6
  %506 = getelementptr inbounds [2 x i8], ptr %buf.i775, i32 0, i32 1
  %507 = ptrtoint ptr %buf.i775 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 -3, ptr %buf.i775, align 1
  %508 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 -128, ptr %506, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i776) #6
  %509 = getelementptr inbounds i8, ptr %msg.i776, i32 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 196607, ptr %509, align 4
  %511 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %config, align 4
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %512, align 4
  %conv2.i778 = zext i8 %514 to i16
  %515 = ptrtoint ptr %msg.i776 to i32
  call void @__asan_store2_noabort(i32 %515)
  store i16 %conv2.i778, ptr %msg.i776, align 4
  %flags.i779 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i776, i32 0, i32 1
  %516 = ptrtoint ptr %flags.i779 to i32
  call void @__asan_store2_noabort(i32 %516)
  store i16 0, ptr %flags.i779, align 2
  %buf3.i781 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i776, i32 0, i32 3
  %517 = ptrtoint ptr %buf3.i781 to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %buf.i775, ptr %buf3.i781, align 4
  %518 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %518)
  %tobool.not.i782 = icmp eq i32 %518, 0
  br i1 %tobool.not.i782, label %sw.default165.do.end6.i787_crit_edge, label %do.end.i784

sw.default165.do.end6.i787_crit_edge:             ; preds = %sw.default165
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i787

do.end.i784:                                      ; preds = %sw.default165
  call void @__sanitizer_cov_trace_pc() #8
  %call.i783 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 253, i32 noundef 128) #9
  br label %do.end6.i787

do.end6.i787:                                     ; preds = %do.end.i784, %sw.default165.do.end6.i787_crit_edge
  %519 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %1, align 4
  %call7.i785 = call i32 @i2c_transfer(ptr noundef %520, ptr noundef nonnull %msg.i776, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i785)
  %cmp.not.i786 = icmp eq i32 %call7.i785, 1
  br i1 %cmp.not.i786, label %do.end6.i787.ds3000_writereg.exit790_crit_edge, label %do.end12.i789

do.end6.i787.ds3000_writereg.exit790_crit_edge:   ; preds = %do.end6.i787
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit790

do.end12.i789:                                    ; preds = %do.end6.i787
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i788 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i785, i32 noundef 253, i32 noundef 128) #9
  br label %ds3000_writereg.exit790

ds3000_writereg.exit790:                          ; preds = %do.end12.i789, %do.end6.i787.ds3000_writereg.exit790_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i776) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i775) #6
  br label %if.end170

sw.bb167:                                         ; preds = %if.then162
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i791) #6
  %521 = getelementptr inbounds [2 x i8], ptr %buf.i791, i32 0, i32 1
  %522 = ptrtoint ptr %buf.i791 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 -3, ptr %buf.i791, align 1
  %523 = ptrtoint ptr %521 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 1, ptr %521, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i792) #6
  %524 = getelementptr inbounds i8, ptr %msg.i792, i32 4
  %525 = ptrtoint ptr %524 to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 196607, ptr %524, align 4
  %526 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %config, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %527, align 4
  %conv2.i794 = zext i8 %529 to i16
  %530 = ptrtoint ptr %msg.i792 to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 %conv2.i794, ptr %msg.i792, align 4
  %flags.i795 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i792, i32 0, i32 1
  %531 = ptrtoint ptr %flags.i795 to i32
  call void @__asan_store2_noabort(i32 %531)
  store i16 0, ptr %flags.i795, align 2
  %buf3.i797 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i792, i32 0, i32 3
  %532 = ptrtoint ptr %buf3.i797 to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr %buf.i791, ptr %buf3.i797, align 4
  %533 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %tobool.not.i798 = icmp eq i32 %533, 0
  br i1 %tobool.not.i798, label %sw.bb167.do.end6.i803_crit_edge, label %do.end.i800

sw.bb167.do.end6.i803_crit_edge:                  ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i803

do.end.i800:                                      ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #8
  %call.i799 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 253, i32 noundef 1) #9
  br label %do.end6.i803

do.end6.i803:                                     ; preds = %do.end.i800, %sw.bb167.do.end6.i803_crit_edge
  %534 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %1, align 4
  %call7.i801 = call i32 @i2c_transfer(ptr noundef %535, ptr noundef nonnull %msg.i792, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i801)
  %cmp.not.i802 = icmp eq i32 %call7.i801, 1
  br i1 %cmp.not.i802, label %do.end6.i803.ds3000_writereg.exit806_crit_edge, label %do.end12.i805

do.end6.i803.ds3000_writereg.exit806_crit_edge:   ; preds = %do.end6.i803
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit806

do.end12.i805:                                    ; preds = %do.end6.i803
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i804 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i801, i32 noundef 253, i32 noundef 1) #9
  br label %ds3000_writereg.exit806

ds3000_writereg.exit806:                          ; preds = %do.end12.i805, %do.end6.i803.ds3000_writereg.exit806_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i792) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i791) #6
  br label %if.end170

if.end170:                                        ; preds = %ds3000_writereg.exit806, %ds3000_writereg.exit790, %ds3000_writereg.exit774.if.end170_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i807) #6
  %536 = getelementptr inbounds [2 x i8], ptr %buf.i807, i32 0, i32 1
  %537 = ptrtoint ptr %buf.i807 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 0, ptr %buf.i807, align 1
  %538 = ptrtoint ptr %536 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %536, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i808) #6
  %539 = getelementptr inbounds i8, ptr %msg.i808, i32 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 196607, ptr %539, align 4
  %541 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %config, align 4
  %543 = ptrtoint ptr %542 to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %542, align 4
  %conv2.i810 = zext i8 %544 to i16
  %545 = ptrtoint ptr %msg.i808 to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 %conv2.i810, ptr %msg.i808, align 4
  %flags.i811 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i808, i32 0, i32 1
  %546 = ptrtoint ptr %flags.i811 to i32
  call void @__asan_store2_noabort(i32 %546)
  store i16 0, ptr %flags.i811, align 2
  %buf3.i813 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i808, i32 0, i32 3
  %547 = ptrtoint ptr %buf3.i813 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %buf.i807, ptr %buf3.i813, align 4
  %548 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %548)
  %tobool.not.i814 = icmp eq i32 %548, 0
  br i1 %tobool.not.i814, label %if.end170.do.end6.i819_crit_edge, label %do.end.i816

if.end170.do.end6.i819_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i819

do.end.i816:                                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  %call.i815 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0) #9
  br label %do.end6.i819

do.end6.i819:                                     ; preds = %do.end.i816, %if.end170.do.end6.i819_crit_edge
  %549 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %1, align 4
  %call7.i817 = call i32 @i2c_transfer(ptr noundef %550, ptr noundef nonnull %msg.i808, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i817)
  %cmp.not.i818 = icmp eq i32 %call7.i817, 1
  br i1 %cmp.not.i818, label %do.end6.i819.ds3000_writereg.exit822_crit_edge, label %do.end12.i821

do.end6.i819.ds3000_writereg.exit822_crit_edge:   ; preds = %do.end6.i819
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit822

do.end12.i821:                                    ; preds = %do.end6.i819
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i817, i32 noundef 0, i32 noundef 0) #9
  br label %ds3000_writereg.exit822

ds3000_writereg.exit822:                          ; preds = %do.end12.i821, %do.end6.i819.ds3000_writereg.exit822_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i808) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i807) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i823) #6
  %551 = getelementptr inbounds [2 x i8], ptr %buf.i823, i32 0, i32 1
  %552 = ptrtoint ptr %buf.i823 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 -78, ptr %buf.i823, align 1
  %553 = ptrtoint ptr %551 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 0, ptr %551, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i824) #6
  %554 = getelementptr inbounds i8, ptr %msg.i824, i32 4
  %555 = ptrtoint ptr %554 to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 196607, ptr %554, align 4
  %556 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %config, align 4
  %558 = ptrtoint ptr %557 to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %557, align 4
  %conv2.i826 = zext i8 %559 to i16
  %560 = ptrtoint ptr %msg.i824 to i32
  call void @__asan_store2_noabort(i32 %560)
  store i16 %conv2.i826, ptr %msg.i824, align 4
  %flags.i827 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i824, i32 0, i32 1
  %561 = ptrtoint ptr %flags.i827 to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 0, ptr %flags.i827, align 2
  %buf3.i829 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i824, i32 0, i32 3
  %562 = ptrtoint ptr %buf3.i829 to i32
  call void @__asan_store4_noabort(i32 %562)
  store ptr %buf.i823, ptr %buf3.i829, align 4
  %563 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %563)
  %tobool.not.i830 = icmp eq i32 %563, 0
  br i1 %tobool.not.i830, label %ds3000_writereg.exit822.do.end6.i835_crit_edge, label %do.end.i832

ds3000_writereg.exit822.do.end6.i835_crit_edge:   ; preds = %ds3000_writereg.exit822
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i835

do.end.i832:                                      ; preds = %ds3000_writereg.exit822
  call void @__sanitizer_cov_trace_pc() #8
  %call.i831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 178, i32 noundef 0) #9
  br label %do.end6.i835

do.end6.i835:                                     ; preds = %do.end.i832, %ds3000_writereg.exit822.do.end6.i835_crit_edge
  %564 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %1, align 4
  %call7.i833 = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %msg.i824, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i833)
  %cmp.not.i834 = icmp eq i32 %call7.i833, 1
  br i1 %cmp.not.i834, label %do.end6.i835.ds3000_writereg.exit838_crit_edge, label %do.end12.i837

do.end6.i835.ds3000_writereg.exit838_crit_edge:   ; preds = %do.end6.i835
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit838

do.end12.i837:                                    ; preds = %do.end6.i835
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i836 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i833, i32 noundef 178, i32 noundef 0) #9
  br label %ds3000_writereg.exit838

ds3000_writereg.exit838:                          ; preds = %do.end12.i837, %do.end6.i835.ds3000_writereg.exit838_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i824) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i823) #6
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %566 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %get_frequency, align 4
  %tobool175.not = icmp eq ptr %567, null
  br i1 %tobool175.not, label %ds3000_writereg.exit838.for.body187.preheader_crit_edge, label %if.then176

ds3000_writereg.exit838.for.body187.preheader_crit_edge: ; preds = %ds3000_writereg.exit838
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body187.preheader

if.then176:                                       ; preds = %ds3000_writereg.exit838
  %call180 = call i32 %567(ptr noundef %fe, ptr noundef nonnull %frequency) #6
  %568 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %frequency, align 4
  %570 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %dtv_property_cache, align 4
  %sub = sub i32 %569, %571
  %572 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %demodulator_priv, align 4
  %mul1.i = shl i32 %sub, 17
  %add.i = or i32 %mul1.i, 96000
  %div.i = sdiv i32 %add.i, 192000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -191999, i32 %add.i)
  %cmp.i = icmp slt i32 %add.i, -191999
  %add2.i = add nsw i32 %div.i, 65536
  %spec.select.i = select i1 %cmp.i, i32 %add2.i, i32 %div.i
  %shr.i = ashr i32 %spec.select.i, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %574 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %575 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 95, ptr %buf.i.i, align 1
  %conv1.i.i = trunc i32 %shr.i to i8
  %576 = ptrtoint ptr %574 to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 %conv1.i.i, ptr %574, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %577 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 196607, ptr %577, align 4
  %config.i.i = getelementptr inbounds %struct.ds3000_state, ptr %573, i32 0, i32 1
  %579 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %config.i.i, align 4
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %580, align 4
  %conv2.i.i = zext i8 %582 to i16
  %583 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %584 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %584)
  store i16 0, ptr %flags.i.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %585 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %586 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %586)
  %tobool.not.i.i = icmp eq i32 %586, 0
  br i1 %tobool.not.i.i, label %if.then176.do.end6.i.i_crit_edge, label %do.end.i.i

if.then176.do.end6.i.i_crit_edge:                 ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 95, i32 noundef %shr.i) #9
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %if.then176.do.end6.i.i_crit_edge
  %587 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %573, align 4
  %call7.i.i = call i32 @i2c_transfer(ptr noundef %588, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i)
  %cmp.not.i.i = icmp eq i32 %call7.i.i, 1
  br i1 %cmp.not.i.i, label %do.end6.i.i.ds3000_writereg.exit.i_crit_edge, label %do.end12.i.i

do.end6.i.i.ds3000_writereg.exit.i_crit_edge:     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit.i

do.end12.i.i:                                     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i.i, i32 noundef 95, i32 noundef %shr.i) #9
  br label %ds3000_writereg.exit.i

ds3000_writereg.exit.i:                           ; preds = %do.end12.i.i, %do.end6.i.i.ds3000_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %and.i = and i32 %spec.select.i, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %589 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %590 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 94, ptr %buf.i1.i, align 1
  %conv1.i3.i = trunc i32 %spec.select.i to i8
  %591 = ptrtoint ptr %589 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %conv1.i3.i, ptr %589, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %592 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 196607, ptr %592, align 4
  %594 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %config.i.i, align 4
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %595, align 4
  %conv2.i5.i = zext i8 %597 to i16
  %598 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %conv2.i5.i, ptr %msg.i2.i, align 4
  %flags.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %599 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 0, ptr %flags.i6.i, align 2
  %buf3.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %600 = ptrtoint ptr %buf3.i8.i to i32
  call void @__asan_store4_noabort(i32 %600)
  store ptr %buf.i1.i, ptr %buf3.i8.i, align 4
  %601 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %601)
  %tobool.not.i9.i = icmp eq i32 %601, 0
  br i1 %tobool.not.i9.i, label %ds3000_writereg.exit.i.do.end6.i14.i_crit_edge, label %do.end.i11.i

ds3000_writereg.exit.i.do.end6.i14.i_crit_edge:   ; preds = %ds3000_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i14.i

do.end.i11.i:                                     ; preds = %ds3000_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 94, i32 noundef %and.i) #9
  br label %do.end6.i14.i

do.end6.i14.i:                                    ; preds = %do.end.i11.i, %ds3000_writereg.exit.i.do.end6.i14.i_crit_edge
  %602 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %573, align 4
  %call7.i12.i = call i32 @i2c_transfer(ptr noundef %603, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i12.i)
  %cmp.not.i13.i = icmp eq i32 %call7.i12.i, 1
  br i1 %cmp.not.i13.i, label %do.end6.i14.i.ds3000_set_carrier_offset.exit_crit_edge, label %do.end12.i16.i

do.end6.i14.i.ds3000_set_carrier_offset.exit_crit_edge: ; preds = %do.end6.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_set_carrier_offset.exit

do.end12.i16.i:                                   ; preds = %do.end6.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i12.i, i32 noundef 94, i32 noundef %and.i) #9
  br label %ds3000_set_carrier_offset.exit

ds3000_set_carrier_offset.exit:                   ; preds = %do.end12.i16.i, %do.end6.i14.i.ds3000_set_carrier_offset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %for.body187.preheader

for.body187.preheader:                            ; preds = %ds3000_set_carrier_offset.exit, %ds3000_writereg.exit838.for.body187.preheader_crit_edge
  br label %for.body187

for.body187:                                      ; preds = %if.end192.for.body187_crit_edge, %for.body187.preheader
  %i.2854 = phi i32 [ %inc194, %if.end192.for.body187_crit_edge ], [ 0, %for.body187.preheader ]
  %604 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %demodulator_priv, align 4
  %606 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %delivery_system, align 4
  %608 = zext i32 %607 to i64
  call void @__sanitizer_cov_trace_switch(i64 %608, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %607, label %for.body187.if.end192_crit_edge [
    i32 5, label %sw.bb.i
    i32 6, label %sw.bb1.i
  ]

for.body187.if.end192_crit_edge:                  ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

sw.bb.i:                                          ; preds = %for.body187
  %call.i840 = call fastcc i32 @ds3000_readreg(ptr noundef %605, i8 noundef zeroext -47) #6
  %and.i841 = and i32 %call.i840, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i841)
  %cmp.i842 = icmp eq i32 %and.i841, 7
  br i1 %cmp.i842, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %for.body187
  %call2.i = call fastcc i32 @ds3000_readreg(ptr noundef %605, i8 noundef zeroext 13) #6
  %and3.i = and i32 %call2.i, 143
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 143
  br i1 %cmp4.i, label %sw.bb1.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb1.i.sw.epilog.i_crit_edge

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb1.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %lock.0.ph.i = phi i32 [ %call.i840, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ %call2.i, %sw.bb1.i.sw.epilog.sink.split.i_crit_edge ]
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %cmp10.i = phi i32 [ 1, %sw.epilog.sink.split.i ], [ 0, %sw.bb1.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ]
  %tobool190.not = phi i1 [ false, %sw.epilog.sink.split.i ], [ true, %sw.bb1.i.sw.epilog.i_crit_edge ], [ true, %sw.bb.i.sw.epilog.i_crit_edge ]
  %lock.0.i = phi i32 [ %lock.0.ph.i, %sw.epilog.sink.split.i ], [ %call2.i, %sw.bb1.i.sw.epilog.i_crit_edge ], [ %call.i840, %sw.bb.i.sw.epilog.i_crit_edge ]
  %config.i843 = getelementptr inbounds %struct.ds3000_state, ptr %605, i32 0, i32 1
  %609 = ptrtoint ptr %config.i843 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %config.i843, align 4
  %set_lock_led.i = getelementptr inbounds %struct.ds3000_config, ptr %610, i32 0, i32 3
  %611 = ptrtoint ptr %set_lock_led.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %set_lock_led.i, align 4
  %tobool.not.i844 = icmp eq ptr %612, null
  br i1 %tobool.not.i844, label %sw.epilog.i.do.body.i_crit_edge, label %if.then7.i

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then7.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %612(ptr noundef %fe, i32 noundef %cmp10.i) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.then7.i, %sw.epilog.i.do.body.i_crit_edge
  %613 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %613)
  %tobool12.not.i = icmp eq i32 %613, 0
  br i1 %tobool12.not.i, label %do.body.i.ds3000_read_status.exit_crit_edge, label %do.end.i845

do.body.i.ds3000_read_status.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_read_status.exit

do.end.i845:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %lock.0.i) #9
  br label %ds3000_read_status.exit

ds3000_read_status.exit:                          ; preds = %do.end.i845, %do.body.i.ds3000_read_status.exit_crit_edge
  br i1 %tobool190.not, label %ds3000_read_status.exit.if.end192_crit_edge, label %ds3000_read_status.exit.cleanup_crit_edge

ds3000_read_status.exit.cleanup_crit_edge:        ; preds = %ds3000_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ds3000_read_status.exit.if.end192_crit_edge:      ; preds = %ds3000_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.end192:                                        ; preds = %ds3000_read_status.exit.if.end192_crit_edge, %for.body187.if.end192_crit_edge
  call void @msleep(i32 noundef 10) #6
  %inc194 = add nuw nsw i32 %i.2854, 1
  %exitcond.not = icmp eq i32 %inc194, 30
  br i1 %exitcond.not, label %if.end192.cleanup_crit_edge, label %if.end192.for.body187_crit_edge

if.end192.for.body187_crit_edge:                  ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body187

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end192.cleanup_crit_edge, %ds3000_read_status.exit.cleanup_crit_edge, %do.end67, %do.body62.cleanup_crit_edge, %ds3000_writereg.exit336.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ds3000_writereg.exit336.cleanup_crit_edge ], [ -22, %do.end67 ], [ -22, %do.body62.cleanup_crit_edge ], [ 0, %ds3000_read_status.exit.cleanup_crit_edge ], [ 0, %if.end192.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frequency) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_read_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -47)
  %and = and i32 %call, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp eq i32 %and, 7
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext 13)
  %and3 = and i32 %call2, 143
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 143
  br i1 %cmp4, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %lock.0.ph = phi i32 [ %call, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %call2, %sw.bb1.sw.epilog.sink.split_crit_edge ]
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %lock.0 = phi i32 [ %call2, %sw.bb1.sw.epilog_crit_edge ], [ %call, %sw.bb.sw.epilog_crit_edge ], [ %lock.0.ph, %sw.epilog.sink.split ]
  %config = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %set_lock_led = getelementptr inbounds %struct.ds3000_config, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %set_lock_led to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_lock_led, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.epilog.do.body_crit_edge, label %if.then7

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp ne i32 %12, 0
  %cond = zext i1 %cmp10 to i32
  tail call void %10(ptr noundef %fe, i32 noundef %cond) #6
  br label %do.body

do.body:                                          ; preds = %if.then7, %sw.epilog.do.body_crit_edge
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %lock.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i146 = alloca [2 x i8], align 1
  %msg.i147 = alloca %struct.i2c_msg, align 4
  %buf.i130 = alloca [2 x i8], align 1
  %msg.i131 = alloca %struct.i2c_msg, align 4
  %buf.i114 = alloca [2 x i8], align 1
  %msg.i115 = alloca %struct.i2c_msg, align 4
  %buf.i98 = alloca [2 x i8], align 1
  %msg.i99 = alloca %struct.i2c_msg, align 4
  %buf.i81 = alloca [2 x i8], align 1
  %msg.i82 = alloca %struct.i2c_msg, align 4
  %buf.i65 = alloca [2 x i8], align 1
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.63) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %4, label %do.end3.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb19
  ]

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -7, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %sw.bb.do.end6.i_crit_edge, label %do.end.i

sw.bb.do.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 249, i32 noundef 4) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.bb.do.end6.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 249, i32 noundef 4) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call5 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -8)
  %and = and i32 %call5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %ds3000_writereg.exit
  %call9 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -9)
  %shl = shl i32 %call9, 8
  %call10 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -10)
  %or = or i32 %shl, %call10
  %21 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %ber, align 4
  %conv13 = and i32 %call5, 239
  %conv14 = or i32 %conv13, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65) #6
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i65, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -8, ptr %buf.i65, align 1
  %conv1.i = trunc i32 %conv14 to i8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #6
  %25 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv2.i68 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv2.i68, ptr %msg.i66, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i69, align 2
  %buf3.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %33 = ptrtoint ptr %buf3.i71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i65, ptr %buf3.i71, align 4
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i72 = icmp eq i32 %34, 0
  br i1 %tobool.not.i72, label %if.then8.do.end6.i77_crit_edge, label %do.end.i74

if.then8.do.end6.i77_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i77

do.end.i74:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call.i73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 248, i32 noundef %conv14) #9
  br label %do.end6.i77

do.end6.i77:                                      ; preds = %do.end.i74, %if.then8.do.end6.i77_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call7.i75 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i66, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i75)
  %cmp.not.i76 = icmp eq i32 %call7.i75, 1
  br i1 %cmp.not.i76, label %do.end6.i77.ds3000_writereg.exit80_crit_edge, label %do.end12.i79

do.end6.i77.ds3000_writereg.exit80_crit_edge:     ; preds = %do.end6.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit80

do.end12.i79:                                     ; preds = %do.end6.i77
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i75, i32 noundef 248, i32 noundef %conv14) #9
  br label %ds3000_writereg.exit80

ds3000_writereg.exit80:                           ; preds = %do.end12.i79, %do.end6.i77.ds3000_writereg.exit80_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i81) #6
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i81, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -8, ptr %buf.i81, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv1.i, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82) #6
  %40 = getelementptr inbounds i8, ptr %msg.i82, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv2.i85 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv2.i85, ptr %msg.i82, align 4
  %flags.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i86, align 2
  %buf3.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 3
  %48 = ptrtoint ptr %buf3.i88 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i81, ptr %buf3.i88, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i89 = icmp eq i32 %49, 0
  br i1 %tobool.not.i89, label %ds3000_writereg.exit80.do.end6.i94_crit_edge, label %do.end.i91

ds3000_writereg.exit80.do.end6.i94_crit_edge:     ; preds = %ds3000_writereg.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i94

do.end.i91:                                       ; preds = %ds3000_writereg.exit80
  call void @__sanitizer_cov_trace_pc() #8
  %call.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 248, i32 noundef %conv14) #9
  br label %do.end6.i94

do.end6.i94:                                      ; preds = %do.end.i91, %ds3000_writereg.exit80.do.end6.i94_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call7.i92 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i82, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i92)
  %cmp.not.i93 = icmp eq i32 %call7.i92, 1
  br i1 %cmp.not.i93, label %do.end6.i94.ds3000_writereg.exit97_crit_edge, label %do.end12.i96

do.end6.i94.ds3000_writereg.exit97_crit_edge:     ; preds = %do.end6.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit97

do.end12.i96:                                     ; preds = %do.end6.i94
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i92, i32 noundef 248, i32 noundef %conv14) #9
  br label %ds3000_writereg.exit97

ds3000_writereg.exit97:                           ; preds = %do.end12.i96, %do.end6.i94.ds3000_writereg.exit97_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i81) #6
  br label %cleanup

if.else:                                          ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %ber, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %do.end3
  %call20 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -41)
  %shl21 = shl i32 %call20, 16
  %call22 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -42)
  %shl23 = shl i32 %call22, 8
  %or24 = or i32 %shl23, %shl21
  %call25 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -43)
  %or26 = or i32 %or24, %call25
  %call27 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -8)
  %call29 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %or26)
  %cmp31 = icmp ugt i32 %or26, 750
  br i1 %cmp31, label %if.then33, label %if.else38

if.then33:                                        ; preds = %sw.bb19
  %shl28 = shl i32 %call27, 8
  %or30 = or i32 %shl28, %call29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98) #6
  %53 = getelementptr inbounds [2 x i8], ptr %buf.i98, i32 0, i32 1
  %54 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -47, ptr %buf.i98, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99) #6
  %56 = getelementptr inbounds i8, ptr %msg.i99, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 196607, ptr %56, align 4
  %config.i100 = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %config.i100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config.i100, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 4
  %conv2.i101 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i99 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv2.i101, ptr %msg.i99, align 4
  %flags.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i102, align 2
  %buf3.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99, i32 0, i32 3
  %64 = ptrtoint ptr %buf3.i104 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i98, ptr %buf3.i104, align 4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i105 = icmp eq i32 %65, 0
  br i1 %tobool.not.i105, label %if.then33.do.end6.i110_crit_edge, label %do.end.i107

if.then33.do.end6.i110_crit_edge:                 ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i110

do.end.i107:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %call.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 209, i32 noundef 1) #9
  br label %do.end6.i110

do.end6.i110:                                     ; preds = %do.end.i107, %if.then33.do.end6.i110_crit_edge
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call7.i108 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i99, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i108)
  %cmp.not.i109 = icmp eq i32 %call7.i108, 1
  br i1 %cmp.not.i109, label %do.end6.i110.ds3000_writereg.exit113_crit_edge, label %do.end12.i112

do.end6.i110.ds3000_writereg.exit113_crit_edge:   ; preds = %do.end6.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit113

do.end12.i112:                                    ; preds = %do.end6.i110
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i108, i32 noundef 209, i32 noundef 1) #9
  br label %ds3000_writereg.exit113

ds3000_writereg.exit113:                          ; preds = %do.end12.i112, %do.end6.i110.ds3000_writereg.exit113_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i98) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i114) #6
  %68 = getelementptr inbounds [2 x i8], ptr %buf.i114, i32 0, i32 1
  %69 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -7, ptr %buf.i114, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i115) #6
  %71 = getelementptr inbounds i8, ptr %msg.i115, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 196607, ptr %71, align 4
  %73 = ptrtoint ptr %config.i100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config.i100, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %conv2.i117 = zext i8 %76 to i16
  %77 = ptrtoint ptr %msg.i115 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv2.i117, ptr %msg.i115, align 4
  %flags.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i118 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i118, align 2
  %buf3.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115, i32 0, i32 3
  %79 = ptrtoint ptr %buf3.i120 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf.i114, ptr %buf3.i120, align 4
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i121 = icmp eq i32 %80, 0
  br i1 %tobool.not.i121, label %ds3000_writereg.exit113.do.end6.i126_crit_edge, label %do.end.i123

ds3000_writereg.exit113.do.end6.i126_crit_edge:   ; preds = %ds3000_writereg.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i126

do.end.i123:                                      ; preds = %ds3000_writereg.exit113
  call void @__sanitizer_cov_trace_pc() #8
  %call.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 249, i32 noundef 1) #9
  br label %do.end6.i126

do.end6.i126:                                     ; preds = %do.end.i123, %ds3000_writereg.exit113.do.end6.i126_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call7.i124 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i115, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i124)
  %cmp.not.i125 = icmp eq i32 %call7.i124, 1
  br i1 %cmp.not.i125, label %do.end6.i126.ds3000_writereg.exit129_crit_edge, label %do.end12.i128

do.end6.i126.ds3000_writereg.exit129_crit_edge:   ; preds = %do.end6.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit129

do.end12.i128:                                    ; preds = %do.end6.i126
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i124, i32 noundef 249, i32 noundef 1) #9
  br label %ds3000_writereg.exit129

ds3000_writereg.exit129:                          ; preds = %do.end12.i128, %do.end6.i126.ds3000_writereg.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i115) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i114) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i130) #6
  %83 = getelementptr inbounds [2 x i8], ptr %buf.i130, i32 0, i32 1
  %84 = ptrtoint ptr %buf.i130 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -7, ptr %buf.i130, align 1
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i131) #6
  %86 = getelementptr inbounds i8, ptr %msg.i131, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 196607, ptr %86, align 4
  %88 = ptrtoint ptr %config.i100 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %config.i100, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 4
  %conv2.i133 = zext i8 %91 to i16
  %92 = ptrtoint ptr %msg.i131 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv2.i133, ptr %msg.i131, align 4
  %flags.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i134 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i134, align 2
  %buf3.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i131, i32 0, i32 3
  %94 = ptrtoint ptr %buf3.i136 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i130, ptr %buf3.i136, align 4
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i137 = icmp eq i32 %95, 0
  br i1 %tobool.not.i137, label %ds3000_writereg.exit129.do.end6.i142_crit_edge, label %do.end.i139

ds3000_writereg.exit129.do.end6.i142_crit_edge:   ; preds = %ds3000_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i142

do.end.i139:                                      ; preds = %ds3000_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #8
  %call.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 249, i32 noundef 0) #9
  br label %do.end6.i142

do.end6.i142:                                     ; preds = %do.end.i139, %ds3000_writereg.exit129.do.end6.i142_crit_edge
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %call7.i140 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msg.i131, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i140)
  %cmp.not.i141 = icmp eq i32 %call7.i140, 1
  br i1 %cmp.not.i141, label %do.end6.i142.ds3000_writereg.exit145_crit_edge, label %do.end12.i144

do.end6.i142.ds3000_writereg.exit145_crit_edge:   ; preds = %do.end6.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit145

do.end12.i144:                                    ; preds = %do.end6.i142
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i140, i32 noundef 249, i32 noundef 0) #9
  br label %ds3000_writereg.exit145

ds3000_writereg.exit145:                          ; preds = %do.end12.i144, %do.end6.i142.ds3000_writereg.exit145_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i131) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i130) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #6
  %98 = getelementptr inbounds [2 x i8], ptr %buf.i146, i32 0, i32 1
  %99 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -47, ptr %buf.i146, align 1
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %98, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147) #6
  %101 = getelementptr inbounds i8, ptr %msg.i147, i32 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 196607, ptr %101, align 4
  %103 = ptrtoint ptr %config.i100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %config.i100, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 4
  %conv2.i149 = zext i8 %106 to i16
  %107 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv2.i149, ptr %msg.i147, align 4
  %flags.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i150 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i150, align 2
  %buf3.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 3
  %109 = ptrtoint ptr %buf3.i152 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %buf.i146, ptr %buf3.i152, align 4
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i153 = icmp eq i32 %110, 0
  br i1 %tobool.not.i153, label %ds3000_writereg.exit145.do.end6.i158_crit_edge, label %do.end.i155

ds3000_writereg.exit145.do.end6.i158_crit_edge:   ; preds = %ds3000_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i158

do.end.i155:                                      ; preds = %ds3000_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #8
  %call.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 209, i32 noundef 0) #9
  br label %do.end6.i158

do.end6.i158:                                     ; preds = %do.end.i155, %ds3000_writereg.exit145.do.end6.i158_crit_edge
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %call7.i156 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i147, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i156)
  %cmp.not.i157 = icmp eq i32 %call7.i156, 1
  br i1 %cmp.not.i157, label %do.end6.i158.ds3000_writereg.exit161_crit_edge, label %do.end12.i160

do.end6.i158.ds3000_writereg.exit161_crit_edge:   ; preds = %do.end6.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit161

do.end12.i160:                                    ; preds = %do.end6.i158
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i156, i32 noundef 209, i32 noundef 0) #9
  br label %ds3000_writereg.exit161

ds3000_writereg.exit161:                          ; preds = %do.end12.i160, %do.end6.i158.ds3000_writereg.exit161_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #6
  %113 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or30, ptr %ber, align 4
  br label %cleanup

if.else38:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %ds3000_writereg.exit161, %if.else, %ds3000_writereg.exit97, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ 0, %ds3000_writereg.exit161 ], [ 0, %if.else38 ], [ 0, %ds3000_writereg.exit97 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_read_signal_strength(ptr noundef %fe, ptr noundef %signal_strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 13
  %0 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_rf_strength, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %signal_strength) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.64) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %4, label %do.end4.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb38
  ]

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  %call5 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -1)
  %6 = trunc i32 %call5 to i8
  %7 = lshr i8 %6, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp = icmp ult i8 %6, 8
  br i1 %cmp, label %sw.bb.do.body25_crit_edge, label %if.else

sw.bb.do.body25_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 20)
  %conv16 = zext i8 %8 to i32
  %sub = add nsw i32 %conv16, -1
  %arrayidx = getelementptr [20 x i16], ptr @ds3000_read_snr.dvbs_snr_tab, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv17 = zext i16 %10 to i32
  %mul = mul nuw nsw i32 %conv17, 10
  %div18 = udiv i32 %mul, 23026
  %11 = trunc i32 %div18 to i16
  %conv23 = mul i16 %11, 5240
  br label %do.body25

do.body25:                                        ; preds = %if.else, %sw.bb.do.body25_crit_edge
  %storemerge137 = phi i16 [ %conv23, %if.else ], [ 0, %sw.bb.do.body25_crit_edge ]
  %snr_reading.0 = phi i8 [ %8, %if.else ], [ %7, %sw.bb.do.body25_crit_edge ]
  %12 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %storemerge137, ptr %snr, align 2
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not = icmp eq i32 %13, 0
  br i1 %tobool26.not, label %do.body25.cleanup_crit_edge, label %do.end30

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %conv32 = zext i8 %snr_reading.0 to i32
  %conv33 = zext i16 %storemerge137 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %conv32, i32 noundef %conv33) #9
  br label %cleanup

sw.bb38:                                          ; preds = %do.end4
  %call39 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -116)
  %and = and i32 %call39, 63
  %call40 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -115)
  %shl = shl i32 %call40, 4
  %add = add i32 %shl, %and
  %call41 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -114)
  %mul42 = mul i32 %call41, %call41
  %shr = lshr i32 %mul42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul42)
  %cmp43 = icmp ult i32 %mul42, 2
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %snr, align 2
  br label %cleanup

if.end46:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp47 = icmp eq i32 %add, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %snr, align 2
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %add)
  %cmp51 = icmp ugt i32 %shr, %add
  br i1 %cmp51, label %if.then53, label %if.else71

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %div54 = udiv i32 %shr, %add
  %conv55 = trunc i32 %div54 to i8
  %conv56 = and i32 %div54, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv56)
  %cmp57 = icmp ugt i32 %conv56, 80
  %spec.store.select106 = select i1 %cmp57, i8 80, i8 %conv55
  %conv61 = zext i8 %spec.store.select106 to i32
  %sub62 = add nsw i32 %conv61, -1
  %arrayidx63 = getelementptr [80 x i16], ptr @ds3000_read_snr.dvbs2_snr_tab, i32 0, i32 %sub62
  %16 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx63, align 2
  %18 = udiv i16 %17, 1000
  %mul69 = mul i16 %18, 3275
  br label %do.body87

if.else71:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %div72 = udiv i32 %add, %shr
  %conv73 = trunc i32 %div72 to i8
  %conv74 = and i32 %div72, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv74)
  %cmp75 = icmp ugt i32 %conv74, 80
  %spec.store.select107 = select i1 %cmp75, i8 80, i8 %conv73
  %conv79 = zext i8 %spec.store.select107 to i32
  %sub80 = add nsw i32 %conv79, -1
  %arrayidx81 = getelementptr [80 x i16], ptr @ds3000_read_snr.dvbs2_snr_tab, i32 0, i32 %sub80
  %19 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx81, align 2
  %21 = udiv i16 %20, 1000
  %sub84 = sub nsw i16 0, %21
  br label %do.body87

do.body87:                                        ; preds = %if.else71, %if.then53
  %storemerge = phi i16 [ %sub84, %if.else71 ], [ %mul69, %if.then53 ]
  %snr_reading.1 = phi i8 [ %spec.store.select107, %if.else71 ], [ %spec.store.select106, %if.then53 ]
  %22 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %storemerge, ptr %snr, align 2
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool88.not = icmp eq i32 %23, 0
  br i1 %tobool88.not, label %do.body87.cleanup_crit_edge, label %do.end92

do.body87.cleanup_crit_edge:                      ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end92:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %conv94 = zext i8 %snr_reading.1 to i32
  %conv95 = zext i16 %storemerge to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %conv94, i32 noundef %conv95) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %do.body87.cleanup_crit_edge, %if.then49, %if.then45, %do.end30, %do.body25.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then45 ], [ 0, %if.then49 ], [ -22, %do.end4.cleanup_crit_edge ], [ 0, %do.body87.cleanup_crit_edge ], [ 0, %do.end92 ], [ 0, %do.body25.cleanup_crit_edge ], [ 0, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i57 = alloca [2 x i8], align 1
  %msg.i58 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.70) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %4, label %do.end3.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb16
  ]

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  %call4 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -11)
  %shl = shl i32 %call4, 8
  %call5 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -12)
  %or = or i32 %shl, %call5
  %6 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %ucblocks, align 4
  %call6 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -8)
  %conv8 = and i32 %call6, 223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -8, ptr %buf.i, align 1
  %conv1.i = trunc i32 %conv8 to i8
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv2.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf3.i, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %sw.bb.do.end6.i_crit_edge, label %do.end.i

sw.bb.do.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 248, i32 noundef %conv8) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.bb.do.end6.i_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 248, i32 noundef %conv8) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %conv14 = or i32 %conv8, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i57) #6
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i57, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -8, ptr %buf.i57, align 1
  %conv1.i59 = trunc i32 %conv14 to i8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i59, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i58) #6
  %25 = getelementptr inbounds i8, ptr %msg.i58, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv2.i61 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv2.i61, ptr %msg.i58, align 4
  %flags.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i62, align 2
  %buf3.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 3
  %33 = ptrtoint ptr %buf3.i64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i57, ptr %buf3.i64, align 4
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i65 = icmp eq i32 %34, 0
  br i1 %tobool.not.i65, label %ds3000_writereg.exit.do.end6.i70_crit_edge, label %do.end.i67

ds3000_writereg.exit.do.end6.i70_crit_edge:       ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i70

do.end.i67:                                       ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 248, i32 noundef %conv14) #9
  br label %do.end6.i70

do.end6.i70:                                      ; preds = %do.end.i67, %ds3000_writereg.exit.do.end6.i70_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call7.i68 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i58, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i68)
  %cmp.not.i69 = icmp eq i32 %call7.i68, 1
  br i1 %cmp.not.i69, label %do.end6.i70.ds3000_writereg.exit73_crit_edge, label %do.end12.i72

do.end6.i70.ds3000_writereg.exit73_crit_edge:     ; preds = %do.end6.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit73

do.end12.i72:                                     ; preds = %do.end6.i70
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i68, i32 noundef 248, i32 noundef %conv14) #9
  br label %ds3000_writereg.exit73

ds3000_writereg.exit73:                           ; preds = %do.end12.i72, %do.end6.i70.ds3000_writereg.exit73_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i58) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i57) #6
  br label %cleanup

sw.bb16:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -30)
  %shl18 = shl i32 %call17, 8
  %call19 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -31)
  %or20 = or i32 %shl18, %call19
  %conv21 = trunc i32 %or20 to i16
  %conv22 = and i32 %or20, 65535
  %prevUCBS2 = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %prevUCBS2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %prevUCBS2, align 4
  %conv23 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv23)
  %cmp = icmp ugt i32 %conv22, %conv23
  %sub32 = sub nsw i32 %conv23, %conv22
  %sub = sub nsw i32 %conv22, %conv23
  %storemerge = select i1 %cmp, i32 %sub, i32 %sub32
  %39 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %ucblocks, align 4
  %40 = ptrtoint ptr %prevUCBS2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv21, ptr %prevUCBS2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %ds3000_writereg.exit73, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ 0, %sw.bb16 ], [ 0, %ds3000_writereg.exit73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %buf.i220 = alloca [2 x i8], align 1
  %msg.i221 = alloca %struct.i2c_msg, align 4
  %buf.i203 = alloca [2 x i8], align 1
  %msg.i204 = alloca %struct.i2c_msg, align 4
  %buf.i186 = alloca [2 x i8], align 1
  %msg.i187 = alloca %struct.i2c_msg, align 4
  %buf.i170 = alloca [2 x i8], align 1
  %msg.i171 = alloca %struct.i2c_msg, align 4
  %buf.i154 = alloca [2 x i8], align 1
  %msg.i155 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %d, i32 0, i32 1
  %3 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp240.not = icmp eq i8 %4, 0
  br i1 %cmp240.not, label %do.end3.for.end_crit_edge, label %do.end3.do.body5_crit_edge

do.end3.do.body5_crit_edge:                       ; preds = %do.end3
  br label %do.body5

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body5:                                         ; preds = %if.end33.do.body5_crit_edge, %do.end3.do.body5_crit_edge
  %i.0241 = phi i32 [ %inc, %if.end33.do.body5_crit_edge ], [ 0, %do.end3.do.body5_crit_edge ]
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.body5.do.end16_crit_edge, label %do.end10

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [6 x i8], ptr %d, i32 0, i32 %i.0241
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %7 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv12) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end10, %do.body5.do.end16_crit_edge
  %inc = add nuw nsw i32 %i.0241, 1
  %8 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msg_len, align 1
  %conv18 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv18)
  %cmp19 = icmp ult i32 %inc, %conv18
  br i1 %cmp19, label %do.body22, label %do.end16.if.end33_crit_edge

do.end16.if.end33_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.body22:                                        ; preds = %do.end16
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %do.body22.if.end33_crit_edge, label %do.end27

do.body22.if.end33_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #9
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %do.body22.if.end33_crit_edge, %do.end16.if.end33_crit_edge
  %11 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end33.do.body5_crit_edge, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end33.do.body5_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %do.end3.for.end_crit_edge
  %call34 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %conv37 = and i32 %call34, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -94, ptr %buf.i, align 1
  %conv1.i = trunc i32 %conv37 to i8
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %conv2.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %16, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf.i, ptr %buf3.i, align 4
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %for.end.do.end6.i_crit_edge, label %do.end.i

for.end.do.end6.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv37) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %for.end.do.end6.i_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 162, i32 noundef %conv37) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %28 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp43244.not = icmp eq i8 %29, 0
  br i1 %cmp43244.not, label %ds3000_writereg.exit.for.end51_crit_edge, label %for.body45.lr.ph

ds3000_writereg.exit.for.end51_crit_edge:         ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end51

for.body45.lr.ph:                                 ; preds = %ds3000_writereg.exit
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i154, i32 0, i32 1
  %31 = getelementptr inbounds i8, ptr %msg.i155, i32 4
  %flags.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 1
  %buf3.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 3
  br label %for.body45

for.body45:                                       ; preds = %ds3000_writereg.exit169.for.body45_crit_edge, %for.body45.lr.ph
  %i.1245 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc50, %ds3000_writereg.exit169.for.body45_crit_edge ]
  %add = add nuw nsw i32 %i.1245, 163
  %arrayidx47 = getelementptr [6 x i8], ptr %d, i32 0, i32 %i.1245
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %33 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i154) #6
  %conv.i = trunc i32 %add to i8
  %34 = ptrtoint ptr %buf.i154 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %buf.i154, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i155) #6
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %31, align 4
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv2.i157 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i155 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv2.i157, ptr %msg.i155, align 4
  %42 = ptrtoint ptr %flags.i158 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i158, align 2
  store i16 2, ptr %31, align 4
  %43 = ptrtoint ptr %buf3.i160 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i154, ptr %buf3.i160, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i161 = icmp eq i32 %44, 0
  br i1 %tobool.not.i161, label %for.body45.do.end6.i166_crit_edge, label %do.end.i163

for.body45.do.end6.i166_crit_edge:                ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i166

do.end.i163:                                      ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  %call.i162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %add, i32 noundef %conv48) #9
  br label %do.end6.i166

do.end6.i166:                                     ; preds = %do.end.i163, %for.body45.do.end6.i166_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call7.i164 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i155, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i164)
  %cmp.not.i165 = icmp eq i32 %call7.i164, 1
  br i1 %cmp.not.i165, label %do.end6.i166.ds3000_writereg.exit169_crit_edge, label %do.end12.i168

do.end6.i166.ds3000_writereg.exit169_crit_edge:   ; preds = %do.end6.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit169

do.end12.i168:                                    ; preds = %do.end6.i166
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i164, i32 noundef %add, i32 noundef %conv48) #9
  br label %ds3000_writereg.exit169

ds3000_writereg.exit169:                          ; preds = %do.end12.i168, %do.end6.i166.ds3000_writereg.exit169_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i155) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i154) #6
  %inc50 = add nuw nsw i32 %i.1245, 1
  %47 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %msg_len, align 1
  %conv42 = zext i8 %48 to i32
  %cmp43 = icmp ult i32 %inc50, %conv42
  br i1 %cmp43, label %ds3000_writereg.exit169.for.body45_crit_edge, label %ds3000_writereg.exit169.for.end51_crit_edge

ds3000_writereg.exit169.for.end51_crit_edge:      ; preds = %ds3000_writereg.exit169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end51

ds3000_writereg.exit169.for.body45_crit_edge:     ; preds = %ds3000_writereg.exit169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.end51:                                        ; preds = %ds3000_writereg.exit169.for.end51_crit_edge, %ds3000_writereg.exit.for.end51_crit_edge
  %call52 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %49 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %msg_len, align 1
  %sub = shl i8 %50, 3
  %or = add i8 %sub, -1
  %conv62 = zext i8 %or to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i170) #6
  %51 = getelementptr inbounds [2 x i8], ptr %buf.i170, i32 0, i32 1
  %52 = ptrtoint ptr %buf.i170 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -95, ptr %buf.i170, align 1
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i171) #6
  %54 = getelementptr inbounds i8, ptr %msg.i171, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %54, align 4
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv2.i173 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i171 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv2.i173, ptr %msg.i171, align 4
  %flags.i174 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i171, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i174 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i174, align 2
  store i16 2, ptr %54, align 4
  %buf3.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i171, i32 0, i32 3
  %62 = ptrtoint ptr %buf3.i176 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf.i170, ptr %buf3.i176, align 4
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i177 = icmp eq i32 %63, 0
  br i1 %tobool.not.i177, label %for.end51.do.end6.i182_crit_edge, label %do.end.i179

for.end51.do.end6.i182_crit_edge:                 ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i182

do.end.i179:                                      ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call.i178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 161, i32 noundef %conv62) #9
  br label %do.end6.i182

do.end6.i182:                                     ; preds = %do.end.i179, %for.end51.do.end6.i182_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call7.i180 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i171, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i180)
  %cmp.not.i181 = icmp eq i32 %call7.i180, 1
  br i1 %cmp.not.i181, label %do.end6.i182.ds3000_writereg.exit185_crit_edge, label %do.end12.i184

do.end6.i182.ds3000_writereg.exit185_crit_edge:   ; preds = %do.end6.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit185

do.end12.i184:                                    ; preds = %do.end6.i182
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i180, i32 noundef 161, i32 noundef %conv62) #9
  br label %ds3000_writereg.exit185

ds3000_writereg.exit185:                          ; preds = %do.end12.i184, %do.end6.i182.ds3000_writereg.exit185_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i171) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i170) #6
  %call68 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71 = and i32 %call68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %cmp72 = icmp eq i32 %and71, 0
  br i1 %cmp72, label %ds3000_writereg.exit185.if.end102_crit_edge, label %if.end75

ds3000_writereg.exit185.if.end102_crit_edge:      ; preds = %ds3000_writereg.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75:                                         ; preds = %ds3000_writereg.exit185
  call void @msleep(i32 noundef 10) #6
  %call68.1 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.1 = and i32 %call68.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.1)
  %cmp72.1 = icmp eq i32 %and71.1, 0
  br i1 %cmp72.1, label %if.end75.if.end102_crit_edge, label %if.end75.1

if.end75.if.end102_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.1:                                       ; preds = %if.end75
  call void @msleep(i32 noundef 10) #6
  %call68.2 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.2 = and i32 %call68.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.2)
  %cmp72.2 = icmp eq i32 %and71.2, 0
  br i1 %cmp72.2, label %if.end75.1.if.end102_crit_edge, label %if.end75.2

if.end75.1.if.end102_crit_edge:                   ; preds = %if.end75.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.2:                                       ; preds = %if.end75.1
  call void @msleep(i32 noundef 10) #6
  %call68.3 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.3 = and i32 %call68.3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.3)
  %cmp72.3 = icmp eq i32 %and71.3, 0
  br i1 %cmp72.3, label %if.end75.2.if.end102_crit_edge, label %if.end75.3

if.end75.2.if.end102_crit_edge:                   ; preds = %if.end75.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.3:                                       ; preds = %if.end75.2
  call void @msleep(i32 noundef 10) #6
  %call68.4 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.4 = and i32 %call68.4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.4)
  %cmp72.4 = icmp eq i32 %and71.4, 0
  br i1 %cmp72.4, label %if.end75.3.if.end102_crit_edge, label %if.end75.4

if.end75.3.if.end102_crit_edge:                   ; preds = %if.end75.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.4:                                       ; preds = %if.end75.3
  call void @msleep(i32 noundef 10) #6
  %call68.5 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.5 = and i32 %call68.5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.5)
  %cmp72.5 = icmp eq i32 %and71.5, 0
  br i1 %cmp72.5, label %if.end75.4.if.end102_crit_edge, label %if.end75.5

if.end75.4.if.end102_crit_edge:                   ; preds = %if.end75.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.5:                                       ; preds = %if.end75.4
  call void @msleep(i32 noundef 10) #6
  %call68.6 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.6 = and i32 %call68.6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.6)
  %cmp72.6 = icmp eq i32 %and71.6, 0
  br i1 %cmp72.6, label %if.end75.5.if.end102_crit_edge, label %if.end75.6

if.end75.5.if.end102_crit_edge:                   ; preds = %if.end75.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.6:                                       ; preds = %if.end75.5
  call void @msleep(i32 noundef 10) #6
  %call68.7 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.7 = and i32 %call68.7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.7)
  %cmp72.7 = icmp eq i32 %and71.7, 0
  br i1 %cmp72.7, label %if.end75.6.if.end102_crit_edge, label %if.end75.7

if.end75.6.if.end102_crit_edge:                   ; preds = %if.end75.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.7:                                       ; preds = %if.end75.6
  call void @msleep(i32 noundef 10) #6
  %call68.8 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.8 = and i32 %call68.8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.8)
  %cmp72.8 = icmp eq i32 %and71.8, 0
  br i1 %cmp72.8, label %if.end75.7.if.end102_crit_edge, label %if.end75.8

if.end75.7.if.end102_crit_edge:                   ; preds = %if.end75.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.8:                                       ; preds = %if.end75.7
  call void @msleep(i32 noundef 10) #6
  %call68.9 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.9 = and i32 %call68.9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.9)
  %cmp72.9 = icmp eq i32 %and71.9, 0
  br i1 %cmp72.9, label %if.end75.8.if.end102_crit_edge, label %if.end75.9

if.end75.8.if.end102_crit_edge:                   ; preds = %if.end75.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.9:                                       ; preds = %if.end75.8
  call void @msleep(i32 noundef 10) #6
  %call68.10 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.10 = and i32 %call68.10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.10)
  %cmp72.10 = icmp eq i32 %and71.10, 0
  br i1 %cmp72.10, label %if.end75.9.if.end102_crit_edge, label %if.end75.10

if.end75.9.if.end102_crit_edge:                   ; preds = %if.end75.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.10:                                      ; preds = %if.end75.9
  call void @msleep(i32 noundef 10) #6
  %call68.11 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.11 = and i32 %call68.11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.11)
  %cmp72.11 = icmp eq i32 %and71.11, 0
  br i1 %cmp72.11, label %if.end75.10.if.end102_crit_edge, label %if.end75.11

if.end75.10.if.end102_crit_edge:                  ; preds = %if.end75.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.11:                                      ; preds = %if.end75.10
  call void @msleep(i32 noundef 10) #6
  %call68.12 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.12 = and i32 %call68.12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.12)
  %cmp72.12 = icmp eq i32 %and71.12, 0
  br i1 %cmp72.12, label %if.end75.11.if.end102_crit_edge, label %if.end75.12

if.end75.11.if.end102_crit_edge:                  ; preds = %if.end75.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.12:                                      ; preds = %if.end75.11
  call void @msleep(i32 noundef 10) #6
  %call68.13 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.13 = and i32 %call68.13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.13)
  %cmp72.13 = icmp eq i32 %and71.13, 0
  br i1 %cmp72.13, label %if.end75.12.if.end102_crit_edge, label %if.end75.13

if.end75.12.if.end102_crit_edge:                  ; preds = %if.end75.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end75.13:                                      ; preds = %if.end75.12
  call void @msleep(i32 noundef 10) #6
  %call68.14 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and71.14 = and i32 %call68.14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.14)
  %cmp72.14 = icmp eq i32 %and71.14, 0
  br i1 %cmp72.14, label %if.end75.13.if.end102_crit_edge, label %if.then81

if.end75.13.if.end102_crit_edge:                  ; preds = %if.end75.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then81:                                        ; preds = %if.end75.13
  call void @msleep(i32 noundef 10) #6
  %call82 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %66 = and i32 %call82, 63
  %conv89 = or i32 %66, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i186) #6
  %67 = getelementptr inbounds [2 x i8], ptr %buf.i186, i32 0, i32 1
  %68 = ptrtoint ptr %buf.i186 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -95, ptr %buf.i186, align 1
  %conv1.i188 = trunc i32 %conv89 to i8
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv1.i188, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i187) #6
  %70 = getelementptr inbounds i8, ptr %msg.i187, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 4
  %conv2.i190 = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i187 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv2.i190, ptr %msg.i187, align 4
  %flags.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i191 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i191, align 2
  %buf3.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187, i32 0, i32 3
  %78 = ptrtoint ptr %buf3.i193 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf.i186, ptr %buf3.i193, align 4
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i194 = icmp eq i32 %79, 0
  br i1 %tobool.not.i194, label %if.then81.do.end6.i199_crit_edge, label %do.end.i196

if.then81.do.end6.i199_crit_edge:                 ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i199

do.end.i196:                                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  %call.i195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 161, i32 noundef %conv89) #9
  br label %do.end6.i199

do.end6.i199:                                     ; preds = %do.end.i196, %if.then81.do.end6.i199_crit_edge
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call7.i197 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i187, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i197)
  %cmp.not.i198 = icmp eq i32 %call7.i197, 1
  br i1 %cmp.not.i198, label %do.end6.i199.ds3000_writereg.exit202_crit_edge, label %do.end12.i201

do.end6.i199.ds3000_writereg.exit202_crit_edge:   ; preds = %do.end6.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit202

do.end12.i201:                                    ; preds = %do.end6.i199
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i197, i32 noundef 161, i32 noundef %conv89) #9
  br label %ds3000_writereg.exit202

ds3000_writereg.exit202:                          ; preds = %do.end12.i201, %do.end6.i199.ds3000_writereg.exit202_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i187) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i186) #6
  %call92 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %82 = and i32 %call92, 63
  %conv99 = or i32 %82, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i203) #6
  %83 = getelementptr inbounds [2 x i8], ptr %buf.i203, i32 0, i32 1
  %84 = ptrtoint ptr %buf.i203 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -94, ptr %buf.i203, align 1
  %conv1.i205 = trunc i32 %conv99 to i8
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv1.i205, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i204) #6
  %86 = getelementptr inbounds i8, ptr %msg.i204, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 196607, ptr %86, align 4
  %88 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %config.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 4
  %conv2.i207 = zext i8 %91 to i16
  %92 = ptrtoint ptr %msg.i204 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv2.i207, ptr %msg.i204, align 4
  %flags.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i208, align 2
  %buf3.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204, i32 0, i32 3
  %94 = ptrtoint ptr %buf3.i210 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i203, ptr %buf3.i210, align 4
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i211 = icmp eq i32 %95, 0
  br i1 %tobool.not.i211, label %ds3000_writereg.exit202.do.end6.i216_crit_edge, label %do.end.i213

ds3000_writereg.exit202.do.end6.i216_crit_edge:   ; preds = %ds3000_writereg.exit202
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i216

do.end.i213:                                      ; preds = %ds3000_writereg.exit202
  call void @__sanitizer_cov_trace_pc() #8
  %call.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv99) #9
  br label %do.end6.i216

do.end6.i216:                                     ; preds = %do.end.i213, %ds3000_writereg.exit202.do.end6.i216_crit_edge
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %call7.i214 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msg.i204, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i214)
  %cmp.not.i215 = icmp eq i32 %call7.i214, 1
  br i1 %cmp.not.i215, label %do.end6.i216.ds3000_writereg.exit219_crit_edge, label %do.end12.i218

do.end6.i216.ds3000_writereg.exit219_crit_edge:   ; preds = %do.end6.i216
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit219

do.end12.i218:                                    ; preds = %do.end6.i216
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i214, i32 noundef 162, i32 noundef %conv99) #9
  br label %ds3000_writereg.exit219

ds3000_writereg.exit219:                          ; preds = %do.end12.i218, %do.end6.i216.ds3000_writereg.exit219_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i204) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i203) #6
  br label %cleanup

if.end102:                                        ; preds = %if.end75.13.if.end102_crit_edge, %if.end75.12.if.end102_crit_edge, %if.end75.11.if.end102_crit_edge, %if.end75.10.if.end102_crit_edge, %if.end75.9.if.end102_crit_edge, %if.end75.8.if.end102_crit_edge, %if.end75.7.if.end102_crit_edge, %if.end75.6.if.end102_crit_edge, %if.end75.5.if.end102_crit_edge, %if.end75.4.if.end102_crit_edge, %if.end75.3.if.end102_crit_edge, %if.end75.2.if.end102_crit_edge, %if.end75.1.if.end102_crit_edge, %if.end75.if.end102_crit_edge, %ds3000_writereg.exit185.if.end102_crit_edge
  %call103 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %98 = and i32 %call103, 63
  %conv110 = or i32 %98, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i220) #6
  %99 = getelementptr inbounds [2 x i8], ptr %buf.i220, i32 0, i32 1
  %100 = ptrtoint ptr %buf.i220 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -94, ptr %buf.i220, align 1
  %conv1.i222 = trunc i32 %conv110 to i8
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv1.i222, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i221) #6
  %102 = getelementptr inbounds i8, ptr %msg.i221, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 196607, ptr %102, align 4
  %104 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 4
  %conv2.i224 = zext i8 %107 to i16
  %108 = ptrtoint ptr %msg.i221 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv2.i224, ptr %msg.i221, align 4
  %flags.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i225 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i225, align 2
  %buf3.i227 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i221, i32 0, i32 3
  %110 = ptrtoint ptr %buf3.i227 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %buf.i220, ptr %buf3.i227, align 4
  %111 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i228 = icmp eq i32 %111, 0
  br i1 %tobool.not.i228, label %if.end102.do.end6.i233_crit_edge, label %do.end.i230

if.end102.do.end6.i233_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i233

do.end.i230:                                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %call.i229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv110) #9
  br label %do.end6.i233

do.end6.i233:                                     ; preds = %do.end.i230, %if.end102.do.end6.i233_crit_edge
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call7.i231 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i221, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i231)
  %cmp.not.i232 = icmp eq i32 %call7.i231, 1
  br i1 %cmp.not.i232, label %do.end6.i233.ds3000_writereg.exit236_crit_edge, label %do.end12.i235

do.end6.i233.ds3000_writereg.exit236_crit_edge:   ; preds = %do.end6.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit236

do.end12.i235:                                    ; preds = %do.end6.i233
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i231, i32 noundef 162, i32 noundef %conv110) #9
  br label %ds3000_writereg.exit236

ds3000_writereg.exit236:                          ; preds = %do.end12.i235, %do.end6.i233.ds3000_writereg.exit236_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i221) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i220) #6
  br label %cleanup

cleanup:                                          ; preds = %ds3000_writereg.exit236, %ds3000_writereg.exit219
  %retval.0 = phi i32 [ -110, %ds3000_writereg.exit219 ], [ 0, %ds3000_writereg.exit236 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %buf.i154 = alloca [2 x i8], align 1
  %msg.i155 = alloca %struct.i2c_msg, align 4
  %buf.i137 = alloca [2 x i8], align 1
  %msg.i138 = alloca %struct.i2c_msg, align 4
  %buf.i120 = alloca [2 x i8], align 1
  %msg.i121 = alloca %struct.i2c_msg, align 4
  %buf.i104 = alloca [2 x i8], align 1
  %msg.i105 = alloca %struct.i2c_msg, align 4
  %buf.i88 = alloca [2 x i8], align 1
  %msg.i89 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.79) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %conv6 = and i32 %call4, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -94, ptr %buf.i, align 1
  %conv1.i = trunc i32 %conv6 to i8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv2.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %6, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf3.i, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.end3.do.end6.i_crit_edge, label %do.end.i

do.end3.do.end6.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv6) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.end3.do.end6.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 162, i32 noundef %conv6) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %18 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %burst, label %ds3000_writereg.exit.cleanup_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then14
  ]

ds3000_writereg.exit.cleanup_crit_edge:           ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %ds3000_writereg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i88) #6
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i88, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -95, ptr %buf.i88, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i89) #6
  %22 = getelementptr inbounds i8, ptr %msg.i89, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv2.i91 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i89 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv2.i91, ptr %msg.i89, align 4
  %flags.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i92 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i92, align 2
  %buf3.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 3
  %30 = ptrtoint ptr %buf3.i94 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i88, ptr %buf3.i94, align 4
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i95 = icmp eq i32 %31, 0
  br i1 %tobool.not.i95, label %if.then10.do.end6.i100_crit_edge, label %do.end.i97

if.then10.do.end6.i100_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i100

do.end.i97:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 161, i32 noundef 2) #9
  br label %do.end6.i100

do.end6.i100:                                     ; preds = %do.end.i97, %if.then10.do.end6.i100_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call7.i98 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i89, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i98)
  %cmp.not.i99 = icmp eq i32 %call7.i98, 1
  br i1 %cmp.not.i99, label %do.end6.i100.ds3000_writereg.exit103_crit_edge, label %do.end12.i102

do.end6.i100.ds3000_writereg.exit103_crit_edge:   ; preds = %do.end6.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit103

do.end12.i102:                                    ; preds = %do.end6.i100
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i98, i32 noundef 161, i32 noundef 2) #9
  br label %ds3000_writereg.exit103

ds3000_writereg.exit103:                          ; preds = %do.end12.i102, %do.end6.i100.ds3000_writereg.exit103_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i89) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #6
  br label %if.end18

if.then14:                                        ; preds = %ds3000_writereg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i104) #6
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i104, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -95, ptr %buf.i104, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i105) #6
  %37 = getelementptr inbounds i8, ptr %msg.i105, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196607, ptr %37, align 4
  %39 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv2.i107 = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i105 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv2.i107, ptr %msg.i105, align 4
  %flags.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i105, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i108 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i108, align 2
  %buf3.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i105, i32 0, i32 3
  %45 = ptrtoint ptr %buf3.i110 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i104, ptr %buf3.i110, align 4
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i111 = icmp eq i32 %46, 0
  br i1 %tobool.not.i111, label %if.then14.do.end6.i116_crit_edge, label %do.end.i113

if.then14.do.end6.i116_crit_edge:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i116

do.end.i113:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %call.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 161, i32 noundef 1) #9
  br label %do.end6.i116

do.end6.i116:                                     ; preds = %do.end.i113, %if.then14.do.end6.i116_crit_edge
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call7.i114 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i105, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i114)
  %cmp.not.i115 = icmp eq i32 %call7.i114, 1
  br i1 %cmp.not.i115, label %do.end6.i116.ds3000_writereg.exit119_crit_edge, label %do.end12.i118

do.end6.i116.ds3000_writereg.exit119_crit_edge:   ; preds = %do.end6.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit119

do.end12.i118:                                    ; preds = %do.end6.i116
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i114, i32 noundef 161, i32 noundef 1) #9
  br label %ds3000_writereg.exit119

ds3000_writereg.exit119:                          ; preds = %do.end12.i118, %do.end6.i116.ds3000_writereg.exit119_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i105) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i104) #6
  br label %if.end18

if.end18:                                         ; preds = %ds3000_writereg.exit119, %ds3000_writereg.exit103
  call void @msleep(i32 noundef 13) #6
  %call21 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and24 = and i32 %call21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.end18.if.end51_crit_edge, label %if.end28

if.end18.if.end51_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.end28:                                         ; preds = %if.end18
  call void @msleep(i32 noundef 1) #6
  %call21.1 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and24.1 = and i32 %call21.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.1)
  %cmp25.1 = icmp eq i32 %and24.1, 0
  br i1 %cmp25.1, label %if.end28.if.end51_crit_edge, label %if.end28.1

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.end28.1:                                       ; preds = %if.end28
  call void @msleep(i32 noundef 1) #6
  %call21.2 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and24.2 = and i32 %call21.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.2)
  %cmp25.2 = icmp eq i32 %and24.2, 0
  br i1 %cmp25.2, label %if.end28.1.if.end51_crit_edge, label %if.end28.2

if.end28.1.if.end51_crit_edge:                    ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.end28.2:                                       ; preds = %if.end28.1
  call void @msleep(i32 noundef 1) #6
  %call21.3 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and24.3 = and i32 %call21.3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.3)
  %cmp25.3 = icmp eq i32 %and24.3, 0
  br i1 %cmp25.3, label %if.end28.2.if.end51_crit_edge, label %if.end28.3

if.end28.2.if.end51_crit_edge:                    ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.end28.3:                                       ; preds = %if.end28.2
  call void @msleep(i32 noundef 1) #6
  %call21.4 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %and24.4 = and i32 %call21.4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.4)
  %cmp25.4 = icmp eq i32 %and24.4, 0
  br i1 %cmp25.4, label %if.end28.3.if.end51_crit_edge, label %if.then31

if.end28.3.if.end51_crit_edge:                    ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then31:                                        ; preds = %if.end28.3
  call void @msleep(i32 noundef 1) #6
  %call32 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %49 = and i32 %call32, 63
  %conv38 = or i32 %49, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i120) #6
  %50 = getelementptr inbounds [2 x i8], ptr %buf.i120, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i120 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -95, ptr %buf.i120, align 1
  %conv1.i122 = trunc i32 %conv38 to i8
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv1.i122, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i121) #6
  %53 = getelementptr inbounds i8, ptr %msg.i121, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %53, align 4
  %55 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  %conv2.i124 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i121 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv2.i124, ptr %msg.i121, align 4
  %flags.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i125 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %flags.i125, align 2
  %buf3.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i121, i32 0, i32 3
  %61 = ptrtoint ptr %buf3.i127 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %buf.i120, ptr %buf3.i127, align 4
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i128 = icmp eq i32 %62, 0
  br i1 %tobool.not.i128, label %if.then31.do.end6.i133_crit_edge, label %do.end.i130

if.then31.do.end6.i133_crit_edge:                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i133

do.end.i130:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %call.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 161, i32 noundef %conv38) #9
  br label %do.end6.i133

do.end6.i133:                                     ; preds = %do.end.i130, %if.then31.do.end6.i133_crit_edge
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call7.i131 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i121, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i131)
  %cmp.not.i132 = icmp eq i32 %call7.i131, 1
  br i1 %cmp.not.i132, label %do.end6.i133.ds3000_writereg.exit136_crit_edge, label %do.end12.i135

do.end6.i133.ds3000_writereg.exit136_crit_edge:   ; preds = %do.end6.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit136

do.end12.i135:                                    ; preds = %do.end6.i133
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i131, i32 noundef 161, i32 noundef %conv38) #9
  br label %ds3000_writereg.exit136

ds3000_writereg.exit136:                          ; preds = %do.end12.i135, %do.end6.i133.ds3000_writereg.exit136_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i121) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i120) #6
  %call41 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %65 = and i32 %call41, 63
  %conv48 = or i32 %65, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i137) #6
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i137, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i137 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -94, ptr %buf.i137, align 1
  %conv1.i139 = trunc i32 %conv48 to i8
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv1.i139, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i138) #6
  %69 = getelementptr inbounds i8, ptr %msg.i138, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv2.i141 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i138 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv2.i141, ptr %msg.i138, align 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i142, align 2
  %buf3.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138, i32 0, i32 3
  %77 = ptrtoint ptr %buf3.i144 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i137, ptr %buf3.i144, align 4
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i145 = icmp eq i32 %78, 0
  br i1 %tobool.not.i145, label %ds3000_writereg.exit136.do.end6.i150_crit_edge, label %do.end.i147

ds3000_writereg.exit136.do.end6.i150_crit_edge:   ; preds = %ds3000_writereg.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i150

do.end.i147:                                      ; preds = %ds3000_writereg.exit136
  call void @__sanitizer_cov_trace_pc() #8
  %call.i146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv48) #9
  br label %do.end6.i150

do.end6.i150:                                     ; preds = %do.end.i147, %ds3000_writereg.exit136.do.end6.i150_crit_edge
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call7.i148 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i138, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i148)
  %cmp.not.i149 = icmp eq i32 %call7.i148, 1
  br i1 %cmp.not.i149, label %do.end6.i150.ds3000_writereg.exit153_crit_edge, label %do.end12.i152

do.end6.i150.ds3000_writereg.exit153_crit_edge:   ; preds = %do.end6.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit153

do.end12.i152:                                    ; preds = %do.end6.i150
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i148, i32 noundef 162, i32 noundef %conv48) #9
  br label %ds3000_writereg.exit153

ds3000_writereg.exit153:                          ; preds = %do.end12.i152, %do.end6.i150.ds3000_writereg.exit153_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i138) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i137) #6
  br label %cleanup

if.end51:                                         ; preds = %if.end28.3.if.end51_crit_edge, %if.end28.2.if.end51_crit_edge, %if.end28.1.if.end51_crit_edge, %if.end28.if.end51_crit_edge, %if.end18.if.end51_crit_edge
  %call52 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %81 = and i32 %call52, 63
  %conv59 = or i32 %81, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i154) #6
  %82 = getelementptr inbounds [2 x i8], ptr %buf.i154, i32 0, i32 1
  %83 = ptrtoint ptr %buf.i154 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -94, ptr %buf.i154, align 1
  %conv1.i156 = trunc i32 %conv59 to i8
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv1.i156, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i155) #6
  %85 = getelementptr inbounds i8, ptr %msg.i155, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196607, ptr %85, align 4
  %87 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 4
  %conv2.i158 = zext i8 %90 to i16
  %91 = ptrtoint ptr %msg.i155 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv2.i158, ptr %msg.i155, align 4
  %flags.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i159 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i159, align 2
  %buf3.i161 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i155, i32 0, i32 3
  %93 = ptrtoint ptr %buf3.i161 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf.i154, ptr %buf3.i161, align 4
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i162 = icmp eq i32 %94, 0
  br i1 %tobool.not.i162, label %if.end51.do.end6.i167_crit_edge, label %do.end.i164

if.end51.do.end6.i167_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i167

do.end.i164:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call.i163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv59) #9
  br label %do.end6.i167

do.end6.i167:                                     ; preds = %do.end.i164, %if.end51.do.end6.i167_crit_edge
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call7.i165 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i155, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i165)
  %cmp.not.i166 = icmp eq i32 %call7.i165, 1
  br i1 %cmp.not.i166, label %do.end6.i167.ds3000_writereg.exit170_crit_edge, label %do.end12.i169

do.end6.i167.ds3000_writereg.exit170_crit_edge:   ; preds = %do.end6.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit170

do.end12.i169:                                    ; preds = %do.end6.i167
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i165, i32 noundef 162, i32 noundef %conv59) #9
  br label %ds3000_writereg.exit170

ds3000_writereg.exit170:                          ; preds = %do.end12.i169, %do.end6.i167.ds3000_writereg.exit170_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i155) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i154) #6
  br label %cleanup

cleanup:                                          ; preds = %ds3000_writereg.exit170, %ds3000_writereg.exit153, %ds3000_writereg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %ds3000_writereg.exit153 ], [ 0, %ds3000_writereg.exit170 ], [ -22, %ds3000_writereg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %buf.i89 = alloca [2 x i8], align 1
  %msg.i90 = alloca %struct.i2c_msg, align 4
  %buf.i72 = alloca [2 x i8], align 1
  %msg.i73 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.80, i32 noundef %tone) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tone)
  %switch = icmp ult i32 %tone, 2
  br i1 %switch, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %tone) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end3
  %call12 = tail call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %conv14 = and i32 %call12, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -94, ptr %buf.i, align 1
  %conv1.i = trunc i32 %conv14 to i8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv2.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf3.i, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end11.do.end6.i_crit_edge, label %do.end.i

if.end11.do.end6.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv14) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.end11.do.end6.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 162, i32 noundef %conv14) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %18 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %tone, label %ds3000_writereg.exit.cleanup_crit_edge [
    i32 0, label %do.body17
    i32 1, label %do.body38
  ]

ds3000_writereg.exit.cleanup_crit_edge:           ; preds = %ds3000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body17:                                        ; preds = %ds3000_writereg.exit
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %do.body17.do.end27_crit_edge, label %do.end22

do.body17.do.end27_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.80) #9
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body17.do.end27_crit_edge
  %call28 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -95)
  %20 = and i32 %call28, 184
  %conv34 = or i32 %20, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i72) #6
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i72, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -95, ptr %buf.i72, align 1
  %conv1.i74 = trunc i32 %conv34 to i8
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.i74, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i73) #6
  %24 = getelementptr inbounds i8, ptr %msg.i73, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv2.i76 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv2.i76, ptr %msg.i73, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i77, align 2
  %buf3.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 3
  %32 = ptrtoint ptr %buf3.i79 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i72, ptr %buf3.i79, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i80 = icmp eq i32 %33, 0
  br i1 %tobool.not.i80, label %do.end27.do.end6.i85_crit_edge, label %do.end.i82

do.end27.do.end6.i85_crit_edge:                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i85

do.end.i82:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 161, i32 noundef %conv34) #9
  br label %do.end6.i85

do.end6.i85:                                      ; preds = %do.end.i82, %do.end27.do.end6.i85_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call7.i83 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i73, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i83)
  %cmp.not.i84 = icmp eq i32 %call7.i83, 1
  br i1 %cmp.not.i84, label %do.end6.i85.ds3000_writereg.exit88_crit_edge, label %do.end12.i87

do.end6.i85.ds3000_writereg.exit88_crit_edge:     ; preds = %do.end6.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit88

do.end12.i87:                                     ; preds = %do.end6.i85
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i83, i32 noundef 161, i32 noundef %conv34) #9
  br label %ds3000_writereg.exit88

ds3000_writereg.exit88:                           ; preds = %do.end12.i87, %do.end6.i85.ds3000_writereg.exit88_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i73) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i72) #6
  br label %cleanup

do.body38:                                        ; preds = %ds3000_writereg.exit
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  br i1 %tobool39.not, label %do.body38.do.end48_crit_edge, label %do.end43

do.body38.do.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.80) #9
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body38.do.end48_crit_edge
  %call49 = call fastcc i32 @ds3000_readreg(ptr noundef %1, i8 noundef zeroext -94)
  %conv53 = and i32 %call49, 127
  %conv54 = or i32 %conv53, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i89) #6
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i89, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i89 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -94, ptr %buf.i89, align 1
  %conv1.i91 = trunc i32 %conv54 to i8
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv1.i91, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90) #6
  %40 = getelementptr inbounds i8, ptr %msg.i90, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv2.i93 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i90 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv2.i93, ptr %msg.i90, align 4
  %flags.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i94 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i94, align 2
  %buf3.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90, i32 0, i32 3
  %48 = ptrtoint ptr %buf3.i96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i89, ptr %buf3.i96, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i97 = icmp eq i32 %49, 0
  br i1 %tobool.not.i97, label %do.end48.do.end6.i102_crit_edge, label %do.end.i99

do.end48.do.end6.i102_crit_edge:                  ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i102

do.end.i99:                                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef %conv54) #9
  br label %do.end6.i102

do.end6.i102:                                     ; preds = %do.end.i99, %do.end48.do.end6.i102_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call7.i100 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i90, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i100)
  %cmp.not.i101 = icmp eq i32 %call7.i100, 1
  br i1 %cmp.not.i101, label %do.end6.i102.ds3000_writereg.exit105_crit_edge, label %do.end12.i104

do.end6.i102.ds3000_writereg.exit105_crit_edge:   ; preds = %do.end6.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit105

do.end12.i104:                                    ; preds = %do.end6.i102
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i100, i32 noundef 162, i32 noundef %conv54) #9
  br label %ds3000_writereg.exit105

ds3000_writereg.exit105:                          ; preds = %do.end12.i104, %do.end6.i102.ds3000_writereg.exit105_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i89) #6
  br label %cleanup

cleanup:                                          ; preds = %ds3000_writereg.exit105, %ds3000_writereg.exit88, %ds3000_writereg.exit.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %ds3000_writereg.exit.cleanup_crit_edge ], [ 0, %ds3000_writereg.exit105 ], [ 0, %ds3000_writereg.exit88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv2.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf3.i, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.do.end6.i_crit_edge, label %do.end.i

if.then.do.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef 18) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then.do.end6.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call7.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i = icmp eq i32 %call7.i, 1
  br i1 %cmp.not.i, label %do.end6.i.ds3000_writereg.exit_crit_edge, label %do.end12.i

do.end6.i.ds3000_writereg.exit_crit_edge:         ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i, i32 noundef 3, i32 noundef 18) #9
  br label %ds3000_writereg.exit

ds3000_writereg.exit:                             ; preds = %do.end12.i, %do.end6.i.ds3000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %buf.i3, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %20 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %config.i5 = getelementptr inbounds %struct.ds3000_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i5, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv2.i6 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv2.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i7, align 2
  %buf3.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %28 = ptrtoint ptr %buf3.i9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i3, ptr %buf3.i9, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i10 = icmp eq i32 %29, 0
  br i1 %tobool.not.i10, label %if.else.do.end6.i15_crit_edge, label %do.end.i12

if.else.do.end6.i15_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i15

do.end.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef 2) #9
  br label %do.end6.i15

do.end6.i15:                                      ; preds = %do.end.i12, %if.else.do.end6.i15_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call7.i13 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i13)
  %cmp.not.i14 = icmp eq i32 %call7.i13, 1
  br i1 %cmp.not.i14, label %do.end6.i15.ds3000_writereg.exit18_crit_edge, label %do.end12.i17

do.end6.i15.ds3000_writereg.exit18_crit_edge:     ; preds = %do.end6.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %ds3000_writereg.exit18

do.end12.i17:                                     ; preds = %do.end6.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call7.i13, i32 noundef 3, i32 noundef 2) #9
  br label %ds3000_writereg.exit18

ds3000_writereg.exit18:                           ; preds = %do.end12.i17, %do.end6.i15.ds3000_writereg.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  br label %if.end

if.end:                                           ; preds = %ds3000_writereg.exit18, %ds3000_writereg.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 827, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ds3000_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ds3000_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 842, i32 3}
!8 = !{ptr @ds3000_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ds3000_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 846, i32 2}
!12 = !{ptr @ds3000_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ds3000_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_ds3000_attach, !15, !"__ksymtab_ds3000_attach", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 862, i32 1}
!16 = !{ptr @__param_debug, !17, !"__param_debug", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1124, i32 1}
!18 = !{ptr @__UNIQUE_ID_debugtype290, !17, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_debug291, !20, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1125, i32 1}
!21 = !{ptr @__UNIQUE_ID_description292, !22, !"__UNIQUE_ID_description292", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1127, i32 1}
!23 = !{ptr @__UNIQUE_ID_author293, !24, !"__UNIQUE_ID_author293", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1128, i32 1}
!25 = !{ptr @__UNIQUE_ID_file294, !26, !"__UNIQUE_ID_file294", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1129, i32 1}
!27 = !{ptr @__UNIQUE_ID_license295, !26, !"__UNIQUE_ID_license295", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_firmware296, !29, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1130, i32 1}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 21, i32 12}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 321, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ds3000_readreg._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ds3000_readreg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 325, i32 2}
!39 = !{ptr @ds3000_readreg._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ds3000_readreg._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 399, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ds3000_set_voltage._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ds3000_set_voltage._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 235, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ds3000_writereg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ds3000_writereg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 239, i32 3}
!53 = !{ptr @ds3000_writereg._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ds3000_writereg._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ds3000_ops, !56, !"ds3000_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1087, i32 38}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 815, i32 2}
!59 = !{ptr @ds3000_release._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ds3000_release._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1072, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ds3000_initfe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ds3000_initfe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1080, i32 3}
!68 = !{ptr @ds3000_initfe._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ds3000_initfe._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 339, i32 2}
!72 = !{ptr @ds3000_firmware_ondemand._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ds3000_firmware_ondemand._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 347, i32 2}
!76 = !{ptr @ds3000_firmware_ondemand._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ds3000_firmware_ondemand._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 351, i32 2}
!81 = !{ptr @ds3000_firmware_ondemand._entry.32, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ds3000_firmware_ondemand._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 353, i32 3}
!85 = !{ptr @ds3000_firmware_ondemand._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ds3000_firmware_ondemand._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 360, i32 3}
!89 = !{ptr @ds3000_firmware_ondemand._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ds3000_firmware_ondemand._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 364, i32 2}
!93 = !{ptr @ds3000_firmware_ondemand._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ds3000_firmware_ondemand._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 376, i32 2}
!99 = !{ptr @ds3000_load_firmware._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ds3000_load_firmware._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 377, i32 2}
!103 = !{ptr @ds3000_load_firmware._entry.47, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ds3000_load_firmware._entry_ptr.49, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 281, i32 3}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ds3000_writeFW._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ds3000_writeFW._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 285, i32 4}
!112 = !{ptr @ds3000_writeFW._entry.52, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ds3000_writeFW._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 1058, i32 2}
!116 = !{ptr @ds3000_get_algo._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ds3000_get_algo._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 894, i32 2}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ds3000_set_frontend._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ds3000_set_frontend._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 944, i32 3}
!125 = !{ptr @ds3000_set_frontend._entry.58, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ds3000_set_frontend._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @ds3000_dvbs_init_tab, !128, !"ds3000_dvbs_init_tab", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 36, i32 11}
!129 = !{ptr @ds3000_dvbs2_init_tab, !130, !"ds3000_dvbs2_init_tab", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 121, i32 11}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 453, i32 2}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ds3000_read_status._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @ds3000_read_status._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 466, i32 2}
!138 = !{ptr @ds3000_read_ber._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ds3000_read_ber._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @ds3000_read_snr.dvbs_snr_tab, !141, !"dvbs_snr_tab", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 539, i32 19}
!142 = !{ptr @ds3000_read_snr.dvbs2_snr_tab, !143, !"dvbs2_snr_tab", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 544, i32 19}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 559, i32 2}
!146 = !{ptr @ds3000_read_snr._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ds3000_read_snr._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 575, i32 3}
!150 = !{ptr @ds3000_read_snr._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ds3000_read_snr._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @ds3000_read_snr._entry.68, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 608, i32 3}
!154 = !{ptr @ds3000_read_snr._entry_ptr.69, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 626, i32 2}
!157 = !{ptr @ds3000_read_ucblocks._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ds3000_read_ucblocks._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 698, i32 2}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ds3000_send_diseqc_msg._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @ds3000_send_diseqc_msg._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 700, i32 3}
!166 = !{ptr @ds3000_send_diseqc_msg._entry.73, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ds3000_send_diseqc_msg._entry_ptr.75, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 702, i32 4}
!170 = !{ptr @ds3000_send_diseqc_msg._entry.76, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @ds3000_send_diseqc_msg._entry_ptr.78, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 762, i32 2}
!174 = !{ptr @ds3000_diseqc_send_burst._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @ds3000_diseqc_send_burst._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 661, i32 2}
!178 = !{ptr @ds3000_set_tone._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ds3000_set_tone._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 663, i32 3}
!182 = !{ptr @ds3000_set_tone._entry.81, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ds3000_set_tone._entry_ptr.83, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 673, i32 3}
!186 = !{ptr @ds3000_set_tone._entry.84, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @ds3000_set_tone._entry_ptr.86, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/ds3000.c", i32 680, i32 3}
!190 = !{ptr @ds3000_set_tone._entry.87, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ds3000_set_tone._entry_ptr.89, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @__param_str_debug, !17, !"__param_str_debug", i1 false, i1 false}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{!"auto-init"}
