; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx24117.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24117.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cx24117_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24117_attach\09\09\09\09"
module asm "\09.long\09__crc_cx24117_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24117_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24117_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24117_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cx24117_modfec = type { i32, i32, i32, i8, i8 }
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
%struct.cx24117_priv = type { i8, ptr, i8, %struct.mutex, %struct.tuner_i2c_props, %struct.list_head }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.cx24117_state = type { ptr, %struct.dvb_frontend, %struct.cx24117_tuning, %struct.cx24117_tuning, %struct.cx24117_cmd, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cx24117_tuning = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.cx24117_cmd = type { i8, [30 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.firmware = type { i32, ptr, ptr }

@cx24117_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Error attaching frontend %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24117_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx24117.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx24117_attach._entry_ptr = internal global ptr @cx24117_attach._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx24117\00", [24 x i8] zeroinitializer }, align 32
@cx24117_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->fe_lock\00", [17 x i8] zeroinitializer }, align 32
@cx24117_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1196, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Attaching frontend %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cx24117_attach._entry_ptr.10 = internal global ptr @cx24117_attach._entry.7, section ".printk_index", align 4
@cx24117_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24117/CX24132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @cx24117_release, ptr null, ptr @cx24117_initfe, ptr @cx24117_sleep, ptr null, ptr null, ptr null, ptr @cx24117_tune, ptr @cx24117_get_algo, ptr @cx24117_set_frontend, ptr null, ptr @cx24117_get_frontend, ptr @cx24117_read_status, ptr @cx24117_read_ber, ptr @cx24117_read_signal_strength, ptr @cx24117_read_snr, ptr @cx24117_read_ucblocks, ptr null, ptr @cx24117_send_diseqc_msg, ptr null, ptr @cx24117_diseqc_send_burst, ptr @cx24117_set_tone, ptr @cx24117_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_cx24117_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24117_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24117_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24117_attach to i32), ptr @__kstrtab_cx24117_attach, ptr @__kstrtabns_cx24117_attach }, section "___ksymtab_gpl+cx24117_attach", align 4
@__UNIQUE_ID_description339 = internal constant [78 x i8] c"cx24117.description=DVB Frontend module for Conexant cx24117/cx24132 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author340 = internal constant [45 x i8] c"cx24117.author=Luis Alves (ljalvs@gmail.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [49 x i8] c"cx24117.file=drivers/media/dvb-frontends/cx24117\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [20 x i8] c"cx24117.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version343 = internal constant [20 x i8] c"cx24117.version=1.1\00", section ".modinfo", align 1
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.5, ptr @.str.12 }, section "__modver", align 4
@__UNIQUE_ID_firmware344 = internal constant [35 x i8] c"cx24117.firmware=dvb-fe-cx24117.fw\00", section ".modinfo", align 1
@cx24117_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cx24117_list_mutex, i64 52), ptr getelementptr (i8, ptr @cx24117_list_mutex, i64 52) }, ptr @cx24117_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@cx24117_get_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_get_priv\00", [47 x i8] zeroinitializer }, align 32
@cx24117_get_priv._entry_ptr = internal global ptr @cx24117_get_priv._entry, section ".printk_index", align 4
@cx24117_get_priv._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24117_get_priv._entry_ptr.17 = internal global ptr @cx24117_get_priv._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx24117_list_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx24117_list_mutex\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx24117_release_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24117_release_priv\00", [43 x i8] zeroinitializer }, align 32
@cx24117_release_priv._entry_ptr = internal global ptr @cx24117_release_priv._entry, section ".printk_index", align 4
@cx24117_release.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24117_release\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s demod%d\0A\00", [20 x i8] zeroinitializer }, align 32
@cx24117_initfe.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24117_initfe\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s() demod%d\0A\00", [18 x i8] zeroinitializer }, align 32
@cx24117_cmd_execute_nolock.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.26, ptr @.str.2, ptr @.str.25, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx24117_cmd_execute_nolock\00", [37 x i8] zeroinitializer }, align 32
@cx24117_cmd_execute_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.26, ptr @.str.2, i32 520, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() Firmware not responding\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cx24117_cmd_execute_nolock._entry_ptr = internal global ptr @cx24117_cmd_execute_nolock._entry, section ".printk_index", align 4
@cx24117_firmware_ondemand.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24117_firmware_ondemand\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() demod%d skip_fw_load=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24117_firmware_ondemand.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Waiting for firmware upload (%s)...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-fe-cx24117.fw\00", [46 x i8] zeroinitializer }, align 32
@cx24117_firmware_ondemand.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.33, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Waiting for firmware upload(2)...\0A\00", [57 x i8] zeroinitializer }, align 32
@cx24117_firmware_ondemand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 466, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: No firmware uploaded (timeout or file not found?)\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24117_firmware_ondemand._entry_ptr = internal global ptr @cx24117_firmware_ondemand._entry, section ".printk_index", align 4
@cx24117_firmware_ondemand._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Writing firmware failed\0A\00", [35 x i8] zeroinitializer }, align 32
@cx24117_firmware_ondemand._entry_ptr.37 = internal global ptr @cx24117_firmware_ondemand._entry.35, section ".printk_index", align 4
@cx24117_firmware_ondemand._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str.2, i32 482, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Firmware upload %s\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24117_firmware_ondemand._entry_ptr.40 = internal global ptr @cx24117_firmware_ondemand._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@cx24117_load_firmware.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24117_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s() demod%d FW is %zu bytes (%02x %02x .. %02x %02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24117_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 724, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: FW version %i.%i.%i.%i\0A\00", [36 x i8] zeroinitializer }, align 32
@cx24117_load_firmware._entry_ptr = internal global ptr @cx24117_load_firmware._entry, section ".printk_index", align 4
@cx24117_load_firmware._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() Error running FW.\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24117_load_firmware._entry_ptr.48 = internal global ptr @cx24117_load_firmware._entry.46, section ".printk_index", align 4
@cx24117_writecmd.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_writecmd\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s() demod%d i2c wr cmd len=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@cx24117_writecmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 300, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: demod%d i2c wr cmd err(%i) len=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@cx24117_writecmd._entry_ptr = internal global ptr @cx24117_writecmd._entry, section ".printk_index", align 4
@cx24117_writereg.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_writereg\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s() demod%d i2c wr @0x%02x=0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@cx24117_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 272, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: demod%d i2c wr err(%i) @0x%02x=0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@cx24117_writereg._entry_ptr = internal global ptr @cx24117_writereg._entry, section ".printk_index", align 4
@cx24117_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 321, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: demod%d i2c rd err(%d) @0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24117_readreg\00", [16 x i8] zeroinitializer }, align 32
@cx24117_readreg._entry_ptr = internal global ptr @cx24117_readreg._entry, section ".printk_index", align 4
@cx24117_readreg.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s() demod%d i2c rd @0x%02x=0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@cx24117_sleep.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.58, ptr @.str.2, ptr @.str.25, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx24117_sleep\00", [18 x i8] zeroinitializer }, align 32
@cx24117_tune.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.59, ptr @.str.2, ptr @.str.25, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx24117_tune\00", [19 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.25, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24117_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() demod%d DVB-S\0A\00", [44 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() demod%d unsupported modulation (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s() demod%d DVB-S2\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx24117_set_frontend.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() demod%d unsupported pilot mode (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@cx24117_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 1377, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: demod%d unsupported rolloff (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@cx24117_set_frontend._entry_ptr = internal global ptr @cx24117_set_frontend._entry, section ".printk_index", align 4
@cx24117_set_frontend._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.60, ptr @.str.2, i32 1385, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: demod %d unsupported delivery system (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24117_set_frontend._entry_ptr.68 = internal global ptr @cx24117_set_frontend._entry.66, section ".printk_index", align 4
@cx24117_set_frontend.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.69, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: delsys      = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.70, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: modulation  = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.71, i8 1, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: frequency   = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.72, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pilot       = %d (val = 0x%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.73, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: retune      = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.74, i8 1, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: rolloff     = %d (val = 0x%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.75, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: symbol_rate = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.76, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: FEC         = %d (mask/val = 0x%02x/0x%02x)\0A\00", [47 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.77, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Inversion   = %d (val = 0x%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.78, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s() demod%d status_setfe = %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.79, i8 1, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s() demod%d tuned\0A\00", [44 x i8] zeroinitializer }, align 32
@cx24117_set_frontend.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.2, ptr @.str.80, i8 1, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() demod%d not tuned\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24117_set_inversion.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24117_set_inversion\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(%d) demod%d\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24117_set_fec.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24117_set_fec\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(0x%02x,0x%02x) demod%d\0A\00", [37 x i8] zeroinitializer }, align 32
@cx24117_modfec_modes = internal constant { [28 x %struct.cx24117_modfec], [96 x i8] } { [28 x %struct.cx24117_modfec] [%struct.cx24117_modfec { i32 5, i32 0, i32 0, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 1, i8 2, i8 46 }, %struct.cx24117_modfec { i32 5, i32 0, i32 2, i8 4, i8 47 }, %struct.cx24117_modfec { i32 5, i32 0, i32 3, i8 8, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 4, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 5, i8 32, i8 49 }, %struct.cx24117_modfec { i32 5, i32 0, i32 6, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 7, i8 -128, i8 50 }, %struct.cx24117_modfec { i32 5, i32 0, i32 8, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 5, i32 0, i32 9, i8 -2, i8 48 }, %struct.cx24117_modfec { i32 6, i32 0, i32 0, i8 0, i8 0 }, %struct.cx24117_modfec { i32 6, i32 0, i32 1, i8 0, i8 4 }, %struct.cx24117_modfec { i32 6, i32 0, i32 10, i8 0, i8 5 }, %struct.cx24117_modfec { i32 6, i32 0, i32 2, i8 0, i8 6 }, %struct.cx24117_modfec { i32 6, i32 0, i32 3, i8 0, i8 7 }, %struct.cx24117_modfec { i32 6, i32 0, i32 4, i8 0, i8 8 }, %struct.cx24117_modfec { i32 6, i32 0, i32 5, i8 0, i8 9 }, %struct.cx24117_modfec { i32 6, i32 0, i32 8, i8 0, i8 10 }, %struct.cx24117_modfec { i32 6, i32 0, i32 11, i8 0, i8 11 }, %struct.cx24117_modfec { i32 6, i32 0, i32 9, i8 0, i8 0 }, %struct.cx24117_modfec { i32 6, i32 9, i32 0, i8 0, i8 0 }, %struct.cx24117_modfec { i32 6, i32 9, i32 10, i8 0, i8 12 }, %struct.cx24117_modfec { i32 6, i32 9, i32 2, i8 0, i8 13 }, %struct.cx24117_modfec { i32 6, i32 9, i32 3, i8 0, i8 14 }, %struct.cx24117_modfec { i32 6, i32 9, i32 5, i8 0, i8 15 }, %struct.cx24117_modfec { i32 6, i32 9, i32 8, i8 0, i8 16 }, %struct.cx24117_modfec { i32 6, i32 9, i32 11, i8 0, i8 17 }, %struct.cx24117_modfec { i32 6, i32 9, i32 9, i8 0, i8 0 }], [96 x i8] zeroinitializer }, align 32
@cx24117_set_fec.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s() demod%d mask/val = 0x%02x/0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@cx24117_lookup_fecmod.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24117_lookup_fecmod\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(demod(0x%02x,0x%02x) demod%d\0A\00", [63 x i8] zeroinitializer }, align 32
@cx24117_set_symbolrate.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.88, ptr @.str.2, ptr @.str.82, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx24117_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@cx24117_set_symbolrate.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() demod%d symbol_rate = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cx24117_readregN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.90, ptr @.str.2, i32 346, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_readregN\00", [47 x i8] zeroinitializer }, align 32
@cx24117_readregN._entry_ptr = internal global ptr @cx24117_readregN._entry, section ".printk_index", align 4
@cx24117_read_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24117_read_status\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() demod%d status = 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24117_read_ber.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_read_ber\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() demod%d ber=0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24117_read_signal_strength.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx24117_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s() demod%d raw / cooked = 0x%04x / 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@cx24117_read_snr.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_read_snr\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() demod%d snr = 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@cx24117_read_ucblocks.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24117_read_ucblocks\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() demod%d ucb=0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx24117_send_diseqc_msg\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: demod %d (\00", [17 x i8] zeroinitializer }, align 32
@cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.103, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x \00", [24 x i8] zeroinitializer }, align 32
@cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.104, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.105, i8 1, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() demod%d burst=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24117_wait_for_lnb.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24117_wait_for_lnb\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() demod%d qstatus = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@cx24117_wait_for_lnb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 893, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: demod%d LNB not ready\0A\00", [37 x i8] zeroinitializer }, align 32
@cx24117_wait_for_lnb._entry_ptr = internal global ptr @cx24117_wait_for_lnb._entry, section ".printk_index", align 4
@cx24117_diseqc_send_burst.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 1, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24117_diseqc_send_burst\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(%d) demod=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@cx24117_set_tone.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.111, ptr @.str.2, ptr @.str.82, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24117_set_tone\00", [47 x i8] zeroinitializer }, align 32
@cx24117_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.111, ptr @.str.2, i32 961, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: demod%d invalid tone=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@cx24117_set_tone._entry_ptr = internal global ptr @cx24117_set_tone._entry, section ".printk_index", align 4
@cx24117_set_voltage.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24117_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s() demod%d %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_13\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_18\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SEC_VOLTAGE_OFF\00", [16 x i8] zeroinitializer }, align 32
@switch.table.cx24117_set_frontend = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 1, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1171, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1179, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1194, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"cx24117_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1610, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1652, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"cx24117_list_mutex\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 155, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1133, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 156, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1144, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1151, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1222, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 500, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 519, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 446, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 456, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 461, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 464, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 476, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 480, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 550, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 722, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 728, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 285, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 298, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 264, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 270, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 319, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 325, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1281, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1535, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1304, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1309, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1314, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1328, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1353, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1375, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1383, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1411, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1413, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1415, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1417, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1420, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1422, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1425, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1427, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1430, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1489, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1511, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1519, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 355, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 405, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [21 x i8] c"cx24117_modfec_modes\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 216, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 416, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 382, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 425, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 430, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 344, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 742, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 775, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 807, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 828, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 860, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1031, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1034, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1035, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1074, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 881, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 892, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 1111, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 957, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 960, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.511 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx24117.c\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 906, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [34 x i8] c"switch.table.cx24117_set_frontend\00", align 1
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_license342, ptr @__UNIQUE_ID_version343, ptr @__ksymtab_cx24117_attach, ptr @__modver_attr, ptr @cx24117_attach._entry, ptr @cx24117_attach._entry.7, ptr @cx24117_attach._entry_ptr, ptr @cx24117_attach._entry_ptr.10, ptr @cx24117_cmd_execute_nolock._entry, ptr @cx24117_cmd_execute_nolock._entry_ptr, ptr @cx24117_firmware_ondemand._entry, ptr @cx24117_firmware_ondemand._entry.35, ptr @cx24117_firmware_ondemand._entry.38, ptr @cx24117_firmware_ondemand._entry_ptr, ptr @cx24117_firmware_ondemand._entry_ptr.37, ptr @cx24117_firmware_ondemand._entry_ptr.40, ptr @cx24117_get_priv._entry, ptr @cx24117_get_priv._entry.15, ptr @cx24117_get_priv._entry_ptr, ptr @cx24117_get_priv._entry_ptr.17, ptr @cx24117_load_firmware._entry, ptr @cx24117_load_firmware._entry.46, ptr @cx24117_load_firmware._entry_ptr, ptr @cx24117_load_firmware._entry_ptr.48, ptr @cx24117_readreg._entry, ptr @cx24117_readreg._entry_ptr, ptr @cx24117_readregN._entry, ptr @cx24117_readregN._entry_ptr, ptr @cx24117_release_priv._entry, ptr @cx24117_release_priv._entry_ptr, ptr @cx24117_set_frontend._entry, ptr @cx24117_set_frontend._entry.66, ptr @cx24117_set_frontend._entry_ptr, ptr @cx24117_set_frontend._entry_ptr.68, ptr @cx24117_set_tone._entry, ptr @cx24117_set_tone._entry_ptr, ptr @cx24117_wait_for_lnb._entry, ptr @cx24117_wait_for_lnb._entry_ptr, ptr @cx24117_writecmd._entry, ptr @cx24117_writecmd._entry_ptr, ptr @cx24117_writereg._entry, ptr @cx24117_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cx24117_attach.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @cx24117_ops, ptr @.str.11, ptr @.str.12, ptr @cx24117_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @cx24117_modfec_modes, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @switch.table.cx24117_set_frontend], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_get_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_get_priv._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_release_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_cmd_execute_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_firmware_ondemand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_firmware_ondemand._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_firmware_ondemand._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_load_firmware._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_writecmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_set_frontend._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_modfec_modes to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_readregN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_wait_for_lnb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24117_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx24117_set_frontend to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx24117_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config, align 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @cx24117_list_mutex, i32 noundef 0) #7
  %.pn120.i = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp.not122.i = icmp eq ptr %.pn120.i, @hybrid_tuner_instance_list
  br i1 %cmp.not122.i, label %entry.if.then39.i_crit_edge, label %for.body.lr.ph.i

entry.if.then39.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

for.body.lr.ph.i:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %i2c, null
  %nr.i114.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn123.i = phi ptr [ %.pn120.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %adap.i = getelementptr i8, ptr %.pn123.i, i32 -12
  %2 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr.i.i, align 4
  %6 = ptrtoint ptr %nr.i114.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i114.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.i = icmp eq i32 %5, %7
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true2.i.for.inc.i_crit_edge

land.lhs.true2.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true2.i
  %i2c_props8.i = getelementptr i8, ptr %.pn123.i, i32 -16
  %8 = ptrtoint ptr %i2c_props8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_props8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %1)
  %cmp10.i = icmp eq i8 %9, %1
  br i1 %cmp10.i, label %for.end.i, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true7.i.for.inc.i_crit_edge, %land.lhs.true2.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn123.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn123.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @hybrid_tuner_instance_list
  br i1 %cmp.not.i, label %for.inc.i.if.then39.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then39.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

for.end.i:                                        ; preds = %land.lhs.true7.i
  %priv.0.le = getelementptr i8, ptr %.pn123.i, i32 -120
  %name.i = getelementptr i8, ptr %.pn123.i, i32 -4
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %conv24.i = zext i8 %1 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %12, i32 noundef %5, i32 noundef %conv24.i) #10
  %count.i = getelementptr i8, ptr %.pn123.i, i32 -8
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp37.i = icmp eq i32 %inc.i, 0
  br i1 %cmp37.i, label %for.end.i.if.then39.i_crit_edge, label %for.end.i.cx24117_get_priv.exit_crit_edge

for.end.i.cx24117_get_priv.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24117_get_priv.exit

for.end.i.if.then39.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %for.end.i.if.then39.i_crit_edge, %for.inc.i.if.then39.i_crit_edge, %entry.if.then39.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 128) #11
  %tobool41.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool41.not.i, label %cx24117_get_priv.exit.thread, label %if.end43.i

cx24117_get_priv.exit.thread:                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #7
  br label %sw.epilog

if.end43.i:                                       ; preds = %if.then39.i
  %i2c_props44.i = getelementptr inbounds %struct.cx24117_priv, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %i2c_props44.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %1, ptr %i2c_props44.i, align 8
  %adap47.i = getelementptr inbounds %struct.cx24117_priv, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %adap47.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %i2c, ptr %adap47.i, align 4
  %name49.i = getelementptr inbounds %struct.cx24117_priv, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %name49.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.5, ptr %name49.i, align 4
  %tobool60.not.i = icmp eq ptr %i2c, null
  br i1 %tobool60.not.i, label %if.end43.i.cond.end66.i_crit_edge, label %cond.true61.i

if.end43.i.cond.end66.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end66.i

cond.true61.i:                                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i116.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i116.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i116.i, align 4
  br label %cond.end66.i

cond.end66.i:                                     ; preds = %cond.true61.i, %if.end43.i.cond.end66.i_crit_edge
  %cond67.i = phi i32 [ %20, %cond.true61.i ], [ -1, %if.end43.i.cond.end66.i_crit_edge ]
  %conv70.i = zext i8 %1 to i32
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %cond67.i, i32 noundef %conv70.i) #10
  %hybrid_tuner_instance_list76.i = getelementptr inbounds %struct.cx24117_priv, ptr %call7.i.i.i, i32 0, i32 5
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hybrid_tuner_instance_list76.i, ptr noundef %21, ptr noundef nonnull @hybrid_tuner_instance_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %cond.end66.i.list_add_tail.exit.i_crit_edge

cond.end66.i.list_add_tail.exit.i_crit_edge:      ; preds = %cond.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %cond.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %hybrid_tuner_instance_list76.i, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %hybrid_tuner_instance_list76.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hybrid_tuner_instance_list, ptr %hybrid_tuner_instance_list76.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.cx24117_priv, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %hybrid_tuner_instance_list76.i, ptr %21, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %cond.end66.i.list_add_tail.exit.i_crit_edge
  %count78.i = getelementptr inbounds %struct.cx24117_priv, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %count78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count78.i, align 8
  %inc79.i = add i32 %26, 1
  store i32 %inc79.i, ptr %count78.i, align 8
  br label %cx24117_get_priv.exit

cx24117_get_priv.exit:                            ; preds = %list_add_tail.exit.i, %for.end.i.cx24117_get_priv.exit_crit_edge
  %priv.1 = phi ptr [ %call7.i.i.i, %list_add_tail.exit.i ], [ %priv.0.le, %for.end.i.cx24117_get_priv.exit_crit_edge ]
  %__ret.1.i = phi i32 [ %inc79.i, %list_add_tail.exit.i ], [ %inc.i, %for.end.i.cx24117_get_priv.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #7
  %27 = zext i32 %__ret.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1.i, label %cx24117_get_priv.exit.sw.epilog_crit_edge [
    i32 0, label %do.end
    i32 1, label %sw.bb1
  ]

cx24117_get_priv.exit.sw.epilog_crit_edge:        ; preds = %cx24117_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %cx24117_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  br label %cleanup

sw.bb1:                                           ; preds = %cx24117_get_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %i2c2 = getelementptr inbounds %struct.cx24117_priv, ptr %priv.1, i32 0, i32 1
  %28 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %i2c, ptr %i2c2, align 4
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config, align 1
  %31 = ptrtoint ptr %priv.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %priv.1, align 4
  %fe_lock = getelementptr inbounds %struct.cx24117_priv, ptr %priv.1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %fe_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @cx24117_attach.__key) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %cx24117_get_priv.exit.sw.epilog_crit_edge, %cx24117_get_priv.exit.thread
  %__ret.1.i47 = phi i32 [ -12, %cx24117_get_priv.exit.thread ], [ %__ret.1.i, %cx24117_get_priv.exit.sw.epilog_crit_edge ], [ 1, %sw.bb1 ]
  %priv.146 = phi ptr [ null, %cx24117_get_priv.exit.thread ], [ %priv.1, %cx24117_get_priv.exit.sw.epilog_crit_edge ], [ %priv.1, %sw.bb1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1160) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %error2, label %if.end

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %__ret.1.i47, -1
  %demod9 = getelementptr inbounds %struct.cx24117_state, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %demod9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %demod9, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %priv.146, ptr %call7.i.i, align 8
  %i2c15 = getelementptr inbounds %struct.cx24117_priv, ptr %priv.146, i32 0, i32 1
  %35 = ptrtoint ptr %i2c15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c15, align 4
  %dev16 = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %sub) #10
  %frontend = getelementptr inbounds %struct.cx24117_state, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.cx24117_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = call ptr @memcpy(ptr %ops, ptr @cx24117_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx24117_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  br label %cleanup

error2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cx24117_release_priv(ptr noundef %priv.146)
  br label %cleanup

cleanup:                                          ; preds = %error2, %if.end, %do.end
  %retval.0 = phi ptr [ %frontend, %if.end ], [ null, %error2 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24117_release_priv(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cx24117_list_mutex, i32 noundef 0) #7
  %cmp.not = icmp eq ptr %priv, null
  br i1 %cmp.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 4
  %count = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %8 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_props, align 4
  %conv = zext i8 %9 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %3, i32 noundef %cond, i32 noundef %conv) #10
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hybrid_tuner_instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %hybrid_tuner_instance_list, align 4
  %prev.i = getelementptr inbounds %struct.cx24117_priv, ptr %priv, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %priv) #7
  br label %if.end20

if.end20:                                         ; preds = %list_del.exit, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cx24117_list_mutex) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx24117_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_release.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_release, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_release.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call fastcc void @cx24117_release_priv(ptr noundef %9)
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_initfe(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24117_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %6 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_initfe.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_initfe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_initfe.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %12) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %fe_lock = getelementptr inbounds %struct.cx24117_priv, ptr %14, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock, i32 noundef 0) #7
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 54, ptr %2, align 1
  %demod4 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %demod4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %demod4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp ne i32 %17, 0
  %conv = zext i1 %tobool5.not to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %3, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %4, align 1
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %cmd, align 1
  %call10 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end13, label %do.end.exit_crit_edge

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end13:                                         ; preds = %do.end
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %demodulator_priv, align 4
  %dsec_cmd.i = getelementptr inbounds %struct.cx24117_state, ptr %22, i32 0, i32 4
  %args.i = getelementptr inbounds %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 33, ptr %args.i, align 1
  %demod.i = getelementptr inbounds %struct.cx24117_state, ptr %22, i32 0, i32 5
  %24 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %demod.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %conv.i = zext i1 %tobool.not.i to i8
  %arrayidx3.i = getelementptr %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %arrayidx6.i = getelementptr %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx9.i = getelementptr %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %arrayidx9.i, align 1
  %arrayidx12.i = getelementptr %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1, i32 4
  %29 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx15.i = getelementptr %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx15.i, align 1
  %arrayidx18.i = getelementptr %struct.cx24117_state, ptr %22, i32 0, i32 4, i32 1, i32 6
  %31 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx18.i, align 1
  %32 = ptrtoint ptr %dsec_cmd.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 7, ptr %dsec_cmd.i, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 60, ptr %2, align 1
  %34 = ptrtoint ptr %demod4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %demod4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool22.not = icmp ne i32 %35, 0
  %conv24 = zext i1 %tobool22.not to i8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv24, ptr %3, align 1
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %4, align 1
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %5, align 1
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %cmd, align 1
  %call32 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end36, label %if.end13.exit_crit_edge

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end36:                                         ; preds = %if.end13
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 52, ptr %2, align 1
  %41 = ptrtoint ptr %demod4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %demod4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool40.not = icmp ne i32 %42, 0
  %conv42 = zext i1 %tobool40.not to i8
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv42, ptr %3, align 1
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %4, align 1
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %cmd, align 1
  %call48 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end52, label %if.end36.exit_crit_edge

if.end36.exit_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end52:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 50, ptr %2, align 1
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 48, ptr %3, align 1
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 48, ptr %4, align 1
  %49 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %cmd, align 1
  %call60 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  br label %exit

exit:                                             ; preds = %if.end52, %if.end36.exit_crit_edge, %if.end13.exit_crit_edge, %do.end.exit_crit_edge
  %ret.0 = phi i32 [ %call10, %do.end.exit_crit_edge ], [ %call32, %if.end13.exit_crit_edge ], [ %call48, %if.end36.exit_crit_edge ], [ %call60, %if.end52 ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %fe_lock62 = getelementptr inbounds %struct.cx24117_priv, ptr %51, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock62) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24117_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_sleep.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_sleep.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.58, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %10 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 54, ptr %11, align 1
  %demod3 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %demod3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %demod3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp ne i32 %14, 0
  %conv = zext i1 %tobool4.not to i8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %10, align 1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %9, align 1
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %cmd, align 1
  %18 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %demodulator_priv, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %21, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %23, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_tune(ptr nocapture noundef readonly %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_tune.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_tune, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_tune.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.59, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %delay, align 4
  br i1 %re_tune, label %if.then5, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %call6 = tail call i32 @cx24117_set_frontend(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup12_crit_edge

if.then5.cleanup12_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %9 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %demodulator_priv, align 4
  %demod.i = getelementptr inbounds %struct.cx24117_state, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %demod.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %conv.i = select i1 %cmp.i, i8 58, i8 91
  %call.i = tail call fastcc i32 @cx24117_readreg(ptr noundef %10, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_tune, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !293

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i, 15
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %demod.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_status.__UNIQUE_ID_ddebug304, ptr noundef %dev.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %18, i32 noundef %and.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end10
  %19 = and i32 %call.i, 7
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %status, align 4
  %and19.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.end.i.cleanup12_crit_edge, label %if.then21.i

do.end.i.cleanup12_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

if.then21.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %or22.i = or i32 %22, 24
  store i32 %or22.i, ptr %status, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %if.then21.i, %do.end.i.cleanup12_crit_edge, %if.then5.cleanup12_crit_edge
  %retval.1 = phi i32 [ %call6, %if.then5.cleanup12_crit_edge ], [ 0, %do.end.i.cleanup12_crit_edge ], [ 0, %if.then21.i ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24117_get_algo(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24117_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %9 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %10 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %11 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %12 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 10
  %13 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %14 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 12
  %15 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 13
  %16 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 14
  %17 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 15
  %18 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.60, i32 noundef %24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %25 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delivery_system, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %26, label %do.end150 [
    i32 5, label %do.body3
    i32 6, label %do.body48
  ]

do.body3:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then15)) #7
          to label %do.end22 [label %if.then15], !srcloc !293

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %i2c17 = getelementptr inbounds %struct.cx24117_priv, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %i2c17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c17, align 4
  %dev18 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  %demod19 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %demod19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %demod19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug321, ptr noundef %dev18, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef %33) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then15, %do.body3
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not = icmp eq i32 %35, 0
  br i1 %cmp.not, label %if.end45, label %do.body24

do.body24:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then36)) #7
          to label %cleanup [label %if.then36], !srcloc !293

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %i2c38 = getelementptr inbounds %struct.cx24117_priv, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %i2c38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c38, align 4
  %dev39 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %demod40 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %demod40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %demod40, align 4
  %42 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %modulation, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug322, ptr noundef %dev39, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %41, i32 noundef %43) #7
  br label %cleanup

