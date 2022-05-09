; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/dibx000_common.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dibx000_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dibx000_i2c_set_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_dibx000_i2c_set_speed\09\09\09\09"
module asm "\09.long\09__crc_dibx000_i2c_set_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_i2c_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_i2c_set_speed\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_i2c_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dibx000_get_i2c_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_dibx000_get_i2c_adapter\09\09\09\09"
module asm "\09.long\09__crc_dibx000_get_i2c_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_get_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_get_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dibx000_reset_i2c_master\22, \22a\22\09"
module asm "\09.weak\09__crc_dibx000_reset_i2c_master\09\09\09\09"
module asm "\09.long\09__crc_dibx000_reset_i2c_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_reset_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_reset_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_reset_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dibx000_init_i2c_master\22, \22a\22\09"
module asm "\09.weak\09__crc_dibx000_init_i2c_master\09\09\09\09"
module asm "\09.long\09__crc_dibx000_init_i2c_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_init_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_init_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_init_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dibx000_exit_i2c_master\22, \22a\22\09"
module asm "\09.weak\09__crc_dibx000_exit_i2c_master\09\09\09\09"
module asm "\09.long\09__crc_dibx000_exit_i2c_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibx000_exit_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dibx000_exit_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dibx000_exit_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, ptr, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [21 x i8] c"dibx000_common.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype288 = internal constant [34 x i8] c"dibx000_common.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug289 = internal constant [57 x i8] c"dibx000_common.parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dibx000_i2c_set_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_i2c_set_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_i2c_set_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_i2c_set_speed to i32), ptr @__kstrtab_dibx000_i2c_set_speed, ptr @__kstrtabns_dibx000_i2c_set_speed }, section "___ksymtab+dibx000_i2c_set_speed", align 4
@dibx000_get_i2c_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013dibx000_common: incorrect I2C interface selected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dibx000_get_i2c_adapter\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/dvb-frontends/dibx000_common.c\00", [51 x i8] zeroinitializer }, align 32
@dibx000_get_i2c_adapter._entry_ptr = internal global ptr @dibx000_get_i2c_adapter._entry, section ".printk_index", align 4
@__kstrtab_dibx000_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_get_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_get_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_get_i2c_adapter to i32), ptr @__kstrtab_dibx000_get_i2c_adapter, ptr @__kstrtabns_dibx000_get_i2c_adapter }, section "___ksymtab+dibx000_get_i2c_adapter", align 4
@__kstrtab_dibx000_reset_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_reset_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_reset_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_reset_i2c_master to i32), ptr @__kstrtab_dibx000_reset_i2c_master, ptr @__kstrtabns_dibx000_reset_i2c_master }, section "___ksymtab+dibx000_reset_i2c_master", align 4
@dibx000_init_i2c_master.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mst->i2c_buffer_lock\00", [42 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017dibx000_common: %s: could not acquire lock\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dibx000_init_i2c_master\00", [40 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry_ptr = internal global ptr @dibx000_init_i2c_master._entry, section ".printk_index", align 4
@dibx000_i2c_gated_tuner_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dibx000_i2c_gated_tuner_xfer, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DiBX000 tuner I2C bus\00", [42 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dibx000_common: could not initialize the tuner i2c_adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry_ptr.9 = internal global ptr @dibx000_init_i2c_master._entry.7, section ".printk_index", align 4
@dibx000_i2c_master_gpio12_xfer_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dibx000_i2c_master_xfer_gpio12, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DiBX000 master GPIO12 I2C bus\00", [34 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013dibx000_common: could not initialize the master i2c_adapter\0A\00", [33 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry_ptr.13 = internal global ptr @dibx000_init_i2c_master._entry.11, section ".printk_index", align 4
@dibx000_i2c_master_gpio34_xfer_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dibx000_i2c_master_xfer_gpio34, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DiBX000 master GPIO34 I2C bus\00", [34 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry_ptr.16 = internal global ptr @dibx000_init_i2c_master._entry.15, section ".printk_index", align 4
@dibx000_i2c_gated_gpio67_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dibx000_i2c_gated_gpio67_xfer, ptr null, ptr null, ptr null, ptr @dibx000_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DiBX000 master GPIO67 I2C bus\00", [34 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dibx000_init_i2c_master._entry_ptr.19 = internal global ptr @dibx000_init_i2c_master._entry.18, section ".printk_index", align 4
@__kstrtab_dibx000_init_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_init_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_init_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_init_i2c_master to i32), ptr @__kstrtab_dibx000_init_i2c_master, ptr @__kstrtabns_dibx000_init_i2c_master }, section "___ksymtab+dibx000_init_i2c_master", align 4
@__kstrtab_dibx000_exit_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibx000_exit_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dibx000_exit_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibx000_exit_i2c_master to i32), ptr @__kstrtab_dibx000_exit_i2c_master, ptr @__kstrtabns_dibx000_exit_i2c_master }, section "___ksymtab+dibx000_exit_i2c_master", align 4
@__UNIQUE_ID_author290 = internal constant [70 x i8] c"dibx000_common.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [73 x i8] c"dibx000_common.description=Common function the DiBcom demodulator family\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [63 x i8] c"dibx000_common.file=drivers/media/dvb-frontends/dibx000_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"dibx000_common.license=GPL\00", section ".modinfo", align 1
@dibx000_write_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.20, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dibx000_write_word\00", [45 x i8] zeroinitializer }, align 32
@dibx000_write_word._entry_ptr = internal global ptr @dibx000_write_word._entry, section ".printk_index", align 4
@dibx000_i2c_select_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017dibx000_common: %s: selecting interface: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dibx000_i2c_select_interface\00", [35 x i8] zeroinitializer }, align 32
@dibx000_i2c_select_interface._entry_ptr = internal global ptr @dibx000_i2c_select_interface._entry, section ".printk_index", align 4
@dibx000_i2c_gated_tuner_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\017dibx000_common: %s: %s: too much I2C message to be transmitted (%i). Maximum is 32\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dibx000_i2c_gated_tuner_xfer\00", [35 x i8] zeroinitializer }, align 32
@dibx000_i2c_gated_tuner_xfer._entry_ptr = internal global ptr @dibx000_i2c_gated_tuner_xfer._entry, section ".printk_index", align 4
@dibx000_i2c_gated_tuner_xfer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.24, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dibx000_i2c_gated_tuner_xfer._entry_ptr.26 = internal global ptr @dibx000_i2c_gated_tuner_xfer._entry.25, section ".printk_index", align 4
@dibx000_read_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.27, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dibx000_read_word\00", [46 x i8] zeroinitializer }, align 32
@dibx000_read_word._entry_ptr = internal global ptr @dibx000_read_word._entry, section ".printk_index", align 4
@dibx000_read_word._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dibx000_common: %s: i2c read error on %d\0A\00", [52 x i8] zeroinitializer }, align 32
@dibx000_read_word._entry_ptr.30 = internal global ptr @dibx000_read_word._entry.28, section ".printk_index", align 4
@dibx000_i2c_gated_gpio67_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dibx000_i2c_gated_gpio67_xfer\00", [34 x i8] zeroinitializer }, align 32
@dibx000_i2c_gated_gpio67_xfer._entry_ptr = internal global ptr @dibx000_i2c_gated_gpio67_xfer._entry, section ".printk_index", align 4
@dibx000_i2c_gated_gpio67_xfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dibx000_i2c_gated_gpio67_xfer._entry_ptr.33 = internal global ptr @dibx000_i2c_gated_gpio67_xfer._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 10, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 401, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 442, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 444, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"dibx000_i2c_gated_tuner_algo\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 372, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 465, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 466, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [36 x i8] c"dibx000_i2c_master_gpio12_xfer_algo\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 253, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 471, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 472, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [36 x i8] c"dibx000_i2c_master_gpio34_xfer_algo\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 258, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 477, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 478, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [30 x i8] c"dibx000_i2c_gated_gpio67_algo\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 327, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 483, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 484, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 25, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 202, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 339, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 347, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 51, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 69, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 292, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private constant [48 x i8] c"../drivers/media/dvb-frontends/dibx000_common.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 300, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_debug289, ptr @__UNIQUE_ID_debugtype288, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_dibx000_exit_i2c_master, ptr @__ksymtab_dibx000_get_i2c_adapter, ptr @__ksymtab_dibx000_i2c_set_speed, ptr @__ksymtab_dibx000_init_i2c_master, ptr @__ksymtab_dibx000_reset_i2c_master, ptr @__param_debug, ptr @dibx000_get_i2c_adapter._entry, ptr @dibx000_get_i2c_adapter._entry_ptr, ptr @dibx000_i2c_gated_gpio67_xfer._entry, ptr @dibx000_i2c_gated_gpio67_xfer._entry.32, ptr @dibx000_i2c_gated_gpio67_xfer._entry_ptr, ptr @dibx000_i2c_gated_gpio67_xfer._entry_ptr.33, ptr @dibx000_i2c_gated_tuner_xfer._entry, ptr @dibx000_i2c_gated_tuner_xfer._entry.25, ptr @dibx000_i2c_gated_tuner_xfer._entry_ptr, ptr @dibx000_i2c_gated_tuner_xfer._entry_ptr.26, ptr @dibx000_i2c_select_interface._entry, ptr @dibx000_i2c_select_interface._entry_ptr, ptr @dibx000_init_i2c_master._entry, ptr @dibx000_init_i2c_master._entry.11, ptr @dibx000_init_i2c_master._entry.15, ptr @dibx000_init_i2c_master._entry.18, ptr @dibx000_init_i2c_master._entry.7, ptr @dibx000_init_i2c_master._entry_ptr, ptr @dibx000_init_i2c_master._entry_ptr.13, ptr @dibx000_init_i2c_master._entry_ptr.16, ptr @dibx000_init_i2c_master._entry_ptr.19, ptr @dibx000_init_i2c_master._entry_ptr.9, ptr @dibx000_read_word._entry, ptr @dibx000_read_word._entry.28, ptr @dibx000_read_word._entry_ptr, ptr @dibx000_read_word._entry_ptr.30, ptr @dibx000_write_word._entry, ptr @dibx000_write_word._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dibx000_init_i2c_master.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dibx000_i2c_gated_tuner_algo, ptr @.str.6, ptr @.str.8, ptr @dibx000_i2c_master_gpio12_xfer_algo, ptr @.str.10, ptr @.str.12, ptr @dibx000_i2c_master_gpio34_xfer_algo, ptr @.str.14, ptr @dibx000_i2c_gated_gpio67_algo, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_get_i2c_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_init_i2c_master.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_init_i2c_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_gated_tuner_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_init_i2c_master._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_master_gpio12_xfer_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_init_i2c_master._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_master_gpio34_xfer_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_init_i2c_master._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_gated_gpio67_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_init_i2c_master._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_write_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_select_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_gated_tuner_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_gated_tuner_xfer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_read_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_read_word._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_gated_gpio67_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibx000_i2c_gated_gpio67_xfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dibx000_i2c_set_speed(ptr nocapture noundef readonly %i2c_adap, i16 noundef zeroext %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base_reg, align 2
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body.i.dibx000_write_word.exit_crit_edge, label %do.end.i