if.end45:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %pilot_val = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 11
  %44 = ptrtoint ptr %pilot_val to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %pilot_val, align 1
  br label %sw.epilog156

do.body48:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then60)) #7
          to label %do.end67 [label %if.then60], !srcloc !293

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %i2c62 = getelementptr inbounds %struct.cx24117_priv, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %i2c62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c62, align 4
  %dev63 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 9
  %demod64 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %demod64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %demod64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug323, ptr noundef %dev63, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.60, i32 noundef %50) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then60, %do.body48
  %modulation68 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %modulation68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %modulation68, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %52, label %do.body73 [
    i32 9, label %do.end67.if.end94_crit_edge
    i32 0, label %do.end67.if.end94_crit_edge799
  ]

do.end67.if.end94_crit_edge799:                   ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.end67.if.end94_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

do.body73:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then85)) #7
          to label %cleanup [label %if.then85], !srcloc !293

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %i2c87 = getelementptr inbounds %struct.cx24117_priv, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %i2c87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c87, align 4
  %dev88 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 9
  %demod89 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %demod89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %demod89, align 4
  %60 = ptrtoint ptr %modulation68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %modulation68, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug324, ptr noundef %dev88, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef %59, i32 noundef %61) #7
  br label %cleanup

if.end94:                                         ; preds = %do.end67.if.end94_crit_edge, %do.end67.if.end94_crit_edge799
  %pilot = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %62 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pilot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %64 = icmp ult i32 %63, 3
  br i1 %64, label %switch.lookup, label %do.body104