do.body.i.dibx000_write_word.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dibx000_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #9
  br label %dibx000_write_word.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %cmp = icmp ult i16 %3, 12
  %7 = tail call i16 @llvm.umax.i16(i16 %speed, i16 235)
  %spec.select = select i1 %cmp, i16 %7, i16 %speed
  %8 = udiv i16 -5536, %spec.select
  %add = add i16 %5, 3
  %9 = lshr i16 %add, 8
  %conv7.i = trunc i16 %9 to i8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %i2c_write_buffer.i, align 8
  %conv10.i = trunc i16 %add to i8
  %arrayidx12.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %12 = lshr i16 %8, 8
  %conv16.i = trunc i16 %12 to i8
  %arrayidx18.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16.i, ptr %arrayidx18.i, align 2
  %conv21.i = trunc i16 %8 to i8
  %arrayidx23.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 262144, ptr %msg.i, align 8
  %i2c_addr.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_addr.i, align 4
  %conv24.i = zext i8 %17 to i16
  store i16 %conv24.i, ptr %msg.i, align 8
  %buf.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 8
  %i2c_adap.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i, align 8
  %call37.i = tail call i32 @i2c_transfer(ptr noundef %20, ptr noundef %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i)
  %cmp38.not.i = icmp eq i32 %call37.i, 1
  %cond.i = select i1 %cmp38.not.i, i32 0, i32 -121
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dibx000_write_word.exit