do.body104:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then116)) #7
          to label %cleanup [label %if.then116], !srcloc !293

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %i2c118 = getelementptr inbounds %struct.cx24117_priv, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %i2c118 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c118, align 4
  %dev119 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 9
  %demod120 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %demod120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %demod120, align 4
  %71 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pilot, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug325, ptr noundef %dev119, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.60, i32 noundef %70, i32 noundef %72) #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end94
  %switch.cast = trunc i32 %63 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 -8388544, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %pilot_val103 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 11
  %73 = ptrtoint ptr %pilot_val103 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %switch.masked, ptr %pilot_val103, align 1
  %rolloff = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %74 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rolloff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %76 = icmp ult i32 %75, 4
  br i1 %76, label %switch.lookup795, label %do.end140

do.end140:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %i2c142 = getelementptr inbounds %struct.cx24117_priv, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %i2c142 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c142, align 4
  %dev143 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9
  %demod144 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %demod144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %demod144, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev143, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.5, i32 noundef %82, i32 noundef %75) #10
  br label %cleanup

do.end150:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %i2c152 = getelementptr inbounds %struct.cx24117_priv, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %i2c152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c152, align 4
  %dev153 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 9
  %demod154 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %87 = ptrtoint ptr %demod154 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %demod154, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev153, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.5, i32 noundef %88, i32 noundef %26) #10
  br label %cleanup

switch.lookup795:                                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %switch.shiftamt796 = shl i32 %75, 3
  %switch.downshift797 = lshr i32 33619970, %switch.shiftamt796
  %switch.masked798 = trunc i32 %switch.downshift797 to i8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cx24117_set_frontend, i32 0, i32 %75
  %89 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %89)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog156

sw.epilog156:                                     ; preds = %switch.lookup795, %if.end45
  %.sink789 = phi i8 [ 2, %if.end45 ], [ %switch.masked798, %switch.lookup795 ]
  %retune.0 = phi i32 [ 1, %if.end45 ], [ %switch.load, %switch.lookup795 ]
  %rolloff_val127 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 12
  %90 = ptrtoint ptr %rolloff_val127 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink789, ptr %rolloff_val127, align 4
  %91 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delivery_system, align 4
  %dnxt158 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3
  %delsys = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 4
  %93 = ptrtoint ptr %delsys to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %delsys, align 4
  %modulation159 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %modulation159 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %modulation159, align 4
  %modulation161 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 5
  %96 = ptrtoint ptr %modulation161 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %modulation161, align 4
  %97 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dtv_property_cache, align 4
  %99 = ptrtoint ptr %dnxt158 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %dnxt158, align 4
  %pilot164 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %100 = ptrtoint ptr %pilot164 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pilot164, align 4
  %pilot166 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 6
  %102 = ptrtoint ptr %pilot166 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %pilot166, align 4
  %rolloff167 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 14
  %103 = ptrtoint ptr %rolloff167 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rolloff167, align 4
  %rolloff169 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 7
  %105 = ptrtoint ptr %rolloff169 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %rolloff169, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %106 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %inversion, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_inversion.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !293

if.then.i:                                        ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 9
  %demod.i = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %112 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %demod.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_inversion.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef %107, i32 noundef %113) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.epilog156
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %114 = icmp ult i32 %107, 3
  br i1 %114, label %switch.lookup790, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup790:                                 ; preds = %do.end.i
  %switch.cast791 = trunc i32 %107 to i24
  %switch.shiftamt792 = shl i24 %switch.cast791, 3
  %switch.downshift793 = lshr i24 787456, %switch.shiftamt792
  %switch.masked794 = trunc i24 %switch.downshift793 to i8
  %inversion_val8.i = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 10
  %115 = ptrtoint ptr %inversion_val8.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %switch.masked794, ptr %inversion_val8.i, align 2
  %inversion10.i = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 2
  %116 = ptrtoint ptr %inversion10.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %107, ptr %inversion10.i, align 4
  %117 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delivery_system, align 4
  %119 = ptrtoint ptr %modulation159 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %modulation159, align 4
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %121 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fec_inner, align 4
  %call176 = tail call fastcc i32 @cx24117_set_fec(ptr noundef %1, i32 noundef %118, i32 noundef %120, i32 noundef %122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177.not = icmp eq i32 %call176, 0
  br i1 %cmp177.not, label %if.end179, label %switch.lookup790.cleanup_crit_edge

switch.lookup790.cleanup_crit_edge:               ; preds = %switch.lookup790
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end179:                                        ; preds = %switch.lookup790
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %123 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %symbol_rate, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_symbolrate.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then.i756)) #7
          to label %do.end.i757 [label %if.then.i756], !srcloc !293

if.then.i756:                                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %i2c.i753 = getelementptr inbounds %struct.cx24117_priv, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %i2c.i753 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c.i753, align 4
  %dev.i754 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 9
  %demod.i755 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %129 = ptrtoint ptr %demod.i755 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %demod.i755, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_symbolrate.__UNIQUE_ID_ddebug297, ptr noundef %dev.i754, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.88, i32 noundef %124, i32 noundef %130) #7
  br label %do.end.i757

do.end.i757:                                      ; preds = %if.then.i756, %if.end179
  %symbol_rate.i = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 3, i32 1
  %131 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %124, ptr %symbol_rate.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_symbolrate.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then15.i)) #7
          to label %cx24117_set_symbolrate.exit [label %if.then15.i], !srcloc !293

if.then15.i:                                      ; preds = %do.end.i757
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %i2c17.i = getelementptr inbounds %struct.cx24117_priv, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %i2c17.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i2c17.i, align 4
  %dev18.i = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 9
  %demod19.i = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %136 = ptrtoint ptr %demod19.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %demod19.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_symbolrate.__UNIQUE_ID_ddebug298, ptr noundef %dev18.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, i32 noundef %137, i32 noundef %124) #7
  br label %cx24117_set_symbolrate.exit

cx24117_set_symbolrate.exit:                      ; preds = %if.then15.i, %do.end.i757
  %138 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %demodulator_priv, align 4
  %dcur.i = getelementptr inbounds %struct.cx24117_state, ptr %139, i32 0, i32 2
  %dnxt.i = getelementptr inbounds %struct.cx24117_state, ptr %139, i32 0, i32 3
  %140 = call ptr @memcpy(ptr %dcur.i, ptr %dnxt.i, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then196)) #7
          to label %do.body204 [label %if.then196], !srcloc !293

if.then196:                                       ; preds = %cx24117_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %i2c198 = getelementptr inbounds %struct.cx24117_priv, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %i2c198 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c198, align 4
  %dev199 = getelementptr inbounds %struct.i2c_adapter, ptr %144, i32 0, i32 9
  %delsys200 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 4
  %145 = ptrtoint ptr %delsys200 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delsys200, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug326, ptr noundef %dev199, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.60, i32 noundef %146) #7
  br label %do.body204

do.body204:                                       ; preds = %if.then196, %cx24117_set_symbolrate.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then216)) #7
          to label %do.body225 [label %if.then216], !srcloc !293

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %i2c218 = getelementptr inbounds %struct.cx24117_priv, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %i2c218 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c218, align 4
  %dev219 = getelementptr inbounds %struct.i2c_adapter, ptr %150, i32 0, i32 9
  %modulation221 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 5
  %151 = ptrtoint ptr %modulation221 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %modulation221, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug327, ptr noundef %dev219, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.60, i32 noundef %152) #7
  br label %do.body225

do.body225:                                       ; preds = %if.then216, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then237)) #7
          to label %do.body246 [label %if.then237], !srcloc !293

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %i2c239 = getelementptr inbounds %struct.cx24117_priv, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %i2c239 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i2c239, align 4
  %dev240 = getelementptr inbounds %struct.i2c_adapter, ptr %156, i32 0, i32 9
  %dcur241 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2
  %157 = ptrtoint ptr %dcur241 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dcur241, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug328, ptr noundef %dev240, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.60, i32 noundef %158) #7
  br label %do.body246

do.body246:                                       ; preds = %if.then237, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then258)) #7
          to label %do.body269 [label %if.then258], !srcloc !293

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %i2c260 = getelementptr inbounds %struct.cx24117_priv, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %i2c260 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i2c260, align 4
  %dev261 = getelementptr inbounds %struct.i2c_adapter, ptr %162, i32 0, i32 9
  %pilot263 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 6
  %163 = ptrtoint ptr %pilot263 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pilot263, align 4
  %pilot_val265 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 11
  %165 = ptrtoint ptr %pilot_val265 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %pilot_val265, align 1
  %conv = zext i8 %166 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug329, ptr noundef %dev261, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.60, i32 noundef %164, i32 noundef %conv) #7
  br label %do.body269

do.body269:                                       ; preds = %if.then258, %do.body246
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then281)) #7
          to label %do.body288 [label %if.then281], !srcloc !293

if.then281:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %i2c283 = getelementptr inbounds %struct.cx24117_priv, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %i2c283 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i2c283, align 4
  %dev284 = getelementptr inbounds %struct.i2c_adapter, ptr %170, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug330, ptr noundef %dev284, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.60, i32 noundef %retune.0) #7
  br label %do.body288

do.body288:                                       ; preds = %if.then281, %do.body269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then300)) #7
          to label %do.body312 [label %if.then300], !srcloc !293

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %i2c302 = getelementptr inbounds %struct.cx24117_priv, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %i2c302 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i2c302, align 4
  %dev303 = getelementptr inbounds %struct.i2c_adapter, ptr %174, i32 0, i32 9
  %rolloff305 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 7
  %175 = ptrtoint ptr %rolloff305 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rolloff305, align 4
  %rolloff_val307 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 12
  %177 = ptrtoint ptr %rolloff_val307 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %rolloff_val307, align 4
  %conv308 = zext i8 %178 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug331, ptr noundef %dev303, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.60, i32 noundef %176, i32 noundef %conv308) #7
  br label %do.body312

do.body312:                                       ; preds = %if.then300, %do.body288
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then324)) #7
          to label %do.body333 [label %if.then324], !srcloc !293

if.then324:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %i2c326 = getelementptr inbounds %struct.cx24117_priv, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %i2c326 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i2c326, align 4
  %dev327 = getelementptr inbounds %struct.i2c_adapter, ptr %182, i32 0, i32 9
  %symbol_rate329 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 1
  %183 = ptrtoint ptr %symbol_rate329 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %symbol_rate329, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug332, ptr noundef %dev327, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.60, i32 noundef %184) #7
  br label %do.body333

do.body333:                                       ; preds = %if.then324, %do.body312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then345)) #7
          to label %do.body357 [label %if.then345], !srcloc !293

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %i2c347 = getelementptr inbounds %struct.cx24117_priv, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %i2c347 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i2c347, align 4
  %dev348 = getelementptr inbounds %struct.i2c_adapter, ptr %188, i32 0, i32 9
  %fec = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 3
  %189 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %fec, align 4
  %fec_mask = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 9
  %191 = ptrtoint ptr %fec_mask to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %fec_mask, align 1
  %conv351 = zext i8 %192 to i32
  %fec_val = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 8
  %193 = ptrtoint ptr %fec_val to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %fec_val, align 4
  %conv353 = zext i8 %194 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug333, ptr noundef %dev348, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.60, i32 noundef %190, i32 noundef %conv351, i32 noundef %conv353) #7
  br label %do.body357

do.body357:                                       ; preds = %if.then345, %do.body333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then369)) #7
          to label %do.end379 [label %if.then369], !srcloc !293

if.then369:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 4
  %i2c371 = getelementptr inbounds %struct.cx24117_priv, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %i2c371 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %i2c371, align 4
  %dev372 = getelementptr inbounds %struct.i2c_adapter, ptr %198, i32 0, i32 9
  %inversion374 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 2
  %199 = ptrtoint ptr %inversion374 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %inversion374, align 4
  %inversion_val = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 10
  %201 = ptrtoint ptr %inversion_val to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %inversion_val, align 2
  %conv376 = zext i8 %202 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug334, ptr noundef %dev372, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.60, i32 noundef %200, i32 noundef %conv376) #7
  br label %do.end379

do.end379:                                        ; preds = %if.then369, %do.body357
  %203 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 17, ptr %2, align 1
  %demod380 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %204 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %demod380, align 4
  %conv381 = trunc i32 %205 to i8
  %206 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv381, ptr %3, align 1
  %dcur384 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2
  %207 = ptrtoint ptr %dcur384 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dcur384, align 4
  %and = lshr i32 %208, 16
  %conv386 = trunc i32 %and to i8
  %209 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv386, ptr %4, align 1
  %and391 = lshr i32 %208, 8
  %conv393 = trunc i32 %and391 to i8
  %210 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv393, ptr %5, align 1
  %conv399 = trunc i32 %208 to i8
  %211 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv399, ptr %6, align 1
  %symbol_rate403 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 1
  %212 = ptrtoint ptr %symbol_rate403 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %symbol_rate403, align 4
  %div = udiv i32 %213, 1000
  %and404 = lshr i32 %div, 8
  %conv406 = trunc i32 %and404 to i8
  %214 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv406, ptr %7, align 1
  %conv413 = trunc i32 %div to i8
  %215 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv413, ptr %8, align 1
  %inversion_val417 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 10
  %216 = ptrtoint ptr %inversion_val417 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %inversion_val417, align 2
  %218 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %9, align 1
  %fec_val421 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 8
  %219 = ptrtoint ptr %fec_val421 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %fec_val421, align 4
  %pilot_val424 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 11
  %221 = ptrtoint ptr %pilot_val424 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %pilot_val424, align 1
  %or699 = or i8 %222, %220
  %223 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %or699, ptr %10, align 1
  %224 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 19, ptr %11, align 1
  %225 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 -120, ptr %12, align 1
  %rolloff_val434 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 12
  %226 = ptrtoint ptr %rolloff_val434 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %rolloff_val434, align 4
  %228 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %13, align 1
  %fec_mask438 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 9
  %229 = ptrtoint ptr %fec_mask438 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %fec_mask438, align 1
  %231 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %213)
  %cmp443 = icmp ugt i32 %213, 30000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %213)
  %cmp448 = icmp ugt i32 %213, 10000000
  %. = select i1 %cmp448, i8 6, i8 10
  %.700 = select i1 %cmp448, i8 3, i8 5
  %reg_ratediv.0 = select i1 %cmp443, i8 4, i8 %.
  %reg_clkdiv.0 = select i1 %cmp443, i8 2, i8 %.700
  %232 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %reg_ratediv.0, ptr %15, align 1
  %233 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %reg_clkdiv.0, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp459 = icmp eq i32 %205, 0
  %conv461 = select i1 %cmp459, i8 -26, i8 -25
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext %conv461, i8 noundef zeroext %reg_clkdiv.0)
  %234 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %demod380, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp464 = icmp eq i32 %235, 0
  %conv467 = select i1 %cmp464, i8 -16, i8 -15
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext %conv467, i8 noundef zeroext %reg_ratediv.0)
  %236 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %17, align 1
  %237 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 16, ptr %cmd, align 1
  %rolloff560 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 7
  br label %do.body471

do.body471:                                       ; preds = %do.cond567.do.body471_crit_edge, %do.end379
  %retune.1 = phi i32 [ %retune.0, %do.end379 ], [ %dec568, %do.cond567.do.body471_crit_edge ]
  %238 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %demod380, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp473 = icmp eq i32 %239, 0
  %conv476 = select i1 %cmp473, i8 58, i8 91
  %call477 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv476)
  %and478 = and i32 %call477, 192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then491)) #7
          to label %do.end498 [label %if.then491], !srcloc !293

if.then491:                                       ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #9
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %1, align 4
  %i2c493 = getelementptr inbounds %struct.cx24117_priv, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %i2c493 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %i2c493, align 4
  %dev494 = getelementptr inbounds %struct.i2c_adapter, ptr %243, i32 0, i32 9
  %244 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %demod380, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug335, ptr noundef %dev494, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.60, i32 noundef %245, i32 noundef %and478) #7
  br label %do.end498

do.end498:                                        ; preds = %if.then491, %do.body471
  %246 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %demod380, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %cmp500 = icmp eq i32 %247, 0
  %conv503 = select i1 %cmp500, i8 58, i8 91
  %conv504 = trunc i32 %and478 to i8
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext %conv503, i8 noundef zeroext %conv504)
  %248 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %demodulator_priv, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %251, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %252 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %249, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %253, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp507.not = icmp eq i32 %call.i, 0
  br i1 %cmp507.not, label %do.end498.for.body_crit_edge, label %do.end498.cleanup_crit_edge

do.end498.cleanup_crit_edge:                      ; preds = %do.end498
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end498.for.body_crit_edge:                     ; preds = %do.end498
  br label %for.body

for.body:                                         ; preds = %if.end538.for.body_crit_edge, %do.end498.for.body_crit_edge
  %i.0788 = phi i32 [ %inc, %if.end538.for.body_crit_edge ], [ 0, %do.end498.for.body_crit_edge ]
  %254 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %demodulator_priv, align 4
  %demod.i760 = getelementptr inbounds %struct.cx24117_state, ptr %255, i32 0, i32 5
  %256 = ptrtoint ptr %demod.i760 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %demod.i760, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp.i = icmp eq i32 %257, 0
  %conv.i = select i1 %cmp.i, i8 58, i8 91
  %call.i761 = tail call fastcc i32 @cx24117_readreg(ptr noundef %255, i8 noundef zeroext %conv.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then.i764)) #7
          to label %do.end.i765 [label %if.then.i764], !srcloc !293

if.then.i764:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i761, 15
  %258 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %255, align 4
  %i2c.i762 = getelementptr inbounds %struct.cx24117_priv, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %i2c.i762 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %i2c.i762, align 4
  %dev.i763 = getelementptr inbounds %struct.i2c_adapter, ptr %261, i32 0, i32 9
  %262 = ptrtoint ptr %demod.i760 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %demod.i760, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_status.__UNIQUE_ID_ddebug304, ptr noundef %dev.i763, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %263, i32 noundef %and.i) #7
  br label %do.end.i765

do.end.i765:                                      ; preds = %if.then.i764, %for.body
  %264 = and i32 %call.i761, 1
  %and19.i = and i32 %call.i761, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or22.i = or i32 %call.i761, 8
  %tunerstat.1 = select i1 %tobool20.not.i, i32 %264, i32 %or22.i
  %and514 = and i32 %tunerstat.1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and514)
  %cmp515 = icmp eq i32 %and514, 9
  br i1 %cmp515, label %do.body518, label %if.end538

do.body518:                                       ; preds = %do.end.i765
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then530)) #7
          to label %cleanup [label %if.then530], !srcloc !293

if.then530:                                       ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #9
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %1, align 4
  %i2c532 = getelementptr inbounds %struct.cx24117_priv, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %i2c532 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %i2c532, align 4
  %dev533 = getelementptr inbounds %struct.i2c_adapter, ptr %268, i32 0, i32 9
  %269 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %demod380, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug336, ptr noundef %dev533, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.60, i32 noundef %270) #7
  br label %cleanup

if.end538:                                        ; preds = %do.end.i765
  tail call void @msleep(i32 noundef 20) #7
  %inc = add nuw nsw i32 %i.0788, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %do.body539, label %if.end538.for.body_crit_edge

if.end538.for.body_crit_edge:                     ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body539:                                       ; preds = %if.end538
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_frontend, %if.then551)) #7
          to label %do.end558 [label %if.then551], !srcloc !293

if.then551:                                       ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %1, align 4
  %i2c553 = getelementptr inbounds %struct.cx24117_priv, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %i2c553 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %i2c553, align 4
  %dev554 = getelementptr inbounds %struct.i2c_adapter, ptr %274, i32 0, i32 9
  %275 = ptrtoint ptr %demod380 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %demod380, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_frontend.__UNIQUE_ID_ddebug337, ptr noundef %dev554, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.60, i32 noundef %276) #7
  br label %do.end558

do.end558:                                        ; preds = %if.then551, %do.body539
  %277 = ptrtoint ptr %rolloff560 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %rolloff560, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %278)
  %cmp561 = icmp eq i32 %278, 3
  br i1 %cmp561, label %if.then563, label %do.end558.do.cond567_crit_edge

do.end558.do.cond567_crit_edge:                   ; preds = %do.end558
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond567

if.then563:                                       ; preds = %do.end558
  call void @__sanitizer_cov_trace_pc() #9
  %279 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %13, align 1
  %dec = add i8 %280, -1
  store i8 %dec, ptr %13, align 1
  br label %do.cond567

do.cond567:                                       ; preds = %if.then563, %do.end558.do.cond567_crit_edge
  %dec568 = add nsw i32 %retune.1, -1
  %tobool569.not = icmp eq i32 %dec568, 0
  br i1 %tobool569.not, label %do.cond567.cleanup_crit_edge, label %do.cond567.do.body471_crit_edge