dibx000_write_word.exit:                          ; preds = %if.end6.i, %do.end.i, %do.body.i.dibx000_write_word.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end6.i ], [ -22, %do.end.i ], [ -22, %do.body.i.dibx000_write_word.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dibx000_get_i2c_adapter(ptr noundef readnone %mst, i32 noundef %intf, i32 noundef %gating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %intf to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %intf, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gating)
  %tobool.not = icmp eq i32 %gating, 0
  %gated_tuner_i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2
  %spec.select = select i1 %tobool.not, ptr null, ptr %gated_tuner_i2c_adap
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gating)
  %tobool2.not = icmp eq i32 %gating, 0
  %master_i2c_adap_gpio12 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3
  %spec.select19 = select i1 %tobool2.not, ptr %master_i2c_adap_gpio12, ptr null
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gating)
  %tobool6.not = icmp eq i32 %gating, 0
  %master_i2c_adap_gpio34 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4
  %spec.select20 = select i1 %tobool6.not, ptr %master_i2c_adap_gpio34, ptr null
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gating)
  %tobool10.not = icmp eq i32 %gating, 0
  %master_i2c_adap_gpio67 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5
  %spec.select21 = select i1 %tobool10.not, ptr null, ptr %master_i2c_adap_gpio67
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %i2c.0 = phi ptr [ null, %do.end ], [ %spec.select, %sw.bb ], [ %spec.select19, %sw.bb1 ], [ %spec.select20, %sw.bb5 ], [ %spec.select21, %sw.bb9 ]
  ret ptr %i2c.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dibx000_reset_i2c_master(ptr noundef %mst) #0 align 64 {
entry:
  %tx = alloca [4 x i8], align 1
  %m = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx) #6
  %0 = getelementptr inbounds [4 x i8], ptr %tx, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %tx, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %tx, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %m) #6
  %3 = getelementptr inbounds i8, ptr %m, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 7
  %5 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %m to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %m, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %m, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %m, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %m, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx, ptr %buf, align 4
  %11 = ptrtoint ptr %mst to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mst, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp.i = icmp ugt i16 %12, 2
  %val.1.off0.i = select i1 %cmp.i, i8 0, i8 -128
  %val.1.off8.i = zext i1 %cmp.i to i8
  %base_reg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 8
  %13 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %base_reg.i, align 2
  %conv9.i = zext i16 %14 to i32
  %add.i = add nuw nsw i32 %conv9.i, 1
  %15 = lshr i32 %add.i, 8
  %conv10.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10.i, ptr %tx, align 1
  %17 = trunc i16 %14 to i8
  %conv15.i = add i8 %17, 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv15.i, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %val.1.off8.i, ptr %1, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %val.1.off0.i, ptr %2, align 1
  %i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 6
  %21 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_adap, align 8
  %call2 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %m, i32 noundef 1) #6
  %selected_interface = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 1
  %23 = ptrtoint ptr %selected_interface to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 255, ptr %selected_interface, align 4
  call fastcc void @dibx000_i2c_select_interface(ptr noundef %mst, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dibx000_i2c_select_interface(ptr noundef %mst, i32 noundef %intf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mst, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp ugt i16 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %selected_interface = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 1
  %2 = ptrtoint ptr %selected_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %selected_interface, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %intf)
  %cmp2.not = icmp eq i32 %3, %intf
  br i1 %cmp2.not, label %land.lhs.true.return_crit_edge, label %do.body

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %intf) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %5 = ptrtoint ptr %selected_interface to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %intf, ptr %selected_interface, align 4
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 8
  %6 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %base_reg, align 2
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 12
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %do.end6
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.body.i.return_crit_edge, label %do.end.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #9
  br label %return