do.cond567.do.body471_crit_edge:                  ; preds = %do.cond567
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body471

do.cond567.cleanup_crit_edge:                     ; preds = %do.cond567
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.cond567.cleanup_crit_edge, %if.then530, %do.body518, %do.end498.cleanup_crit_edge, %switch.lookup790.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %do.end150, %do.end140, %if.then116, %do.body104, %if.then85, %do.body73, %if.then36, %do.body24
  %retval.0 = phi i32 [ -22, %do.end150 ], [ -95, %do.end140 ], [ -22, %if.then36 ], [ -95, %if.then85 ], [ -95, %if.then116 ], [ %call176, %switch.lookup790.cleanup_crit_edge ], [ 0, %if.then530 ], [ -22, %do.body24 ], [ -95, %do.body73 ], [ -95, %do.body104 ], [ -22, %do.end.i.cleanup_crit_edge ], [ 0, %do.body518 ], [ -22, %do.end498.cleanup_crit_edge ], [ -22, %do.cond567.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %c) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %cmd = alloca %struct.cx24117_cmd, align 1
  %buf = alloca [27 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds i8, ptr %cmd, i32 3
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %buf) #7
  %6 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 1
  %7 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 10
  %12 = getelementptr inbounds [27 x i8], ptr %buf, i32 0, i32 11
  %13 = call ptr @memset(ptr %buf, i32 255, i32 27)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 28, ptr %2, align 1
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %demod, align 4
  %conv = trunc i32 %16 to i8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %3, align 1
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %cmd, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %22, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5 = icmp eq i32 %24, 0
  %conv7 = select i1 %cmp5, i8 52, i8 85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %25 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %36 = load i8, ptr %29, align 4
  %conv6.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %38 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %39 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 27, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %40 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf, ptr %buf10.i, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %29, i32 0, i32 1
  %41 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c.i, align 4
  %call.i100 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.i = icmp slt i32 %call.i100, 0
  br i1 %cmp.i, label %cx24117_readregN.exit, label %if.end12

cx24117_readregN.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %i2c14.i = getelementptr inbounds %struct.cx24117_priv, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %i2c14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c14.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %demod, align 4
  %49 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reg.addr.i, align 1
  %conv15.i = zext i8 %50 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.5, i32 noundef %48, i32 noundef %call.i100, i32 noundef %conv15.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %8, align 1
  %53 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp15 = icmp eq i32 %54, 0
  %neg = sext i1 %cmp15 to i8
  %cond19 = xor i8 %52, %neg
  %55 = lshr i8 %cond19, 6
  %.lobit = and i8 %55, 1
  %56 = zext i8 %.lobit to i32
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %57, align 4
  %59 = and i8 %52, 63
  %and28 = zext i8 %59 to i32
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 15
  %60 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %cmp29 = icmp eq i32 %61, 6
  br i1 %cmp29, label %if.then31, label %if.end12.if.end38_crit_edge

if.end12.if.end38_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %59)
  %cmp32 = icmp ugt i8 %59, 11
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %and28, 9
  br label %if.end38

if.else35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %add36 = add nuw nsw i32 %and28, 7
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then34, %if.end12.if.end38_crit_edge
  %idx.0 = phi i32 [ %add, %if.then34 ], [ %add36, %if.else35 ], [ %and28, %if.end12.if.end38_crit_edge ]
  %modulation = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %idx.0, i32 1
  %62 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %modulation, align 4
  %modulation40 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %64 = ptrtoint ptr %modulation40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %modulation40, align 4
  %fec = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %idx.0, i32 2
  %65 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fec, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %67 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %fec_inner, align 4
  %68 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buf, align 1
  %conv43 = zext i8 %69 to i32
  %shl = shl nuw nsw i32 %conv43, 16
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %6, align 1
  %conv45 = zext i8 %71 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or = or i32 %shl46, %shl
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 1
  %conv48 = zext i8 %73 to i32
  %or49 = or i32 %or, %conv48
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %9, align 1
  %conv51 = zext i8 %75 to i16
  %shl52 = shl nuw i16 %conv51, 8
  %76 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %10, align 1
  %conv54 = zext i8 %77 to i16
  %or55 = or i16 %shl52, %conv54
  %conv57 = sext i16 %or55 to i32
  %add58 = add nsw i32 %or49, %conv57
  %78 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add58, ptr %c, align 4
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %11, align 1
  %conv60 = zext i8 %80 to i16
  %shl61 = shl nuw i16 %conv60, 8
  %81 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %12, align 1
  %conv63 = zext i8 %82 to i16
  %or64 = or i16 %shl61, %conv63
  %conv66 = sext i16 %or64 to i32
  %mul = mul nsw i32 %conv66, -1000
  %symbol_rate = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %symbol_rate, align 4
  %add67 = add i32 %mul, %84
  %symbol_rate68 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 10
  %85 = ptrtoint ptr %symbol_rate68 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add67, ptr %symbol_rate68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %cx24117_readregN.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i100, %cx24117_readregN.exit ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %conv = select i1 %cmp, i8 58, i8 91
  %call = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_read_status, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, 15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_status.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef %9, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = and i32 %call, 3
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %status, align 4
  %and14 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end.if.end18_crit_edge, label %if.then16

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %or17 = or i32 %13, 4
  store i32 %or17, ptr %status, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.end.if.end18_crit_edge
  %and19 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %or22 = or i32 %15, 24
  store i32 %or22, ptr %status, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  %3 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %conv = select i1 %cmp, i8 71, i8 104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %5 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %6, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf, ptr %buf10.i, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cx24117_readregN.exit, label %if.end

cx24117_readregN.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %i2c14.i = getelementptr inbounds %struct.cx24117_priv, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %i2c14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c14.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %demod, align 4
  %29 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg.addr.i, align 1
  %conv15.i = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.5, i32 noundef %28, i32 noundef %call.i, i32 noundef %conv15.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 4
  %conv3 = zext i8 %33 to i32
  %shl = shl nuw i32 %conv3, 24
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %31, align 1
  %conv5 = zext i8 %35 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %shl9 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl, %conv3
  %or10 = or i32 %or, %shl6
  %or13 = or i32 %or10, %shl9
  %36 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or13, ptr %ber, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_ber.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_read_ber, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !293

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %demod, align 4
  %43 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ber, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_ber.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, i32 noundef %42, i32 noundef %44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end, %cx24117_readregN.exit
  %retval.0 = phi i32 [ %call.i, %cx24117_readregN.exit ], [ 0, %if.then17 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef %signal_strength) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %cmd = alloca %struct.cx24117_cmd, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds i8, ptr %cmd, i32 3
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %buf, align 1, !annotation !294
  %7 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !294
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %demod, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 26, ptr %2, align 1
  %conv2 = trunc i32 %10 to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2, ptr %3, align 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %cmd, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %15, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %17, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %conv = select i1 %cmp, i8 58, i8 91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i, align 2
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %19, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %29 = load i8, ptr %22, align 4
  %conv6.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %31 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %32 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %33 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf, ptr %buf10.i, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %22, i32 0, i32 1
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i = icmp slt i32 %call.i42, 0
  br i1 %cmp.i, label %cx24117_readregN.exit, label %if.end11

cx24117_readregN.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %i2c14.i = getelementptr inbounds %struct.cx24117_priv, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %i2c14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c14.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %demod, align 4
  %42 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg.addr.i, align 1
  %conv15.i = zext i8 %43 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.5, i32 noundef %41, i32 noundef %call.i42, i32 noundef %conv15.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf, align 1
  %46 = and i8 %45, -64
  %and = zext i8 %46 to i32
  %shl = shl nuw nsw i32 %and, 2
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %conv15 = zext i8 %48 to i32
  %or = or i32 %shl, %conv15
  %49 = trunc i32 %or to i16
  %50 = mul i16 %49, -100
  %conv18 = add i16 %50, 28788
  %51 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv18, ptr %signal_strength, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_signal_strength.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_read_signal_strength, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !293

if.then22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %demod, align 4
  %58 = ptrtoint ptr %signal_strength to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %signal_strength, align 2
  %conv25 = zext i16 %59 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_signal_strength.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef %57, i32 noundef %or, i32 noundef %conv25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end11, %cx24117_readregN.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i42, %cx24117_readregN.exit ], [ 0, %if.then22 ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !294
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !294
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %conv = select i1 %cmp, i8 64, i8 97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %8, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 4
  %conv6.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %buf10.i, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cx24117_readregN.exit, label %if.end

cx24117_readregN.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %i2c14.i = getelementptr inbounds %struct.cx24117_priv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %i2c14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c14.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %demod, align 4
  %31 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg.addr.i, align 1
  %conv15.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.5, i32 noundef %30, i32 noundef %call.i, i32 noundef %conv15.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf, align 1
  %conv3 = zext i8 %34 to i16
  %shl = shl nuw i16 %conv3, 8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %conv5 = zext i8 %36 to i16
  %or = or i16 %shl, %conv5
  %37 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or, ptr %snr, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_snr.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_read_snr, %if.then10)) #7
          to label %cleanup [label %if.then10], !srcloc !293

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %demod, align 4
  %44 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %snr, align 2
  %conv12 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_snr.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef %43, i32 noundef %conv12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %cx24117_readregN.exit
  %retval.0.i2326 = phi i32 [ 0, %if.then10 ], [ %call.i, %cx24117_readregN.exit ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0.i2326
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ucblocks) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivery_system, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !294
  %5 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !294
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %conv = select i1 %cmp, i8 75, i8 108
  %9 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %narrow = add nuw nsw i8 %conv, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %reg.0 = phi i8 [ %narrow, %sw.bb ], [ %conv, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %10 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %reg.0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %11, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %21 = load i8, ptr %14, align 4
  %conv6.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %24 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf, ptr %buf10.i, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cx24117_readregN.exit, label %if.end

cx24117_readregN.exit:                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %i2c14.i = getelementptr inbounds %struct.cx24117_priv, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %i2c14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c14.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %demod, align 4
  %34 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reg.addr.i, align 1
  %conv15.i = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.5, i32 noundef %33, i32 noundef %call.i, i32 noundef %conv15.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buf, align 1
  %conv5 = zext i8 %37 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %5, align 1
  %conv7 = zext i8 %39 to i32
  %or = or i32 %shl, %conv7
  %40 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %ucblocks, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_read_ucblocks.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_read_ucblocks, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !293

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %demod, align 4
  %47 = ptrtoint ptr %ucblocks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ucblocks, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_read_ucblocks.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, i32 noundef %46, i32 noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %cx24117_readregN.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %cx24117_readregN.exit ], [ 0, %if.then11 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_send_diseqc_msg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp178.not = icmp eq i8 %9, 0
  br i1 %cmp178.not, label %do.end.do.body24_crit_edge, label %do.end.do.body4_crit_edge

do.end.do.body4_crit_edge:                        ; preds = %do.end
  br label %do.body4

do.end.do.body24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

do.body4:                                         ; preds = %for.inc.do.body4_crit_edge, %do.end.do.body4_crit_edge
  %i.0179 = phi i32 [ %inc, %for.inc.do.body4_crit_edge ], [ 0, %do.end.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_send_diseqc_msg, %if.then16)) #7
          to label %for.inc [label %if.then16], !srcloc !293

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %i2c18 = getelementptr inbounds %struct.cx24117_priv, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %i2c18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c18, align 4
  %dev19 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  %arrayidx = getelementptr [6 x i8], ptr %d, i32 0, i32 %i.0179
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug313, ptr noundef %dev19, ptr noundef nonnull @.str.103, i32 noundef %conv20) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %do.body4
  %inc = add nuw nsw i32 %i.0179, 1
  %16 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.do.body4_crit_edge, label %for.inc.do.body24_crit_edge

for.inc.do.body24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

for.inc.do.body4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

do.body24:                                        ; preds = %for.inc.do.body24_crit_edge, %do.end.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_send_diseqc_msg, %if.then36)) #7
          to label %do.end42 [label %if.then36], !srcloc !293

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %i2c38 = getelementptr inbounds %struct.cx24117_priv, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %i2c38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c38, align 4
  %dev39 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug314, ptr noundef %dev39, ptr noundef nonnull @.str.104) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24
  %22 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp45 = icmp ugt i8 %23, 6
  br i1 %cmp45, label %do.end42.cleanup_crit_edge, label %for.cond49.preheader

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond49.preheader:                             ; preds = %do.end42
  %24 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp52182.not = icmp eq i8 %25, 0
  br i1 %cmp52182.not, label %for.cond49.preheader.for.end60_crit_edge, label %for.cond49.preheader.for.body54_crit_edge

for.cond49.preheader.for.body54_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body54

for.cond49.preheader.for.end60_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.cond49.preheader.for.body54_crit_edge
  %i.1183 = phi i32 [ %inc59, %for.body54.for.body54_crit_edge ], [ 0, %for.cond49.preheader.for.body54_crit_edge ]
  %arrayidx56 = getelementptr [6 x i8], ptr %d, i32 0, i32 %i.1183
  %26 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx56, align 1
  %add = add nuw nsw i32 %i.1183, 7
  %arrayidx57 = getelementptr %struct.cx24117_state, ptr %1, i32 0, i32 4, i32 1, i32 %add
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx57, align 1
  %inc59 = add nuw nsw i32 %i.1183, 1
  %29 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %msg_len, align 1
  %conv51 = zext i8 %30 to i32
  %cmp52 = icmp ult i32 %inc59, %conv51
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.body54.for.end60_crit_edge

for.body54.for.end60_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

for.end60:                                        ; preds = %for.body54.for.end60_crit_edge, %for.cond49.preheader.for.end60_crit_edge
  %.lcssa = phi i8 [ 0, %for.cond49.preheader.for.end60_crit_edge ], [ %30, %for.body54.for.end60_crit_edge ]
  %dsec_cmd62 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 4
  %arrayidx64 = getelementptr %struct.cx24117_state, ptr %1, i32 0, i32 4, i32 1, i32 6
  %31 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.lcssa, ptr %arrayidx64, align 1
  %add69 = add i8 %.lcssa, 7
  %32 = ptrtoint ptr %dsec_cmd62 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add69, ptr %dsec_cmd62, align 4
  %33 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp74 = icmp ugt i8 %34, 3
  br i1 %cmp74, label %land.lhs.true, label %for.end60.do.body90_crit_edge

for.end60.do.body90_crit_edge:                    ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90

land.lhs.true:                                    ; preds = %for.end60
  %arrayidx77 = getelementptr [6 x i8], ptr %d, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %36)
  %cmp79 = icmp eq i8 %36, 56
  br i1 %cmp79, label %if.then81, label %land.lhs.true.do.body90_crit_edge

land.lhs.true.do.body90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx83 = getelementptr [6 x i8], ptr %d, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx83, align 1
  %39 = lshr i8 %38, 2
  %40 = and i8 %39, 1
  %arrayidx88 = getelementptr %struct.cx24117_state, ptr %1, i32 0, i32 4, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx88, align 1
  br label %do.body90

do.body90:                                        ; preds = %if.then81, %land.lhs.true.do.body90_crit_edge, %for.end60.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_send_diseqc_msg, %if.then102)) #7
          to label %do.end113 [label %if.then102], !srcloc !293

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %i2c104 = getelementptr inbounds %struct.cx24117_priv, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %i2c104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c104, align 4
  %dev105 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  %demod106 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %demod106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %demod106, align 4
  %arrayidx109 = getelementptr %struct.cx24117_state, ptr %1, i32 0, i32 4, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug315, ptr noundef %dev105, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101, i32 noundef %47, i32 noundef %conv110) #7
  br label %do.end113

do.end113:                                        ; preds = %if.then102, %do.body90
  %call114 = tail call fastcc i32 @cx24117_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %if.end118, label %do.end113.cleanup_crit_edge

do.end113.cleanup_crit_edge:                      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end118:                                        ; preds = %do.end113
  tail call void @msleep(i32 noundef 100) #7
  %50 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %demodulator_priv, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %53, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = tail call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef %dsec_cmd62) #7
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %55, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp121.not = icmp eq i32 %call.i, 0
  br i1 %cmp121.not, label %if.end124, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end124:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx64, align 1
  %conv128 = zext i8 %57 to i32
  %shl = shl nuw nsw i32 %conv128, 4
  %add129 = add nuw nsw i32 %shl, 60
  tail call void @msleep(i32 noundef %add129) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.end118.cleanup_crit_edge, %do.end113.cleanup_crit_edge, %do.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end124 ], [ -22, %do.end42.cleanup_crit_edge ], [ %call114, %do.end113.cleanup_crit_edge ], [ %call.i, %if.end118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_diseqc_send_burst.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_diseqc_send_burst, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_diseqc_send_burst.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i32 noundef %burst, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %burst, label %do.end.cleanup_crit_edge [
    i32 0, label %do.end.cleanup.sink.split_crit_edge
    i32 1, label %if.then5
  ]

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %do.end.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then5 ], [ 0, %do.end.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.cx24117_state, ptr %1, i32 0, i32 4, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24117_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_tone.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_tone, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_tone.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.111, i32 noundef %13, i32 noundef %tone) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tone)
  %switch = icmp ult i32 %tone, 2
  br i1 %switch, label %if.end12, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %i2c9 = getelementptr inbounds %struct.cx24117_priv, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c9, align 4
  %dev10 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %demod11 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %demod11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %demod11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %tone) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %call13 = tail call fastcc i32 @cx24117_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  tail call void @msleep(i32 noundef 20) #7
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 35, ptr %2, align 1
  %demod17 = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %demod17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  %conv = zext i1 %tobool18.not to i8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %3, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %4, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %5, align 1
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %cmd, align 1
  %27 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %tone, label %if.end16.sw.epilog_crit_edge [
    i32 0, label %if.end16.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb27
  ]

if.end16.sw.epilog.sink.split_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb27, %if.end16.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb27 ], [ 1, %if.end16.sw.epilog.sink.split_crit_edge ]
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %6, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end16.sw.epilog_crit_edge
  tail call void @msleep(i32 noundef 20) #7
  %29 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %demodulator_priv, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %32, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %34, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end12.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %call.i, %sw.epilog ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24117_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24117_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %5 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %conv = select i1 %cmp, i8 16, i8 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_voltage.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_voltage, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voltage)
  %cmp4 = icmp eq i32 %voltage, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp6 = icmp eq i32 %voltage, 1
  %cond8 = select i1 %cmp6, ptr @.str.116, ptr @.str.117
  %cond9 = select i1 %cmp4, ptr @.str.115, ptr %cond8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_voltage.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i32 noundef %13, ptr noundef nonnull %cond9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 51, ptr %2, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %4, align 1
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %switch = icmp ult i32 %voltage, 2
  br i1 %switch, label %if.then16, label %if.else

if.then16:                                        ; preds = %do.end
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %3, align 1
  %18 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %demodulator_priv, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %fe_lock.i = getelementptr inbounds %struct.cx24117_priv, ptr %21, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %fe_lock2.i = getelementptr inbounds %struct.cx24117_priv, ptr %23, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20.not = icmp eq i32 %call.i, 0
  br i1 %cmp20.not, label %if.end23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  %call24 = tail call fastcc i32 @cx24117_wait_for_lnb(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 34, ptr %2, align 1
  %25 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  %conv34 = zext i1 %tobool32.not to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv34, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp37 = icmp eq i32 %voltage, 1
  %conv40 = zext i1 %cmp37 to i8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv40, ptr %4, align 1
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %cmd, align 1
  %30 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %demodulator_priv, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %fe_lock.i69 = getelementptr inbounds %struct.cx24117_priv, ptr %33, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i69, i32 noundef 0) #7
  %call.i70 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %fe_lock2.i71 = getelementptr inbounds %struct.cx24117_priv, ptr %35, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i71) #7
  tail call void @msleep(i32 noundef 20) #7
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %3, align 1
  %37 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %demodulator_priv, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %fe_lock.i73 = getelementptr inbounds %struct.cx24117_priv, ptr %40, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %fe_lock.i73, i32 noundef 0) #7
  %call.i74 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd) #7
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %fe_lock2.i75 = getelementptr inbounds %struct.cx24117_priv, ptr %42, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %fe_lock2.i75) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end28, %if.end23.cleanup_crit_edge, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then16.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call.i70, %if.end28 ], [ %call.i74, %if.else ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_cmd_execute_nolock(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_cmd_execute_nolock.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_cmd_execute_nolock, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_cmd_execute_nolock.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @cx24117_firmware_ondemand(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  tail call fastcc void @cx24117_writecmd(ptr noundef %1, ptr noundef %cmd)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext 31, i8 noundef zeroext 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end5
  %i.0 = phi i32 [ 0, %if.end5 ], [ %inc, %while.body.while.cond_crit_edge ]
  %call8 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 20) #7
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 42
  br i1 %exitcond, label %do.end14, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end14:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %i2c16 = getelementptr inbounds %struct.cx24117_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2c16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c16, align 4
  %dev17 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %while.cond.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end14 ], [ %call3, %do.end.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_firmware_ondemand(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !294
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_firmware_ondemand, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod, align 4
  %skip_fw_load = getelementptr inbounds %struct.cx24117_priv, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %skip_fw_load to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %skip_fw_load, align 4
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %8, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %skip_fw_load5 = getelementptr inbounds %struct.cx24117_priv, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %skip_fw_load5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %skip_fw_load5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext -21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 10
  br i1 %cmp.not, label %if.end8.cleanup_crit_edge, label %do.body12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body12:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_firmware_ondemand, %if.then24)) #7
          to label %do.end30 [label %if.then24], !srcloc !293

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %i2c26 = getelementptr inbounds %struct.cx24117_priv, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %i2c26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c26, align 4
  %dev27 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug300, ptr noundef %dev27, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %i2c32 = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %i2c32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c32, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %call34 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.32, ptr noundef %24) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_firmware_ondemand, %if.then47)) #7
          to label %do.end53 [label %if.then47], !srcloc !293

if.then47:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %i2c49 = getelementptr inbounds %struct.cx24117_priv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %i2c49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c49, align 4
  %dev50 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug301, ptr noundef %dev50, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool54.not = icmp eq i32 %call34, 0
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  br i1 %tobool54.not, label %if.end62, label %do.end58

do.end58:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  %i2c60 = getelementptr inbounds %struct.cx24117_priv, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %i2c60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c60, align 4
  %dev61 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end62:                                         ; preds = %do.end53
  %skip_fw_load64 = getelementptr inbounds %struct.cx24117_priv, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %skip_fw_load64 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %skip_fw_load64, align 4
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 4
  %call65 = call fastcc i32 @cx24117_load_firmware(ptr noundef %fe, ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end62.if.end74_crit_edge, label %do.end70

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %i2c72 = getelementptr inbounds %struct.cx24117_priv, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %i2c72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c72, align 4
  %dev73 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29) #10
  br label %if.end74

if.end74:                                         ; preds = %do.end70, %if.end62.if.end74_crit_edge
  %cond = phi ptr [ @.str.42, %do.end70 ], [ @.str.41, %if.end62.if.end74_crit_edge ]
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %41) #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %i2c79 = getelementptr inbounds %struct.cx24117_priv, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %i2c79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c79, align 4
  %dev80 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond) #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %skip_fw_load84 = getelementptr inbounds %struct.cx24117_priv, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %skip_fw_load84 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %skip_fw_load84, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end58, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end58 ], [ 0, %do.end.cleanup_crit_edge ], [ %call65, %if.end74 ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24117_writecmd(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %buf = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [31 x i8], ptr %buf, i32 0, i32 1
  %3 = call ptr @memset(ptr %buf, i32 255, i32 31)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_writecmd.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_writecmd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %8 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %demod, align 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd, align 1
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_writecmd.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %9, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buf, align 1
  %args = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd, align 1
  %conv5 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %2, ptr %args, i32 %conv5)
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv7 = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv7, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags, align 2
  %conv9 = zext i8 %14 to i16
  %add = add nuw nsw i16 %conv9, 1
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %22 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add, ptr %len11, align 4
  %buf13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %23 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %buf13, align 4
  %i2c15 = getelementptr inbounds %struct.cx24117_priv, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %i2c15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c15, align 4
  %call16 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end21, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %i2c23 = getelementptr inbounds %struct.cx24117_priv, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %i2c23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c23, align 4
  %dev24 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  %demod25 = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %30 = ptrtoint ptr %demod25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %demod25, align 4
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmd, align 1
  %conv27 = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, i32 noundef %31, i32 noundef %call16, i32 noundef %conv27) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24117_writereg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_writereg.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_writereg, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %demod, align 4
  %conv5 = zext i8 %reg to i32
  %conv6 = zext i8 %data to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_writereg.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %18, i32 noundef %conv5, i32 noundef %conv6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %i2c8 = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %i2c8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c8, align 4
  %call9 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %i2c16 = getelementptr inbounds %struct.cx24117_priv, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %i2c16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c16, align 4
  %dev17 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  %demod18 = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %27 = ptrtoint ptr %demod18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %demod18, align 4
  %conv19 = zext i8 %reg to i32
  %conv20 = zext i8 %data to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.5, i32 noundef %28, i32 noundef %call9, i32 noundef %conv19, i32 noundef %conv20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %recv = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %recv) #7
  %1 = ptrtoint ptr %recv to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %recv, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
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
  store ptr %reg.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 4
  %conv4 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %recv, ptr %buf7, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %i2c11 = getelementptr inbounds %struct.cx24117_priv, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %i2c11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c11, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %23 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %demod, align 4
  %25 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg.addr, align 1
  %conv12 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %call, i32 noundef %conv12) #10
  br label %cleanup