if.end6.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i16 %7, 4
  %9 = lshr i16 %add, 8
  %conv7.i = trunc i16 %9 to i8
  %i2c_write_buffer.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10
  %10 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %i2c_write_buffer.i, align 8
  %conv10.i = trunc i16 %add to i8
  %arrayidx12.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %12 = lshr i32 %intf, 8
  %conv16.i = trunc i32 %12 to i8
  %arrayidx18.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16.i, ptr %arrayidx18.i, align 2
  %conv21.i = trunc i32 %intf to i8
  %arrayidx23.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %msg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 262144, ptr %msg.i, align 8
  %i2c_addr.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 7
  %16 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_addr.i, align 4
  %conv24.i = zext i8 %17 to i16
  store i16 %conv24.i, ptr %msg.i, align 8
  %buf.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 8
  %i2c_adap.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 6
  %19 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_adap.i, align 8
  %call37.i = tail call i32 @i2c_transfer(ptr noundef %20, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %return

return:                                           ; preds = %if.end6.i, %do.end.i, %do.body.i.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dibx000_init_i2c_master(ptr noundef %mst, i16 noundef zeroext %device_rev, ptr noundef %i2c_adap, i8 noundef zeroext %i2c_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %i2c_buffer_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @dibx000_init_i2c_master.__key) #6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body2, label %if.end10

do.body2:                                         ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body2.cleanup_crit_edge, label %do.end6

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end6:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %msg = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %msg, align 8
  %2 = lshr i8 %i2c_addr, 1
  %conv11 = zext i8 %2 to i16
  store i16 %conv11, ptr %msg, align 8
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10
  %buf = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c_write_buffer, ptr %buf, align 8
  %len = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4, ptr %len, align 4
  %5 = ptrtoint ptr %mst to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %device_rev, ptr %mst, align 8
  %i2c_adap21 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 6
  %6 = ptrtoint ptr %i2c_adap21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i2c_adap, ptr %i2c_adap21, align 8
  %i2c_addr25 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 7
  %7 = ptrtoint ptr %i2c_addr25 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %2, ptr %i2c_addr25, align 4
  %8 = add i16 %device_rev, -11
  %switch.and = and i16 %8, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %9 = select i1 %switch.selectcmp, i16 1024, i16 768
  %base_reg33 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 8
  %10 = ptrtoint ptr %base_reg33 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %base_reg33, align 2
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %gated_tuner_i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2
  %parent37 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2, i32 9, i32 1
  %13 = ptrtoint ptr %parent37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %parent37, align 8
  %name1.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2, i32 12
  %call.i = tail call i32 @strscpy(ptr noundef %name1.i, ptr noundef nonnull @.str.6, i32 noundef 48) #6
  %algo2.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %algo2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dibx000_i2c_gated_tuner_algo, ptr %algo2.i, align 8
  %algo_data.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %algo_data.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2, i32 9, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mst, ptr %driver_data.i.i.i, align 4
  %call3.i = tail call i32 @i2c_add_adapter(ptr noundef %gated_tuner_i2c_adap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp.i, label %if.end10.if.end48_crit_edge, label %do.end45

if.end10.if.end48_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end45:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end10.if.end48_crit_edge
  %17 = ptrtoint ptr %i2c_adap21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_adap21, align 8
  %parent51 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %parent51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent51, align 8
  %master_i2c_adap_gpio12 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3
  %parent53 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3, i32 9, i32 1
  %21 = ptrtoint ptr %parent53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %parent53, align 8
  %name1.i142 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3, i32 12
  %call.i143 = tail call i32 @strscpy(ptr noundef %name1.i142, ptr noundef nonnull @.str.10, i32 noundef 48) #6
  %algo2.i144 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %algo2.i144 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dibx000_i2c_master_gpio12_xfer_algo, ptr %algo2.i144, align 8
  %algo_data.i145 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %algo_data.i145 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %algo_data.i145, align 4
  %driver_data.i.i.i146 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mst, ptr %driver_data.i.i.i146, align 4
  %call3.i147 = tail call i32 @i2c_add_adapter(ptr noundef %master_i2c_adap_gpio12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i147)
  %cmp.i148 = icmp sgt i32 %call3.i147, -1
  br i1 %cmp.i148, label %if.end48.if.end64_crit_edge, label %do.end61

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end61:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end48.if.end64_crit_edge
  %25 = ptrtoint ptr %i2c_adap21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_adap21, align 8
  %parent67 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %parent67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent67, align 8
  %master_i2c_adap_gpio34 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4
  %parent69 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4, i32 9, i32 1
  %29 = ptrtoint ptr %parent69 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %parent69, align 8
  %name1.i150 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4, i32 12
  %call.i151 = tail call i32 @strscpy(ptr noundef %name1.i150, ptr noundef nonnull @.str.14, i32 noundef 48) #6
  %algo2.i152 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %algo2.i152 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dibx000_i2c_master_gpio34_xfer_algo, ptr %algo2.i152, align 8
  %algo_data.i153 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %algo_data.i153 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %algo_data.i153, align 4
  %driver_data.i.i.i154 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4, i32 9, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i154 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mst, ptr %driver_data.i.i.i154, align 4
  %call3.i155 = tail call i32 @i2c_add_adapter(ptr noundef %master_i2c_adap_gpio34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i155)
  %cmp.i156 = icmp sgt i32 %call3.i155, -1
  br i1 %cmp.i156, label %if.end64.if.end80_crit_edge, label %do.end77

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end77:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end64.if.end80_crit_edge
  %33 = ptrtoint ptr %i2c_adap21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_adap21, align 8
  %parent83 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %parent83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent83, align 8
  %master_i2c_adap_gpio67 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5
  %parent85 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5, i32 9, i32 1
  %37 = ptrtoint ptr %parent85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %parent85, align 8
  %name1.i158 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5, i32 12
  %call.i159 = tail call i32 @strscpy(ptr noundef %name1.i158, ptr noundef nonnull @.str.17, i32 noundef 48) #6
  %algo2.i160 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %algo2.i160 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dibx000_i2c_gated_gpio67_algo, ptr %algo2.i160, align 8
  %algo_data.i161 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %algo_data.i161 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %algo_data.i161, align 4
  %driver_data.i.i.i162 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5, i32 9, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mst, ptr %driver_data.i.i.i162, align 4
  %call3.i163 = tail call i32 @i2c_add_adapter(ptr noundef %master_i2c_adap_gpio67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i163)
  %cmp.i164 = icmp sgt i32 %call3.i163, -1
  br i1 %cmp.i164, label %if.end80.if.end96_crit_edge, label %do.end93

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

do.end93:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %if.end96

if.end96:                                         ; preds = %do.end93, %if.end80.if.end96_crit_edge
  %41 = ptrtoint ptr %mst to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mst, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %42)
  %cmp.i166 = icmp ugt i16 %42, 2
  %val.1.off0.i = select i1 %cmp.i166, i8 0, i8 -128
  %val.1.off8.i = zext i1 %cmp.i166 to i8
  %base_reg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 8
  %43 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %base_reg.i, align 2
  %conv9.i = zext i16 %44 to i32
  %add.i = add nuw nsw i32 %conv9.i, 1
  %45 = lshr i32 %add.i, 8
  %conv10.i = trunc i32 %45 to i8
  %46 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv10.i, ptr %i2c_write_buffer, align 1
  %47 = trunc i16 %44 to i8
  %conv15.i = add i8 %47, 1
  %arrayidx16.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %arrayidx20.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 2
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %val.1.off8.i, ptr %arrayidx20.i, align 1
  %arrayidx24.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 3
  %50 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %val.1.off0.i, ptr %arrayidx24.i, align 1
  %call102 = tail call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call102)
  %cmp103 = icmp eq i32 %call102, 1
  %conv104 = zext i1 %cmp103 to i32
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end6, %do.body2.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv104, %if.end96 ], [ -22, %do.end6 ], [ -22, %do.body2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dibx000_exit_i2c_master(ptr noundef %mst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gated_tuner_i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %gated_tuner_i2c_adap) #6
  %master_i2c_adap_gpio12 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %master_i2c_adap_gpio12) #6
  %master_i2c_adap_gpio34 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %master_i2c_adap_gpio34) #6
  %master_i2c_adap_gpio67 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %master_i2c_adap_gpio67) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_gated_tuner_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %num)
  %cmp = icmp sgt i32 %num, 32
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24, i32 noundef %num) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %1, i32 noundef 0)
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 12
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body11, label %if.end22