do.body13:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_readreg.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_readreg, %if.then17)) #7
          to label %do.end26 [label %if.then17], !srcloc !293

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state, align 4
  %i2c19 = getelementptr inbounds %struct.cx24117_priv, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c19, align 4
  %dev20 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  %demod21 = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %31 = ptrtoint ptr %demod21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %demod21, align 4
  %33 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg.addr, align 1
  %conv22 = zext i8 %34 to i32
  %35 = ptrtoint ptr %recv to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %recv, align 1
  %conv23 = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_readreg.__UNIQUE_ID_ddebug292, ptr noundef %dev20, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef %32, i32 noundef %conv22, i32 noundef %conv23) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then17, %do.body13
  %37 = ptrtoint ptr %recv to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %recv, align 1
  %conv27 = zext i8 %38 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv27, %do.end26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %recv) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_load_firmware(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cx24117_cmd, align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %cmd) #7
  %2 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %9 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %10 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %11 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %12 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 10
  %13 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %14 = getelementptr inbounds %struct.cx24117_cmd, ptr %cmd, i32 0, i32 1, i32 12
  %15 = call ptr @memset(ptr %cmd, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %16 = call ptr @memset(ptr %msg, i32 255, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_load_firmware.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_load_firmware, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod, align 4
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv = zext i8 %28 to i32
  %arrayidx4 = getelementptr i8, ptr %26, i32 1
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %30 to i32
  %sub = add i32 %24, -2
  %arrayidx8 = getelementptr i8, ptr %26, i32 %sub
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %32 to i32
  %sub12 = add i32 %24, -1
  %arrayidx13 = getelementptr i8, ptr %26, i32 %sub12
  %33 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_load_firmware.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %22, i32 noundef %24, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -22, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -22, i8 noundef zeroext 1)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -22, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -50, i8 noundef zeroext -110)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -5, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -4, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -61, i8 noundef zeroext 4)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -60, i8 noundef zeroext 4)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -50, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -49, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -22, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -21, i8 noundef zeroext 12)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -20, i8 noundef zeroext 6)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -19, i8 noundef zeroext 5)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -18, i8 noundef zeroext 3)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -17, i8 noundef zeroext 5)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -13, i8 noundef zeroext 3)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -12, i8 noundef zeroext 68)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -16, i8 noundef zeroext 4)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -26, i8 noundef zeroext 2)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -15, i8 noundef zeroext 4)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -25, i8 noundef zeroext 2)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -14, i8 noundef zeroext 4)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -24, i8 noundef zeroext 2)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -22, i8 noundef zeroext 1)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -56, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -55, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -54, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -53, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -52, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -51, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -28, i8 noundef zeroext 3)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -21, i8 noundef zeroext 10)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -5, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -32, i8 noundef zeroext 118)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -9, i8 noundef zeroext -127)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -8, i8 noundef zeroext 0)
  tail call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -7, i8 noundef zeroext 0)
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw, align 4
  %add = add i32 %36, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %if.then56, label %if.end58

if.then56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %skip_fw_load = getelementptr inbounds %struct.cx24117_priv, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %skip_fw_load to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %skip_fw_load, align 4
  br label %cleanup

if.end58:                                         ; preds = %do.end
  %40 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -6, ptr %call9.i, align 128
  %arrayidx60 = getelementptr i8, ptr %call9.i, i32 1
  %data61 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %41 = ptrtoint ptr %data61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data61, align 4
  %43 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw, align 4
  %45 = call ptr @memcpy(ptr %arrayidx60, ptr %42, i32 %44)
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %conv64 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv64, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags, align 2
  %52 = load i32, ptr %fw, align 4
  %53 = trunc i32 %52 to i16
  %conv67 = add i16 %53, 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv67, ptr %len, align 4
  %buf68 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %55 = ptrtoint ptr %buf68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i, ptr %buf68, align 4
  %56 = load ptr, ptr %1, align 4
  %i2c70 = getelementptr inbounds %struct.cx24117_priv, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %i2c70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c70, align 4
  %call71 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br i1 %cmp72, label %if.end58.cleanup_crit_edge, label %if.end75

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end58
  call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -9, i8 noundef zeroext 12)
  call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -32, i8 noundef zeroext 0)
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 27, ptr %2, align 1
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %3, align 1
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %4, align 1
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %5, align 1
  %63 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %cmd, align 1
  %call86 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %if.end90, label %if.end75.error_crit_edge

if.end75.error_crit_edge:                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end90:                                         ; preds = %if.end75
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 16, ptr %2, align 1
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 6, ptr %3, align 1
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 43, ptr %4, align 1
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -40, ptr %5, align 1
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -91, ptr %6, align 1
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -18, ptr %7, align 1
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %8, align 1
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -99, ptr %9, align 1
  %72 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -4, ptr %10, align 1
  %73 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 6, ptr %11, align 1
  %74 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 2, ptr %12, align 1
  %75 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -99, ptr %13, align 1
  %76 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -4, ptr %14, align 1
  %77 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 13, ptr %cmd, align 1
  %call118 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 0
  br i1 %cmp119.not, label %if.end122, label %if.end90.error_crit_edge

if.end90.error_crit_edge:                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end122:                                        ; preds = %if.end90
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 21, ptr %2, align 1
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %3, align 1
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %4, align 1
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %5, align 1
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %6, align 1
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %7, align 1
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %8, align 1
  %85 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %9, align 1
  %86 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %10, align 1
  %87 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 5, ptr %11, align 1
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %12, align 1
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %13, align 1
  %90 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %14, align 1
  %91 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 13, ptr %cmd, align 1
  %call150 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %if.end154, label %if.end122.error_crit_edge

if.end122.error_crit_edge:                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end154:                                        ; preds = %if.end122
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 19, ptr %2, align 1
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %3, align 1
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %4, align 1
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %5, align 1
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %6, align 1
  %97 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %7, align 1
  %98 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %cmd, align 1
  %call168 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169.not = icmp eq i32 %call168, 0
  br i1 %cmp169.not, label %for.body.preheader, label %if.end154.error_crit_edge

if.end154.error_crit_edge:                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.body.preheader:                               ; preds = %if.end154
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 20, ptr %2, align 1
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %3, align 1
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %4, align 1
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 5, ptr %5, align 1
  %103 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %6, align 1
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %7, align 1
  %105 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 85, ptr %8, align 1
  %106 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %9, align 1
  %107 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 8, ptr %cmd, align 1
  %call193 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194.not = icmp eq i32 %call193, 0
  br i1 %cmp194.not, label %for.cond, label %for.body.preheader.error_crit_edge

for.body.preheader.error_crit_edge:               ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.cond:                                         ; preds = %for.body.preheader
  %108 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 20, ptr %2, align 1
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %3, align 1
  %110 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %4, align 1
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 5, ptr %5, align 1
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %6, align 1
  %113 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %7, align 1
  %114 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 85, ptr %8, align 1
  %115 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %9, align 1
  %116 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 8, ptr %cmd, align 1
  %call193.1 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.1)
  %cmp194.not.1 = icmp eq i32 %call193.1, 0
  br i1 %cmp194.not.1, label %for.cond.1, label %for.cond.error_crit_edge

for.cond.error_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

for.cond.1:                                       ; preds = %for.cond
  call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -50, i8 noundef zeroext -64)
  call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -49, i8 noundef zeroext 0)
  call fastcc void @cx24117_writereg(ptr noundef %1, i8 noundef zeroext -27, i8 noundef zeroext 4)
  %117 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 53, ptr %2, align 1
  %118 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %cmd, align 1
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %3, align 1
  %call211 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212.not = icmp eq i32 %call211, 0
  br i1 %cmp212.not, label %if.end215, label %for.cond.1.error_crit_edge

for.cond.1.error_crit_edge:                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end215:                                        ; preds = %for.cond.1
  %call216 = call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext 51)
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %3, align 1
  %call211.1 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.1)
  %cmp212.not.1 = icmp eq i32 %call211.1, 0
  br i1 %cmp212.not.1, label %if.end215.1, label %if.end215.error_crit_edge

if.end215.error_crit_edge:                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end215.1:                                      ; preds = %if.end215
  %call216.1 = call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext 51)
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 2, ptr %3, align 1
  %call211.2 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.2)
  %cmp212.not.2 = icmp eq i32 %call211.2, 0
  br i1 %cmp212.not.2, label %if.end215.2, label %if.end215.1.error_crit_edge

if.end215.1.error_crit_edge:                      ; preds = %if.end215.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end215.2:                                      ; preds = %if.end215.1
  %call216.2 = call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext 51)
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 3, ptr %3, align 1
  %call211.3 = call fastcc i32 @cx24117_cmd_execute_nolock(ptr noundef %fe, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.3)
  %cmp212.not.3 = icmp eq i32 %call211.3, 0
  br i1 %cmp212.not.3, label %if.end215.3, label %if.end215.2.error_crit_edge

if.end215.2.error_crit_edge:                      ; preds = %if.end215.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end215.3:                                      ; preds = %if.end215.2
  call void @__sanitizer_cov_trace_pc() #9
  %call216.3 = call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext 51)
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %i2c226 = getelementptr inbounds %struct.cx24117_priv, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %i2c226 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c226, align 4
  %dev227 = getelementptr inbounds %struct.i2c_adapter, ptr %126, i32 0, i32 9
  %conv229 = and i32 %call216, 255
  %conv231 = and i32 %call216.1, 255
  %conv233 = and i32 %call216.2, 255
  %conv235 = and i32 %call216.3, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev227, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %conv229, i32 noundef %conv231, i32 noundef %conv233, i32 noundef %conv235) #10
  br label %cleanup

error:                                            ; preds = %if.end215.2.error_crit_edge, %if.end215.1.error_crit_edge, %if.end215.error_crit_edge, %for.cond.1.error_crit_edge, %for.cond.error_crit_edge, %for.body.preheader.error_crit_edge, %if.end154.error_crit_edge, %if.end122.error_crit_edge, %if.end90.error_crit_edge, %if.end75.error_crit_edge
  %ret.0 = phi i32 [ %call86, %if.end75.error_crit_edge ], [ %call118, %if.end90.error_crit_edge ], [ %call150, %if.end122.error_crit_edge ], [ %call168, %if.end154.error_crit_edge ], [ %call211, %for.cond.1.error_crit_edge ], [ %call211.1, %if.end215.error_crit_edge ], [ %call211.2, %if.end215.1.error_crit_edge ], [ %call211.3, %if.end215.2.error_crit_edge ], [ %call193, %for.body.preheader.error_crit_edge ], [ %call193.1, %for.cond.error_crit_edge ]
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %skip_fw_load237 = getelementptr inbounds %struct.cx24117_priv, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %skip_fw_load237 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %skip_fw_load237, align 4
  %130 = load ptr, ptr %1, align 4
  %i2c242 = getelementptr inbounds %struct.cx24117_priv, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %i2c242 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i2c242, align 4
  %dev243 = getelementptr inbounds %struct.i2c_adapter, ptr %132, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev243, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end215.3, %if.end58.cleanup_crit_edge, %if.then56
  %retval.0 = phi i32 [ -12, %if.then56 ], [ %ret.0, %error ], [ 0, %if.end215.3 ], [ %call71, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_set_fec(ptr nocapture noundef %state, i32 noundef %delsys, i32 noundef %mod, i32 noundef %fec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_fec.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_fec, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %4 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_fec.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef %mod, i32 noundef %fec, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_lookup_fecmod.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_fec, %if.then.i)) #7
          to label %for.body.i [label %if.then.i], !srcloc !293

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.cx24117_priv, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  %demod.i = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %demod.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_lookup_fecmod.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %mod, i32 noundef %fec, i32 noundef %11) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i, %do.end
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end ]
  %arrayidx.i = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %i.020.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %delsys)
  %cmp3.i = icmp eq i32 %13, %delsys
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %modulation.i = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %i.020.i, i32 1
  %14 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modulation.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mod)
  %cmp5.i = icmp eq i32 %15, %mod
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %fec.i = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %i.020.i, i32 2
  %16 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %fec)
  %cmp8.i = icmp eq i32 %17, %fec
  br i1 %cmp8.i, label %if.end5, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  %fec6 = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %fec6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fec, ptr %fec6, align 4
  %val = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %i.020.i, i32 4
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %fec_val = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %fec_val to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %fec_val, align 4
  %mask = getelementptr [28 x %struct.cx24117_modfec], ptr @cx24117_modfec_modes, i32 0, i32 %i.020.i, i32 3
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mask, align 4
  %fec_mask = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 3, i32 9
  %24 = ptrtoint ptr %fec_mask to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %fec_mask, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_set_fec.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_set_fec, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !293

if.then22:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %i2c24 = getelementptr inbounds %struct.cx24117_priv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %i2c24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c24, align 4
  %dev25 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 9
  %demod26 = getelementptr inbounds %struct.cx24117_state, ptr %state, i32 0, i32 5
  %29 = ptrtoint ptr %demod26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %demod26, align 4
  %31 = ptrtoint ptr %fec_mask to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fec_mask, align 1
  %conv = zext i8 %32 to i32
  %33 = ptrtoint ptr %fec_val to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fec_val, align 4
  %conv31 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_set_fec.__UNIQUE_ID_ddebug296, ptr noundef %dev25, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef %30, i32 noundef %conv, i32 noundef %conv31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end5, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end5 ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24117_wait_for_lnb(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %demod = getelementptr inbounds %struct.cx24117_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %demod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %conv = select i1 %cmp, i8 -109, i8 -97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24117_wait_for_lnb.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24117_wait_for_lnb, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !293

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.cx24117_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %demod, align 4
  %call4 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24117_wait_for_lnb.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef %9, i32 noundef %call4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8 = and i32 %call7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp10.not = icmp eq i32 %conv8, 0
  br i1 %cmp10.not, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.end
  tail call void @msleep(i32 noundef 30) #7
  %call7.1 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.1 = and i32 %call7.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.1)
  %cmp10.not.1 = icmp eq i32 %conv8.1, 0
  br i1 %cmp10.not.1, label %if.end13.1, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.1:                                       ; preds = %if.end13
  tail call void @msleep(i32 noundef 30) #7
  %call7.2 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.2 = and i32 %call7.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.2)
  %cmp10.not.2 = icmp eq i32 %conv8.2, 0
  br i1 %cmp10.not.2, label %if.end13.2, label %if.end13.1.cleanup_crit_edge

if.end13.1.cleanup_crit_edge:                     ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.2:                                       ; preds = %if.end13.1
  tail call void @msleep(i32 noundef 30) #7
  %call7.3 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.3 = and i32 %call7.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.3)
  %cmp10.not.3 = icmp eq i32 %conv8.3, 0
  br i1 %cmp10.not.3, label %if.end13.3, label %if.end13.2.cleanup_crit_edge

if.end13.2.cleanup_crit_edge:                     ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.3:                                       ; preds = %if.end13.2
  tail call void @msleep(i32 noundef 30) #7
  %call7.4 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.4 = and i32 %call7.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.4)
  %cmp10.not.4 = icmp eq i32 %conv8.4, 0
  br i1 %cmp10.not.4, label %if.end13.4, label %if.end13.3.cleanup_crit_edge

if.end13.3.cleanup_crit_edge:                     ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.4:                                       ; preds = %if.end13.3
  tail call void @msleep(i32 noundef 30) #7
  %call7.5 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.5 = and i32 %call7.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.5)
  %cmp10.not.5 = icmp eq i32 %conv8.5, 0
  br i1 %cmp10.not.5, label %if.end13.5, label %if.end13.4.cleanup_crit_edge

if.end13.4.cleanup_crit_edge:                     ; preds = %if.end13.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.5:                                       ; preds = %if.end13.4
  tail call void @msleep(i32 noundef 30) #7
  %call7.6 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.6 = and i32 %call7.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.6)
  %cmp10.not.6 = icmp eq i32 %conv8.6, 0
  br i1 %cmp10.not.6, label %if.end13.6, label %if.end13.5.cleanup_crit_edge

if.end13.5.cleanup_crit_edge:                     ; preds = %if.end13.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.6:                                       ; preds = %if.end13.5
  tail call void @msleep(i32 noundef 30) #7
  %call7.7 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.7 = and i32 %call7.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.7)
  %cmp10.not.7 = icmp eq i32 %conv8.7, 0
  br i1 %cmp10.not.7, label %if.end13.7, label %if.end13.6.cleanup_crit_edge

if.end13.6.cleanup_crit_edge:                     ; preds = %if.end13.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.7:                                       ; preds = %if.end13.6
  tail call void @msleep(i32 noundef 30) #7
  %call7.8 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.8 = and i32 %call7.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.8)
  %cmp10.not.8 = icmp eq i32 %conv8.8, 0
  br i1 %cmp10.not.8, label %if.end13.8, label %if.end13.7.cleanup_crit_edge

if.end13.7.cleanup_crit_edge:                     ; preds = %if.end13.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.8:                                       ; preds = %if.end13.7
  tail call void @msleep(i32 noundef 30) #7
  %call7.9 = tail call fastcc i32 @cx24117_readreg(ptr noundef %1, i8 noundef zeroext %conv)
  %conv8.9 = and i32 %call7.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.9)
  %cmp10.not.9 = icmp eq i32 %conv8.9, 0
  br i1 %cmp10.not.9, label %if.end13.9, label %if.end13.8.cleanup_crit_edge

if.end13.8.cleanup_crit_edge:                     ; preds = %if.end13.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.9:                                       ; preds = %if.end13.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 30) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %i2c18 = getelementptr inbounds %struct.cx24117_priv, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %i2c18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c18, align 4
  %dev19 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %demod, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.5, i32 noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13.9, %if.end13.8.cleanup_crit_edge, %if.end13.7.cleanup_crit_edge, %if.end13.6.cleanup_crit_edge, %if.end13.5.cleanup_crit_edge, %if.end13.4.cleanup_crit_edge, %if.end13.3.cleanup_crit_edge, %if.end13.2.cleanup_crit_edge, %if.end13.1.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end13.9 ], [ 0, %if.end13.8.cleanup_crit_edge ], [ 0, %if.end13.7.cleanup_crit_edge ], [ 0, %if.end13.6.cleanup_crit_edge ], [ 0, %if.end13.5.cleanup_crit_edge ], [ 0, %if.end13.4.cleanup_crit_edge ], [ 0, %if.end13.3.cleanup_crit_edge ], [ 0, %if.end13.2.cleanup_crit_edge ], [ 0, %if.end13.1.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !213, !215, !217, !218, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !282, !283}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1171, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cx24117_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cx24117_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx24117_attach.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1179, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1194, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cx24117_attach._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cx24117_attach._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_cx24117_attach, !18, !"__ksymtab_cx24117_attach", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1209, i32 1}
!19 = !{ptr @__UNIQUE_ID_description339, !20, !"__UNIQUE_ID_description339", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1649, i32 1}
!21 = !{ptr @__UNIQUE_ID_author340, !22, !"__UNIQUE_ID_author340", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1650, i32 1}
!23 = !{ptr @__UNIQUE_ID_file341, !24, !"__UNIQUE_ID_file341", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1651, i32 1}
!25 = !{ptr @__UNIQUE_ID_license342, !24, !"__UNIQUE_ID_license342", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_version343, !27, !"__UNIQUE_ID_version343", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1652, i32 1}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__modver_attr, !27, !"__modver_attr", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_firmware344, !32, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1653, i32 1}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1133, i32 8}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cx24117_get_priv._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cx24117_get_priv._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cx24117_get_priv._entry.15, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @cx24117_get_priv._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 156, i32 8}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cx24117_list_mutex, !42, !"cx24117_list_mutex", i1 false, i1 false}
!45 = !{ptr @hybrid_tuner_instance_list, !46, !"hybrid_tuner_instance_list", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 155, i32 8}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1144, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cx24117_release_priv._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cx24117_release_priv._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @cx24117_ops, !53, !"cx24117_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1610, i32 38}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1151, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cx24117_release.__UNIQUE_ID_ddebug317, !55, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1222, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cx24117_initfe.__UNIQUE_ID_ddebug318, !59, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 500, i32 2}
!64 = !{ptr @cx24117_cmd_execute_nolock.__UNIQUE_ID_ddebug302, !63, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 519, i32 4}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cx24117_cmd_execute_nolock._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cx24117_cmd_execute_nolock._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 446, i32 2}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug299, !71, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 456, i32 3}
!76 = !{ptr @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug300, !75, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!77 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 461, i32 3}
!80 = !{ptr @cx24117_firmware_ondemand.__UNIQUE_ID_ddebug301, !79, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 464, i32 4}
!83 = !{ptr @cx24117_firmware_ondemand._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx24117_firmware_ondemand._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 476, i32 4}
!87 = !{ptr @cx24117_firmware_ondemand._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx24117_firmware_ondemand._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 480, i32 3}
!91 = !{ptr @cx24117_firmware_ondemand._entry.38, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx24117_firmware_ondemand._entry_ptr.40, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 550, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cx24117_load_firmware.__UNIQUE_ID_ddebug303, !96, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 722, i32 2}
!101 = !{ptr @cx24117_load_firmware._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cx24117_load_firmware._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 728, i32 2}
!105 = !{ptr @cx24117_load_firmware._entry.46, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cx24117_load_firmware._entry_ptr.48, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 285, i32 2}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cx24117_writecmd.__UNIQUE_ID_ddebug291, !108, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 298, i32 3}
!113 = !{ptr @cx24117_writecmd._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cx24117_writecmd._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 264, i32 2}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cx24117_writereg.__UNIQUE_ID_ddebug290, !116, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 270, i32 3}
!121 = !{ptr @cx24117_writereg._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cx24117_writereg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 319, i32 3}
!125 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cx24117_readreg._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @cx24117_readreg._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 325, i32 2}
!130 = !{ptr @cx24117_readreg.__UNIQUE_ID_ddebug292, !129, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1281, i32 2}
!133 = !{ptr @cx24117_sleep.__UNIQUE_ID_ddebug319, !132, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1535, i32 2}
!136 = !{ptr @cx24117_tune.__UNIQUE_ID_ddebug338, !135, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1304, i32 2}
!139 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug320, !138, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1309, i32 3}
!142 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug321, !141, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1314, i32 4}
!145 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug322, !144, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1328, i32 3}
!148 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug323, !147, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!149 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug324, !150, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1336, i32 4}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1353, i32 4}
!153 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug325, !152, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1375, i32 4}
!156 = !{ptr @cx24117_set_frontend._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @cx24117_set_frontend._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1383, i32 3}
!160 = !{ptr @cx24117_set_frontend._entry.66, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @cx24117_set_frontend._entry_ptr.68, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1411, i32 2}
!164 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug326, !163, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1413, i32 2}
!167 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug327, !166, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1415, i32 2}
!170 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug328, !169, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1417, i32 2}
!173 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug329, !172, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1420, i32 2}
!176 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug330, !175, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1422, i32 2}
!179 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug331, !178, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1425, i32 2}
!182 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug332, !181, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1427, i32 2}
!185 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug333, !184, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1430, i32 2}
!188 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug334, !187, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1489, i32 3}
!191 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug335, !190, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1511, i32 5}
!194 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug336, !193, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1519, i32 3}
!197 = !{ptr @cx24117_set_frontend.__UNIQUE_ID_ddebug337, !196, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!198 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 355, i32 2}
!200 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @cx24117_set_inversion.__UNIQUE_ID_ddebug293, !199, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 405, i32 2}
!204 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @cx24117_set_fec.__UNIQUE_ID_ddebug295, !203, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!206 = !{ptr @.str.85, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 416, i32 2}
!208 = !{ptr @cx24117_set_fec.__UNIQUE_ID_ddebug296, !207, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 382, i32 2}
!211 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @cx24117_lookup_fecmod.__UNIQUE_ID_ddebug294, !210, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!213 = !{ptr @cx24117_modfec_modes, !214, !"cx24117_modfec_modes", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 216, i32 3}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 425, i32 2}
!217 = !{ptr @cx24117_set_symbolrate.__UNIQUE_ID_ddebug297, !216, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!218 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 430, i32 2}
!220 = !{ptr @cx24117_set_symbolrate.__UNIQUE_ID_ddebug298, !219, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!221 = !{ptr @.str.90, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 344, i32 3}
!223 = !{ptr @cx24117_readregN._entry, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @cx24117_readregN._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.91, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 742, i32 2}
!227 = !{ptr @.str.92, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @cx24117_read_status.__UNIQUE_ID_ddebug304, !226, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!229 = !{ptr @.str.93, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 775, i32 2}
!231 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @cx24117_read_ber.__UNIQUE_ID_ddebug305, !230, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!233 = !{ptr @.str.95, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 807, i32 2}
!235 = !{ptr @.str.96, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @cx24117_read_signal_strength.__UNIQUE_ID_ddebug306, !234, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!237 = !{ptr @.str.97, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 828, i32 2}
!239 = !{ptr @.str.98, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @cx24117_read_snr.__UNIQUE_ID_ddebug307, !238, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!241 = !{ptr @.str.99, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 860, i32 2}
!243 = !{ptr @.str.100, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @cx24117_read_ucblocks.__UNIQUE_ID_ddebug308, !242, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!245 = !{ptr @.str.101, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1031, i32 2}
!247 = !{ptr @.str.102, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug312, !246, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!249 = !{ptr @.str.103, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1034, i32 3}
!251 = !{ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug313, !250, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!252 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1035, i32 2}
!254 = !{ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug314, !253, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!255 = !{ptr @.str.105, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1074, i32 2}
!257 = !{ptr @cx24117_send_diseqc_msg.__UNIQUE_ID_ddebug315, !256, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!258 = !{ptr @.str.106, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 881, i32 2}
!260 = !{ptr @.str.107, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @cx24117_wait_for_lnb.__UNIQUE_ID_ddebug309, !259, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!262 = !{ptr @.str.108, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 892, i32 2}
!264 = !{ptr @cx24117_wait_for_lnb._entry, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @cx24117_wait_for_lnb._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.109, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 1111, i32 2}
!268 = !{ptr @.str.110, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @cx24117_diseqc_send_burst.__UNIQUE_ID_ddebug316, !267, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!270 = !{ptr @.str.111, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 957, i32 2}
!272 = !{ptr @cx24117_set_tone.__UNIQUE_ID_ddebug311, !271, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 960, i32 3}
!275 = !{ptr @cx24117_set_tone._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @cx24117_set_tone._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/dvb-frontends/cx24117.c", i32 906, i32 2}
!279 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @cx24117_set_voltage.__UNIQUE_ID_ddebug310, !278, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!281 = !{ptr @.str.115, !278, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.116, !278, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.117, !278, !"<string literal>", i1 false, i1 false}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{i64 2148242132, i64 2148242137, i64 2148242150, i64 2148242194, i64 2148242228, i64 2148242249}
!294 = !{!"auto-init"}