do.body11:                                        ; preds = %if.end6
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %do.body11.cleanup_crit_edge, label %do.end16

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %msg23 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9
  %add = add nsw i32 %num, 2
  %mul = mul i32 %add, 12
  %4 = call ptr @memset(ptr %msg23, i32 0, i32 %mul)
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %conv = trunc i16 %6 to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp.i = icmp ugt i16 %8, 2
  %extract.i = zext i1 %cmp.i to i8
  %val.1.off8.i = shl i8 %conv, %extract.i
  %base_reg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %base_reg.i, align 2
  %conv9.i = zext i16 %10 to i32
  %add.i = add nuw nsw i32 %conv9.i, 1
  %11 = lshr i32 %add.i, 8
  %conv10.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10.i, ptr %i2c_write_buffer, align 1
  %13 = trunc i16 %10 to i8
  %conv15.i = add i8 %13, 1
  %arrayidx16.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %arrayidx20.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %val.1.off8.i, ptr %arrayidx20.i, align 1
  %arrayidx24.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx24.i, align 1
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_addr, align 4
  %conv26 = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg23 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv26, ptr %msg23, align 8
  %buf = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 0, i32 3
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %i2c_write_buffer, ptr %buf, align 8
  %len = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4, ptr %len, align 4
  %arrayidx37 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 1
  %mul38 = mul i32 %num, 12
  %22 = call ptr @memcpy(ptr %arrayidx37, ptr %msg, i32 %mul38)
  %arrayidx40 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 4
  %val.1.off0.i = select i1 %cmp.i, i8 0, i8 -128
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.i, ptr %arrayidx40, align 1
  %arrayidx16.i105 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 5
  %24 = ptrtoint ptr %arrayidx16.i105 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15.i, ptr %arrayidx16.i105, align 1
  %arrayidx20.i106 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 6
  %25 = ptrtoint ptr %arrayidx20.i106 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %extract.i, ptr %arrayidx20.i106, align 1
  %arrayidx24.i107 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 7
  %26 = ptrtoint ptr %arrayidx24.i107 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %val.1.off0.i, ptr %arrayidx24.i107, align 1
  %add45 = add nsw i32 %num, 1
  %arrayidx46 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 %add45
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv26, ptr %arrayidx46, align 4
  %buf53 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 %add45, i32 3
  %28 = ptrtoint ptr %buf53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx40, ptr %buf53, align 4
  %len57 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 %add45, i32 2
  %29 = ptrtoint ptr %len57 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %len57, align 4
  %i2c_adap58 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %i2c_adap58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_adap58, align 8
  %call62 = tail call i32 @i2c_transfer(ptr noundef %31, ptr noundef %msg23, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %add)
  %cmp64 = icmp eq i32 %call62, %add
  %spec.select = select i1 %cmp64, i32 %num, i32 -5
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end16, %do.body11.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end22 ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ], [ -22, %do.end16 ], [ -22, %do.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dibx000_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_master_xfer_gpio12(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp26 = icmp sgt i32 %num, 0
  br i1 %cmp26, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %msg_index.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %msg_index.027
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %msg_index.027, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call3 = tail call fastcc i32 @dibx000_master_i2c_read(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call8 = tail call fastcc i32 @dibx000_master_i2c_write(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.else.for.inc_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %msg_index.027, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dibx000_master_i2c_read(ptr noundef %mst, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not104 = icmp eq i16 %1, 0
  br i1 %tobool.not104, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 8
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 12
  %i2c_write_buffer.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10
  %arrayidx12.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 1
  %arrayidx18.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 2
  %arrayidx23.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 3
  %msg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9
  %i2c_addr.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 7
  %buf.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 6
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end61.while.cond.loopexit_crit_edge, %while.body46.while.cond.loopexit_crit_edge, %while.cond44.preheader.while.cond.loopexit_crit_edge
  %b.1.lcssa = phi ptr [ %b.0105, %while.cond44.preheader.while.cond.loopexit_crit_edge ], [ %incdec.ptr, %while.body46.while.cond.loopexit_crit_edge ], [ %incdec.ptr59, %if.end61.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i16 %sub, 0
  br i1 %tobool.not, label %while.cond.loopexit.cleanup_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %rxlen.0106 = phi i16 [ %1, %while.body.lr.ph ], [ %sub, %while.cond.loopexit.while.body_crit_edge ]
  %b.0105 = phi ptr [ %3, %while.body.lr.ph ], [ %b.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %4 = tail call i16 @llvm.umin.i16(i16 %rxlen.0106, i16 8)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len, align 4
  %sub = sub i16 %rxlen.0106, %4
  %9 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %base_reg, align 2
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %while.body
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.body.i.while.cond.i.preheader_crit_edge, label %do.end.i

do.body.i.while.cond.i.preheader_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.preheader

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #9
  br label %while.cond.i.preheader

if.end6.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %rxlen.0106)
  %cmp26 = icmp ult i16 %rxlen.0106, 9
  %shl = shl i16 %6, 9
  %and = shl nuw nsw i16 %4, 2
  %shl11 = and i16 %and, 28
  %or7 = or i16 %shl, %shl11
  call void @__sanitizer_cov_trace_cmp2(i16 %rxlen.0106, i16 %8)
  %cmp19 = icmp eq i16 %rxlen.0106, %8
  %da.0.v = select i1 %cmp19, i16 418, i16 386
  %da.0 = or i16 %da.0.v, %or7
  %12 = or i16 %da.0, 64
  %da.1 = select i1 %cmp26, i16 %12, i16 %da.0
  %13 = lshr i16 %add, 8
  %conv7.i = trunc i16 %13 to i8
  %14 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i, ptr %i2c_write_buffer.i, align 8
  %conv10.i = trunc i16 %add to i8
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %16 = lshr i16 %da.1, 8
  %conv16.i = trunc i16 %16 to i8
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16.i, ptr %arrayidx18.i, align 2
  %conv21.i = trunc i16 %da.1 to i8
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 262144, ptr %msg.i, align 8
  %20 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_addr.i, align 4
  %conv24.i = zext i8 %21 to i16
  store i16 %conv24.i, ptr %msg.i, align 8
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 8
  %23 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adap.i, align 8
  %call37.i = tail call i32 @i2c_transfer(ptr noundef %24, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end6.i, %do.end.i, %do.body.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ], [ 100, %while.cond.i.preheader ]
  %25 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %base_reg, align 2
  %add.i = add i16 %26, 2
  %call.i89 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %mst, i16 noundef zeroext %add.i) #6
  %conv2.i = zext i16 %call.i89 to i32
  %and.i = and i32 %conv2.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i90 = icmp eq i32 %and.i, 0
  br i1 %cmp.i90, label %land.rhs.i, label %dibx000_is_i2c_done.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp4.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dibx000_is_i2c_done.exit:                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp6.i = icmp ne i32 %i.0.i, 0
  %and9.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp10.i = icmp ne i32 %and9.i, 0
  %27 = select i1 %cmp6.i, i1 %cmp10.i, i1 false
  br i1 %27, label %while.cond44.preheader, label %dibx000_is_i2c_done.exit.cleanup_crit_edge

dibx000_is_i2c_done.exit.cleanup_crit_edge:       ; preds = %dibx000_is_i2c_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond44.preheader:                           ; preds = %dibx000_is_i2c_done.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool45.not101 = icmp eq i16 %4, 0
  br i1 %tobool45.not101, label %while.cond44.preheader.while.cond.loopexit_crit_edge, label %while.cond44.preheader.while.body46_crit_edge

while.cond44.preheader.while.body46_crit_edge:    ; preds = %while.cond44.preheader
  br label %while.body46

while.cond44.preheader.while.cond.loopexit_crit_edge: ; preds = %while.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

while.body46:                                     ; preds = %if.end61.while.body46_crit_edge, %while.cond44.preheader.while.body46_crit_edge
  %len1.0103 = phi i16 [ %dec60, %if.end61.while.body46_crit_edge ], [ %4, %while.cond44.preheader.while.body46_crit_edge ]
  %b.1102 = phi ptr [ %incdec.ptr59, %if.end61.while.body46_crit_edge ], [ %b.0105, %while.cond44.preheader.while.body46_crit_edge ]
  %28 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %base_reg, align 2
  %call48 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %mst, i16 noundef zeroext %29)
  %30 = lshr i16 %call48, 8
  %conv51 = trunc i16 %30 to i8
  %incdec.ptr = getelementptr i8, ptr %b.1102, i32 1
  %31 = ptrtoint ptr %b.1102 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv51, ptr %b.1102, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len1.0103)
  %cmp53.not = icmp eq i16 %len1.0103, 1
  br i1 %cmp53.not, label %while.body46.while.cond.loopexit_crit_edge, label %if.end61

while.body46.while.cond.loopexit_crit_edge:       ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

if.end61:                                         ; preds = %while.body46
  %conv58 = trunc i16 %call48 to i8
  %incdec.ptr59 = getelementptr i8, ptr %b.1102, i32 2
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv58, ptr %incdec.ptr, align 1
  %dec60 = add i16 %len1.0103, -2
  %tobool45.not = icmp eq i16 %dec60, 0
  br i1 %tobool45.not, label %if.end61.while.cond.loopexit_crit_edge, label %if.end61.while.body46_crit_edge

if.end61.while.body46_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body46

if.end61.while.cond.loopexit_crit_edge:           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.loopexit

cleanup:                                          ; preds = %dibx000_is_i2c_done.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %while.cond.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -121, %land.rhs.i.cleanup_crit_edge ], [ -121, %dibx000_is_i2c_done.exit.cleanup_crit_edge ], [ 0, %while.cond.loopexit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dibx000_master_i2c_write(ptr noundef %mst, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 8
  %i2c_buffer_lock.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 12
  %i2c_write_buffer.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10
  %arrayidx12.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 1
  %arrayidx18.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 2
  %arrayidx23.i = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 3
  %msg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9
  %i2c_addr.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 7
  %buf.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 3
  %i2c_adap.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %dibx000_is_i2c_done.exit.while.cond_crit_edge, %entry
  %txlen.0 = phi i16 [ %1, %entry ], [ %sub, %dibx000_is_i2c_done.exit.while.cond_crit_edge ]
  %b.0 = phi ptr [ %3, %entry ], [ %b.2, %dibx000_is_i2c_done.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %txlen.0)
  %tobool.not = icmp eq i16 %txlen.0, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %4 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base_reg, align 2
  %add = add i16 %5, 2
  %call = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %mst, i16 noundef zeroext %add)
  %6 = tail call i16 @llvm.umin.i16(i16 %txlen.0, i16 8)
  %conv8 = zext i16 %6 to i32
  br label %for.body

for.body:                                         ; preds = %dibx000_write_word.exit.for.body_crit_edge, %while.body
  %conv743 = phi i32 [ %conv7, %dibx000_write_word.exit.for.body_crit_edge ], [ 0, %while.body ]
  %b.142 = phi ptr [ %b.2, %dibx000_write_word.exit.for.body_crit_edge ], [ %b.0, %while.body ]
  %incdec.ptr = getelementptr i8, ptr %b.142, i32 1
  %7 = ptrtoint ptr %b.142 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b.142, align 1
  %add14 = add nuw nsw i32 %conv743, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %conv8)
  %cmp16 = icmp ult i32 %add14, %conv8
  br i1 %cmp16, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr18 = getelementptr i8, ptr %b.142, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %data.0.off0 = phi i8 [ %10, %if.then ], [ 0, %for.body.if.end_crit_edge ]
  %b.2 = phi ptr [ %incdec.ptr18, %if.then ], [ %incdec.ptr, %for.body.if.end_crit_edge ]
  %11 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %base_reg, align 2
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.body.i.dibx000_write_word.exit_crit_edge, label %do.end.i

do.body.i.dibx000_write_word.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dibx000_write_word.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #9
  br label %dibx000_write_word.exit

if.end6.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = lshr i16 %12, 8
  %conv7.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i, ptr %i2c_write_buffer.i, align 8
  %conv10.i = trunc i16 %12 to i8
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10.i, ptr %arrayidx12.i, align 1
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %8, ptr %arrayidx18.i, align 2
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %data.0.off0, ptr %arrayidx23.i, align 1
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 262144, ptr %msg.i, align 8
  %20 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_addr.i, align 4
  %conv24.i = zext i8 %21 to i16
  store i16 %conv24.i, ptr %msg.i, align 8
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 8
  %23 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_adap.i, align 8
  %call37.i = tail call i32 @i2c_transfer(ptr noundef %24, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %dibx000_write_word.exit

dibx000_write_word.exit:                          ; preds = %if.end6.i, %do.end.i, %do.body.i.dibx000_write_word.exit_crit_edge
  %add25 = add nuw nsw i32 %conv743, 2
  %conv7 = and i32 %add25, 65535
  %cmp9 = icmp ult i32 %conv7, %conv8
  br i1 %cmp9, label %dibx000_write_word.exit.for.body_crit_edge, label %for.end

dibx000_write_word.exit.for.body_crit_edge:       ; preds = %dibx000_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %dibx000_write_word.exit
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msg, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len, align 4
  %sub = sub i16 %txlen.0, %6
  %29 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %base_reg, align 2
  %call.i3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %do.body.i6, label %if.end6.i25

do.body.i6:                                       ; preds = %for.end
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i5 = icmp eq i32 %31, 0
  br i1 %tobool.not.i5, label %do.body.i6.while.cond.i.preheader_crit_edge, label %do.end.i8

do.body.i6.while.cond.i.preheader_crit_edge:      ; preds = %do.body.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.preheader

do.end.i8:                                        ; preds = %do.body.i6
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #9
  br label %while.cond.i.preheader

if.end6.i25:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add63 = add i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %txlen.0)
  %cmp52 = icmp ult i16 %txlen.0, 9
  %shl29 = shl i16 %26, 9
  %and = shl nuw nsw i16 %6, 2
  %shl35 = and i16 %and, 28
  %or31 = or i16 %shl29, %shl35
  call void @__sanitizer_cov_trace_cmp2(i16 %txlen.0, i16 %28)
  %cmp43 = icmp eq i16 %txlen.0, %28
  %spec.select1.v = select i1 %cmp43, i16 416, i16 384
  %spec.select1 = or i16 %spec.select1.v, %or31
  %32 = or i16 %spec.select1, 64
  %da.1 = select i1 %cmp52, i16 %32, i16 %spec.select1
  %33 = lshr i16 %add63, 8
  %conv7.i9 = trunc i16 %33 to i8
  %34 = ptrtoint ptr %i2c_write_buffer.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv7.i9, ptr %i2c_write_buffer.i, align 8
  %conv10.i11 = trunc i16 %add63 to i8
  %35 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv10.i11, ptr %arrayidx12.i, align 1
  %36 = lshr i16 %da.1, 8
  %conv16.i = trunc i16 %36 to i8
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv16.i, ptr %arrayidx18.i, align 2
  %conv21.i14 = trunc i16 %da.1 to i8
  %38 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv21.i14, ptr %arrayidx23.i, align 1
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 262144, ptr %msg.i, align 8
  %40 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_addr.i, align 4
  %conv24.i18 = zext i8 %41 to i16
  store i16 %conv24.i18, ptr %msg.i, align 8
  %42 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %i2c_write_buffer.i, ptr %buf.i, align 8
  %43 = ptrtoint ptr %i2c_adap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_adap.i, align 8
  %call37.i22 = tail call i32 @i2c_transfer(ptr noundef %44, ptr noundef %msg.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock.i) #6
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end6.i25, %do.end.i8, %do.body.i6.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ], [ 100, %while.cond.i.preheader ]
  %45 = ptrtoint ptr %base_reg to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %base_reg, align 2
  %add.i = add i16 %46, 2
  %call.i28 = tail call fastcc zeroext i16 @dibx000_read_word(ptr noundef %mst, i16 noundef zeroext %add.i) #6
  %conv2.i = zext i16 %call.i28 to i32
  %and.i = and i32 %conv2.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i29 = icmp eq i32 %and.i, 0
  br i1 %cmp.i29, label %land.rhs.i, label %dibx000_is_i2c_done.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp4.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.not.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dibx000_is_i2c_done.exit:                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp6.i = icmp ne i32 %i.0.i, 0
  %and9.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp10.i = icmp ne i32 %and9.i, 0
  %47 = select i1 %cmp6.i, i1 %cmp10.i, i1 false
  br i1 %47, label %dibx000_is_i2c_done.exit.while.cond_crit_edge, label %dibx000_is_i2c_done.exit.cleanup_crit_edge

dibx000_is_i2c_done.exit.cleanup_crit_edge:       ; preds = %dibx000_is_i2c_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dibx000_is_i2c_done.exit.while.cond_crit_edge:    ; preds = %dibx000_is_i2c_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %dibx000_is_i2c_done.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %land.rhs.i.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ -121, %dibx000_is_i2c_done.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dibx000_read_word(ptr noundef %mst, i16 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 12
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv7 = trunc i16 %1 to i8
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10
  %2 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv7, ptr %i2c_write_buffer, align 8
  %conv9 = trunc i16 %reg to i8
  %arrayidx11 = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv9, ptr %arrayidx11, align 1
  %msg = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9
  %4 = call ptr @memset(ptr %msg, i32 0, i32 24)
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 7
  %5 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_addr, align 4
  %conv12 = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv12, ptr %msg, align 8
  %buf = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_write_buffer, ptr %buf, align 8
  %len = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %arrayidx26 = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv12, ptr %arrayidx26, align 4
  %flags30 = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 1, i32 1
  %11 = ptrtoint ptr %flags30 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags30, align 2
  %i2c_read_buffer = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 11
  %buf34 = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 1, i32 3
  %12 = ptrtoint ptr %buf34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %i2c_read_buffer, ptr %buf34, align 4
  %len37 = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 9, i32 1, i32 2
  %13 = ptrtoint ptr %len37 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %len37, align 4
  %i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 6
  %14 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_adap, align 8
  %call40 = tail call i32 @i2c_transfer(ptr noundef %15, ptr noundef %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 2
  br i1 %cmp41.not, label %if.end6.if.end56_crit_edge, label %do.body44

if.end6.if.end56_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.body44:                                        ; preds = %if.end6
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool45.not = icmp eq i32 %16, 0
  br i1 %tobool45.not, label %do.body44.if.end56_crit_edge, label %do.end49

do.body44.if.end56_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end49, %do.body44.if.end56_crit_edge, %if.end6.if.end56_crit_edge
  %17 = ptrtoint ptr %i2c_read_buffer to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_read_buffer, align 8
  %conv59 = zext i8 %18 to i16
  %shl = shl nuw i16 %conv59, 8
  %arrayidx61 = getelementptr %struct.dibx000_i2c_master, ptr %mst, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %20 to i16
  %or = or i16 %shl, %conv62
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %or, %if.end56 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_master_xfer_gpio34(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp26 = icmp sgt i32 %num, 0
  br i1 %cmp26, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %msg_index.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %msg_index.027
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %msg_index.027, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call3 = tail call fastcc i32 @dibx000_master_i2c_read(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call8 = tail call fastcc i32 @dibx000_master_i2c_write(ptr noundef %1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.else.for.inc_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %msg_index.027, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibx000_i2c_gated_gpio67_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %num)
  %cmp = icmp sgt i32 %num, 32
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.31, i32 noundef %num) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  tail call fastcc void @dibx000_i2c_select_interface(ptr noundef %1, i32 noundef 3)
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 12
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body11, label %if.end22

do.body11:                                        ; preds = %if.end6
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %do.body11.cleanup_crit_edge, label %do.end16

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %msg23 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9
  %add = add nsw i32 %num, 2
  %mul = mul i32 %add, 12
  %4 = call ptr @memset(ptr %msg23, i32 0, i32 %mul)
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %conv = trunc i16 %6 to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp.i = icmp ugt i16 %8, 2
  %extract.i = zext i1 %cmp.i to i8
  %val.1.off8.i = shl i8 %conv, %extract.i
  %base_reg.i = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %base_reg.i, align 2
  %conv9.i = zext i16 %10 to i32
  %add.i = add nuw nsw i32 %conv9.i, 1
  %11 = lshr i32 %add.i, 8
  %conv10.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10.i, ptr %i2c_write_buffer, align 1
  %13 = trunc i16 %10 to i8
  %conv15.i = add i8 %13, 1
  %arrayidx16.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %arrayidx20.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %val.1.off8.i, ptr %arrayidx20.i, align 1
  %arrayidx24.i = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx24.i, align 1
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_addr, align 4
  %conv26 = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg23 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv26, ptr %msg23, align 8
  %buf = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 0, i32 3
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %i2c_write_buffer, ptr %buf, align 8
  %len = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4, ptr %len, align 4
  %arrayidx37 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 1
  %mul38 = mul i32 %num, 12
  %22 = call ptr @memcpy(ptr %arrayidx37, ptr %msg, i32 %mul38)
  %arrayidx40 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 4
  %val.1.off0.i = select i1 %cmp.i, i8 0, i8 -128
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.i, ptr %arrayidx40, align 1
  %arrayidx16.i105 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 5
  %24 = ptrtoint ptr %arrayidx16.i105 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv15.i, ptr %arrayidx16.i105, align 1
  %arrayidx20.i106 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 6
  %25 = ptrtoint ptr %arrayidx20.i106 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %extract.i, ptr %arrayidx20.i106, align 1
  %arrayidx24.i107 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 10, i32 7
  %26 = ptrtoint ptr %arrayidx24.i107 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %val.1.off0.i, ptr %arrayidx24.i107, align 1
  %add45 = add nsw i32 %num, 1
  %arrayidx46 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 %add45
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv26, ptr %arrayidx46, align 4
  %buf53 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 %add45, i32 3
  %28 = ptrtoint ptr %buf53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx40, ptr %buf53, align 4
  %len57 = getelementptr %struct.dibx000_i2c_master, ptr %1, i32 0, i32 9, i32 %add45, i32 2
  %29 = ptrtoint ptr %len57 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %len57, align 4
  %i2c_adap58 = getelementptr inbounds %struct.dibx000_i2c_master, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %i2c_adap58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_adap58, align 8
  %call62 = tail call i32 @i2c_transfer(ptr noundef %31, ptr noundef %msg23, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call62, i32 %add)
  %cmp64 = icmp eq i32 %call62, %add
  %spec.select = select i1 %cmp64, i32 %num, i32 -5
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end16, %do.body11.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end22 ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ], [ -22, %do.end16 ], [ -22, %do.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype288, !1, !"__UNIQUE_ID_debugtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug289, !4, !"__UNIQUE_ID_debug289", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 12, i32 1}
!5 = !{ptr @__ksymtab_dibx000_i2c_set_speed, !6, !"__ksymtab_dibx000_i2c_set_speed", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 191, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 401, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dibx000_get_i2c_adapter._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @dibx000_get_i2c_adapter._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_dibx000_get_i2c_adapter, !14, !"__ksymtab_dibx000_get_i2c_adapter", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 408, i32 1}
!15 = !{ptr @__ksymtab_dibx000_reset_i2c_master, !16, !"__ksymtab_dibx000_reset_i2c_master", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 422, i32 1}
!17 = !{ptr @dibx000_init_i2c_master.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 442, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 444, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dibx000_init_i2c_master._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @dibx000_init_i2c_master._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 465, i32 5}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 466, i32 3}
!29 = !{ptr @dibx000_init_i2c_master._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dibx000_init_i2c_master._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 471, i32 5}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 472, i32 3}
!35 = !{ptr @dibx000_init_i2c_master._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @dibx000_init_i2c_master._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 477, i32 5}
!39 = !{ptr @dibx000_init_i2c_master._entry.15, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 478, i32 3}
!41 = !{ptr @dibx000_init_i2c_master._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 483, i32 5}
!44 = !{ptr @dibx000_init_i2c_master._entry.18, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 484, i32 3}
!46 = !{ptr @dibx000_init_i2c_master._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__ksymtab_dibx000_init_i2c_master, !48, !"__ksymtab_dibx000_init_i2c_master", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 495, i32 1}
!49 = !{ptr @__ksymtab_dibx000_exit_i2c_master, !50, !"__ksymtab_dibx000_exit_i2c_master", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 504, i32 1}
!51 = !{ptr @__UNIQUE_ID_author290, !52, !"__UNIQUE_ID_author290", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 506, i32 1}
!53 = !{ptr @__UNIQUE_ID_description291, !54, !"__UNIQUE_ID_description291", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 507, i32 1}
!55 = !{ptr @__UNIQUE_ID_file292, !56, !"__UNIQUE_ID_file292", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 508, i32 1}
!57 = !{ptr @__UNIQUE_ID_license293, !56, !"__UNIQUE_ID_license293", i1 false, i1 false}
!58 = !{ptr @debug, !59, !"debug", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 10, i32 12}
!60 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 25, i32 3}
!63 = !{ptr @dibx000_write_word._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dibx000_write_word._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 202, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dibx000_i2c_select_interface._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dibx000_i2c_select_interface._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @dibx000_i2c_gated_tuner_algo, !71, !"dibx000_i2c_gated_tuner_algo", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 372, i32 29}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 339, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dibx000_i2c_gated_tuner_xfer._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dibx000_i2c_gated_tuner_xfer._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dibx000_i2c_gated_tuner_xfer._entry.25, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 347, i32 3}
!79 = !{ptr @dibx000_i2c_gated_tuner_xfer._entry_ptr.26, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @dibx000_i2c_master_gpio12_xfer_algo, !81, !"dibx000_i2c_master_gpio12_xfer_algo", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 253, i32 29}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 51, i32 3}
!84 = !{ptr @dibx000_read_word._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @dibx000_read_word._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 69, i32 3}
!88 = !{ptr @dibx000_read_word._entry.28, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @dibx000_read_word._entry_ptr.30, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @dibx000_i2c_master_gpio34_xfer_algo, !91, !"dibx000_i2c_master_gpio34_xfer_algo", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 258, i32 29}
!92 = !{ptr @dibx000_i2c_gated_gpio67_algo, !93, !"dibx000_i2c_gated_gpio67_algo", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 327, i32 29}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 292, i32 3}
!96 = !{ptr @dibx000_i2c_gated_gpio67_xfer._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dibx000_i2c_gated_gpio67_xfer._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @dibx000_i2c_gated_gpio67_xfer._entry.32, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/dibx000_common.c", i32 300, i32 3}
!100 = !{ptr @dibx000_i2c_gated_gpio67_xfer._entry_ptr.33, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
