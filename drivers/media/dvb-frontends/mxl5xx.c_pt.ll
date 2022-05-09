; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mxl5xx.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mxl5xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mxl5xx_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mxl5xx_attach\09\09\09\09"
module asm "\09.long\09__crc_mxl5xx_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxl5xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mxl5xx_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mxl5xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mxl = type { %struct.list_head, ptr, %struct.dvb_frontend, ptr, i32, i32, i32, [3 x i8], i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
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
%struct.mxl_base = type { %struct.list_head, %struct.list_head, i8, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, %struct.mutex, %struct.mutex, %struct.mutex, [248 x i8], i32, [512 x i8] }
%struct.mxl5xx_cfg = type { i8, i8, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.MXL_REG_FIELD_T = type { i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.MBIN_FILE_HEADER_T = type { i8, i8, i8, i8, [4 x i8], [3 x i8], i8, [4 x i8] }
%struct.MBIN_FILE_T = type { %struct.MBIN_FILE_HEADER_T, [1 x i8] }
%struct.MBIN_SEGMENT_HEADER_T = type { i8, [3 x i8], [4 x i8] }
%struct.MBIN_SEGMENT_T = type { %struct.MBIN_SEGMENT_HEADER_T, [1 x i8] }

@mxl5xx_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&base->i2c_lock\00", [16 x i8] zeroinitializer }, align 32
@mxl5xx_attach.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&base->status_lock\00", [45 x i8] zeroinitializer }, align 32
@mxl5xx_attach.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&base->tune_lock\00", [47 x i8] zeroinitializer }, align 32
@mxllist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mxllist, ptr @mxllist }, [24 x i8] zeroinitializer }, align 32
@mxl_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"MaxLinear MxL5xx DVB-S/S2 tuner-demodulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 300000000, i32 -1944967296, i32 0, i32 0, i32 1000000, i32 45000000, i32 0, i32 268436993 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @release, ptr null, ptr @init, ptr @sleep, ptr null, ptr null, ptr null, ptr @tune, ptr @get_algo, ptr null, ptr null, ptr @get_frontend, ptr @read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @send_master_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_mxl5xx_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxl5xx_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mxl5xx_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxl5xx_attach to i32), ptr @__kstrtab_mxl5xx_attach, ptr @__kstrtabns_mxl5xx_attach }, section "___ksymtab_gpl+mxl5xx_attach", align 4
@__UNIQUE_ID_description292 = internal constant [70 x i8] c"mxl5xx.description=MaxLinear MxL5xx DVB-S/S2 tuner-demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [79 x i8] c"mxl5xx.author=Ralph and Marcus Metzler, Metzler Brothers Systementwicklung GbR\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"mxl5xx.file=drivers/media/dvb-frontends/mxl5xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"mxl5xx.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ts_map1_to_1 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\04\05\06\07", [24 x i8] zeroinitializer }, align 32
@ts_map54x = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\02\03\04\05\08\08\08\08", [24 x i8] zeroinitializer }, align 32
@probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1786, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hydra chip version %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/mxl5xx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@probe._entry_ptr = internal global ptr @probe._entry, section ".printk_index", align 4
@validate_sku._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 1618, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"padMuxBond=%08x, prcmChipId=%08x, prcmSoCId=%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"validate_sku\00", [19 x i8] zeroinitializer }, align 32
@validate_sku._entry_ptr = internal global ptr @validate_sku._entry, section ".printk_index", align 4
@read_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 253, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c read error 1\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_register\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@read_register._entry_ptr = internal global ptr @read_register._entry, section ".printk_index", align 4
@read_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.7, i32 260, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c read error 2\0A\00", [46 x i8] zeroinitializer }, align 32
@read_register._entry_ptr.17 = internal global ptr @read_register._entry.15, section ".printk_index", align 4
@write_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 213, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_register\00", [17 x i8] zeroinitializer }, align 32
@write_register._entry_ptr = internal global ptr @write_register._entry, section ".printk_index", align 4
@firmware_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 1033, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hydra FW alive. Hail!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firmware_download\00", [46 x i8] zeroinitializer }, align 32
@firmware_download._entry_ptr = internal global ptr @firmware_download._entry, section ".printk_index", align 4
@check_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.7, i32 944, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid FW Header\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"check_fw\00", [23 x i8] zeroinitializer }, align 32
@check_fw._entry_ptr = internal global ptr @check_fw._entry, section ".printk_index", align 4
@check_fw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.7, i32 951, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid FW Checksum\0A\00", [43 x i8] zeroinitializer }, align 32
@check_fw._entry_ptr.26 = internal global ptr @check_fw._entry.24, section ".printk_index", align 4
@do_firmware_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 890, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Invalid file header ID (%c)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"do_firmware_download\00", [43 x i8] zeroinitializer }, align 32
@do_firmware_download._entry_ptr = internal global ptr @do_firmware_download._entry, section ".printk_index", align 4
@do_firmware_download._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.7, i32 900, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Invalid segment header ID (%c)\0A\00", [60 x i8] zeroinitializer }, align 32
@do_firmware_download._entry_ptr.31 = internal global ptr @do_firmware_download._entry.29, section ".printk_index", align 4
@write_firmware_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.7, i32 236, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fw block write failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write_firmware_block\00", [43 x i8] zeroinitializer }, align 32
@write_firmware_block._entry_ptr = internal global ptr @write_firmware_block._entry, section ".printk_index", align 4
@send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 182, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s busy\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_command\00", [19 x i8] zeroinitializer }, align 32
@send_command._entry_ptr = internal global ptr @send_command._entry, section ".printk_index", align 4
@send_command._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 191, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@send_command._entry_ptr.37 = internal global ptr @send_command._entry.36, section ".printk_index", align 4
@read_register_unlocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.38, ptr @.str.7, i32 160, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"read_register_unlocked\00", [41 x i8] zeroinitializer }, align 32
@read_register_unlocked._entry_ptr = internal global ptr @read_register_unlocked._entry, section ".printk_index", align 4
@read_register_unlocked._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.38, ptr @.str.7, i32 166, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@read_register_unlocked._entry_ptr.40 = internal global ptr @read_register_unlocked._entry.39, section ".printk_index", align 4
@get_fwinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 1661, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chipID=%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get_fwinfo\00", [21 x i8] zeroinitializer }, align 32
@get_fwinfo._entry_ptr = internal global ptr @get_fwinfo._entry, section ".printk_index", align 4
@get_fwinfo._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.7, i32 1666, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chipVer=%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@get_fwinfo._entry_ptr.45 = internal global ptr @get_fwinfo._entry.43, section ".printk_index", align 4
@get_fwinfo._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.7, i32 1671, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FWVer=%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@get_fwinfo._entry_ptr.48 = internal global ptr @get_fwinfo._entry.46, section ".printk_index", align 4
@__const.config_ts.xpt_sync_polarity = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 8, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 9, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 10, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 11, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 12, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 13, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 14, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 15, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_clock_polarity = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 16, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 17, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 18, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 19, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 20, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 21, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 22, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 23, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_valid_polarity = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_ts_clock_phase = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 0, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 4, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 8, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 12, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 16, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 20, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 24, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 28, i8 3, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_lsb_first = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 16, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 17, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 18, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 19, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 20, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 21, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 22, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 23, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_sync_byte = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_enable_output = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_err_replace_sync = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 24, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 25, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 26, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 27, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 28, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 29, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 30, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 31, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_err_replace_valid = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 8, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 9, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 10, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 11, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 12, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 13, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 14, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 15, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_continuous_clock = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_nco_clock_rate = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 80, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 81, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 82, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 83, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 84, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 85, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 86, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 87, [2 x i8] zeroinitializer }], align 4
@set_drive_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.7, i32 1321, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DIGIO = %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_drive_strength\00", [45 x i8] zeroinitializer }, align 32
@set_drive_strength._entry_ptr = internal global ptr @set_drive_strength._entry, section ".printk_index", align 4
@set_drive_strength._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.7, i32 1322, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set drive_strength = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@set_drive_strength._entry_ptr.53 = internal global ptr @set_drive_strength._entry.51, section ".printk_index", align 4
@enable_tuner.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.55, ptr @.str.7, ptr @.str.56, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mxl5xx\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_tuner\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tuner %u ready = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@get_frontend.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.57, ptr @.str.7, ptr @.str.58, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_frontend\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"freq=%u delsys=%u srate=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.conv_fec.fec2fec = private unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 10, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 11], align 4
@switch.table.get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.62 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 3, i64 4, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1857, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1858, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1859, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"mxllist\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 36, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"mxl_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 774, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"ts_map1_to_1\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1678, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"ts_map54x\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1689, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1785, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1617, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 253, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 260, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 213, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1033, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 944, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 951, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 889, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 899, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 236, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 182, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 191, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 160, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 166, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1661, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1666, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1671, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1321, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1322, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1370, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [40 x i8] c"../drivers/media/dvb-frontends/mxl5xx.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 702, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [26 x i8] c"switch.table.get_frontend\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_mxl5xx_attach, ptr @check_fw._entry, ptr @check_fw._entry.24, ptr @check_fw._entry_ptr, ptr @check_fw._entry_ptr.26, ptr @do_firmware_download._entry, ptr @do_firmware_download._entry.29, ptr @do_firmware_download._entry_ptr, ptr @do_firmware_download._entry_ptr.31, ptr @firmware_download._entry, ptr @firmware_download._entry_ptr, ptr @get_fwinfo._entry, ptr @get_fwinfo._entry.43, ptr @get_fwinfo._entry.46, ptr @get_fwinfo._entry_ptr, ptr @get_fwinfo._entry_ptr.45, ptr @get_fwinfo._entry_ptr.48, ptr @probe._entry, ptr @probe._entry_ptr, ptr @read_register._entry, ptr @read_register._entry.15, ptr @read_register._entry_ptr, ptr @read_register._entry_ptr.17, ptr @read_register_unlocked._entry, ptr @read_register_unlocked._entry.39, ptr @read_register_unlocked._entry_ptr, ptr @read_register_unlocked._entry_ptr.40, ptr @send_command._entry, ptr @send_command._entry.36, ptr @send_command._entry_ptr, ptr @send_command._entry_ptr.37, ptr @set_drive_strength._entry, ptr @set_drive_strength._entry.51, ptr @set_drive_strength._entry_ptr, ptr @set_drive_strength._entry_ptr.53, ptr @validate_sku._entry, ptr @validate_sku._entry_ptr, ptr @write_firmware_block._entry, ptr @write_firmware_block._entry_ptr, ptr @write_register._entry, ptr @write_register._entry_ptr, ptr @mxl5xx_attach.__key, ptr @.str, ptr @mxl5xx_attach.__key.1, ptr @.str.2, ptr @mxl5xx_attach.__key.3, ptr @.str.4, ptr @mxllist, ptr @mxl_ops, ptr @ts_map1_to_1, ptr @ts_map54x, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.get_frontend], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5xx_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5xx_attach.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5xx_attach.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxllist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_map1_to_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_map54x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_sku._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_firmware_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_firmware_download._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_firmware_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_command._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_register_unlocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_register_unlocked._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fwinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fwinfo._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fwinfo._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_drive_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_drive_strength._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mxl5xx_attach(ptr noundef %i2c, ptr nocapture noundef readonly %cfg, i32 noundef %demod, i32 noundef %tuner, ptr nocapture noundef writeonly %fn_set_input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1076) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %demod1 = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %demod1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %demod, ptr %demod1, align 8
  %tuner2 = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %tuner2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tuner, ptr %tuner2, align 4
  %tuner_in_use = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %tuner_in_use to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tuner_in_use, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %i2cdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %i2cdev, align 4
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cfg, align 4
  %p.015.i = load ptr, ptr @mxllist, align 4
  %cmp.not16.i = icmp eq ptr %p.015.i, @mxllist
  br i1 %cmp.not16.i, label %if.end.if.else_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %p.017.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.015.i, %if.end.for.body.i_crit_edge ]
  %i2c1.i = getelementptr inbounds %struct.mxl_base, ptr %p.017.i, i32 0, i32 3
  %7 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c1.i, align 4
  %cmp2.i = icmp eq ptr %8, %i2c
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %adr3.i = getelementptr inbounds %struct.mxl_base, ptr %p.017.i, i32 0, i32 2
  %9 = ptrtoint ptr %adr3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %adr3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %6)
  %cmp5.i = icmp eq i8 %10, %6
  br i1 %cmp5.i, label %match_base.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %p.017.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0.i = load ptr, ptr %p.017.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @mxllist
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

match_base.exit:                                  ; preds = %land.lhs.true.i
  %tobool4.not = icmp eq ptr %p.017.i, null
  br i1 %tobool4.not, label %match_base.exit.if.else_crit_edge, label %if.then5

match_base.exit.if.else_crit_edge:                ; preds = %match_base.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then5:                                         ; preds = %match_base.exit
  %count = getelementptr inbounds %struct.mxl_base, ptr %p.017.i, i32 0, i32 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %count, align 4
  %demod_num = getelementptr inbounds %struct.mxl_base, ptr %p.017.i, i32 0, i32 13
  %14 = ptrtoint ptr %demod_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %demod_num, align 2
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp ugt i32 %inc, %conv
  br i1 %cmp, label %if.then5.fail_crit_edge, label %if.end9

if.then5.fail_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %base10 = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %base10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p.017.i, ptr %base10, align 8
  br label %if.end33

if.else:                                          ; preds = %match_base.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i82 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 1100) #13
  %tobool12.not = icmp eq ptr %call7.i.i82, null
  br i1 %tobool12.not, label %if.else.fail_crit_edge, label %if.end14

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end14:                                         ; preds = %if.else
  %i2c15 = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 3
  %18 = ptrtoint ptr %i2c15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2c, ptr %i2c15, align 4
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cfg, align 4
  %adr17 = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 2
  %21 = ptrtoint ptr %adr17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %adr17, align 8
  %type = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 1
  %conv18 = zext i8 %23 to i32
  %type19 = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 5
  %24 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv18, ptr %type19, align 4
  %count20 = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 4
  %25 = ptrtoint ptr %count20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %count20, align 8
  %i2c_lock = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mxl5xx_attach.__key) #10
  %status_lock = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %status_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mxl5xx_attach.__key.1) #10
  %tune_lock = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %tune_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mxl5xx_attach.__key.3) #10
  %mxls = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 1
  %26 = ptrtoint ptr %mxls to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %mxls, ptr %mxls, align 8
  %prev.i = getelementptr inbounds %struct.mxl_base, ptr %call7.i.i82, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mxls, ptr %prev.i, align 4
  %base27 = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %base27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i82, ptr %base27, align 8
  %call28 = tail call fastcc i32 @probe(ptr noundef nonnull %call7.i.i, ptr noundef %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i82) #10
  br label %fail

if.end32:                                         ; preds = %if.end14
  %29 = load ptr, ptr @mxllist, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i82, ptr noundef nonnull @mxllist, ptr noundef %29) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.if.end33_crit_edge

if.end32.if.end33_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i82, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %call7.i.i82 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %call7.i.i82, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i82, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mxllist, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i82, ptr @mxllist, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end.i.i, %if.end32.if.end33_crit_edge, %if.end9
  %base.0 = phi ptr [ %p.017.i, %if.end9 ], [ %call7.i.i82, %if.end32.if.end33_crit_edge ], [ %call7.i.i82, %if.end.i.i ]
  %fe = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = call ptr @memcpy(ptr %ops, ptr @mxl_ops, i32 544)
  %xbar = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %xbar to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %xbar, align 4
  %conv34 = trunc i32 %demod to i8
  %arrayidx36 = getelementptr %struct.mxl, ptr %call7.i.i, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv34, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr %struct.mxl, ptr %call7.i.i, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %arrayidx38, align 2
  %demodulator_priv = getelementptr inbounds %struct.mxl, ptr %call7.i.i, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %38 = ptrtoint ptr %fn_set_input to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @set_input, ptr %fn_set_input, align 4
  %mxls40 = getelementptr inbounds %struct.mxl_base, ptr %base.0, i32 0, i32 1
  %39 = ptrtoint ptr %mxls40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mxls40, align 4
  %call.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %mxls40, ptr noundef %40) #10
  br i1 %call.i.i83, label %if.end.i.i86, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i86:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i84 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %prev1.i.i84, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %call7.i.i, align 8
  %prev3.i.i85 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mxls40, ptr %prev3.i.i85, align 4
  %44 = ptrtoint ptr %mxls40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %mxls40, align 4
  br label %cleanup

fail:                                             ; preds = %if.then31, %if.else.fail_crit_edge, %if.then5.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.i.i86, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.end33.cleanup_crit_edge ], [ %fe, %if.end.i.i86 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe(ptr noundef readonly %state, ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  %data.i136.i = alloca i32, align 4
  %data.i127.i = alloca i32, align 4
  %data.i118.i = alloca i32, align 4
  %data.i109.i = alloca i32, align 4
  %data.i100.i = alloca i32, align 4
  %data.i91.i = alloca i32, align 4
  %data.i82.i = alloca i32, align 4
  %data.i73.i = alloca i32, align 4
  %data.i64.i = alloca i32, align 4
  %data.i55.i = alloca i32, align 4
  %data.i46.i263 = alloca i32, align 4
  %data.i37.i = alloca i32, align 4
  %data.i28.i = alloca i32, align 4
  %data.i19.i = alloca i32, align 4
  %data.i10.i = alloca i32, align 4
  %data.i1.i264 = alloca i32, align 4
  %data.i.i265 = alloca i32, align 4
  %val.i266 = alloca i32, align 4
  %data.i484.i = alloca i32, align 4
  %data.i470.i = alloca i32, align 4
  %data.i456.i = alloca i32, align 4
  %data.i377.i = alloca i32, align 4
  %data.i360.i = alloca i32, align 4
  %data.i343.i = alloca i32, align 4
  %data.i326.i = alloca i32, align 4
  %data.i309.i = alloca i32, align 4
  %data.i292.i = alloca i32, align 4
  %data.i264.i = alloca i32, align 4
  %data.i253.i = alloca i32, align 4
  %data.i245.i = alloca i32, align 4
  %data.i.i251 = alloca i32, align 4
  %data.i609.i.i = alloca i32, align 4
  %data.i598.i.i = alloca i32, align 4
  %data.i587.i.i = alloca i32, align 4
  %data.i578.i.i = alloca i32, align 4
  %data.i567.i.i = alloca i32, align 4
  %data.i556.i.i = alloca i32, align 4
  %data.i545.i.i = alloca i32, align 4
  %data.i534.i.i = alloca i32, align 4
  %data.i523.i.i = alloca i32, align 4
  %data.i512.i.i = alloca i32, align 4
  %data.i501.i.i = alloca i32, align 4
  %data.i490.i.i = alloca i32, align 4
  %data.i479.i.i = alloca i32, align 4
  %data.i468.i.i = alloca i32, align 4
  %data.i459.i.i = alloca i32, align 4
  %data.i448.i.i = alloca i32, align 4
  %data.i437.i.i = alloca i32, align 4
  %data.i426.i.i = alloca i32, align 4
  %data.i415.i.i = alloca i32, align 4
  %data.i404.i.i = alloca i32, align 4
  %data.i393.i.i = alloca i32, align 4
  %data.i382.i.i = alloca i32, align 4
  %data.i373.i.i = alloca i32, align 4
  %data.i364.i.i = alloca i32, align 4
  %data.i355.i.i = alloca i32, align 4
  %data.i346.i.i = alloca i32, align 4
  %data.i337.i.i = alloca i32, align 4
  %data.i328.i.i = alloca i32, align 4
  %data.i319.i.i = alloca i32, align 4
  %data.i310.i.i = alloca i32, align 4
  %data.i301.i.i = alloca i32, align 4
  %data.i292.i.i = alloca i32, align 4
  %data.i283.i.i = alloca i32, align 4
  %data.i274.i.i = alloca i32, align 4
  %data.i265.i.i = alloca i32, align 4
  %data.i256.i.i = alloca i32, align 4
  %data.i248.i.i = alloca i32, align 4
  %data.i240.i.i = alloca i32, align 4
  %data.i232.i.i = alloca i32, align 4
  %data.i224.i.i = alloca i32, align 4
  %data.i215.i.i = alloca i32, align 4
  %data.i206.i.i = alloca i32, align 4
  %data.i197.i.i = alloca i32, align 4
  %data.i188.i.i = alloca i32, align 4
  %data.i179.i.i = alloca i32, align 4
  %data.i170.i.i = alloca i32, align 4
  %data.i162.i.i = alloca i32, align 4
  %data.i154.i.i = alloca i32, align 4
  %data.i146.i.i = alloca i32, align 4
  %data.i138.i.i = alloca i32, align 4
  %data.i129.i.i = alloca i32, align 4
  %data.i118.i.i = alloca i32, align 4
  %data.i107.i.i = alloca i32, align 4
  %data.i98.i.i = alloca i32, align 4
  %data.i87.i.i = alloca i32, align 4
  %data.i76.i.i = alloca i32, align 4
  %data.i65.i.i = alloca i32, align 4
  %data.i54.i.i = alloca i32, align 4
  %data.i43.i.i = alloca i32, align 4
  %data.i32.i.i = alloca i32, align 4
  %data.i21.i.i = alloca i32, align 4
  %data.i12.i.i = alloca i32, align 4
  %data.i1.i.i = alloca i32, align 4
  %data.i.i.i = alloca i32, align 4
  %data.i65.i = alloca i32, align 4
  %data.i57.i = alloca i32, align 4
  %data.i49.i = alloca i32, align 4
  %data.i41.i = alloca i32, align 4
  %data.i33.i = alloca i32, align 4
  %data.i25.i = alloca i32, align 4
  %data.i17.i = alloca i32, align 4
  %data.i9.i = alloca i32, align 4
  %data.i1.i241 = alloca i32, align 4
  %data.i.i242 = alloca i32, align 4
  %data.i1.i = alloca i32, align 4
  %data.i.i232 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %hb0.i = alloca i32, align 4
  %hb1.i = alloca i32, align 4
  %data.i.i213 = alloca i32, align 4
  %data.i207 = alloca i32, align 4
  %data.i198 = alloca i32, align 4
  %data.i = alloca i32, align 4
  %data.i53.i = alloca i32, align 4
  %data.i46.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %ts_map = getelementptr inbounds %struct.mxl_base, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ts_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ts_map1_to_1, ptr %ts_map, align 4
  %3 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 12, label %entry.sw.bb_crit_edge313
    i32 6, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
    i32 7, label %entry.sw.bb35_crit_edge
    i32 10, label %entry.sw.bb35_crit_edge314
    i32 4, label %entry.sw.bb46_crit_edge
    i32 11, label %entry.sw.bb46_crit_edge315
    i32 8, label %sw.bb55
    i32 9, label %sw.bb65
  ]

entry.sw.bb46_crit_edge315:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

entry.sw.bb46_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

entry.sw.bb35_crit_edge314:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35

entry.sw.bb35_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35

entry.sw.bb_crit_edge313:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge313
  %can_clkout = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %can_clkout to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %can_clkout, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %demod_num = getelementptr inbounds %struct.mxl_base, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %demod_num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %demod_num, align 2
  %11 = load ptr, ptr %base, align 4
  %tuner_num = getelementptr inbounds %struct.mxl_base, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %tuner_num to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %tuner_num, align 1
  %13 = load ptr, ptr %base, align 4
  %sku_type = getelementptr inbounds %struct.mxl_base, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %sku_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sku_type, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_clkout8 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %can_clkout8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %can_clkout8, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %demod_num10 = getelementptr inbounds %struct.mxl_base, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %demod_num10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %demod_num10, align 2
  %19 = load ptr, ptr %base, align 4
  %tuner_num12 = getelementptr inbounds %struct.mxl_base, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %tuner_num12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %tuner_num12, align 1
  %21 = load ptr, ptr %base, align 4
  %sku_type14 = getelementptr inbounds %struct.mxl_base, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %sku_type14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %sku_type14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_clkout17 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %can_clkout17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %can_clkout17, align 4
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %demod_num19 = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %demod_num19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %demod_num19, align 2
  %27 = load ptr, ptr %base, align 4
  %tuner_num21 = getelementptr inbounds %struct.mxl_base, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %tuner_num21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %tuner_num21, align 1
  %29 = load ptr, ptr %base, align 4
  %sku_type23 = getelementptr inbounds %struct.mxl_base, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %sku_type23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %sku_type23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_clkout26 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %can_clkout26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %can_clkout26, align 4
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %demod_num28 = getelementptr inbounds %struct.mxl_base, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %demod_num28 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %demod_num28, align 2
  %35 = load ptr, ptr %base, align 4
  %tuner_num30 = getelementptr inbounds %struct.mxl_base, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %tuner_num30 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %tuner_num30, align 1
  %37 = load ptr, ptr %base, align 4
  %sku_type32 = getelementptr inbounds %struct.mxl_base, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %sku_type32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %sku_type32, align 4
  %39 = load ptr, ptr %base, align 4
  %ts_map34 = getelementptr inbounds %struct.mxl_base, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %ts_map34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ts_map54x, ptr %ts_map34, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry.sw.bb35_crit_edge, %entry.sw.bb35_crit_edge314
  %can_clkout37 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %41 = ptrtoint ptr %can_clkout37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %can_clkout37, align 4
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %demod_num39 = getelementptr inbounds %struct.mxl_base, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %demod_num39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %demod_num39, align 2
  %45 = load ptr, ptr %base, align 4
  %tuner_num41 = getelementptr inbounds %struct.mxl_base, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %tuner_num41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %tuner_num41, align 1
  %47 = load ptr, ptr %base, align 4
  %sku_type43 = getelementptr inbounds %struct.mxl_base, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %sku_type43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10, ptr %sku_type43, align 4
  %49 = load ptr, ptr %base, align 4
  %ts_map45 = getelementptr inbounds %struct.mxl_base, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %ts_map45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ts_map54x, ptr %ts_map45, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry.sw.bb46_crit_edge, %entry.sw.bb46_crit_edge315
  %can_clkout48 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %51 = ptrtoint ptr %can_clkout48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %can_clkout48, align 4
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %demod_num50 = getelementptr inbounds %struct.mxl_base, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %demod_num50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 6, ptr %demod_num50, align 2
  %55 = load ptr, ptr %base, align 4
  %tuner_num52 = getelementptr inbounds %struct.mxl_base, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %tuner_num52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %tuner_num52, align 1
  %57 = load ptr, ptr %base, align 4
  %sku_type54 = getelementptr inbounds %struct.mxl_base, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %sku_type54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %sku_type54, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_clkout57 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %59 = ptrtoint ptr %can_clkout57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %can_clkout57, align 4
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %demod_num59 = getelementptr inbounds %struct.mxl_base, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %demod_num59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 8, ptr %demod_num59, align 2
  %63 = load ptr, ptr %base, align 4
  %tuner_num61 = getelementptr inbounds %struct.mxl_base, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %tuner_num61 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %tuner_num61, align 1
  %65 = load ptr, ptr %base, align 4
  %chan_bond = getelementptr inbounds %struct.mxl_base, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %chan_bond to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %chan_bond, align 1
  %67 = load ptr, ptr %base, align 4
  %sku_type64 = getelementptr inbounds %struct.mxl_base, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %sku_type64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 11, ptr %sku_type64, align 4
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_clkout67 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %69 = ptrtoint ptr %can_clkout67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %can_clkout67, align 4
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %demod_num69 = getelementptr inbounds %struct.mxl_base, ptr %71, i32 0, i32 13
  %72 = ptrtoint ptr %demod_num69 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %demod_num69, align 2
  %73 = load ptr, ptr %base, align 4
  %tuner_num71 = getelementptr inbounds %struct.mxl_base, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %tuner_num71 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 3, ptr %tuner_num71, align 1
  %75 = load ptr, ptr %base, align 4
  %sku_type73 = getelementptr inbounds %struct.mxl_base, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %sku_type73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 12, ptr %sku_type73, align 4
  %77 = load ptr, ptr %base, align 4
  %ts_map75 = getelementptr inbounds %struct.mxl_base, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %ts_map75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ts_map54x, ptr %ts_map75, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %can_clkout78 = getelementptr inbounds %struct.mxl_base, ptr %3, i32 0, i32 11
  %79 = ptrtoint ptr %can_clkout78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %can_clkout78, align 4
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %demod_num80 = getelementptr inbounds %struct.mxl_base, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %demod_num80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 8, ptr %demod_num80, align 2
  %83 = load ptr, ptr %base, align 4
  %tuner_num82 = getelementptr inbounds %struct.mxl_base, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %tuner_num82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 4, ptr %tuner_num82, align 1
  %85 = load ptr, ptr %base, align 4
  %sku_type84 = getelementptr inbounds %struct.mxl_base, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %sku_type84 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %sku_type84, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb65, %sw.bb55, %sw.bb46, %sw.bb35, %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %type1.i = getelementptr inbounds %struct.mxl_base, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #10
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %data.i.i, align 4
  %call.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047792, ptr noundef nonnull %data.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.epilog.read_by_mnemonic.exit.i_crit_edge

sw.epilog.read_by_mnemonic.exit.i_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_by_mnemonic.exit.i

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data.i.i, align 4
  %and.i.i = and i32 %93, 7
  br label %read_by_mnemonic.exit.i

read_by_mnemonic.exit.i:                          ; preds = %if.end.i.i, %sw.epilog.read_by_mnemonic.exit.i_crit_edge
  %pad_mux_bond.0.i = phi i32 [ %and.i.i, %if.end.i.i ], [ 0, %sw.epilog.read_by_mnemonic.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -1, %sw.epilog.read_by_mnemonic.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i46.i) #10
  %94 = ptrtoint ptr %data.i46.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %data.i46.i, align 4
  %call.i47.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147287040, ptr noundef nonnull %data.i46.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %if.end.i50.i, label %read_by_mnemonic.exit.i.read_by_mnemonic.exit52.i_crit_edge

read_by_mnemonic.exit.i.read_by_mnemonic.exit52.i_crit_edge: ; preds = %read_by_mnemonic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_by_mnemonic.exit52.i

if.end.i50.i:                                     ; preds = %read_by_mnemonic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %data.i46.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data.i46.i, align 4
  %and.i49.i = and i32 %96, 4095
  br label %read_by_mnemonic.exit52.i

read_by_mnemonic.exit52.i:                        ; preds = %if.end.i50.i, %read_by_mnemonic.exit.i.read_by_mnemonic.exit52.i_crit_edge
  %prcm_chip_id.0.i = phi i32 [ %and.i49.i, %if.end.i50.i ], [ 0, %read_by_mnemonic.exit.i.read_by_mnemonic.exit52.i_crit_edge ]
  %retval.0.i51.i = phi i32 [ 0, %if.end.i50.i ], [ -1, %read_by_mnemonic.exit.i.read_by_mnemonic.exit52.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i46.i) #10
  %or.i = or i32 %retval.0.i51.i, %retval.0.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i53.i) #10
  %97 = ptrtoint ptr %data.i53.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %data.i53.i, align 4
  %call.i54.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147287036, ptr noundef nonnull %data.i53.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool.not.i55.i, label %if.end.i57.i, label %read_by_mnemonic.exit52.i.read_by_mnemonic.exit59.i_crit_edge

read_by_mnemonic.exit52.i.read_by_mnemonic.exit59.i_crit_edge: ; preds = %read_by_mnemonic.exit52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_by_mnemonic.exit59.i

if.end.i57.i:                                     ; preds = %read_by_mnemonic.exit52.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %data.i53.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data.i53.i, align 4
  %shr3.i.i = lshr i32 %99, 24
  br label %read_by_mnemonic.exit59.i

read_by_mnemonic.exit59.i:                        ; preds = %if.end.i57.i, %read_by_mnemonic.exit52.i.read_by_mnemonic.exit59.i_crit_edge
  %prcm_so_cid.0.i = phi i32 [ %shr3.i.i, %if.end.i57.i ], [ 0, %read_by_mnemonic.exit52.i.read_by_mnemonic.exit59.i_crit_edge ]
  %retval.0.i58.i = phi i32 [ 0, %if.end.i57.i ], [ -1, %read_by_mnemonic.exit52.i.read_by_mnemonic.exit59.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i53.i) #10
  %or4.i = or i32 %or.i, %retval.0.i58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i)
  %tobool.not.i = icmp eq i32 %or4.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %read_by_mnemonic.exit59.i.cleanup_crit_edge

read_by_mnemonic.exit59.i.cleanup_crit_edge:      ; preds = %read_by_mnemonic.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %read_by_mnemonic.exit59.i
  %i2cdev.i = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %100 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2cdev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.10, i32 noundef %pad_mux_bond.0.i, i32 noundef %prcm_chip_id.0.i, i32 noundef %prcm_so_cid.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1376, i32 %prcm_chip_id.0.i)
  %cmp.not.i = icmp eq i32 %prcm_chip_id.0.i, 1376
  br i1 %cmp.not.i, label %do.end.i.cleanup_crit_edge, label %if.then5.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.i:                                       ; preds = %do.end.i
  %102 = zext i32 %pad_mux_bond.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %pad_mux_bond.0.i, label %if.then5.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb14.i
    i32 3, label %validate_sku.exit
    i32 5, label %sw.bb25.i
  ]

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then5.i
  %103 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %90, label %sw.bb.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i.if.end_crit_edge
    i32 12, label %if.then10.i
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %type12.i = getelementptr inbounds %struct.mxl_base, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %type12.i, align 4
  br label %if.end

sw.bb14.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp15.i = icmp eq i32 %90, 1
  br i1 %cmp15.i, label %sw.bb14.i.if.end_crit_edge, label %sw.bb14.i.cleanup_crit_edge

sw.bb14.i.cleanup_crit_edge:                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb14.i.if.end_crit_edge:                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb25.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %90)
  %cmp26.i = icmp eq i32 %90, 6
  br i1 %cmp26.i, label %sw.bb25.i.if.end_crit_edge, label %sw.bb25.i.cleanup_crit_edge

sw.bb25.i.cleanup_crit_edge:                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb25.i.if.end_crit_edge:                       ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

validate_sku.exit:                                ; preds = %if.then5.i
  %107 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %90, label %validate_sku.exit.cleanup_crit_edge [
    i32 9, label %validate_sku.exit.if.end_crit_edge
    i32 3, label %validate_sku.exit.if.end_crit_edge316
  ]

validate_sku.exit.if.end_crit_edge316:            ; preds = %validate_sku.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

validate_sku.exit.if.end_crit_edge:               ; preds = %validate_sku.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

validate_sku.exit.cleanup_crit_edge:              ; preds = %validate_sku.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %validate_sku.exit.if.end_crit_edge, %validate_sku.exit.if.end_crit_edge316, %sw.bb25.i.if.end_crit_edge, %sw.bb14.i.if.end_crit_edge, %if.then10.i, %sw.bb.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %108 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %data.i, align 4, !annotation !137
  %call.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147287020, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i195 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i195, label %if.end.i, label %if.end.update_by_mnemonic.exit_crit_edge

if.end.update_by_mnemonic.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data.i, align 4
  %or.i196 = or i32 %110, 512
  store i32 %or.i196, ptr %data.i, align 4
  %call5.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147287020, i32 noundef %or.i196) #10
  br label %update_by_mnemonic.exit

update_by_mnemonic.exit:                          ; preds = %if.end.i, %if.end.update_by_mnemonic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i198) #10
  %111 = ptrtoint ptr %data.i198 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %data.i198, align 4, !annotation !137
  %call.i199 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147286980, ptr noundef nonnull %data.i198) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end.i204, label %update_by_mnemonic.exit.update_by_mnemonic.exit206_crit_edge

update_by_mnemonic.exit.update_by_mnemonic.exit206_crit_edge: ; preds = %update_by_mnemonic.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit206

if.end.i204:                                      ; preds = %update_by_mnemonic.exit
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %data.i198 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %data.i198, align 4
  %or.i202 = or i32 %113, 4096
  store i32 %or.i202, ptr %data.i198, align 4
  %call5.i203 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147286980, i32 noundef %or.i202) #10
  br label %update_by_mnemonic.exit206

update_by_mnemonic.exit206:                       ; preds = %if.end.i204, %update_by_mnemonic.exit.update_by_mnemonic.exit206_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i198) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i207) #10
  %114 = ptrtoint ptr %data.i207 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %data.i207, align 4
  %call.i208 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147287040, ptr noundef nonnull %data.i207) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool.not.i209 = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i209, label %if.else, label %if.then89

if.then89:                                        ; preds = %update_by_mnemonic.exit206
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i207) #10
  br label %do.end

if.else:                                          ; preds = %update_by_mnemonic.exit206
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %data.i207 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data.i207, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i207) #10
  %117 = and i32 %116, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %117)
  %cmp = icmp eq i32 %117, 8192
  %cond = select i1 %cmp, i32 2, i32 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then89
  %.sink = phi i32 [ 0, %if.then89 ], [ %cond, %if.else ]
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base, align 4
  %chipversion = getelementptr inbounds %struct.mxl_base, ptr %119, i32 0, i32 7
  %120 = ptrtoint ptr %chipversion to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink, ptr %chipversion, align 4
  %121 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i2cdev.i, align 4
  %123 = load ptr, ptr %base, align 4
  %chipversion95 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %chipversion95 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %chipversion95, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %122, ptr noundef nonnull @.str.5, i32 noundef %125) #14
  %clk = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 3
  %126 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %clk, align 4
  %cap = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 2
  %128 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i213) #10
  %130 = ptrtoint ptr %data.i.i213 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %data.i.i213, align 4, !annotation !137
  %call.i.i214 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1876950956, ptr noundef nonnull %data.i.i213) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %tobool.not.i.i215 = icmp eq i32 %call.i.i214, 0
  br i1 %tobool.not.i.i215, label %if.end.i.i217, label %do.end.cfg_dev_xtal.exit_crit_edge

do.end.cfg_dev_xtal.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg_dev_xtal.exit

if.end.i.i217:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %data.i.i213 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data.i.i213, align 4
  %and.i.i216 = and i32 %132, -8388609
  store i32 %and.i.i216, ptr %data.i.i213, align 4
  %call5.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1876950956, i32 noundef %and.i.i216) #10
  br label %cfg_dev_xtal.exit

cfg_dev_xtal.exit:                                ; preds = %if.end.i.i217, %do.end.cfg_dev_xtal.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i213) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %127)
  %cmp.i = icmp ne i32 %127, 24000000
  %..i = zext i1 %cmp.i to i32
  %call5.i218 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef 1073726960, i32 noundef %..i) #10
  %call7.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef 1073737124, i32 noundef %129) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hb0.i) #10
  %133 = ptrtoint ptr %hb0.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %hb0.i, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hb1.i) #10
  %134 = ptrtoint ptr %hb1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %hb1.i, align 4, !annotation !137
  %call.i219 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073737180, ptr noundef nonnull %hb0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool.not.i220 = icmp eq i32 %call.i219, 0
  br i1 %tobool.not.i220, label %if.end.i221, label %cfg_dev_xtal.exit.firmware_is_alive.exit.thread_crit_edge

cfg_dev_xtal.exit.firmware_is_alive.exit.thread_crit_edge: ; preds = %cfg_dev_xtal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %firmware_is_alive.exit.thread

if.end.i221:                                      ; preds = %cfg_dev_xtal.exit
  call void @msleep(i32 noundef 20) #10
  %call1.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073737180, ptr noundef nonnull %hb1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %firmware_is_alive.exit, label %if.end.i221.firmware_is_alive.exit.thread_crit_edge

if.end.i221.firmware_is_alive.exit.thread_crit_edge: ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %firmware_is_alive.exit.thread

firmware_is_alive.exit.thread:                    ; preds = %if.end.i221.firmware_is_alive.exit.thread_crit_edge, %cfg_dev_xtal.exit.firmware_is_alive.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb1.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb0.i) #10
  br label %if.then98

firmware_is_alive.exit:                           ; preds = %if.end.i221
  %135 = ptrtoint ptr %hb1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hb1.i, align 4
  %137 = ptrtoint ptr %hb0.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hb0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp.i222.not = icmp eq i32 %136, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb1.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb0.i) #10
  br i1 %cmp.i222.not, label %firmware_is_alive.exit.if.then98_crit_edge, label %firmware_is_alive.exit.if.end103_crit_edge

firmware_is_alive.exit.if.end103_crit_edge:       ; preds = %firmware_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

firmware_is_alive.exit.if.then98_crit_edge:       ; preds = %firmware_is_alive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.then98:                                        ; preds = %firmware_is_alive.exit.if.then98_crit_edge, %firmware_is_alive.exit.thread
  %fw.i = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 5
  %139 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fw.i, align 4
  %tobool.not.i225 = icmp eq ptr %140, null
  br i1 %tobool.not.i225, label %if.end.i228, label %if.then.i

if.then.i:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %call.i226 = call fastcc i32 @firmware_download(ptr noundef %state, ptr noundef nonnull %140) #10
  br label %load_fw.exit

if.end.i228:                                      ; preds = %if.then98
  %fw_read.i = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 7
  %141 = ptrtoint ptr %fw_read.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fw_read.i, align 4
  %tobool2.not.i227 = icmp eq ptr %142, null
  br i1 %tobool2.not.i227, label %if.end.i228.cleanup_crit_edge, label %if.end4.i230

if.end.i228.cleanup_crit_edge:                    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i230:                                     ; preds = %if.end.i228
  %call5.i229 = call noalias ptr @vmalloc(i32 noundef 262144) #15
  %tobool6.not.i = icmp eq ptr %call5.i229, null
  br i1 %tobool6.not.i, label %if.end4.i230.cleanup_crit_edge, label %if.end8.i

if.end4.i230.cleanup_crit_edge:                   ; preds = %if.end4.i230
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i230
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %fw_read.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %fw_read.i, align 4
  %fw_priv.i = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 8
  %145 = ptrtoint ptr %fw_priv.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fw_priv.i, align 4
  %call10.i = call i32 %144(ptr noundef %146, ptr noundef nonnull %call5.i229, i32 noundef 262144) #10
  %call11.i = call fastcc i32 @firmware_download(ptr noundef %state, ptr noundef nonnull %call5.i229) #10
  call void @vfree(ptr noundef nonnull %call5.i229) #10
  br label %load_fw.exit

load_fw.exit:                                     ; preds = %if.end8.i, %if.then.i
  %retval.0.i231 = phi i32 [ %call.i226, %if.then.i ], [ %call11.i, %if.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i231)
  %tobool100.not = icmp eq i32 %retval.0.i231, 0
  br i1 %tobool100.not, label %load_fw.exit.if.end103_crit_edge, label %load_fw.exit.cleanup_crit_edge

load_fw.exit.cleanup_crit_edge:                   ; preds = %load_fw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

load_fw.exit.if.end103_crit_edge:                 ; preds = %load_fw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.end103:                                        ; preds = %load_fw.exit.if.end103_crit_edge, %firmware_is_alive.exit.if.end103_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i232) #10
  %147 = ptrtoint ptr %data.i.i232 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %data.i.i232, align 4
  %call.i.i233 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047792, ptr noundef nonnull %data.i.i232) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i233)
  %tobool.not.i.i234 = icmp eq i32 %call.i.i233, 0
  br i1 %tobool.not.i.i234, label %do.end.i238, label %read_by_mnemonic.exit.i235

read_by_mnemonic.exit.i235:                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i232) #10
  br label %get_fwinfo.exit

do.end.i238:                                      ; preds = %if.end103
  %148 = ptrtoint ptr %data.i.i232 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %data.i.i232, align 4
  %and.i.i236 = and i32 %149, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i232) #10
  %150 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i2cdev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %151, ptr noundef nonnull @.str.41, i32 noundef %and.i.i236) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i1.i) #10
  %152 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %data.i1.i, align 4
  %call.i2.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147287036, ptr noundef nonnull %data.i1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %do.end7.i, label %read_by_mnemonic.exit7.i

read_by_mnemonic.exit7.i:                         ; preds = %do.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1.i) #10
  br label %get_fwinfo.exit

do.end7.i:                                        ; preds = %do.end.i238
  %153 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %data.i1.i, align 4
  %and.i4.i = lshr i32 %154, 8
  %shr3.i.i239 = and i32 %and.i4.i, 255
  %155 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %shr3.i.i239, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1.i) #10
  %156 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i2cdev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.44, i32 noundef %shr3.i.i239) #14
  %call9.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073737144, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.end15.i, label %do.end7.i.get_fwinfo.exit_crit_edge

do.end7.i.get_fwinfo.exit_crit_edge:              ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_fwinfo.exit

do.end15.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i2cdev.i, align 4
  %160 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.47, i32 noundef %161) #14
  %162 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %val.i, align 4
  %164 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base, align 4
  %fwversion.i = getelementptr inbounds %struct.mxl_base, ptr %165, i32 0, i32 9
  %166 = ptrtoint ptr %fwversion.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %163, ptr %fwversion.i, align 4
  br label %get_fwinfo.exit

get_fwinfo.exit:                                  ; preds = %do.end15.i, %do.end7.i.get_fwinfo.exit_crit_edge, %read_by_mnemonic.exit7.i, %read_by_mnemonic.exit.i235
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i242) #10
  %167 = ptrtoint ptr %data.i.i242 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %data.i.i242, align 4, !annotation !137
  %call.i.i243 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i.i242) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i243)
  %tobool.not.i.i244 = icmp eq i32 %call.i.i243, 0
  br i1 %tobool.not.i.i244, label %if.end.i.i247, label %get_fwinfo.exit.update_by_mnemonic.exit.i_crit_edge

get_fwinfo.exit.update_by_mnemonic.exit.i_crit_edge: ; preds = %get_fwinfo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit.i

if.end.i.i247:                                    ; preds = %get_fwinfo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %data.i.i242 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %data.i.i242, align 4
  %and.i.i245 = and i32 %169, -2
  store i32 %and.i.i245, ptr %data.i.i242, align 4
  %call5.i.i246 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i.i245) #10
  br label %update_by_mnemonic.exit.i

update_by_mnemonic.exit.i:                        ; preds = %if.end.i.i247, %get_fwinfo.exit.update_by_mnemonic.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i242) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i1.i241) #10
  %170 = ptrtoint ptr %data.i1.i241 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -1, ptr %data.i1.i241, align 4, !annotation !137
  %call.i2.i248 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i1.i241) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i248)
  %tobool.not.i3.i249 = icmp eq i32 %call.i2.i248, 0
  br i1 %tobool.not.i3.i249, label %if.end.i6.i, label %update_by_mnemonic.exit.i.update_by_mnemonic.exit8.i_crit_edge

update_by_mnemonic.exit.i.update_by_mnemonic.exit8.i_crit_edge: ; preds = %update_by_mnemonic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit8.i

if.end.i6.i:                                      ; preds = %update_by_mnemonic.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %data.i1.i241 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %data.i1.i241, align 4
  %and.i4.i250 = and i32 %172, -3
  store i32 %and.i4.i250, ptr %data.i1.i241, align 4
  %call5.i5.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i4.i250) #10
  br label %update_by_mnemonic.exit8.i

update_by_mnemonic.exit8.i:                       ; preds = %if.end.i6.i, %update_by_mnemonic.exit.i.update_by_mnemonic.exit8.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1.i241) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i9.i) #10
  %173 = ptrtoint ptr %data.i9.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %data.i9.i, align 4, !annotation !137
  %call.i10.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.end.i14.i, label %update_by_mnemonic.exit8.i.update_by_mnemonic.exit16.i_crit_edge

update_by_mnemonic.exit8.i.update_by_mnemonic.exit16.i_crit_edge: ; preds = %update_by_mnemonic.exit8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit16.i

if.end.i14.i:                                     ; preds = %update_by_mnemonic.exit8.i
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %data.i9.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %data.i9.i, align 4
  %and.i12.i = and i32 %175, -5
  store i32 %and.i12.i, ptr %data.i9.i, align 4
  %call5.i13.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i12.i) #10
  br label %update_by_mnemonic.exit16.i

update_by_mnemonic.exit16.i:                      ; preds = %if.end.i14.i, %update_by_mnemonic.exit8.i.update_by_mnemonic.exit16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i9.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i17.i) #10
  %176 = ptrtoint ptr %data.i17.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %data.i17.i, align 4, !annotation !137
  %call.i18.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i17.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i19.i, label %if.end.i22.i, label %update_by_mnemonic.exit16.i.update_by_mnemonic.exit24.i_crit_edge

update_by_mnemonic.exit16.i.update_by_mnemonic.exit24.i_crit_edge: ; preds = %update_by_mnemonic.exit16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit24.i

if.end.i22.i:                                     ; preds = %update_by_mnemonic.exit16.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %data.i17.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %data.i17.i, align 4
  %and.i20.i = and i32 %178, -9
  store i32 %and.i20.i, ptr %data.i17.i, align 4
  %call5.i21.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i20.i) #10
  br label %update_by_mnemonic.exit24.i

update_by_mnemonic.exit24.i:                      ; preds = %if.end.i22.i, %update_by_mnemonic.exit16.i.update_by_mnemonic.exit24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i17.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i25.i) #10
  %179 = ptrtoint ptr %data.i25.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %data.i25.i, align 4, !annotation !137
  %call.i26.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i30.i, label %update_by_mnemonic.exit24.i.update_by_mnemonic.exit32.i_crit_edge

update_by_mnemonic.exit24.i.update_by_mnemonic.exit32.i_crit_edge: ; preds = %update_by_mnemonic.exit24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit32.i

if.end.i30.i:                                     ; preds = %update_by_mnemonic.exit24.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = ptrtoint ptr %data.i25.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %data.i25.i, align 4
  %and.i28.i = and i32 %181, -17
  store i32 %and.i28.i, ptr %data.i25.i, align 4
  %call5.i29.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i28.i) #10
  br label %update_by_mnemonic.exit32.i

update_by_mnemonic.exit32.i:                      ; preds = %if.end.i30.i, %update_by_mnemonic.exit24.i.update_by_mnemonic.exit32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i25.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i33.i) #10
  %182 = ptrtoint ptr %data.i33.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1, ptr %data.i33.i, align 4, !annotation !137
  %call.i34.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i33.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool.not.i35.i, label %if.end.i38.i, label %update_by_mnemonic.exit32.i.update_by_mnemonic.exit40.i_crit_edge

update_by_mnemonic.exit32.i.update_by_mnemonic.exit40.i_crit_edge: ; preds = %update_by_mnemonic.exit32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit40.i

if.end.i38.i:                                     ; preds = %update_by_mnemonic.exit32.i
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %data.i33.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %data.i33.i, align 4
  %and.i36.i = and i32 %184, -33
  store i32 %and.i36.i, ptr %data.i33.i, align 4
  %call5.i37.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i36.i) #10
  br label %update_by_mnemonic.exit40.i

update_by_mnemonic.exit40.i:                      ; preds = %if.end.i38.i, %update_by_mnemonic.exit32.i.update_by_mnemonic.exit40.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i33.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i41.i) #10
  %185 = ptrtoint ptr %data.i41.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %data.i41.i, align 4, !annotation !137
  %call.i42.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool.not.i43.i, label %if.end.i46.i, label %update_by_mnemonic.exit40.i.update_by_mnemonic.exit48.i_crit_edge

update_by_mnemonic.exit40.i.update_by_mnemonic.exit48.i_crit_edge: ; preds = %update_by_mnemonic.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit48.i

if.end.i46.i:                                     ; preds = %update_by_mnemonic.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %data.i41.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data.i41.i, align 4
  %and.i44.i = and i32 %187, -65
  store i32 %and.i44.i, ptr %data.i41.i, align 4
  %call5.i45.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i44.i) #10
  br label %update_by_mnemonic.exit48.i

update_by_mnemonic.exit48.i:                      ; preds = %if.end.i46.i, %update_by_mnemonic.exit40.i.update_by_mnemonic.exit48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i41.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i49.i) #10
  %188 = ptrtoint ptr %data.i49.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %data.i49.i, align 4, !annotation !137
  %call.i50.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708148, ptr noundef nonnull %data.i49.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.end.i54.i, label %update_by_mnemonic.exit48.i.update_by_mnemonic.exit56.i_crit_edge

update_by_mnemonic.exit48.i.update_by_mnemonic.exit56.i_crit_edge: ; preds = %update_by_mnemonic.exit48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit56.i

if.end.i54.i:                                     ; preds = %update_by_mnemonic.exit48.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %data.i49.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %data.i49.i, align 4
  %and.i52.i = and i32 %190, -129
  store i32 %and.i52.i, ptr %data.i49.i, align 4
  %call5.i53.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708148, i32 noundef %and.i52.i) #10
  br label %update_by_mnemonic.exit56.i

update_by_mnemonic.exit56.i:                      ; preds = %if.end.i54.i, %update_by_mnemonic.exit48.i.update_by_mnemonic.exit56.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i49.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i57.i) #10
  %191 = ptrtoint ptr %data.i57.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -1, ptr %data.i57.i, align 4, !annotation !137
  %call.i58.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708152, ptr noundef nonnull %data.i57.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.end.i62.i, label %update_by_mnemonic.exit56.i.update_by_mnemonic.exit64.i_crit_edge

update_by_mnemonic.exit56.i.update_by_mnemonic.exit64.i_crit_edge: ; preds = %update_by_mnemonic.exit56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit64.i

if.end.i62.i:                                     ; preds = %update_by_mnemonic.exit56.i
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %data.i57.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %data.i57.i, align 4
  %and.i60.i = and i32 %193, -4
  %or.i.i = or i32 %and.i60.i, 1
  store i32 %or.i.i, ptr %data.i57.i, align 4
  %call5.i61.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708152, i32 noundef %or.i.i) #10
  br label %update_by_mnemonic.exit64.i

update_by_mnemonic.exit64.i:                      ; preds = %if.end.i62.i, %update_by_mnemonic.exit56.i.update_by_mnemonic.exit64.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i57.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i65.i) #10
  %194 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1, ptr %data.i65.i, align 4, !annotation !137
  %call.i66.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708152, ptr noundef nonnull %data.i65.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call.i66.i, 0
  br i1 %tobool.not.i67.i, label %if.end.i71.i, label %update_by_mnemonic.exit64.i.config_mux.exit_crit_edge

update_by_mnemonic.exit64.i.config_mux.exit_crit_edge: ; preds = %update_by_mnemonic.exit64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_mux.exit

if.end.i71.i:                                     ; preds = %update_by_mnemonic.exit64.i
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %data.i65.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %data.i65.i, align 4
  %and.i68.i = and i32 %196, -13
  %or.i69.i = or i32 %and.i68.i, 4
  store i32 %or.i69.i, ptr %data.i65.i, align 4
  %call5.i70.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708152, i32 noundef %or.i69.i) #10
  br label %config_mux.exit

config_mux.exit:                                  ; preds = %if.end.i71.i, %update_by_mnemonic.exit64.i.config_mux.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i65.i) #10
  %197 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base, align 4
  %demod_num113303 = getelementptr inbounds %struct.mxl_base, ptr %198, i32 0, i32 13
  %199 = ptrtoint ptr %demod_num113303 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %demod_num113303, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp115305.not = icmp eq i8 %200, 0
  br i1 %cmp115305.not, label %config_mux.exit.for.end_crit_edge, label %if.else.i.lr.ph

config_mux.exit.for.end_crit_edge:                ; preds = %config_mux.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.else.i.lr.ph:                                  ; preds = %config_mux.exit
  %ts_clk = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 4
  %201 = ptrtoint ptr %ts_clk to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ts_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool106.not = icmp eq i32 %202, 0
  %203 = trunc i32 %202 to i16
  %204 = and i16 %203, 255
  %div.rhs.trunc.i = select i1 %tobool106.not, i16 69, i16 %204
  br label %if.else.i

for.cond:                                         ; preds = %config_ts.exit
  %inc = add nuw nsw i32 %j.0306, 1
  %205 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base, align 4
  %demod_num113 = getelementptr inbounds %struct.mxl_base, ptr %206, i32 0, i32 13
  %207 = ptrtoint ptr %demod_num113 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %demod_num113, align 2
  %conv114 = zext i8 %208 to i32
  %cmp115 = icmp ult i32 %inc, %conv114
  br i1 %cmp115, label %for.cond.if.else.i_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.if.else.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %for.cond.if.else.i_crit_edge, %if.else.i.lr.ph
  %209 = phi ptr [ %198, %if.else.i.lr.ph ], [ %206, %for.cond.if.else.i_crit_edge ]
  %j.0306 = phi i32 [ 0, %if.else.i.lr.ph ], [ %inc, %for.cond.if.else.i_crit_edge ]
  %ts_map.i = getelementptr inbounds %struct.mxl_base, ptr %209, i32 0, i32 10
  %210 = ptrtoint ptr %ts_map.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ts_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %211, i32 %j.0306
  %212 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %213 to i32
  %type.i.i = getelementptr inbounds %struct.mxl_base, ptr %209, i32 0, i32 5
  %214 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %215)
  %switch.selectcmp.case1.i.i = icmp eq i32 %215, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %215)
  %switch.selectcmp.case2.i.i = icmp eq i32 %215, 10
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  %216 = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  %217 = zext i32 %215 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %215, label %sw.default.i.i [
    i32 4, label %if.else.i.sw.bb.i.i_crit_edge
    i32 0, label %if.else.i.sw.bb.i.i_crit_edge317
    i32 7, label %if.else.i.sw.bb.i.i_crit_edge318
    i32 10, label %if.else.i.sw.bb.i.i_crit_edge319
    i32 11, label %if.else.i.sw.bb.i.i_crit_edge320
    i32 12, label %if.else.i.sw.bb.i.i_crit_edge321
    i32 3, label %if.else.i.sw.bb43.i.i_crit_edge
    i32 9, label %if.else.i.sw.bb43.i.i_crit_edge322
    i32 8, label %if.else207.i.i
  ]

if.else.i.sw.bb43.i.i_crit_edge322:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i.i

if.else.i.sw.bb43.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i.i

if.else.i.sw.bb.i.i_crit_edge321:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge320:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge319:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge318:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge317:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.else.i.sw.bb.i.i_crit_edge, %if.else.i.sw.bb.i.i_crit_edge317, %if.else.i.sw.bb.i.i_crit_edge318, %if.else.i.sw.bb.i.i_crit_edge319, %if.else.i.sw.bb.i.i_crit_edge320, %if.else.i.sw.bb.i.i_crit_edge321
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i) #10
  %218 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %data.i.i.i, align 4, !annotation !137
  %call.i.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.i.update_by_mnemonic.exit.i.i_crit_edge

sw.bb.i.i.update_by_mnemonic.exit.i.i_crit_edge:  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %data.i.i.i, align 4
  %and.i.i.i = and i32 %220, -117440513
  %shl3.i.i.i = shl nuw nsw i32 %216, 24
  %or.i.i.i = or i32 %and.i.i.i, %shl3.i.i.i
  store i32 %or.i.i.i, ptr %data.i.i.i, align 4
  %call5.i.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i.i.i) #10
  br label %update_by_mnemonic.exit.i.i

update_by_mnemonic.exit.i.i:                      ; preds = %if.end.i.i.i, %sw.bb.i.i.update_by_mnemonic.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i1.i.i) #10
  %221 = ptrtoint ptr %data.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %data.i1.i.i, align 4, !annotation !137
  %call.i2.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i9.i.i, label %update_by_mnemonic.exit.i.i.update_by_mnemonic.exit11.i.i_crit_edge

update_by_mnemonic.exit.i.i.update_by_mnemonic.exit11.i.i_crit_edge: ; preds = %update_by_mnemonic.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit11.i.i

if.end.i9.i.i:                                    ; preds = %update_by_mnemonic.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %data.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %data.i1.i.i, align 4
  %and.i4.i.i = and i32 %223, -1879048193
  %shl3.i5.i.i = shl nuw nsw i32 %216, 28
  %or.i7.i.i = or i32 %and.i4.i.i, %shl3.i5.i.i
  store i32 %or.i7.i.i, ptr %data.i1.i.i, align 4
  %call5.i8.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i7.i.i) #10
  br label %update_by_mnemonic.exit11.i.i

update_by_mnemonic.exit11.i.i:                    ; preds = %if.end.i9.i.i, %update_by_mnemonic.exit.i.i.update_by_mnemonic.exit11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i12.i.i) #10
  %224 = ptrtoint ptr %data.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %data.i12.i.i, align 4, !annotation !137
  %call.i13.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i12.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %call.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.end.i18.i.i, label %update_by_mnemonic.exit11.i.i.update_by_mnemonic.exit20.i.i_crit_edge

update_by_mnemonic.exit11.i.i.update_by_mnemonic.exit20.i.i_crit_edge: ; preds = %update_by_mnemonic.exit11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit20.i.i

if.end.i18.i.i:                                   ; preds = %update_by_mnemonic.exit11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %data.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %data.i12.i.i, align 4
  %and.i15.i.i = and i32 %226, -8
  %or.i16.i.i = or i32 %and.i15.i.i, %216
  store i32 %or.i16.i.i, ptr %data.i12.i.i, align 4
  %call5.i17.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i16.i.i) #10
  br label %update_by_mnemonic.exit20.i.i

update_by_mnemonic.exit20.i.i:                    ; preds = %if.end.i18.i.i, %update_by_mnemonic.exit11.i.i.update_by_mnemonic.exit20.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i12.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i21.i.i) #10
  %227 = ptrtoint ptr %data.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 -1, ptr %data.i21.i.i, align 4, !annotation !137
  %call.i22.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i21.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i.i)
  %tobool.not.i23.i.i = icmp eq i32 %call.i22.i.i, 0
  br i1 %tobool.not.i23.i.i, label %if.end.i29.i.i, label %update_by_mnemonic.exit20.i.i.update_by_mnemonic.exit31.i.i_crit_edge

update_by_mnemonic.exit20.i.i.update_by_mnemonic.exit31.i.i_crit_edge: ; preds = %update_by_mnemonic.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit31.i.i

if.end.i29.i.i:                                   ; preds = %update_by_mnemonic.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %228 = ptrtoint ptr %data.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %data.i21.i.i, align 4
  %and.i24.i.i = and i32 %229, -113
  %shl3.i25.i.i = shl nuw nsw i32 %216, 4
  %or.i27.i.i = or i32 %and.i24.i.i, %shl3.i25.i.i
  store i32 %or.i27.i.i, ptr %data.i21.i.i, align 4
  %call5.i28.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i27.i.i) #10
  br label %update_by_mnemonic.exit31.i.i

update_by_mnemonic.exit31.i.i:                    ; preds = %if.end.i29.i.i, %update_by_mnemonic.exit20.i.i.update_by_mnemonic.exit31.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i21.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i32.i.i) #10
  %230 = ptrtoint ptr %data.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 -1, ptr %data.i32.i.i, align 4, !annotation !137
  %call.i33.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i32.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i)
  %tobool.not.i34.i.i = icmp eq i32 %call.i33.i.i, 0
  br i1 %tobool.not.i34.i.i, label %if.end.i40.i.i, label %update_by_mnemonic.exit31.i.i.update_by_mnemonic.exit42.i.i_crit_edge

update_by_mnemonic.exit31.i.i.update_by_mnemonic.exit42.i.i_crit_edge: ; preds = %update_by_mnemonic.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit42.i.i

if.end.i40.i.i:                                   ; preds = %update_by_mnemonic.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %231 = ptrtoint ptr %data.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %data.i32.i.i, align 4
  %and.i35.i.i = and i32 %232, -1793
  %shl3.i36.i.i = shl nuw nsw i32 %216, 8
  %or.i38.i.i = or i32 %and.i35.i.i, %shl3.i36.i.i
  store i32 %or.i38.i.i, ptr %data.i32.i.i, align 4
  %call5.i39.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i38.i.i) #10
  br label %update_by_mnemonic.exit42.i.i

update_by_mnemonic.exit42.i.i:                    ; preds = %if.end.i40.i.i, %update_by_mnemonic.exit31.i.i.update_by_mnemonic.exit42.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i32.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i43.i.i) #10
  %233 = ptrtoint ptr %data.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %data.i43.i.i, align 4, !annotation !137
  %call.i44.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i43.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %if.end.i51.i.i, label %update_by_mnemonic.exit42.i.i.update_by_mnemonic.exit53.i.i_crit_edge

update_by_mnemonic.exit42.i.i.update_by_mnemonic.exit53.i.i_crit_edge: ; preds = %update_by_mnemonic.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit53.i.i

if.end.i51.i.i:                                   ; preds = %update_by_mnemonic.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %234 = ptrtoint ptr %data.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %data.i43.i.i, align 4
  %and.i46.i.i = and i32 %235, -28673
  %shl3.i47.i.i = shl nuw nsw i32 %216, 12
  %or.i49.i.i = or i32 %and.i46.i.i, %shl3.i47.i.i
  store i32 %or.i49.i.i, ptr %data.i43.i.i, align 4
  %call5.i50.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i49.i.i) #10
  br label %update_by_mnemonic.exit53.i.i

update_by_mnemonic.exit53.i.i:                    ; preds = %if.end.i51.i.i, %update_by_mnemonic.exit42.i.i.update_by_mnemonic.exit53.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i43.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i54.i.i) #10
  %236 = ptrtoint ptr %data.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -1, ptr %data.i54.i.i, align 4, !annotation !137
  %call.i55.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i54.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i.i)
  %tobool.not.i56.i.i = icmp eq i32 %call.i55.i.i, 0
  br i1 %tobool.not.i56.i.i, label %if.end.i62.i.i, label %update_by_mnemonic.exit53.i.i.update_by_mnemonic.exit64.i.i_crit_edge

update_by_mnemonic.exit53.i.i.update_by_mnemonic.exit64.i.i_crit_edge: ; preds = %update_by_mnemonic.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit64.i.i

if.end.i62.i.i:                                   ; preds = %update_by_mnemonic.exit53.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %237 = ptrtoint ptr %data.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %data.i54.i.i, align 4
  %and.i57.i.i = and i32 %238, -458753
  %shl3.i58.i.i = shl nuw nsw i32 %216, 16
  %or.i60.i.i = or i32 %and.i57.i.i, %shl3.i58.i.i
  store i32 %or.i60.i.i, ptr %data.i54.i.i, align 4
  %call5.i61.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i60.i.i) #10
  br label %update_by_mnemonic.exit64.i.i

update_by_mnemonic.exit64.i.i:                    ; preds = %if.end.i62.i.i, %update_by_mnemonic.exit53.i.i.update_by_mnemonic.exit64.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i54.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i65.i.i) #10
  %239 = ptrtoint ptr %data.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 -1, ptr %data.i65.i.i, align 4, !annotation !137
  %call.i66.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i65.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i.i)
  %tobool.not.i67.i.i = icmp eq i32 %call.i66.i.i, 0
  br i1 %tobool.not.i67.i.i, label %if.end.i73.i.i, label %update_by_mnemonic.exit64.i.i.update_by_mnemonic.exit75.i.i_crit_edge

update_by_mnemonic.exit64.i.i.update_by_mnemonic.exit75.i.i_crit_edge: ; preds = %update_by_mnemonic.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit75.i.i

if.end.i73.i.i:                                   ; preds = %update_by_mnemonic.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %240 = ptrtoint ptr %data.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %data.i65.i.i, align 4
  %and.i68.i.i = and i32 %241, -7340033
  %shl3.i69.i.i = shl nuw nsw i32 %216, 20
  %or.i71.i.i = or i32 %and.i68.i.i, %shl3.i69.i.i
  store i32 %or.i71.i.i, ptr %data.i65.i.i, align 4
  %call5.i72.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i71.i.i) #10
  br label %update_by_mnemonic.exit75.i.i

update_by_mnemonic.exit75.i.i:                    ; preds = %if.end.i73.i.i, %update_by_mnemonic.exit64.i.i.update_by_mnemonic.exit75.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i65.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i76.i.i) #10
  %242 = ptrtoint ptr %data.i76.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 -1, ptr %data.i76.i.i, align 4, !annotation !137
  %call.i77.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i76.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i.i)
  %tobool.not.i78.i.i = icmp eq i32 %call.i77.i.i, 0
  br i1 %tobool.not.i78.i.i, label %if.end.i84.i.i, label %update_by_mnemonic.exit75.i.i.update_by_mnemonic.exit86.i.i_crit_edge

update_by_mnemonic.exit75.i.i.update_by_mnemonic.exit86.i.i_crit_edge: ; preds = %update_by_mnemonic.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit86.i.i

if.end.i84.i.i:                                   ; preds = %update_by_mnemonic.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %data.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %data.i76.i.i, align 4
  %and.i79.i.i = and i32 %244, -117440513
  %shl3.i80.i.i = shl nuw nsw i32 %216, 24
  %or.i82.i.i = or i32 %and.i79.i.i, %shl3.i80.i.i
  store i32 %or.i82.i.i, ptr %data.i76.i.i, align 4
  %call5.i83.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i82.i.i) #10
  br label %update_by_mnemonic.exit86.i.i

update_by_mnemonic.exit86.i.i:                    ; preds = %if.end.i84.i.i, %update_by_mnemonic.exit75.i.i.update_by_mnemonic.exit86.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i76.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i87.i.i) #10
  %245 = ptrtoint ptr %data.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %data.i87.i.i, align 4, !annotation !137
  %call.i88.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i87.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i.i)
  %tobool.not.i89.i.i = icmp eq i32 %call.i88.i.i, 0
  br i1 %tobool.not.i89.i.i, label %if.end.i95.i.i, label %update_by_mnemonic.exit86.i.i.update_by_mnemonic.exit97.i.i_crit_edge

update_by_mnemonic.exit86.i.i.update_by_mnemonic.exit97.i.i_crit_edge: ; preds = %update_by_mnemonic.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit97.i.i

if.end.i95.i.i:                                   ; preds = %update_by_mnemonic.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %246 = ptrtoint ptr %data.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %data.i87.i.i, align 4
  %and.i90.i.i = and i32 %247, -1879048193
  %shl3.i91.i.i = shl nuw nsw i32 %216, 28
  %or.i93.i.i = or i32 %and.i90.i.i, %shl3.i91.i.i
  store i32 %or.i93.i.i, ptr %data.i87.i.i, align 4
  %call5.i94.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i93.i.i) #10
  br label %update_by_mnemonic.exit97.i.i

update_by_mnemonic.exit97.i.i:                    ; preds = %if.end.i95.i.i, %update_by_mnemonic.exit86.i.i.update_by_mnemonic.exit97.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i87.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i98.i.i) #10
  %248 = ptrtoint ptr %data.i98.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 -1, ptr %data.i98.i.i, align 4, !annotation !137
  %call.i99.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i98.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i.i)
  %tobool.not.i100.i.i = icmp eq i32 %call.i99.i.i, 0
  br i1 %tobool.not.i100.i.i, label %if.end.i104.i.i, label %update_by_mnemonic.exit97.i.i.update_by_mnemonic.exit106.i.i_crit_edge

update_by_mnemonic.exit97.i.i.update_by_mnemonic.exit106.i.i_crit_edge: ; preds = %update_by_mnemonic.exit97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit106.i.i

if.end.i104.i.i:                                  ; preds = %update_by_mnemonic.exit97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %data.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %data.i98.i.i, align 4
  %and.i101.i.i = and i32 %250, -8
  %or.i102.i.i = or i32 %and.i101.i.i, %216
  store i32 %or.i102.i.i, ptr %data.i98.i.i, align 4
  %call5.i103.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i102.i.i) #10
  br label %update_by_mnemonic.exit106.i.i

update_by_mnemonic.exit106.i.i:                   ; preds = %if.end.i104.i.i, %update_by_mnemonic.exit97.i.i.update_by_mnemonic.exit106.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i98.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i107.i.i) #10
  %251 = ptrtoint ptr %data.i107.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 -1, ptr %data.i107.i.i, align 4, !annotation !137
  %call.i108.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i107.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i.i)
  %tobool.not.i109.i.i = icmp eq i32 %call.i108.i.i, 0
  br i1 %tobool.not.i109.i.i, label %if.end.i115.i.i, label %update_by_mnemonic.exit106.i.i.update_by_mnemonic.exit117.i.i_crit_edge

update_by_mnemonic.exit106.i.i.update_by_mnemonic.exit117.i.i_crit_edge: ; preds = %update_by_mnemonic.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit117.i.i

if.end.i115.i.i:                                  ; preds = %update_by_mnemonic.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %data.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %data.i107.i.i, align 4
  %and.i110.i.i = and i32 %253, -113
  %shl3.i111.i.i = shl nuw nsw i32 %216, 4
  %or.i113.i.i = or i32 %and.i110.i.i, %shl3.i111.i.i
  store i32 %or.i113.i.i, ptr %data.i107.i.i, align 4
  %call5.i114.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i113.i.i) #10
  br label %update_by_mnemonic.exit117.i.i

update_by_mnemonic.exit117.i.i:                   ; preds = %if.end.i115.i.i, %update_by_mnemonic.exit106.i.i.update_by_mnemonic.exit117.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i107.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i118.i.i) #10
  %254 = ptrtoint ptr %data.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 -1, ptr %data.i118.i.i, align 4, !annotation !137
  %call.i119.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i118.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i.i)
  %tobool.not.i120.i.i = icmp eq i32 %call.i119.i.i, 0
  br i1 %tobool.not.i120.i.i, label %if.end.i126.i.i, label %update_by_mnemonic.exit117.i.i.update_by_mnemonic.exit128.i.i_crit_edge

update_by_mnemonic.exit117.i.i.update_by_mnemonic.exit128.i.i_crit_edge: ; preds = %update_by_mnemonic.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit128.i.i

if.end.i126.i.i:                                  ; preds = %update_by_mnemonic.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %255 = ptrtoint ptr %data.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %data.i118.i.i, align 4
  %and.i121.i.i = and i32 %256, -1793
  %shl3.i122.i.i = shl nuw nsw i32 %216, 8
  %or.i124.i.i = or i32 %and.i121.i.i, %shl3.i122.i.i
  store i32 %or.i124.i.i, ptr %data.i118.i.i, align 4
  %call5.i125.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i124.i.i) #10
  br label %update_by_mnemonic.exit128.i.i

update_by_mnemonic.exit128.i.i:                   ; preds = %if.end.i126.i.i, %update_by_mnemonic.exit117.i.i.update_by_mnemonic.exit128.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i118.i.i) #10
  br label %cfg_ts_pad_mux.exit.i

sw.bb43.i.i:                                      ; preds = %if.else.i.sw.bb43.i.i_crit_edge, %if.else.i.sw.bb43.i.i_crit_edge322
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i129.i.i) #10
  %257 = ptrtoint ptr %data.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1, ptr %data.i129.i.i, align 4, !annotation !137
  %call.i130.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047828, ptr noundef nonnull %data.i129.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i.i)
  %tobool.not.i131.i.i = icmp eq i32 %call.i130.i.i, 0
  br i1 %tobool.not.i131.i.i, label %if.end.i135.i.i, label %sw.bb43.i.i.update_by_mnemonic.exit137.i.i_crit_edge

sw.bb43.i.i.update_by_mnemonic.exit137.i.i_crit_edge: ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit137.i.i

if.end.i135.i.i:                                  ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %258 = ptrtoint ptr %data.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %data.i129.i.i, align 4
  %and.i132.i.i = and i32 %259, -113
  %or.i133.i.i = or i32 %and.i132.i.i, 16
  store i32 %or.i133.i.i, ptr %data.i129.i.i, align 4
  %call5.i134.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047828, i32 noundef %or.i133.i.i) #10
  br label %update_by_mnemonic.exit137.i.i

update_by_mnemonic.exit137.i.i:                   ; preds = %if.end.i135.i.i, %sw.bb43.i.i.update_by_mnemonic.exit137.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i129.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i138.i.i) #10
  %260 = ptrtoint ptr %data.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 -1, ptr %data.i138.i.i, align 4, !annotation !137
  %call.i139.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047828, ptr noundef nonnull %data.i138.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i.i)
  %tobool.not.i140.i.i = icmp eq i32 %call.i139.i.i, 0
  br i1 %tobool.not.i140.i.i, label %if.end.i143.i.i, label %update_by_mnemonic.exit137.i.i.update_by_mnemonic.exit145.i.i_crit_edge

update_by_mnemonic.exit137.i.i.update_by_mnemonic.exit145.i.i_crit_edge: ; preds = %update_by_mnemonic.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit145.i.i

if.end.i143.i.i:                                  ; preds = %update_by_mnemonic.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %261 = ptrtoint ptr %data.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %data.i138.i.i, align 4
  %and.i141.i.i = and i32 %262, -1793
  store i32 %and.i141.i.i, ptr %data.i138.i.i, align 4
  %call5.i142.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047828, i32 noundef %and.i141.i.i) #10
  br label %update_by_mnemonic.exit145.i.i

update_by_mnemonic.exit145.i.i:                   ; preds = %if.end.i143.i.i, %update_by_mnemonic.exit137.i.i.update_by_mnemonic.exit145.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i138.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i146.i.i) #10
  %263 = ptrtoint ptr %data.i146.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 -1, ptr %data.i146.i.i, align 4, !annotation !137
  %call.i147.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047828, ptr noundef nonnull %data.i146.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i.i)
  %tobool.not.i148.i.i = icmp eq i32 %call.i147.i.i, 0
  br i1 %tobool.not.i148.i.i, label %if.end.i151.i.i, label %update_by_mnemonic.exit145.i.i.update_by_mnemonic.exit153.i.i_crit_edge

update_by_mnemonic.exit145.i.i.update_by_mnemonic.exit153.i.i_crit_edge: ; preds = %update_by_mnemonic.exit145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit153.i.i

if.end.i151.i.i:                                  ; preds = %update_by_mnemonic.exit145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %data.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %data.i146.i.i, align 4
  %and.i149.i.i = and i32 %265, -28673
  store i32 %and.i149.i.i, ptr %data.i146.i.i, align 4
  %call5.i150.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047828, i32 noundef %and.i149.i.i) #10
  br label %update_by_mnemonic.exit153.i.i

update_by_mnemonic.exit153.i.i:                   ; preds = %if.end.i151.i.i, %update_by_mnemonic.exit145.i.i.update_by_mnemonic.exit153.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i146.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i154.i.i) #10
  %266 = ptrtoint ptr %data.i154.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -1, ptr %data.i154.i.i, align 4, !annotation !137
  %call.i155.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047828, ptr noundef nonnull %data.i154.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i.i)
  %tobool.not.i156.i.i = icmp eq i32 %call.i155.i.i, 0
  br i1 %tobool.not.i156.i.i, label %if.end.i159.i.i, label %update_by_mnemonic.exit153.i.i.update_by_mnemonic.exit161.i.i_crit_edge

update_by_mnemonic.exit153.i.i.update_by_mnemonic.exit161.i.i_crit_edge: ; preds = %update_by_mnemonic.exit153.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit161.i.i

if.end.i159.i.i:                                  ; preds = %update_by_mnemonic.exit153.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %267 = ptrtoint ptr %data.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %data.i154.i.i, align 4
  %and.i157.i.i = and i32 %268, -458753
  store i32 %and.i157.i.i, ptr %data.i154.i.i, align 4
  %call5.i158.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047828, i32 noundef %and.i157.i.i) #10
  br label %update_by_mnemonic.exit161.i.i

update_by_mnemonic.exit161.i.i:                   ; preds = %if.end.i159.i.i, %update_by_mnemonic.exit153.i.i.update_by_mnemonic.exit161.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i154.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i162.i.i) #10
  %269 = ptrtoint ptr %data.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 -1, ptr %data.i162.i.i, align 4, !annotation !137
  %call.i163.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i162.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163.i.i)
  %tobool.not.i164.i.i = icmp eq i32 %call.i163.i.i, 0
  br i1 %tobool.not.i164.i.i, label %if.end.i167.i.i, label %update_by_mnemonic.exit161.i.i.update_by_mnemonic.exit169.i.i_crit_edge

update_by_mnemonic.exit161.i.i.update_by_mnemonic.exit169.i.i_crit_edge: ; preds = %update_by_mnemonic.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit169.i.i

if.end.i167.i.i:                                  ; preds = %update_by_mnemonic.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %270 = ptrtoint ptr %data.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %data.i162.i.i, align 4
  %and.i165.i.i = and i32 %271, -8
  store i32 %and.i165.i.i, ptr %data.i162.i.i, align 4
  %call5.i166.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %and.i165.i.i) #10
  br label %update_by_mnemonic.exit169.i.i

update_by_mnemonic.exit169.i.i:                   ; preds = %if.end.i167.i.i, %update_by_mnemonic.exit161.i.i.update_by_mnemonic.exit169.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i162.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i170.i.i) #10
  %272 = ptrtoint ptr %data.i170.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %data.i170.i.i, align 4, !annotation !137
  %call.i171.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i170.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i.i)
  %tobool.not.i172.i.i = icmp eq i32 %call.i171.i.i, 0
  br i1 %tobool.not.i172.i.i, label %if.end.i176.i.i, label %update_by_mnemonic.exit169.i.i.update_by_mnemonic.exit178.i.i_crit_edge

update_by_mnemonic.exit169.i.i.update_by_mnemonic.exit178.i.i_crit_edge: ; preds = %update_by_mnemonic.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit178.i.i

if.end.i176.i.i:                                  ; preds = %update_by_mnemonic.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %273 = ptrtoint ptr %data.i170.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %data.i170.i.i, align 4
  %and.i173.i.i = and i32 %274, -28673
  %or.i174.i.i = or i32 %and.i173.i.i, 4096
  store i32 %or.i174.i.i, ptr %data.i170.i.i, align 4
  %call5.i175.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i174.i.i) #10
  br label %update_by_mnemonic.exit178.i.i

update_by_mnemonic.exit178.i.i:                   ; preds = %if.end.i176.i.i, %update_by_mnemonic.exit169.i.i.update_by_mnemonic.exit178.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i170.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i179.i.i) #10
  %275 = ptrtoint ptr %data.i179.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 -1, ptr %data.i179.i.i, align 4, !annotation !137
  %call.i180.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i179.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180.i.i)
  %tobool.not.i181.i.i = icmp eq i32 %call.i180.i.i, 0
  br i1 %tobool.not.i181.i.i, label %if.end.i185.i.i, label %update_by_mnemonic.exit178.i.i.update_by_mnemonic.exit187.i.i_crit_edge

update_by_mnemonic.exit178.i.i.update_by_mnemonic.exit187.i.i_crit_edge: ; preds = %update_by_mnemonic.exit178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit187.i.i

if.end.i185.i.i:                                  ; preds = %update_by_mnemonic.exit178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %276 = ptrtoint ptr %data.i179.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %data.i179.i.i, align 4
  %and.i182.i.i = and i32 %277, -458753
  %or.i183.i.i = or i32 %and.i182.i.i, 65536
  store i32 %or.i183.i.i, ptr %data.i179.i.i, align 4
  %call5.i184.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i183.i.i) #10
  br label %update_by_mnemonic.exit187.i.i

update_by_mnemonic.exit187.i.i:                   ; preds = %if.end.i185.i.i, %update_by_mnemonic.exit178.i.i.update_by_mnemonic.exit187.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i179.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i188.i.i) #10
  %278 = ptrtoint ptr %data.i188.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 -1, ptr %data.i188.i.i, align 4, !annotation !137
  %call.i189.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i188.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189.i.i)
  %tobool.not.i190.i.i = icmp eq i32 %call.i189.i.i, 0
  br i1 %tobool.not.i190.i.i, label %if.end.i194.i.i, label %update_by_mnemonic.exit187.i.i.update_by_mnemonic.exit196.i.i_crit_edge

update_by_mnemonic.exit187.i.i.update_by_mnemonic.exit196.i.i_crit_edge: ; preds = %update_by_mnemonic.exit187.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit196.i.i

if.end.i194.i.i:                                  ; preds = %update_by_mnemonic.exit187.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %279 = ptrtoint ptr %data.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %data.i188.i.i, align 4
  %and.i191.i.i = and i32 %280, -7340033
  %or.i192.i.i = or i32 %and.i191.i.i, 1048576
  store i32 %or.i192.i.i, ptr %data.i188.i.i, align 4
  %call5.i193.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i192.i.i) #10
  br label %update_by_mnemonic.exit196.i.i

update_by_mnemonic.exit196.i.i:                   ; preds = %if.end.i194.i.i, %update_by_mnemonic.exit187.i.i.update_by_mnemonic.exit196.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i188.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i197.i.i) #10
  %281 = ptrtoint ptr %data.i197.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 -1, ptr %data.i197.i.i, align 4, !annotation !137
  %call.i198.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i197.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198.i.i)
  %tobool.not.i199.i.i = icmp eq i32 %call.i198.i.i, 0
  br i1 %tobool.not.i199.i.i, label %if.end.i203.i.i, label %update_by_mnemonic.exit196.i.i.update_by_mnemonic.exit205.i.i_crit_edge

update_by_mnemonic.exit196.i.i.update_by_mnemonic.exit205.i.i_crit_edge: ; preds = %update_by_mnemonic.exit196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit205.i.i

if.end.i203.i.i:                                  ; preds = %update_by_mnemonic.exit196.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %282 = ptrtoint ptr %data.i197.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %data.i197.i.i, align 4
  %and.i200.i.i = and i32 %283, -117440513
  %or.i201.i.i = or i32 %and.i200.i.i, 16777216
  store i32 %or.i201.i.i, ptr %data.i197.i.i, align 4
  %call5.i202.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i201.i.i) #10
  br label %update_by_mnemonic.exit205.i.i

update_by_mnemonic.exit205.i.i:                   ; preds = %if.end.i203.i.i, %update_by_mnemonic.exit196.i.i.update_by_mnemonic.exit205.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i197.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i206.i.i) #10
  %284 = ptrtoint ptr %data.i206.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 -1, ptr %data.i206.i.i, align 4, !annotation !137
  %call.i207.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047812, ptr noundef nonnull %data.i206.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i.i)
  %tobool.not.i208.i.i = icmp eq i32 %call.i207.i.i, 0
  br i1 %tobool.not.i208.i.i, label %if.end.i212.i.i, label %update_by_mnemonic.exit205.i.i.update_by_mnemonic.exit214.i.i_crit_edge

update_by_mnemonic.exit205.i.i.update_by_mnemonic.exit214.i.i_crit_edge: ; preds = %update_by_mnemonic.exit205.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit214.i.i

if.end.i212.i.i:                                  ; preds = %update_by_mnemonic.exit205.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %285 = ptrtoint ptr %data.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %data.i206.i.i, align 4
  %and.i209.i.i = and i32 %286, -8
  %or.i210.i.i = or i32 %and.i209.i.i, 1
  store i32 %or.i210.i.i, ptr %data.i206.i.i, align 4
  %call5.i211.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047812, i32 noundef %or.i210.i.i) #10
  br label %update_by_mnemonic.exit214.i.i

update_by_mnemonic.exit214.i.i:                   ; preds = %if.end.i212.i.i, %update_by_mnemonic.exit205.i.i.update_by_mnemonic.exit214.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i206.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i215.i.i) #10
  %287 = ptrtoint ptr %data.i215.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 -1, ptr %data.i215.i.i, align 4, !annotation !137
  %call.i216.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047812, ptr noundef nonnull %data.i215.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216.i.i)
  %tobool.not.i217.i.i = icmp eq i32 %call.i216.i.i, 0
  br i1 %tobool.not.i217.i.i, label %if.end.i221.i.i, label %update_by_mnemonic.exit214.i.i.update_by_mnemonic.exit223.i.i_crit_edge

update_by_mnemonic.exit214.i.i.update_by_mnemonic.exit223.i.i_crit_edge: ; preds = %update_by_mnemonic.exit214.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit223.i.i

if.end.i221.i.i:                                  ; preds = %update_by_mnemonic.exit214.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %288 = ptrtoint ptr %data.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %data.i215.i.i, align 4
  %and.i218.i.i = and i32 %289, -113
  %or.i219.i.i = or i32 %and.i218.i.i, 16
  store i32 %or.i219.i.i, ptr %data.i215.i.i, align 4
  %call5.i220.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047812, i32 noundef %or.i219.i.i) #10
  br label %update_by_mnemonic.exit223.i.i

update_by_mnemonic.exit223.i.i:                   ; preds = %if.end.i221.i.i, %update_by_mnemonic.exit214.i.i.update_by_mnemonic.exit223.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i215.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i224.i.i) #10
  %290 = ptrtoint ptr %data.i224.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 -1, ptr %data.i224.i.i, align 4, !annotation !137
  %call.i225.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i224.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.i.i)
  %tobool.not.i226.i.i = icmp eq i32 %call.i225.i.i, 0
  br i1 %tobool.not.i226.i.i, label %if.end.i229.i.i, label %update_by_mnemonic.exit223.i.i.update_by_mnemonic.exit231.i.i_crit_edge

update_by_mnemonic.exit223.i.i.update_by_mnemonic.exit231.i.i_crit_edge: ; preds = %update_by_mnemonic.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit231.i.i

if.end.i229.i.i:                                  ; preds = %update_by_mnemonic.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %291 = ptrtoint ptr %data.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %data.i224.i.i, align 4
  %and.i227.i.i = and i32 %292, -113
  store i32 %and.i227.i.i, ptr %data.i224.i.i, align 4
  %call5.i228.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %and.i227.i.i) #10
  br label %update_by_mnemonic.exit231.i.i

update_by_mnemonic.exit231.i.i:                   ; preds = %if.end.i229.i.i, %update_by_mnemonic.exit223.i.i.update_by_mnemonic.exit231.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i224.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i232.i.i) #10
  %293 = ptrtoint ptr %data.i232.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 -1, ptr %data.i232.i.i, align 4, !annotation !137
  %call.i233.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i232.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233.i.i)
  %tobool.not.i234.i.i = icmp eq i32 %call.i233.i.i, 0
  br i1 %tobool.not.i234.i.i, label %if.end.i237.i.i, label %update_by_mnemonic.exit231.i.i.update_by_mnemonic.exit239.i.i_crit_edge

update_by_mnemonic.exit231.i.i.update_by_mnemonic.exit239.i.i_crit_edge: ; preds = %update_by_mnemonic.exit231.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit239.i.i

if.end.i237.i.i:                                  ; preds = %update_by_mnemonic.exit231.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %294 = ptrtoint ptr %data.i232.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %data.i232.i.i, align 4
  %and.i235.i.i = and i32 %295, -1793
  store i32 %and.i235.i.i, ptr %data.i232.i.i, align 4
  %call5.i236.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %and.i235.i.i) #10
  br label %update_by_mnemonic.exit239.i.i

update_by_mnemonic.exit239.i.i:                   ; preds = %if.end.i237.i.i, %update_by_mnemonic.exit231.i.i.update_by_mnemonic.exit239.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i232.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i240.i.i) #10
  %296 = ptrtoint ptr %data.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 -1, ptr %data.i240.i.i, align 4, !annotation !137
  %call.i241.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i240.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.i.i)
  %tobool.not.i242.i.i = icmp eq i32 %call.i241.i.i, 0
  br i1 %tobool.not.i242.i.i, label %if.end.i245.i.i, label %update_by_mnemonic.exit239.i.i.update_by_mnemonic.exit247.i.i_crit_edge

update_by_mnemonic.exit239.i.i.update_by_mnemonic.exit247.i.i_crit_edge: ; preds = %update_by_mnemonic.exit239.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit247.i.i

if.end.i245.i.i:                                  ; preds = %update_by_mnemonic.exit239.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %297 = ptrtoint ptr %data.i240.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %data.i240.i.i, align 4
  %and.i243.i.i = and i32 %298, -28673
  store i32 %and.i243.i.i, ptr %data.i240.i.i, align 4
  %call5.i244.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %and.i243.i.i) #10
  br label %update_by_mnemonic.exit247.i.i

update_by_mnemonic.exit247.i.i:                   ; preds = %if.end.i245.i.i, %update_by_mnemonic.exit239.i.i.update_by_mnemonic.exit247.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i240.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i248.i.i) #10
  %299 = ptrtoint ptr %data.i248.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 -1, ptr %data.i248.i.i, align 4, !annotation !137
  %call.i249.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i248.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249.i.i)
  %tobool.not.i250.i.i = icmp eq i32 %call.i249.i.i, 0
  br i1 %tobool.not.i250.i.i, label %if.end.i253.i.i, label %update_by_mnemonic.exit247.i.i.update_by_mnemonic.exit255.i.i_crit_edge

update_by_mnemonic.exit247.i.i.update_by_mnemonic.exit255.i.i_crit_edge: ; preds = %update_by_mnemonic.exit247.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit255.i.i

if.end.i253.i.i:                                  ; preds = %update_by_mnemonic.exit247.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %300 = ptrtoint ptr %data.i248.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %data.i248.i.i, align 4
  %and.i251.i.i = and i32 %301, -458753
  store i32 %and.i251.i.i, ptr %data.i248.i.i, align 4
  %call5.i252.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %and.i251.i.i) #10
  br label %update_by_mnemonic.exit255.i.i

update_by_mnemonic.exit255.i.i:                   ; preds = %if.end.i253.i.i, %update_by_mnemonic.exit247.i.i.update_by_mnemonic.exit255.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i248.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i256.i.i) #10
  %302 = ptrtoint ptr %data.i256.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 -1, ptr %data.i256.i.i, align 4, !annotation !137
  %call.i257.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i256.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257.i.i)
  %tobool.not.i258.i.i = icmp eq i32 %call.i257.i.i, 0
  br i1 %tobool.not.i258.i.i, label %if.end.i262.i.i, label %update_by_mnemonic.exit255.i.i.update_by_mnemonic.exit264.i.i_crit_edge

update_by_mnemonic.exit255.i.i.update_by_mnemonic.exit264.i.i_crit_edge: ; preds = %update_by_mnemonic.exit255.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit264.i.i

if.end.i262.i.i:                                  ; preds = %update_by_mnemonic.exit255.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %303 = ptrtoint ptr %data.i256.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %data.i256.i.i, align 4
  %and.i259.i.i = and i32 %304, -7340033
  %or.i260.i.i = or i32 %and.i259.i.i, 1048576
  store i32 %or.i260.i.i, ptr %data.i256.i.i, align 4
  %call5.i261.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i260.i.i) #10
  br label %update_by_mnemonic.exit264.i.i

update_by_mnemonic.exit264.i.i:                   ; preds = %if.end.i262.i.i, %update_by_mnemonic.exit255.i.i.update_by_mnemonic.exit264.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i256.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i265.i.i) #10
  %305 = ptrtoint ptr %data.i265.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 -1, ptr %data.i265.i.i, align 4, !annotation !137
  %call.i266.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i265.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266.i.i)
  %tobool.not.i267.i.i = icmp eq i32 %call.i266.i.i, 0
  br i1 %tobool.not.i267.i.i, label %if.end.i271.i.i, label %update_by_mnemonic.exit264.i.i.update_by_mnemonic.exit273.i.i_crit_edge

update_by_mnemonic.exit264.i.i.update_by_mnemonic.exit273.i.i_crit_edge: ; preds = %update_by_mnemonic.exit264.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit273.i.i

if.end.i271.i.i:                                  ; preds = %update_by_mnemonic.exit264.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %306 = ptrtoint ptr %data.i265.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %data.i265.i.i, align 4
  %and.i268.i.i = and i32 %307, -117440513
  %or.i269.i.i = or i32 %and.i268.i.i, 16777216
  store i32 %or.i269.i.i, ptr %data.i265.i.i, align 4
  %call5.i270.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i269.i.i) #10
  br label %update_by_mnemonic.exit273.i.i

update_by_mnemonic.exit273.i.i:                   ; preds = %if.end.i271.i.i, %update_by_mnemonic.exit264.i.i.update_by_mnemonic.exit273.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i265.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i274.i.i) #10
  %308 = ptrtoint ptr %data.i274.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 -1, ptr %data.i274.i.i, align 4, !annotation !137
  %call.i275.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i274.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275.i.i)
  %tobool.not.i276.i.i = icmp eq i32 %call.i275.i.i, 0
  br i1 %tobool.not.i276.i.i, label %if.end.i280.i.i, label %update_by_mnemonic.exit273.i.i.update_by_mnemonic.exit282.i.i_crit_edge

update_by_mnemonic.exit273.i.i.update_by_mnemonic.exit282.i.i_crit_edge: ; preds = %update_by_mnemonic.exit273.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit282.i.i

if.end.i280.i.i:                                  ; preds = %update_by_mnemonic.exit273.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %309 = ptrtoint ptr %data.i274.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %data.i274.i.i, align 4
  %and.i277.i.i = and i32 %310, -1879048193
  %or.i278.i.i = or i32 %and.i277.i.i, 536870912
  store i32 %or.i278.i.i, ptr %data.i274.i.i, align 4
  %call5.i279.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i278.i.i) #10
  br label %update_by_mnemonic.exit282.i.i

update_by_mnemonic.exit282.i.i:                   ; preds = %if.end.i280.i.i, %update_by_mnemonic.exit273.i.i.update_by_mnemonic.exit282.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i274.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i283.i.i) #10
  %311 = ptrtoint ptr %data.i283.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 -1, ptr %data.i283.i.i, align 4, !annotation !137
  %call.i284.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i283.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284.i.i)
  %tobool.not.i285.i.i = icmp eq i32 %call.i284.i.i, 0
  br i1 %tobool.not.i285.i.i, label %if.end.i289.i.i, label %update_by_mnemonic.exit282.i.i.update_by_mnemonic.exit291.i.i_crit_edge

update_by_mnemonic.exit282.i.i.update_by_mnemonic.exit291.i.i_crit_edge: ; preds = %update_by_mnemonic.exit282.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit291.i.i

if.end.i289.i.i:                                  ; preds = %update_by_mnemonic.exit282.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %312 = ptrtoint ptr %data.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %data.i283.i.i, align 4
  %and.i286.i.i = and i32 %313, -8
  %or.i287.i.i = or i32 %and.i286.i.i, 2
  store i32 %or.i287.i.i, ptr %data.i283.i.i, align 4
  %call5.i288.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i287.i.i) #10
  br label %update_by_mnemonic.exit291.i.i

update_by_mnemonic.exit291.i.i:                   ; preds = %if.end.i289.i.i, %update_by_mnemonic.exit282.i.i.update_by_mnemonic.exit291.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i283.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i292.i.i) #10
  %314 = ptrtoint ptr %data.i292.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 -1, ptr %data.i292.i.i, align 4, !annotation !137
  %call.i293.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i292.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293.i.i)
  %tobool.not.i294.i.i = icmp eq i32 %call.i293.i.i, 0
  br i1 %tobool.not.i294.i.i, label %if.end.i298.i.i, label %update_by_mnemonic.exit291.i.i.update_by_mnemonic.exit300.i.i_crit_edge

update_by_mnemonic.exit291.i.i.update_by_mnemonic.exit300.i.i_crit_edge: ; preds = %update_by_mnemonic.exit291.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit300.i.i

if.end.i298.i.i:                                  ; preds = %update_by_mnemonic.exit291.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %315 = ptrtoint ptr %data.i292.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %data.i292.i.i, align 4
  %and.i295.i.i = and i32 %316, -113
  %or.i296.i.i = or i32 %and.i295.i.i, 32
  store i32 %or.i296.i.i, ptr %data.i292.i.i, align 4
  %call5.i297.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i296.i.i) #10
  br label %update_by_mnemonic.exit300.i.i

update_by_mnemonic.exit300.i.i:                   ; preds = %if.end.i298.i.i, %update_by_mnemonic.exit291.i.i.update_by_mnemonic.exit300.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i292.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i301.i.i) #10
  %317 = ptrtoint ptr %data.i301.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 -1, ptr %data.i301.i.i, align 4, !annotation !137
  %call.i302.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i301.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302.i.i)
  %tobool.not.i303.i.i = icmp eq i32 %call.i302.i.i, 0
  br i1 %tobool.not.i303.i.i, label %if.end.i307.i.i, label %update_by_mnemonic.exit300.i.i.update_by_mnemonic.exit309.i.i_crit_edge

update_by_mnemonic.exit300.i.i.update_by_mnemonic.exit309.i.i_crit_edge: ; preds = %update_by_mnemonic.exit300.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit309.i.i

if.end.i307.i.i:                                  ; preds = %update_by_mnemonic.exit300.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %318 = ptrtoint ptr %data.i301.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %data.i301.i.i, align 4
  %and.i304.i.i = and i32 %319, -1793
  %or.i305.i.i = or i32 %and.i304.i.i, 512
  store i32 %or.i305.i.i, ptr %data.i301.i.i, align 4
  %call5.i306.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i305.i.i) #10
  br label %update_by_mnemonic.exit309.i.i

update_by_mnemonic.exit309.i.i:                   ; preds = %if.end.i307.i.i, %update_by_mnemonic.exit300.i.i.update_by_mnemonic.exit309.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i301.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i310.i.i) #10
  %320 = ptrtoint ptr %data.i310.i.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 -1, ptr %data.i310.i.i, align 4, !annotation !137
  %call.i311.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i310.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311.i.i)
  %tobool.not.i312.i.i = icmp eq i32 %call.i311.i.i, 0
  br i1 %tobool.not.i312.i.i, label %if.end.i316.i.i, label %update_by_mnemonic.exit309.i.i.update_by_mnemonic.exit318.i.i_crit_edge

update_by_mnemonic.exit309.i.i.update_by_mnemonic.exit318.i.i_crit_edge: ; preds = %update_by_mnemonic.exit309.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit318.i.i

if.end.i316.i.i:                                  ; preds = %update_by_mnemonic.exit309.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %321 = ptrtoint ptr %data.i310.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %data.i310.i.i, align 4
  %and.i313.i.i = and i32 %322, -28673
  %or.i314.i.i = or i32 %and.i313.i.i, 8192
  store i32 %or.i314.i.i, ptr %data.i310.i.i, align 4
  %call5.i315.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i314.i.i) #10
  br label %update_by_mnemonic.exit318.i.i

update_by_mnemonic.exit318.i.i:                   ; preds = %if.end.i316.i.i, %update_by_mnemonic.exit309.i.i.update_by_mnemonic.exit318.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i310.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i319.i.i) #10
  %323 = ptrtoint ptr %data.i319.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 -1, ptr %data.i319.i.i, align 4, !annotation !137
  %call.i320.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i319.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320.i.i)
  %tobool.not.i321.i.i = icmp eq i32 %call.i320.i.i, 0
  br i1 %tobool.not.i321.i.i, label %if.end.i325.i.i, label %update_by_mnemonic.exit318.i.i.update_by_mnemonic.exit327.i.i_crit_edge

update_by_mnemonic.exit318.i.i.update_by_mnemonic.exit327.i.i_crit_edge: ; preds = %update_by_mnemonic.exit318.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit327.i.i

if.end.i325.i.i:                                  ; preds = %update_by_mnemonic.exit318.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %324 = ptrtoint ptr %data.i319.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %data.i319.i.i, align 4
  %and.i322.i.i = and i32 %325, -458753
  %or.i323.i.i = or i32 %and.i322.i.i, 131072
  store i32 %or.i323.i.i, ptr %data.i319.i.i, align 4
  %call5.i324.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i323.i.i) #10
  br label %update_by_mnemonic.exit327.i.i

update_by_mnemonic.exit327.i.i:                   ; preds = %if.end.i325.i.i, %update_by_mnemonic.exit318.i.i.update_by_mnemonic.exit327.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i319.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i328.i.i) #10
  %326 = ptrtoint ptr %data.i328.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 -1, ptr %data.i328.i.i, align 4, !annotation !137
  %call.i329.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i328.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329.i.i)
  %tobool.not.i330.i.i = icmp eq i32 %call.i329.i.i, 0
  br i1 %tobool.not.i330.i.i, label %if.end.i334.i.i, label %update_by_mnemonic.exit327.i.i.update_by_mnemonic.exit336.i.i_crit_edge

update_by_mnemonic.exit327.i.i.update_by_mnemonic.exit336.i.i_crit_edge: ; preds = %update_by_mnemonic.exit327.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit336.i.i

if.end.i334.i.i:                                  ; preds = %update_by_mnemonic.exit327.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %327 = ptrtoint ptr %data.i328.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %data.i328.i.i, align 4
  %and.i331.i.i = and i32 %328, -7340033
  %or.i332.i.i = or i32 %and.i331.i.i, 2097152
  store i32 %or.i332.i.i, ptr %data.i328.i.i, align 4
  %call5.i333.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i332.i.i) #10
  br label %update_by_mnemonic.exit336.i.i

update_by_mnemonic.exit336.i.i:                   ; preds = %if.end.i334.i.i, %update_by_mnemonic.exit327.i.i.update_by_mnemonic.exit336.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i328.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i337.i.i) #10
  %329 = ptrtoint ptr %data.i337.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 -1, ptr %data.i337.i.i, align 4, !annotation !137
  %call.i338.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i337.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338.i.i)
  %tobool.not.i339.i.i = icmp eq i32 %call.i338.i.i, 0
  br i1 %tobool.not.i339.i.i, label %if.end.i343.i.i, label %update_by_mnemonic.exit336.i.i.update_by_mnemonic.exit345.i.i_crit_edge

update_by_mnemonic.exit336.i.i.update_by_mnemonic.exit345.i.i_crit_edge: ; preds = %update_by_mnemonic.exit336.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit345.i.i

if.end.i343.i.i:                                  ; preds = %update_by_mnemonic.exit336.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %330 = ptrtoint ptr %data.i337.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %data.i337.i.i, align 4
  %and.i340.i.i = and i32 %331, -117440513
  %or.i341.i.i = or i32 %and.i340.i.i, 33554432
  store i32 %or.i341.i.i, ptr %data.i337.i.i, align 4
  %call5.i342.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i341.i.i) #10
  br label %update_by_mnemonic.exit345.i.i

update_by_mnemonic.exit345.i.i:                   ; preds = %if.end.i343.i.i, %update_by_mnemonic.exit336.i.i.update_by_mnemonic.exit345.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i337.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i346.i.i) #10
  %332 = ptrtoint ptr %data.i346.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 -1, ptr %data.i346.i.i, align 4, !annotation !137
  %call.i347.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i346.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347.i.i)
  %tobool.not.i348.i.i = icmp eq i32 %call.i347.i.i, 0
  br i1 %tobool.not.i348.i.i, label %if.end.i352.i.i, label %update_by_mnemonic.exit345.i.i.update_by_mnemonic.exit354.i.i_crit_edge

update_by_mnemonic.exit345.i.i.update_by_mnemonic.exit354.i.i_crit_edge: ; preds = %update_by_mnemonic.exit345.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit354.i.i

if.end.i352.i.i:                                  ; preds = %update_by_mnemonic.exit345.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %333 = ptrtoint ptr %data.i346.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %data.i346.i.i, align 4
  %and.i349.i.i = and i32 %334, -1879048193
  %or.i350.i.i = or i32 %and.i349.i.i, 536870912
  store i32 %or.i350.i.i, ptr %data.i346.i.i, align 4
  %call5.i351.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i350.i.i) #10
  br label %update_by_mnemonic.exit354.i.i

update_by_mnemonic.exit354.i.i:                   ; preds = %if.end.i352.i.i, %update_by_mnemonic.exit345.i.i.update_by_mnemonic.exit354.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i346.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i355.i.i) #10
  %335 = ptrtoint ptr %data.i355.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 -1, ptr %data.i355.i.i, align 4, !annotation !137
  %call.i356.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i355.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356.i.i)
  %tobool.not.i357.i.i = icmp eq i32 %call.i356.i.i, 0
  br i1 %tobool.not.i357.i.i, label %if.end.i361.i.i, label %update_by_mnemonic.exit354.i.i.update_by_mnemonic.exit363.i.i_crit_edge

update_by_mnemonic.exit354.i.i.update_by_mnemonic.exit363.i.i_crit_edge: ; preds = %update_by_mnemonic.exit354.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit363.i.i

if.end.i361.i.i:                                  ; preds = %update_by_mnemonic.exit354.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %336 = ptrtoint ptr %data.i355.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %data.i355.i.i, align 4
  %and.i358.i.i = and i32 %337, -8
  %or.i359.i.i = or i32 %and.i358.i.i, 2
  store i32 %or.i359.i.i, ptr %data.i355.i.i, align 4
  %call5.i360.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i359.i.i) #10
  br label %update_by_mnemonic.exit363.i.i

update_by_mnemonic.exit363.i.i:                   ; preds = %if.end.i361.i.i, %update_by_mnemonic.exit354.i.i.update_by_mnemonic.exit363.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i355.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i364.i.i) #10
  %338 = ptrtoint ptr %data.i364.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 -1, ptr %data.i364.i.i, align 4, !annotation !137
  %call.i365.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i364.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365.i.i)
  %tobool.not.i366.i.i = icmp eq i32 %call.i365.i.i, 0
  br i1 %tobool.not.i366.i.i, label %if.end.i370.i.i, label %update_by_mnemonic.exit363.i.i.update_by_mnemonic.exit372.i.i_crit_edge

update_by_mnemonic.exit363.i.i.update_by_mnemonic.exit372.i.i_crit_edge: ; preds = %update_by_mnemonic.exit363.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit372.i.i

if.end.i370.i.i:                                  ; preds = %update_by_mnemonic.exit363.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %339 = ptrtoint ptr %data.i364.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %data.i364.i.i, align 4
  %and.i367.i.i = and i32 %340, -113
  %or.i368.i.i = or i32 %and.i367.i.i, 32
  store i32 %or.i368.i.i, ptr %data.i364.i.i, align 4
  %call5.i369.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i368.i.i) #10
  br label %update_by_mnemonic.exit372.i.i

update_by_mnemonic.exit372.i.i:                   ; preds = %if.end.i370.i.i, %update_by_mnemonic.exit363.i.i.update_by_mnemonic.exit372.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i364.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i373.i.i) #10
  %341 = ptrtoint ptr %data.i373.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 -1, ptr %data.i373.i.i, align 4, !annotation !137
  %call.i374.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047816, ptr noundef nonnull %data.i373.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374.i.i)
  %tobool.not.i375.i.i = icmp eq i32 %call.i374.i.i, 0
  br i1 %tobool.not.i375.i.i, label %if.end.i379.i.i, label %update_by_mnemonic.exit372.i.i.update_by_mnemonic.exit381.i.i_crit_edge

update_by_mnemonic.exit372.i.i.update_by_mnemonic.exit381.i.i_crit_edge: ; preds = %update_by_mnemonic.exit372.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit381.i.i

if.end.i379.i.i:                                  ; preds = %update_by_mnemonic.exit372.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %342 = ptrtoint ptr %data.i373.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %data.i373.i.i, align 4
  %and.i376.i.i = and i32 %343, -1793
  %or.i377.i.i = or i32 %and.i376.i.i, 512
  store i32 %or.i377.i.i, ptr %data.i373.i.i, align 4
  %call5.i378.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047816, i32 noundef %or.i377.i.i) #10
  br label %update_by_mnemonic.exit381.i.i

update_by_mnemonic.exit381.i.i:                   ; preds = %if.end.i379.i.i, %update_by_mnemonic.exit372.i.i.update_by_mnemonic.exit381.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i373.i.i) #10
  br label %cfg_ts_pad_mux.exit.i

if.else207.i.i:                                   ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i382.i.i) #10
  %344 = ptrtoint ptr %data.i382.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 -1, ptr %data.i382.i.i, align 4, !annotation !137
  %call.i383.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i382.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383.i.i)
  %tobool.not.i384.i.i = icmp eq i32 %call.i383.i.i, 0
  br i1 %tobool.not.i384.i.i, label %if.end.i390.i.i, label %if.else207.i.i.update_by_mnemonic.exit392.i.i_crit_edge

if.else207.i.i.update_by_mnemonic.exit392.i.i_crit_edge: ; preds = %if.else207.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit392.i.i

if.end.i390.i.i:                                  ; preds = %if.else207.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %345 = ptrtoint ptr %data.i382.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %data.i382.i.i, align 4
  %and.i385.i.i = and i32 %346, -113
  %shl3.i386.i.i = shl nuw nsw i32 %216, 4
  %or.i388.i.i = or i32 %and.i385.i.i, %shl3.i386.i.i
  store i32 %or.i388.i.i, ptr %data.i382.i.i, align 4
  %call5.i389.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i388.i.i) #10
  br label %update_by_mnemonic.exit392.i.i

update_by_mnemonic.exit392.i.i:                   ; preds = %if.end.i390.i.i, %if.else207.i.i.update_by_mnemonic.exit392.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i382.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i393.i.i) #10
  %347 = ptrtoint ptr %data.i393.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 -1, ptr %data.i393.i.i, align 4, !annotation !137
  %call.i394.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i393.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i394.i.i)
  %tobool.not.i395.i.i = icmp eq i32 %call.i394.i.i, 0
  br i1 %tobool.not.i395.i.i, label %if.end.i401.i.i, label %update_by_mnemonic.exit392.i.i.update_by_mnemonic.exit403.i.i_crit_edge

update_by_mnemonic.exit392.i.i.update_by_mnemonic.exit403.i.i_crit_edge: ; preds = %update_by_mnemonic.exit392.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit403.i.i

if.end.i401.i.i:                                  ; preds = %update_by_mnemonic.exit392.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %348 = ptrtoint ptr %data.i393.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %data.i393.i.i, align 4
  %and.i396.i.i = and i32 %349, -1793
  %shl3.i397.i.i = shl nuw nsw i32 %216, 8
  %or.i399.i.i = or i32 %and.i396.i.i, %shl3.i397.i.i
  store i32 %or.i399.i.i, ptr %data.i393.i.i, align 4
  %call5.i400.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i399.i.i) #10
  br label %update_by_mnemonic.exit403.i.i

update_by_mnemonic.exit403.i.i:                   ; preds = %if.end.i401.i.i, %update_by_mnemonic.exit392.i.i.update_by_mnemonic.exit403.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i393.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i404.i.i) #10
  %350 = ptrtoint ptr %data.i404.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 -1, ptr %data.i404.i.i, align 4, !annotation !137
  %call.i405.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i404.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i405.i.i)
  %tobool.not.i406.i.i = icmp eq i32 %call.i405.i.i, 0
  br i1 %tobool.not.i406.i.i, label %if.end.i412.i.i, label %update_by_mnemonic.exit403.i.i.update_by_mnemonic.exit414.i.i_crit_edge

update_by_mnemonic.exit403.i.i.update_by_mnemonic.exit414.i.i_crit_edge: ; preds = %update_by_mnemonic.exit403.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit414.i.i

if.end.i412.i.i:                                  ; preds = %update_by_mnemonic.exit403.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %351 = ptrtoint ptr %data.i404.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %data.i404.i.i, align 4
  %and.i407.i.i = and i32 %352, -28673
  %shl3.i408.i.i = shl nuw nsw i32 %216, 12
  %or.i410.i.i = or i32 %and.i407.i.i, %shl3.i408.i.i
  store i32 %or.i410.i.i, ptr %data.i404.i.i, align 4
  %call5.i411.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i410.i.i) #10
  br label %update_by_mnemonic.exit414.i.i

update_by_mnemonic.exit414.i.i:                   ; preds = %if.end.i412.i.i, %update_by_mnemonic.exit403.i.i.update_by_mnemonic.exit414.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i404.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i415.i.i) #10
  %353 = ptrtoint ptr %data.i415.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 -1, ptr %data.i415.i.i, align 4, !annotation !137
  %call.i416.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i415.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416.i.i)
  %tobool.not.i417.i.i = icmp eq i32 %call.i416.i.i, 0
  br i1 %tobool.not.i417.i.i, label %if.end.i423.i.i, label %update_by_mnemonic.exit414.i.i.update_by_mnemonic.exit425.i.i_crit_edge

update_by_mnemonic.exit414.i.i.update_by_mnemonic.exit425.i.i_crit_edge: ; preds = %update_by_mnemonic.exit414.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit425.i.i

if.end.i423.i.i:                                  ; preds = %update_by_mnemonic.exit414.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %354 = ptrtoint ptr %data.i415.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %data.i415.i.i, align 4
  %and.i418.i.i = and i32 %355, -458753
  %shl3.i419.i.i = shl nuw nsw i32 %216, 16
  %or.i421.i.i = or i32 %and.i418.i.i, %shl3.i419.i.i
  store i32 %or.i421.i.i, ptr %data.i415.i.i, align 4
  %call5.i422.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i421.i.i) #10
  br label %update_by_mnemonic.exit425.i.i

update_by_mnemonic.exit425.i.i:                   ; preds = %if.end.i423.i.i, %update_by_mnemonic.exit414.i.i.update_by_mnemonic.exit425.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i415.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i426.i.i) #10
  %356 = ptrtoint ptr %data.i426.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 -1, ptr %data.i426.i.i, align 4, !annotation !137
  %call.i427.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i426.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i427.i.i)
  %tobool.not.i428.i.i = icmp eq i32 %call.i427.i.i, 0
  br i1 %tobool.not.i428.i.i, label %if.end.i434.i.i, label %update_by_mnemonic.exit425.i.i.update_by_mnemonic.exit436.i.i_crit_edge

update_by_mnemonic.exit425.i.i.update_by_mnemonic.exit436.i.i_crit_edge: ; preds = %update_by_mnemonic.exit425.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit436.i.i

if.end.i434.i.i:                                  ; preds = %update_by_mnemonic.exit425.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %357 = ptrtoint ptr %data.i426.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %data.i426.i.i, align 4
  %and.i429.i.i = and i32 %358, -7340033
  %shl3.i430.i.i = shl nuw nsw i32 %216, 20
  %or.i432.i.i = or i32 %and.i429.i.i, %shl3.i430.i.i
  store i32 %or.i432.i.i, ptr %data.i426.i.i, align 4
  %call5.i433.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i432.i.i) #10
  br label %update_by_mnemonic.exit436.i.i

update_by_mnemonic.exit436.i.i:                   ; preds = %if.end.i434.i.i, %update_by_mnemonic.exit425.i.i.update_by_mnemonic.exit436.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i426.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i437.i.i) #10
  %359 = ptrtoint ptr %data.i437.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 -1, ptr %data.i437.i.i, align 4, !annotation !137
  %call.i438.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i437.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i438.i.i)
  %tobool.not.i439.i.i = icmp eq i32 %call.i438.i.i, 0
  br i1 %tobool.not.i439.i.i, label %if.end.i445.i.i, label %update_by_mnemonic.exit436.i.i.update_by_mnemonic.exit447.i.i_crit_edge

update_by_mnemonic.exit436.i.i.update_by_mnemonic.exit447.i.i_crit_edge: ; preds = %update_by_mnemonic.exit436.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit447.i.i

if.end.i445.i.i:                                  ; preds = %update_by_mnemonic.exit436.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %data.i437.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %data.i437.i.i, align 4
  %and.i440.i.i = and i32 %361, -117440513
  %shl3.i441.i.i = shl nuw nsw i32 %216, 24
  %or.i443.i.i = or i32 %and.i440.i.i, %shl3.i441.i.i
  store i32 %or.i443.i.i, ptr %data.i437.i.i, align 4
  %call5.i444.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i443.i.i) #10
  br label %update_by_mnemonic.exit447.i.i

update_by_mnemonic.exit447.i.i:                   ; preds = %if.end.i445.i.i, %update_by_mnemonic.exit436.i.i.update_by_mnemonic.exit447.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i437.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i448.i.i) #10
  %362 = ptrtoint ptr %data.i448.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 -1, ptr %data.i448.i.i, align 4, !annotation !137
  %call.i449.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i448.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i449.i.i)
  %tobool.not.i450.i.i = icmp eq i32 %call.i449.i.i, 0
  br i1 %tobool.not.i450.i.i, label %if.end.i456.i.i, label %update_by_mnemonic.exit447.i.i.update_by_mnemonic.exit458.i.i_crit_edge

update_by_mnemonic.exit447.i.i.update_by_mnemonic.exit458.i.i_crit_edge: ; preds = %update_by_mnemonic.exit447.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit458.i.i

if.end.i456.i.i:                                  ; preds = %update_by_mnemonic.exit447.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %363 = ptrtoint ptr %data.i448.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %data.i448.i.i, align 4
  %and.i451.i.i = and i32 %364, -1879048193
  %shl3.i452.i.i = shl nuw nsw i32 %216, 28
  %or.i454.i.i = or i32 %and.i451.i.i, %shl3.i452.i.i
  store i32 %or.i454.i.i, ptr %data.i448.i.i, align 4
  %call5.i455.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i454.i.i) #10
  br label %update_by_mnemonic.exit458.i.i

update_by_mnemonic.exit458.i.i:                   ; preds = %if.end.i456.i.i, %update_by_mnemonic.exit447.i.i.update_by_mnemonic.exit458.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i448.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i459.i.i) #10
  %365 = ptrtoint ptr %data.i459.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 -1, ptr %data.i459.i.i, align 4, !annotation !137
  %call.i460.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i459.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460.i.i)
  %tobool.not.i461.i.i = icmp eq i32 %call.i460.i.i, 0
  br i1 %tobool.not.i461.i.i, label %if.end.i465.i.i, label %update_by_mnemonic.exit458.i.i.update_by_mnemonic.exit467.i.i_crit_edge

update_by_mnemonic.exit458.i.i.update_by_mnemonic.exit467.i.i_crit_edge: ; preds = %update_by_mnemonic.exit458.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit467.i.i

if.end.i465.i.i:                                  ; preds = %update_by_mnemonic.exit458.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %366 = ptrtoint ptr %data.i459.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %data.i459.i.i, align 4
  %and.i462.i.i = and i32 %367, -8
  %or.i463.i.i = or i32 %and.i462.i.i, %216
  store i32 %or.i463.i.i, ptr %data.i459.i.i, align 4
  %call5.i464.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i463.i.i) #10
  br label %update_by_mnemonic.exit467.i.i

update_by_mnemonic.exit467.i.i:                   ; preds = %if.end.i465.i.i, %update_by_mnemonic.exit458.i.i.update_by_mnemonic.exit467.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i459.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i468.i.i) #10
  %368 = ptrtoint ptr %data.i468.i.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 -1, ptr %data.i468.i.i, align 4, !annotation !137
  %call.i469.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i468.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i469.i.i)
  %tobool.not.i470.i.i = icmp eq i32 %call.i469.i.i, 0
  br i1 %tobool.not.i470.i.i, label %if.end.i476.i.i, label %update_by_mnemonic.exit467.i.i.update_by_mnemonic.exit478.i.i_crit_edge

update_by_mnemonic.exit467.i.i.update_by_mnemonic.exit478.i.i_crit_edge: ; preds = %update_by_mnemonic.exit467.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit478.i.i

if.end.i476.i.i:                                  ; preds = %update_by_mnemonic.exit467.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %369 = ptrtoint ptr %data.i468.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %data.i468.i.i, align 4
  %and.i471.i.i = and i32 %370, -113
  %shl3.i472.i.i = shl nuw nsw i32 %216, 4
  %or.i474.i.i = or i32 %and.i471.i.i, %shl3.i472.i.i
  store i32 %or.i474.i.i, ptr %data.i468.i.i, align 4
  %call5.i475.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i474.i.i) #10
  br label %update_by_mnemonic.exit478.i.i

update_by_mnemonic.exit478.i.i:                   ; preds = %if.end.i476.i.i, %update_by_mnemonic.exit467.i.i.update_by_mnemonic.exit478.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i468.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i479.i.i) #10
  %371 = ptrtoint ptr %data.i479.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 -1, ptr %data.i479.i.i, align 4, !annotation !137
  %call.i480.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i479.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i480.i.i)
  %tobool.not.i481.i.i = icmp eq i32 %call.i480.i.i, 0
  br i1 %tobool.not.i481.i.i, label %if.end.i487.i.i, label %update_by_mnemonic.exit478.i.i.update_by_mnemonic.exit489.i.i_crit_edge

update_by_mnemonic.exit478.i.i.update_by_mnemonic.exit489.i.i_crit_edge: ; preds = %update_by_mnemonic.exit478.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit489.i.i

if.end.i487.i.i:                                  ; preds = %update_by_mnemonic.exit478.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %372 = ptrtoint ptr %data.i479.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %data.i479.i.i, align 4
  %and.i482.i.i = and i32 %373, -1793
  %shl3.i483.i.i = shl nuw nsw i32 %216, 8
  %or.i485.i.i = or i32 %and.i482.i.i, %shl3.i483.i.i
  store i32 %or.i485.i.i, ptr %data.i479.i.i, align 4
  %call5.i486.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i485.i.i) #10
  br label %update_by_mnemonic.exit489.i.i

update_by_mnemonic.exit489.i.i:                   ; preds = %if.end.i487.i.i, %update_by_mnemonic.exit478.i.i.update_by_mnemonic.exit489.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i479.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i490.i.i) #10
  %374 = ptrtoint ptr %data.i490.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 -1, ptr %data.i490.i.i, align 4, !annotation !137
  %call.i491.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i490.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i491.i.i)
  %tobool.not.i492.i.i = icmp eq i32 %call.i491.i.i, 0
  br i1 %tobool.not.i492.i.i, label %if.end.i498.i.i, label %update_by_mnemonic.exit489.i.i.update_by_mnemonic.exit500.i.i_crit_edge

update_by_mnemonic.exit489.i.i.update_by_mnemonic.exit500.i.i_crit_edge: ; preds = %update_by_mnemonic.exit489.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit500.i.i

if.end.i498.i.i:                                  ; preds = %update_by_mnemonic.exit489.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %375 = ptrtoint ptr %data.i490.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %data.i490.i.i, align 4
  %and.i493.i.i = and i32 %376, -28673
  %shl3.i494.i.i = shl nuw nsw i32 %216, 12
  %or.i496.i.i = or i32 %and.i493.i.i, %shl3.i494.i.i
  store i32 %or.i496.i.i, ptr %data.i490.i.i, align 4
  %call5.i497.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i496.i.i) #10
  br label %update_by_mnemonic.exit500.i.i

update_by_mnemonic.exit500.i.i:                   ; preds = %if.end.i498.i.i, %update_by_mnemonic.exit489.i.i.update_by_mnemonic.exit500.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i490.i.i) #10
  br label %cfg_ts_pad_mux.exit.i

sw.default.i.i:                                   ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i501.i.i) #10
  %377 = ptrtoint ptr %data.i501.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 -1, ptr %data.i501.i.i, align 4, !annotation !137
  %call.i502.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i501.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i502.i.i)
  %tobool.not.i503.i.i = icmp eq i32 %call.i502.i.i, 0
  br i1 %tobool.not.i503.i.i, label %if.end.i509.i.i, label %sw.default.i.i.update_by_mnemonic.exit511.i.i_crit_edge

sw.default.i.i.update_by_mnemonic.exit511.i.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit511.i.i

if.end.i509.i.i:                                  ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %378 = ptrtoint ptr %data.i501.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %data.i501.i.i, align 4
  %and.i504.i.i = and i32 %379, -113
  %shl3.i505.i.i = shl nuw nsw i32 %216, 4
  %or.i507.i.i = or i32 %and.i504.i.i, %shl3.i505.i.i
  store i32 %or.i507.i.i, ptr %data.i501.i.i, align 4
  %call5.i508.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i507.i.i) #10
  br label %update_by_mnemonic.exit511.i.i

update_by_mnemonic.exit511.i.i:                   ; preds = %if.end.i509.i.i, %sw.default.i.i.update_by_mnemonic.exit511.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i501.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i512.i.i) #10
  %380 = ptrtoint ptr %data.i512.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 -1, ptr %data.i512.i.i, align 4, !annotation !137
  %call.i513.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i512.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i513.i.i)
  %tobool.not.i514.i.i = icmp eq i32 %call.i513.i.i, 0
  br i1 %tobool.not.i514.i.i, label %if.end.i520.i.i, label %update_by_mnemonic.exit511.i.i.update_by_mnemonic.exit522.i.i_crit_edge

update_by_mnemonic.exit511.i.i.update_by_mnemonic.exit522.i.i_crit_edge: ; preds = %update_by_mnemonic.exit511.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit522.i.i

if.end.i520.i.i:                                  ; preds = %update_by_mnemonic.exit511.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %381 = ptrtoint ptr %data.i512.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %data.i512.i.i, align 4
  %and.i515.i.i = and i32 %382, -1793
  %shl3.i516.i.i = shl nuw nsw i32 %216, 8
  %or.i518.i.i = or i32 %and.i515.i.i, %shl3.i516.i.i
  store i32 %or.i518.i.i, ptr %data.i512.i.i, align 4
  %call5.i519.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i518.i.i) #10
  br label %update_by_mnemonic.exit522.i.i

update_by_mnemonic.exit522.i.i:                   ; preds = %if.end.i520.i.i, %update_by_mnemonic.exit511.i.i.update_by_mnemonic.exit522.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i512.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i523.i.i) #10
  %383 = ptrtoint ptr %data.i523.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 -1, ptr %data.i523.i.i, align 4, !annotation !137
  %call.i524.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i523.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i524.i.i)
  %tobool.not.i525.i.i = icmp eq i32 %call.i524.i.i, 0
  br i1 %tobool.not.i525.i.i, label %if.end.i531.i.i, label %update_by_mnemonic.exit522.i.i.update_by_mnemonic.exit533.i.i_crit_edge

update_by_mnemonic.exit522.i.i.update_by_mnemonic.exit533.i.i_crit_edge: ; preds = %update_by_mnemonic.exit522.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit533.i.i

if.end.i531.i.i:                                  ; preds = %update_by_mnemonic.exit522.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %384 = ptrtoint ptr %data.i523.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %data.i523.i.i, align 4
  %and.i526.i.i = and i32 %385, -28673
  %shl3.i527.i.i = shl nuw nsw i32 %216, 12
  %or.i529.i.i = or i32 %and.i526.i.i, %shl3.i527.i.i
  store i32 %or.i529.i.i, ptr %data.i523.i.i, align 4
  %call5.i530.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i529.i.i) #10
  br label %update_by_mnemonic.exit533.i.i

update_by_mnemonic.exit533.i.i:                   ; preds = %if.end.i531.i.i, %update_by_mnemonic.exit522.i.i.update_by_mnemonic.exit533.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i523.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i534.i.i) #10
  %386 = ptrtoint ptr %data.i534.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 -1, ptr %data.i534.i.i, align 4, !annotation !137
  %call.i535.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i534.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i535.i.i)
  %tobool.not.i536.i.i = icmp eq i32 %call.i535.i.i, 0
  br i1 %tobool.not.i536.i.i, label %if.end.i542.i.i, label %update_by_mnemonic.exit533.i.i.update_by_mnemonic.exit544.i.i_crit_edge

update_by_mnemonic.exit533.i.i.update_by_mnemonic.exit544.i.i_crit_edge: ; preds = %update_by_mnemonic.exit533.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit544.i.i

if.end.i542.i.i:                                  ; preds = %update_by_mnemonic.exit533.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %387 = ptrtoint ptr %data.i534.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %data.i534.i.i, align 4
  %and.i537.i.i = and i32 %388, -458753
  %shl3.i538.i.i = shl nuw nsw i32 %216, 16
  %or.i540.i.i = or i32 %and.i537.i.i, %shl3.i538.i.i
  store i32 %or.i540.i.i, ptr %data.i534.i.i, align 4
  %call5.i541.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i540.i.i) #10
  br label %update_by_mnemonic.exit544.i.i

update_by_mnemonic.exit544.i.i:                   ; preds = %if.end.i542.i.i, %update_by_mnemonic.exit533.i.i.update_by_mnemonic.exit544.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i534.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i545.i.i) #10
  %389 = ptrtoint ptr %data.i545.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 -1, ptr %data.i545.i.i, align 4, !annotation !137
  %call.i546.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i545.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i546.i.i)
  %tobool.not.i547.i.i = icmp eq i32 %call.i546.i.i, 0
  br i1 %tobool.not.i547.i.i, label %if.end.i553.i.i, label %update_by_mnemonic.exit544.i.i.update_by_mnemonic.exit555.i.i_crit_edge

update_by_mnemonic.exit544.i.i.update_by_mnemonic.exit555.i.i_crit_edge: ; preds = %update_by_mnemonic.exit544.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit555.i.i

if.end.i553.i.i:                                  ; preds = %update_by_mnemonic.exit544.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %390 = ptrtoint ptr %data.i545.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %data.i545.i.i, align 4
  %and.i548.i.i = and i32 %391, -7340033
  %shl3.i549.i.i = shl nuw nsw i32 %216, 20
  %or.i551.i.i = or i32 %and.i548.i.i, %shl3.i549.i.i
  store i32 %or.i551.i.i, ptr %data.i545.i.i, align 4
  %call5.i552.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i551.i.i) #10
  br label %update_by_mnemonic.exit555.i.i

update_by_mnemonic.exit555.i.i:                   ; preds = %if.end.i553.i.i, %update_by_mnemonic.exit544.i.i.update_by_mnemonic.exit555.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i545.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i556.i.i) #10
  %392 = ptrtoint ptr %data.i556.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 -1, ptr %data.i556.i.i, align 4, !annotation !137
  %call.i557.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i556.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i557.i.i)
  %tobool.not.i558.i.i = icmp eq i32 %call.i557.i.i, 0
  br i1 %tobool.not.i558.i.i, label %if.end.i564.i.i, label %update_by_mnemonic.exit555.i.i.update_by_mnemonic.exit566.i.i_crit_edge

update_by_mnemonic.exit555.i.i.update_by_mnemonic.exit566.i.i_crit_edge: ; preds = %update_by_mnemonic.exit555.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit566.i.i

if.end.i564.i.i:                                  ; preds = %update_by_mnemonic.exit555.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %393 = ptrtoint ptr %data.i556.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %data.i556.i.i, align 4
  %and.i559.i.i = and i32 %394, -117440513
  %shl3.i560.i.i = shl nuw nsw i32 %216, 24
  %or.i562.i.i = or i32 %and.i559.i.i, %shl3.i560.i.i
  store i32 %or.i562.i.i, ptr %data.i556.i.i, align 4
  %call5.i563.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i562.i.i) #10
  br label %update_by_mnemonic.exit566.i.i

update_by_mnemonic.exit566.i.i:                   ; preds = %if.end.i564.i.i, %update_by_mnemonic.exit555.i.i.update_by_mnemonic.exit566.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i556.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i567.i.i) #10
  %395 = ptrtoint ptr %data.i567.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 -1, ptr %data.i567.i.i, align 4, !annotation !137
  %call.i568.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047824, ptr noundef nonnull %data.i567.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i568.i.i)
  %tobool.not.i569.i.i = icmp eq i32 %call.i568.i.i, 0
  br i1 %tobool.not.i569.i.i, label %if.end.i575.i.i, label %update_by_mnemonic.exit566.i.i.update_by_mnemonic.exit577.i.i_crit_edge

update_by_mnemonic.exit566.i.i.update_by_mnemonic.exit577.i.i_crit_edge: ; preds = %update_by_mnemonic.exit566.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit577.i.i

if.end.i575.i.i:                                  ; preds = %update_by_mnemonic.exit566.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %396 = ptrtoint ptr %data.i567.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %data.i567.i.i, align 4
  %and.i570.i.i = and i32 %397, -1879048193
  %shl3.i571.i.i = shl nuw nsw i32 %216, 28
  %or.i573.i.i = or i32 %and.i570.i.i, %shl3.i571.i.i
  store i32 %or.i573.i.i, ptr %data.i567.i.i, align 4
  %call5.i574.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047824, i32 noundef %or.i573.i.i) #10
  br label %update_by_mnemonic.exit577.i.i

update_by_mnemonic.exit577.i.i:                   ; preds = %if.end.i575.i.i, %update_by_mnemonic.exit566.i.i.update_by_mnemonic.exit577.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i567.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i578.i.i) #10
  %398 = ptrtoint ptr %data.i578.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 -1, ptr %data.i578.i.i, align 4, !annotation !137
  %call.i579.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i578.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i579.i.i)
  %tobool.not.i580.i.i = icmp eq i32 %call.i579.i.i, 0
  br i1 %tobool.not.i580.i.i, label %if.end.i584.i.i, label %update_by_mnemonic.exit577.i.i.update_by_mnemonic.exit586.i.i_crit_edge

update_by_mnemonic.exit577.i.i.update_by_mnemonic.exit586.i.i_crit_edge: ; preds = %update_by_mnemonic.exit577.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit586.i.i

if.end.i584.i.i:                                  ; preds = %update_by_mnemonic.exit577.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %399 = ptrtoint ptr %data.i578.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %data.i578.i.i, align 4
  %and.i581.i.i = and i32 %400, -8
  %or.i582.i.i = or i32 %and.i581.i.i, %216
  store i32 %or.i582.i.i, ptr %data.i578.i.i, align 4
  %call5.i583.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i582.i.i) #10
  br label %update_by_mnemonic.exit586.i.i

update_by_mnemonic.exit586.i.i:                   ; preds = %if.end.i584.i.i, %update_by_mnemonic.exit577.i.i.update_by_mnemonic.exit586.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i578.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i587.i.i) #10
  %401 = ptrtoint ptr %data.i587.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 -1, ptr %data.i587.i.i, align 4, !annotation !137
  %call.i588.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i587.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i588.i.i)
  %tobool.not.i589.i.i = icmp eq i32 %call.i588.i.i, 0
  br i1 %tobool.not.i589.i.i, label %if.end.i595.i.i, label %update_by_mnemonic.exit586.i.i.update_by_mnemonic.exit597.i.i_crit_edge

update_by_mnemonic.exit586.i.i.update_by_mnemonic.exit597.i.i_crit_edge: ; preds = %update_by_mnemonic.exit586.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit597.i.i

if.end.i595.i.i:                                  ; preds = %update_by_mnemonic.exit586.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %402 = ptrtoint ptr %data.i587.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %data.i587.i.i, align 4
  %and.i590.i.i = and i32 %403, -113
  %shl3.i591.i.i = shl nuw nsw i32 %216, 4
  %or.i593.i.i = or i32 %and.i590.i.i, %shl3.i591.i.i
  store i32 %or.i593.i.i, ptr %data.i587.i.i, align 4
  %call5.i594.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i593.i.i) #10
  br label %update_by_mnemonic.exit597.i.i

update_by_mnemonic.exit597.i.i:                   ; preds = %if.end.i595.i.i, %update_by_mnemonic.exit586.i.i.update_by_mnemonic.exit597.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i587.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i598.i.i) #10
  %404 = ptrtoint ptr %data.i598.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 -1, ptr %data.i598.i.i, align 4, !annotation !137
  %call.i599.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i598.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i599.i.i)
  %tobool.not.i600.i.i = icmp eq i32 %call.i599.i.i, 0
  br i1 %tobool.not.i600.i.i, label %if.end.i606.i.i, label %update_by_mnemonic.exit597.i.i.update_by_mnemonic.exit608.i.i_crit_edge

update_by_mnemonic.exit597.i.i.update_by_mnemonic.exit608.i.i_crit_edge: ; preds = %update_by_mnemonic.exit597.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit608.i.i

if.end.i606.i.i:                                  ; preds = %update_by_mnemonic.exit597.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %405 = ptrtoint ptr %data.i598.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %data.i598.i.i, align 4
  %and.i601.i.i = and i32 %406, -1793
  %shl3.i602.i.i = shl nuw nsw i32 %216, 8
  %or.i604.i.i = or i32 %and.i601.i.i, %shl3.i602.i.i
  store i32 %or.i604.i.i, ptr %data.i598.i.i, align 4
  %call5.i605.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i604.i.i) #10
  br label %update_by_mnemonic.exit608.i.i

update_by_mnemonic.exit608.i.i:                   ; preds = %if.end.i606.i.i, %update_by_mnemonic.exit597.i.i.update_by_mnemonic.exit608.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i598.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i609.i.i) #10
  %407 = ptrtoint ptr %data.i609.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 -1, ptr %data.i609.i.i, align 4, !annotation !137
  %call.i610.i.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047820, ptr noundef nonnull %data.i609.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i610.i.i)
  %tobool.not.i611.i.i = icmp eq i32 %call.i610.i.i, 0
  br i1 %tobool.not.i611.i.i, label %if.end.i617.i.i, label %update_by_mnemonic.exit608.i.i.update_by_mnemonic.exit619.i.i_crit_edge

update_by_mnemonic.exit608.i.i.update_by_mnemonic.exit619.i.i_crit_edge: ; preds = %update_by_mnemonic.exit608.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit619.i.i

if.end.i617.i.i:                                  ; preds = %update_by_mnemonic.exit608.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %408 = ptrtoint ptr %data.i609.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %data.i609.i.i, align 4
  %and.i612.i.i = and i32 %409, -28673
  %shl3.i613.i.i = shl nuw nsw i32 %216, 12
  %or.i615.i.i = or i32 %and.i612.i.i, %shl3.i613.i.i
  store i32 %or.i615.i.i, ptr %data.i609.i.i, align 4
  %call5.i616.i.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047820, i32 noundef %or.i615.i.i) #10
  br label %update_by_mnemonic.exit619.i.i

update_by_mnemonic.exit619.i.i:                   ; preds = %if.end.i617.i.i, %update_by_mnemonic.exit608.i.i.update_by_mnemonic.exit619.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i609.i.i) #10
  br label %cfg_ts_pad_mux.exit.i

cfg_ts_pad_mux.exit.i:                            ; preds = %update_by_mnemonic.exit619.i.i, %update_by_mnemonic.exit500.i.i, %update_by_mnemonic.exit381.i.i, %update_by_mnemonic.exit128.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i251) #10
  %410 = ptrtoint ptr %data.i.i251 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 -1, ptr %data.i.i251, align 4, !annotation !137
  %call.i.i255 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708144, ptr noundef nonnull %data.i.i251) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i255)
  %tobool.not.i.i256 = icmp eq i32 %call.i.i255, 0
  br i1 %tobool.not.i.i256, label %if.end.i.i259, label %cfg_ts_pad_mux.exit.i.if.end6.i_crit_edge

cfg_ts_pad_mux.exit.i.if.end6.i_crit_edge:        ; preds = %cfg_ts_pad_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.end.i.i259:                                    ; preds = %cfg_ts_pad_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %411 = ptrtoint ptr %data.i.i251 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %data.i.i251, align 4
  %and.i.i257 = and i32 %412, -134217729
  store i32 %and.i.i257, ptr %data.i.i251, align 4
  %call5.i.i258 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708144, i32 noundef %and.i.i257) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i259, %cfg_ts_pad_mux.exit.i.if.end6.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i251) #10
  %div501.i = udiv i16 418, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div501.i to i32
  %413 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %base, align 4
  %chipversion.i = getelementptr inbounds %struct.mxl_base, ptr %414, i32 0, i32 7
  %415 = ptrtoint ptr %chipversion.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %chipversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %416)
  %cmp9.i = icmp ugt i32 %416, 1
  br i1 %cmp9.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.end6.i
  %arrayidx12.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_nco_clock_rate, i32 0, i32 %conv.i
  %417 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx12.i, align 4
  %lsb_pos.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_nco_clock_rate, i32 0, i32 %conv.i, i32 1
  %419 = ptrtoint ptr %lsb_pos.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %lsb_pos.i, align 4
  %num_of_bits.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_nco_clock_rate, i32 0, i32 %conv.i, i32 2
  %421 = ptrtoint ptr %num_of_bits.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %num_of_bits.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i245.i) #10
  %423 = ptrtoint ptr %data.i245.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 -1, ptr %data.i245.i, align 4, !annotation !137
  %call.i246.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %418, ptr noundef nonnull %data.i245.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246.i)
  %tobool.not.i247.i = icmp eq i32 %call.i246.i, 0
  br i1 %tobool.not.i247.i, label %if.end.i250.i, label %if.then11.i.update_by_mnemonic.exit252.i_crit_edge

if.then11.i.update_by_mnemonic.exit252.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit252.i

if.end.i250.i:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i8 %422 to i32
  %sub.i.i = sub nsw i32 32, %conv.i.i
  %shr.i.i = lshr i32 -1, %sub.i.i
  %conv1.i.i = zext i8 %420 to i32
  %shl.i.i = shl i32 %shr.i.i, %conv1.i.i
  %424 = ptrtoint ptr %data.i245.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %data.i245.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i248.i = and i32 %425, %neg.i.i
  %shl3.i.i = shl i32 %div.zext.i, %conv1.i.i
  %and4.i.i = and i32 %shl.i.i, %shl3.i.i
  %or.i.i261 = or i32 %and.i248.i, %and4.i.i
  store i32 %or.i.i261, ptr %data.i245.i, align 4
  %call5.i249.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %418, i32 noundef %or.i.i261) #10
  br label %update_by_mnemonic.exit252.i

update_by_mnemonic.exit252.i:                     ; preds = %if.end.i250.i, %if.then11.i.update_by_mnemonic.exit252.i_crit_edge
  %retval.0.i251.i = phi i32 [ %call5.i249.i, %if.end.i250.i ], [ -1, %if.then11.i.update_by_mnemonic.exit252.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i245.i) #10
  br label %if.then26.i

if.else16.i:                                      ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i253.i) #10
  %426 = ptrtoint ptr %data.i253.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 -1, ptr %data.i253.i, align 4, !annotation !137
  %call.i254.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1871708092, ptr noundef nonnull %data.i253.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254.i)
  %tobool.not.i255.i = icmp eq i32 %call.i254.i, 0
  br i1 %tobool.not.i255.i, label %if.end.i261.i, label %if.else16.i.update_by_mnemonic.exit263.i_crit_edge

if.else16.i.update_by_mnemonic.exit263.i_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit263.i

if.end.i261.i:                                    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  %427 = ptrtoint ptr %data.i253.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %data.i253.i, align 4
  %and.i256.i = and i32 %428, -16711681
  %shl3.i257.i = shl nuw nsw i32 %div.zext.i, 16
  %and4.i258.i = and i32 %shl3.i257.i, 16711680
  %or.i259.i = or i32 %and.i256.i, %and4.i258.i
  store i32 %or.i259.i, ptr %data.i253.i, align 4
  %call5.i260.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871708092, i32 noundef %or.i259.i) #10
  br label %update_by_mnemonic.exit263.i

update_by_mnemonic.exit263.i:                     ; preds = %if.end.i261.i, %if.else16.i.update_by_mnemonic.exit263.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i253.i) #10
  br label %if.then26.i

if.then26.i:                                      ; preds = %update_by_mnemonic.exit263.i, %update_by_mnemonic.exit252.i
  %status.0.i = phi i32 [ %retval.0.i251.i, %update_by_mnemonic.exit252.i ], [ 0, %update_by_mnemonic.exit263.i ]
  %arrayidx27.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_continuous_clock, i32 0, i32 %conv.i
  %429 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %arrayidx27.i, align 4
  %lsb_pos30.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_continuous_clock, i32 0, i32 %conv.i, i32 1
  %431 = ptrtoint ptr %lsb_pos30.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %lsb_pos30.i, align 4
  %num_of_bits32.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_continuous_clock, i32 0, i32 %conv.i, i32 2
  %433 = ptrtoint ptr %num_of_bits32.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %num_of_bits32.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i264.i) #10
  %435 = ptrtoint ptr %data.i264.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 -1, ptr %data.i264.i, align 4, !annotation !137
  %call.i265.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %430, ptr noundef nonnull %data.i264.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265.i)
  %tobool.not.i266.i = icmp eq i32 %call.i265.i, 0
  br i1 %tobool.not.i266.i, label %if.end.i278.i, label %if.then26.i.if.end37.i_crit_edge

if.then26.i.if.end37.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.end.i278.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i267.i = zext i8 %434 to i32
  %sub.i268.i = sub nsw i32 32, %conv.i267.i
  %shr.i269.i = lshr i32 -1, %sub.i268.i
  %conv1.i270.i = zext i8 %432 to i32
  %shl.i271.i = shl i32 %shr.i269.i, %conv1.i270.i
  %436 = ptrtoint ptr %data.i264.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %data.i264.i, align 4
  %neg.i272.i = xor i32 %shl.i271.i, -1
  %and.i273.i = and i32 %437, %neg.i272.i
  %shl3.i274.i = shl nuw i32 1, %conv1.i270.i
  %and4.i275.i = and i32 %shl.i271.i, %shl3.i274.i
  %or.i276.i = or i32 %and.i273.i, %and4.i275.i
  store i32 %or.i276.i, ptr %data.i264.i, align 4
  %call5.i277.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %430, i32 noundef %or.i276.i) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end.i278.i, %if.then26.i.if.end37.i_crit_edge
  %retval.0.i279.i = phi i32 [ %call5.i277.i, %if.end.i278.i ], [ -1, %if.then26.i.if.end37.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i264.i) #10
  %or34.i = or i32 %retval.0.i279.i, %status.0.i
  %arrayidx38.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_polarity, i32 0, i32 %conv.i
  %438 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx38.i, align 4
  %lsb_pos41.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_polarity, i32 0, i32 %conv.i, i32 1
  %440 = ptrtoint ptr %lsb_pos41.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %lsb_pos41.i, align 4
  %num_of_bits43.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_polarity, i32 0, i32 %conv.i, i32 2
  %442 = ptrtoint ptr %num_of_bits43.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %num_of_bits43.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i292.i) #10
  %444 = ptrtoint ptr %data.i292.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 -1, ptr %data.i292.i, align 4, !annotation !137
  %call.i293.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %439, ptr noundef nonnull %data.i292.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293.i)
  %tobool.not.i294.i = icmp eq i32 %call.i293.i, 0
  br i1 %tobool.not.i294.i, label %if.end.i306.i, label %if.end37.i.update_by_mnemonic.exit308.i_crit_edge

if.end37.i.update_by_mnemonic.exit308.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit308.i

if.end.i306.i:                                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i295.i = zext i8 %443 to i32
  %sub.i296.i = sub nsw i32 32, %conv.i295.i
  %shr.i297.i = lshr i32 -1, %sub.i296.i
  %conv1.i298.i = zext i8 %441 to i32
  %shl.i299.i = shl i32 %shr.i297.i, %conv1.i298.i
  %445 = ptrtoint ptr %data.i292.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %data.i292.i, align 4
  %neg.i300.i = xor i32 %shl.i299.i, -1
  %and.i301.i = and i32 %446, %neg.i300.i
  %shl3.i302.i = shl nuw i32 1, %conv1.i298.i
  %and4.i303.i = and i32 %shl.i299.i, %shl3.i302.i
  %or.i304.i = or i32 %and.i301.i, %and4.i303.i
  store i32 %or.i304.i, ptr %data.i292.i, align 4
  %call5.i305.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %439, i32 noundef %or.i304.i) #10
  br label %update_by_mnemonic.exit308.i

update_by_mnemonic.exit308.i:                     ; preds = %if.end.i306.i, %if.end37.i.update_by_mnemonic.exit308.i_crit_edge
  %retval.0.i307.i = phi i32 [ %call5.i305.i, %if.end.i306.i ], [ -1, %if.end37.i.update_by_mnemonic.exit308.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i292.i) #10
  %or45.i = or i32 %or34.i, %retval.0.i307.i
  %arrayidx46.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_valid_polarity, i32 0, i32 %conv.i
  %447 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %arrayidx46.i, align 4
  %lsb_pos49.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_valid_polarity, i32 0, i32 %conv.i, i32 1
  %449 = ptrtoint ptr %lsb_pos49.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %lsb_pos49.i, align 4
  %num_of_bits51.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_valid_polarity, i32 0, i32 %conv.i, i32 2
  %451 = ptrtoint ptr %num_of_bits51.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %num_of_bits51.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i309.i) #10
  %453 = ptrtoint ptr %data.i309.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 -1, ptr %data.i309.i, align 4, !annotation !137
  %call.i310.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %448, ptr noundef nonnull %data.i309.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310.i)
  %tobool.not.i311.i = icmp eq i32 %call.i310.i, 0
  br i1 %tobool.not.i311.i, label %if.end.i323.i, label %update_by_mnemonic.exit308.i.update_by_mnemonic.exit325.i_crit_edge

update_by_mnemonic.exit308.i.update_by_mnemonic.exit325.i_crit_edge: ; preds = %update_by_mnemonic.exit308.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit325.i

if.end.i323.i:                                    ; preds = %update_by_mnemonic.exit308.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i312.i = zext i8 %452 to i32
  %sub.i313.i = sub nsw i32 32, %conv.i312.i
  %shr.i314.i = lshr i32 -1, %sub.i313.i
  %conv1.i315.i = zext i8 %450 to i32
  %shl.i316.i = shl i32 %shr.i314.i, %conv1.i315.i
  %454 = ptrtoint ptr %data.i309.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %data.i309.i, align 4
  %neg.i317.i = xor i32 %shl.i316.i, -1
  %and.i318.i = and i32 %455, %neg.i317.i
  %shl3.i319.i = shl nuw i32 1, %conv1.i315.i
  %and4.i320.i = and i32 %shl.i316.i, %shl3.i319.i
  %or.i321.i = or i32 %and.i318.i, %and4.i320.i
  store i32 %or.i321.i, ptr %data.i309.i, align 4
  %call5.i322.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %448, i32 noundef %or.i321.i) #10
  br label %update_by_mnemonic.exit325.i

update_by_mnemonic.exit325.i:                     ; preds = %if.end.i323.i, %update_by_mnemonic.exit308.i.update_by_mnemonic.exit325.i_crit_edge
  %retval.0.i324.i = phi i32 [ %call5.i322.i, %if.end.i323.i ], [ -1, %update_by_mnemonic.exit308.i.update_by_mnemonic.exit325.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i309.i) #10
  %or53.i = or i32 %or45.i, %retval.0.i324.i
  %arrayidx54.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_clock_polarity, i32 0, i32 %conv.i
  %456 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx54.i, align 4
  %lsb_pos57.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_clock_polarity, i32 0, i32 %conv.i, i32 1
  %458 = ptrtoint ptr %lsb_pos57.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %lsb_pos57.i, align 4
  %num_of_bits59.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_clock_polarity, i32 0, i32 %conv.i, i32 2
  %460 = ptrtoint ptr %num_of_bits59.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %num_of_bits59.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i326.i) #10
  %462 = ptrtoint ptr %data.i326.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 -1, ptr %data.i326.i, align 4, !annotation !137
  %call.i327.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %457, ptr noundef nonnull %data.i326.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327.i)
  %tobool.not.i328.i = icmp eq i32 %call.i327.i, 0
  br i1 %tobool.not.i328.i, label %if.end.i340.i, label %update_by_mnemonic.exit325.i.update_by_mnemonic.exit342.i_crit_edge

update_by_mnemonic.exit325.i.update_by_mnemonic.exit342.i_crit_edge: ; preds = %update_by_mnemonic.exit325.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit342.i

if.end.i340.i:                                    ; preds = %update_by_mnemonic.exit325.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i329.i = zext i8 %461 to i32
  %sub.i330.i = sub nsw i32 32, %conv.i329.i
  %shr.i331.i = lshr i32 -1, %sub.i330.i
  %conv1.i332.i = zext i8 %459 to i32
  %shl.i333.i = shl i32 %shr.i331.i, %conv1.i332.i
  %463 = ptrtoint ptr %data.i326.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %data.i326.i, align 4
  %neg.i334.i = xor i32 %shl.i333.i, -1
  %and.i335.i = and i32 %464, %neg.i334.i
  store i32 %and.i335.i, ptr %data.i326.i, align 4
  %call5.i339.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %457, i32 noundef %and.i335.i) #10
  br label %update_by_mnemonic.exit342.i

update_by_mnemonic.exit342.i:                     ; preds = %if.end.i340.i, %update_by_mnemonic.exit325.i.update_by_mnemonic.exit342.i_crit_edge
  %retval.0.i341.i = phi i32 [ %call5.i339.i, %if.end.i340.i ], [ -1, %update_by_mnemonic.exit325.i.update_by_mnemonic.exit342.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i326.i) #10
  %or61.i = or i32 %or53.i, %retval.0.i341.i
  %arrayidx62.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_byte, i32 0, i32 %conv.i
  %465 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx62.i, align 4
  %lsb_pos65.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_byte, i32 0, i32 %conv.i, i32 1
  %467 = ptrtoint ptr %lsb_pos65.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %lsb_pos65.i, align 4
  %num_of_bits67.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_byte, i32 0, i32 %conv.i, i32 2
  %469 = ptrtoint ptr %num_of_bits67.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %num_of_bits67.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i343.i) #10
  %471 = ptrtoint ptr %data.i343.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 -1, ptr %data.i343.i, align 4, !annotation !137
  %call.i344.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %466, ptr noundef nonnull %data.i343.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344.i)
  %tobool.not.i345.i = icmp eq i32 %call.i344.i, 0
  br i1 %tobool.not.i345.i, label %if.end.i357.i, label %update_by_mnemonic.exit342.i.update_by_mnemonic.exit359.i_crit_edge

update_by_mnemonic.exit342.i.update_by_mnemonic.exit359.i_crit_edge: ; preds = %update_by_mnemonic.exit342.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit359.i

if.end.i357.i:                                    ; preds = %update_by_mnemonic.exit342.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i346.i = zext i8 %470 to i32
  %sub.i347.i = sub nsw i32 32, %conv.i346.i
  %shr.i348.i = lshr i32 -1, %sub.i347.i
  %conv1.i349.i = zext i8 %468 to i32
  %shl.i350.i = shl i32 %shr.i348.i, %conv1.i349.i
  %472 = ptrtoint ptr %data.i343.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %data.i343.i, align 4
  %neg.i351.i = xor i32 %shl.i350.i, -1
  %and.i352.i = and i32 %473, %neg.i351.i
  store i32 %and.i352.i, ptr %data.i343.i, align 4
  %call5.i356.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %466, i32 noundef %and.i352.i) #10
  br label %update_by_mnemonic.exit359.i

update_by_mnemonic.exit359.i:                     ; preds = %if.end.i357.i, %update_by_mnemonic.exit342.i.update_by_mnemonic.exit359.i_crit_edge
  %retval.0.i358.i = phi i32 [ %call5.i356.i, %if.end.i357.i ], [ -1, %update_by_mnemonic.exit342.i.update_by_mnemonic.exit359.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i343.i) #10
  %or69.i = or i32 %or61.i, %retval.0.i358.i
  %arrayidx70.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_ts_clock_phase, i32 0, i32 %conv.i
  %474 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx70.i, align 4
  %lsb_pos73.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_ts_clock_phase, i32 0, i32 %conv.i, i32 1
  %476 = ptrtoint ptr %lsb_pos73.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %lsb_pos73.i, align 4
  %num_of_bits75.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_ts_clock_phase, i32 0, i32 %conv.i, i32 2
  %478 = ptrtoint ptr %num_of_bits75.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %num_of_bits75.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i360.i) #10
  %480 = ptrtoint ptr %data.i360.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 -1, ptr %data.i360.i, align 4, !annotation !137
  %call.i361.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %475, ptr noundef nonnull %data.i360.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i361.i)
  %tobool.not.i362.i = icmp eq i32 %call.i361.i, 0
  br i1 %tobool.not.i362.i, label %if.end.i374.i, label %update_by_mnemonic.exit359.i.update_by_mnemonic.exit376.i_crit_edge

update_by_mnemonic.exit359.i.update_by_mnemonic.exit376.i_crit_edge: ; preds = %update_by_mnemonic.exit359.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit376.i

if.end.i374.i:                                    ; preds = %update_by_mnemonic.exit359.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i363.i = zext i8 %479 to i32
  %sub.i364.i = sub nsw i32 32, %conv.i363.i
  %shr.i365.i = lshr i32 -1, %sub.i364.i
  %conv1.i366.i = zext i8 %477 to i32
  %shl.i367.i = shl i32 %shr.i365.i, %conv1.i366.i
  %481 = ptrtoint ptr %data.i360.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %data.i360.i, align 4
  %neg.i368.i = xor i32 %shl.i367.i, -1
  %and.i369.i = and i32 %482, %neg.i368.i
  store i32 %and.i369.i, ptr %data.i360.i, align 4
  %call5.i373.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %475, i32 noundef %and.i369.i) #10
  br label %update_by_mnemonic.exit376.i

update_by_mnemonic.exit376.i:                     ; preds = %if.end.i374.i, %update_by_mnemonic.exit359.i.update_by_mnemonic.exit376.i_crit_edge
  %retval.0.i375.i = phi i32 [ %call5.i373.i, %if.end.i374.i ], [ -1, %update_by_mnemonic.exit359.i.update_by_mnemonic.exit376.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i360.i) #10
  %or77.i = or i32 %or69.i, %retval.0.i375.i
  %arrayidx78.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_lsb_first, i32 0, i32 %conv.i
  %483 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %arrayidx78.i, align 4
  %lsb_pos81.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_lsb_first, i32 0, i32 %conv.i, i32 1
  %485 = ptrtoint ptr %lsb_pos81.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %lsb_pos81.i, align 4
  %num_of_bits83.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_lsb_first, i32 0, i32 %conv.i, i32 2
  %487 = ptrtoint ptr %num_of_bits83.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %num_of_bits83.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i377.i) #10
  %489 = ptrtoint ptr %data.i377.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 -1, ptr %data.i377.i, align 4, !annotation !137
  %call.i378.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %484, ptr noundef nonnull %data.i377.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378.i)
  %tobool.not.i379.i = icmp eq i32 %call.i378.i, 0
  br i1 %tobool.not.i379.i, label %if.end.i391.i, label %update_by_mnemonic.exit376.i.sw.default.i_crit_edge

update_by_mnemonic.exit376.i.sw.default.i_crit_edge: ; preds = %update_by_mnemonic.exit376.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

if.end.i391.i:                                    ; preds = %update_by_mnemonic.exit376.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i380.i = zext i8 %488 to i32
  %sub.i381.i = sub nsw i32 32, %conv.i380.i
  %shr.i382.i = lshr i32 -1, %sub.i381.i
  %conv1.i383.i = zext i8 %486 to i32
  %shl.i384.i = shl i32 %shr.i382.i, %conv1.i383.i
  %490 = ptrtoint ptr %data.i377.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %data.i377.i, align 4
  %neg.i385.i = xor i32 %shl.i384.i, -1
  %and.i386.i = and i32 %491, %neg.i385.i
  store i32 %and.i386.i, ptr %data.i377.i, align 4
  %call5.i390.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %484, i32 noundef %and.i386.i) #10
  br label %sw.default.i

sw.default.i:                                     ; preds = %if.end.i391.i, %update_by_mnemonic.exit376.i.sw.default.i_crit_edge
  %retval.0.i392.i = phi i32 [ %call5.i390.i, %if.end.i391.i ], [ -1, %update_by_mnemonic.exit376.i.sw.default.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i377.i) #10
  %or85.i = or i32 %or77.i, %retval.0.i392.i
  %arrayidx120.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_sync, i32 0, i32 %conv.i
  %492 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx120.i, align 4
  %lsb_pos123.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_sync, i32 0, i32 %conv.i, i32 1
  %494 = ptrtoint ptr %lsb_pos123.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %lsb_pos123.i, align 4
  %num_of_bits125.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_sync, i32 0, i32 %conv.i, i32 2
  %496 = ptrtoint ptr %num_of_bits125.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %num_of_bits125.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i456.i) #10
  %498 = ptrtoint ptr %data.i456.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 -1, ptr %data.i456.i, align 4, !annotation !137
  %call.i457.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %493, ptr noundef nonnull %data.i456.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457.i)
  %tobool.not.i458.i = icmp eq i32 %call.i457.i, 0
  br i1 %tobool.not.i458.i, label %if.end.i467.i, label %sw.default.i.update_by_mnemonic.exit469.i_crit_edge

sw.default.i.update_by_mnemonic.exit469.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit469.i

if.end.i467.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i459.i = zext i8 %497 to i32
  %sub.i460.i = sub nsw i32 32, %conv.i459.i
  %shr.i461.i = lshr i32 -1, %sub.i460.i
  %conv1.i462.i = zext i8 %495 to i32
  %shl.i463.i = shl i32 %shr.i461.i, %conv1.i462.i
  %499 = ptrtoint ptr %data.i456.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %data.i456.i, align 4
  %neg.i464.i = xor i32 %shl.i463.i, -1
  %and.i465.i = and i32 %500, %neg.i464.i
  store i32 %and.i465.i, ptr %data.i456.i, align 4
  %call5.i466.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %493, i32 noundef %and.i465.i) #10
  br label %update_by_mnemonic.exit469.i

update_by_mnemonic.exit469.i:                     ; preds = %if.end.i467.i, %sw.default.i.update_by_mnemonic.exit469.i_crit_edge
  %retval.0.i468.i = phi i32 [ %call5.i466.i, %if.end.i467.i ], [ -1, %sw.default.i.update_by_mnemonic.exit469.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i456.i) #10
  %or127.i = or i32 %or85.i, %retval.0.i468.i
  %arrayidx128.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_valid, i32 0, i32 %conv.i
  %501 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx128.i, align 4
  %lsb_pos131.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_valid, i32 0, i32 %conv.i, i32 1
  %503 = ptrtoint ptr %lsb_pos131.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %lsb_pos131.i, align 4
  %num_of_bits133.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_valid, i32 0, i32 %conv.i, i32 2
  %505 = ptrtoint ptr %num_of_bits133.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %num_of_bits133.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i470.i) #10
  %507 = ptrtoint ptr %data.i470.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 -1, ptr %data.i470.i, align 4, !annotation !137
  %call.i471.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %502, ptr noundef nonnull %data.i470.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471.i)
  %tobool.not.i472.i = icmp eq i32 %call.i471.i, 0
  br i1 %tobool.not.i472.i, label %if.end.i481.i, label %update_by_mnemonic.exit469.i.if.then139.i_crit_edge

update_by_mnemonic.exit469.i.if.then139.i_crit_edge: ; preds = %update_by_mnemonic.exit469.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139.i

if.end.i481.i:                                    ; preds = %update_by_mnemonic.exit469.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i473.i = zext i8 %506 to i32
  %sub.i474.i = sub nsw i32 32, %conv.i473.i
  %shr.i475.i = lshr i32 -1, %sub.i474.i
  %conv1.i476.i = zext i8 %504 to i32
  %shl.i477.i = shl i32 %shr.i475.i, %conv1.i476.i
  %508 = ptrtoint ptr %data.i470.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %data.i470.i, align 4
  %neg.i478.i = xor i32 %shl.i477.i, -1
  %and.i479.i = and i32 %509, %neg.i478.i
  store i32 %and.i479.i, ptr %data.i470.i, align 4
  %call5.i480.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %502, i32 noundef %and.i479.i) #10
  br label %if.then139.i

if.then139.i:                                     ; preds = %if.end.i481.i, %update_by_mnemonic.exit469.i.if.then139.i_crit_edge
  %retval.0.i482.i = phi i32 [ %call5.i480.i, %if.end.i481.i ], [ -1, %update_by_mnemonic.exit469.i.if.then139.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i470.i) #10
  %or135.i = or i32 %or127.i, %retval.0.i482.i
  %arrayidx140.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_enable_output, i32 0, i32 %conv.i
  %510 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx140.i, align 4
  %lsb_pos143.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_enable_output, i32 0, i32 %conv.i, i32 1
  %512 = ptrtoint ptr %lsb_pos143.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %lsb_pos143.i, align 4
  %num_of_bits145.i = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_enable_output, i32 0, i32 %conv.i, i32 2
  %514 = ptrtoint ptr %num_of_bits145.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %num_of_bits145.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i484.i) #10
  %516 = ptrtoint ptr %data.i484.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 -1, ptr %data.i484.i, align 4, !annotation !137
  %call.i485.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %511, ptr noundef nonnull %data.i484.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i485.i)
  %tobool.not.i486.i = icmp eq i32 %call.i485.i, 0
  br i1 %tobool.not.i486.i, label %if.end.i498.i, label %if.then139.i.config_ts.exit_crit_edge

if.then139.i.config_ts.exit_crit_edge:            ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_ts.exit

if.end.i498.i:                                    ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i487.i = zext i8 %515 to i32
  %sub.i488.i = sub nsw i32 32, %conv.i487.i
  %shr.i489.i = lshr i32 -1, %sub.i488.i
  %conv1.i490.i = zext i8 %513 to i32
  %shl.i491.i = shl i32 %shr.i489.i, %conv1.i490.i
  %517 = ptrtoint ptr %data.i484.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %data.i484.i, align 4
  %neg.i492.i = xor i32 %shl.i491.i, -1
  %and.i493.i = and i32 %518, %neg.i492.i
  %shl3.i494.i = shl nuw i32 1, %conv1.i490.i
  %and4.i495.i = and i32 %shl.i491.i, %shl3.i494.i
  %or.i496.i = or i32 %and.i493.i, %and4.i495.i
  store i32 %or.i496.i, ptr %data.i484.i, align 4
  %call5.i497.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %511, i32 noundef %or.i496.i) #10
  br label %config_ts.exit

config_ts.exit:                                   ; preds = %if.end.i498.i, %if.then139.i.config_ts.exit_crit_edge
  %retval.0.i499.i = phi i32 [ %call5.i497.i, %if.end.i498.i ], [ -1, %if.then139.i.config_ts.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i484.i) #10
  %or148.i = or i32 %or135.i, %retval.0.i499.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or148.i)
  %tobool118.not = icmp eq i32 %or148.i, 0
  br i1 %tobool118.not, label %for.cond, label %config_ts.exit.cleanup_crit_edge

config_ts.exit.cleanup_crit_edge:                 ; preds = %config_ts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %config_mux.exit.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i266) #10
  %519 = ptrtoint ptr %val.i266 to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 -1, ptr %val.i266, align 4, !annotation !137
  %call.i267 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047788, ptr noundef nonnull %val.i266) #10
  %520 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %i2cdev.i, align 4
  %522 = ptrtoint ptr %val.i266 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %val.i266, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %521, ptr noundef nonnull @.str.49, i32 noundef %523) #14
  %524 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %i2cdev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %525, ptr noundef nonnull @.str.52, i32 noundef 1) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i265) #10
  %526 = ptrtoint ptr %data.i.i265 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 -1, ptr %data.i.i265, align 4, !annotation !137
  %call.i.i269 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047788, ptr noundef nonnull %data.i.i265) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i269)
  %tobool.not.i.i270 = icmp eq i32 %call.i.i269, 0
  br i1 %tobool.not.i.i270, label %if.end.i.i274, label %for.end.update_by_mnemonic.exit.i277_crit_edge

for.end.update_by_mnemonic.exit.i277_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit.i277

if.end.i.i274:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %527 = ptrtoint ptr %data.i.i265 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %data.i.i265, align 4
  %and.i.i271 = and i32 %528, -8
  %or.i.i272 = or i32 %and.i.i271, 1
  store i32 %or.i.i272, ptr %data.i.i265, align 4
  %call5.i.i273 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047788, i32 noundef %or.i.i272) #10
  br label %update_by_mnemonic.exit.i277

update_by_mnemonic.exit.i277:                     ; preds = %if.end.i.i274, %for.end.update_by_mnemonic.exit.i277_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i265) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i1.i264) #10
  %529 = ptrtoint ptr %data.i1.i264 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 -1, ptr %data.i1.i264, align 4, !annotation !137
  %call.i2.i275 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047788, ptr noundef nonnull %data.i1.i264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i275)
  %tobool.not.i3.i276 = icmp eq i32 %call.i2.i275, 0
  br i1 %tobool.not.i3.i276, label %if.end.i7.i, label %update_by_mnemonic.exit.i277.update_by_mnemonic.exit9.i_crit_edge

update_by_mnemonic.exit.i277.update_by_mnemonic.exit9.i_crit_edge: ; preds = %update_by_mnemonic.exit.i277
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit9.i

if.end.i7.i:                                      ; preds = %update_by_mnemonic.exit.i277
  call void @__sanitizer_cov_trace_pc() #12
  %530 = ptrtoint ptr %data.i1.i264 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %data.i1.i264, align 4
  %and.i4.i278 = and i32 %531, -7340033
  %or.i5.i = or i32 %and.i4.i278, 1048576
  store i32 %or.i5.i, ptr %data.i1.i264, align 4
  %call5.i6.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047788, i32 noundef %or.i5.i) #10
  br label %update_by_mnemonic.exit9.i

update_by_mnemonic.exit9.i:                       ; preds = %if.end.i7.i, %update_by_mnemonic.exit.i277.update_by_mnemonic.exit9.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1.i264) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i10.i) #10
  %532 = ptrtoint ptr %data.i10.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 -1, ptr %data.i10.i, align 4, !annotation !137
  %call.i11.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047788, ptr noundef nonnull %data.i10.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i12.i, label %if.end.i16.i, label %update_by_mnemonic.exit9.i.update_by_mnemonic.exit18.i_crit_edge

update_by_mnemonic.exit9.i.update_by_mnemonic.exit18.i_crit_edge: ; preds = %update_by_mnemonic.exit9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit18.i

if.end.i16.i:                                     ; preds = %update_by_mnemonic.exit9.i
  call void @__sanitizer_cov_trace_pc() #12
  %533 = ptrtoint ptr %data.i10.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %data.i10.i, align 4
  %and.i13.i = and i32 %534, -117440513
  %or.i14.i = or i32 %and.i13.i, 16777216
  store i32 %or.i14.i, ptr %data.i10.i, align 4
  %call5.i15.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047788, i32 noundef %or.i14.i) #10
  br label %update_by_mnemonic.exit18.i

update_by_mnemonic.exit18.i:                      ; preds = %if.end.i16.i, %update_by_mnemonic.exit9.i.update_by_mnemonic.exit18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i10.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i19.i) #10
  %535 = ptrtoint ptr %data.i19.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 -1, ptr %data.i19.i, align 4, !annotation !137
  %call.i20.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047784, ptr noundef nonnull %data.i19.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %if.end.i25.i, label %update_by_mnemonic.exit18.i.update_by_mnemonic.exit27.i_crit_edge

update_by_mnemonic.exit18.i.update_by_mnemonic.exit27.i_crit_edge: ; preds = %update_by_mnemonic.exit18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit27.i

if.end.i25.i:                                     ; preds = %update_by_mnemonic.exit18.i
  call void @__sanitizer_cov_trace_pc() #12
  %536 = ptrtoint ptr %data.i19.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %data.i19.i, align 4
  %and.i22.i = and i32 %537, -28673
  %or.i23.i = or i32 %and.i22.i, 4096
  store i32 %or.i23.i, ptr %data.i19.i, align 4
  %call5.i24.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047784, i32 noundef %or.i23.i) #10
  br label %update_by_mnemonic.exit27.i

update_by_mnemonic.exit27.i:                      ; preds = %if.end.i25.i, %update_by_mnemonic.exit18.i.update_by_mnemonic.exit27.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i19.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i28.i) #10
  %538 = ptrtoint ptr %data.i28.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 -1, ptr %data.i28.i, align 4, !annotation !137
  %call.i29.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047784, ptr noundef nonnull %data.i28.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %if.end.i34.i, label %update_by_mnemonic.exit27.i.update_by_mnemonic.exit36.i_crit_edge

update_by_mnemonic.exit27.i.update_by_mnemonic.exit36.i_crit_edge: ; preds = %update_by_mnemonic.exit27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit36.i

if.end.i34.i:                                     ; preds = %update_by_mnemonic.exit27.i
  call void @__sanitizer_cov_trace_pc() #12
  %539 = ptrtoint ptr %data.i28.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %data.i28.i, align 4
  %and.i31.i = and i32 %540, -458753
  %or.i32.i = or i32 %and.i31.i, 65536
  store i32 %or.i32.i, ptr %data.i28.i, align 4
  %call5.i33.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047784, i32 noundef %or.i32.i) #10
  br label %update_by_mnemonic.exit36.i

update_by_mnemonic.exit36.i:                      ; preds = %if.end.i34.i, %update_by_mnemonic.exit27.i.update_by_mnemonic.exit36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i28.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i37.i) #10
  %541 = ptrtoint ptr %data.i37.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 -1, ptr %data.i37.i, align 4, !annotation !137
  %call.i38.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047784, ptr noundef nonnull %data.i37.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool.not.i39.i, label %if.end.i43.i, label %update_by_mnemonic.exit36.i.update_by_mnemonic.exit45.i_crit_edge

update_by_mnemonic.exit36.i.update_by_mnemonic.exit45.i_crit_edge: ; preds = %update_by_mnemonic.exit36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit45.i

if.end.i43.i:                                     ; preds = %update_by_mnemonic.exit36.i
  call void @__sanitizer_cov_trace_pc() #12
  %542 = ptrtoint ptr %data.i37.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %data.i37.i, align 4
  %and.i40.i = and i32 %543, -7340033
  %or.i41.i = or i32 %and.i40.i, 1048576
  store i32 %or.i41.i, ptr %data.i37.i, align 4
  %call5.i42.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047784, i32 noundef %or.i41.i) #10
  br label %update_by_mnemonic.exit45.i

update_by_mnemonic.exit45.i:                      ; preds = %if.end.i43.i, %update_by_mnemonic.exit36.i.update_by_mnemonic.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i37.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i46.i263) #10
  %544 = ptrtoint ptr %data.i46.i263 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 -1, ptr %data.i46.i263, align 4, !annotation !137
  %call.i47.i279 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047784, ptr noundef nonnull %data.i46.i263) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i279)
  %tobool.not.i48.i280 = icmp eq i32 %call.i47.i279, 0
  br i1 %tobool.not.i48.i280, label %if.end.i52.i, label %update_by_mnemonic.exit45.i.update_by_mnemonic.exit54.i_crit_edge

update_by_mnemonic.exit45.i.update_by_mnemonic.exit54.i_crit_edge: ; preds = %update_by_mnemonic.exit45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit54.i

if.end.i52.i:                                     ; preds = %update_by_mnemonic.exit45.i
  call void @__sanitizer_cov_trace_pc() #12
  %545 = ptrtoint ptr %data.i46.i263 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %data.i46.i263, align 4
  %and.i49.i281 = and i32 %546, -117440513
  %or.i50.i = or i32 %and.i49.i281, 16777216
  store i32 %or.i50.i, ptr %data.i46.i263, align 4
  %call5.i51.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047784, i32 noundef %or.i50.i) #10
  br label %update_by_mnemonic.exit54.i

update_by_mnemonic.exit54.i:                      ; preds = %if.end.i52.i, %update_by_mnemonic.exit45.i.update_by_mnemonic.exit54.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i46.i263) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i55.i) #10
  %547 = ptrtoint ptr %data.i55.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 -1, ptr %data.i55.i, align 4, !annotation !137
  %call.i56.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047780, ptr noundef nonnull %data.i55.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not.i57.i, label %if.end.i61.i, label %update_by_mnemonic.exit54.i.update_by_mnemonic.exit63.i_crit_edge

update_by_mnemonic.exit54.i.update_by_mnemonic.exit63.i_crit_edge: ; preds = %update_by_mnemonic.exit54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit63.i

if.end.i61.i:                                     ; preds = %update_by_mnemonic.exit54.i
  call void @__sanitizer_cov_trace_pc() #12
  %548 = ptrtoint ptr %data.i55.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %data.i55.i, align 4
  %and.i58.i = and i32 %549, -8
  %or.i59.i = or i32 %and.i58.i, 1
  store i32 %or.i59.i, ptr %data.i55.i, align 4
  %call5.i60.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047780, i32 noundef %or.i59.i) #10
  br label %update_by_mnemonic.exit63.i

update_by_mnemonic.exit63.i:                      ; preds = %if.end.i61.i, %update_by_mnemonic.exit54.i.update_by_mnemonic.exit63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i55.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i64.i) #10
  %550 = ptrtoint ptr %data.i64.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 -1, ptr %data.i64.i, align 4, !annotation !137
  %call.i65.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047780, ptr noundef nonnull %data.i64.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool.not.i66.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool.not.i66.i, label %if.end.i70.i, label %update_by_mnemonic.exit63.i.update_by_mnemonic.exit72.i_crit_edge

update_by_mnemonic.exit63.i.update_by_mnemonic.exit72.i_crit_edge: ; preds = %update_by_mnemonic.exit63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit72.i

if.end.i70.i:                                     ; preds = %update_by_mnemonic.exit63.i
  call void @__sanitizer_cov_trace_pc() #12
  %551 = ptrtoint ptr %data.i64.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %data.i64.i, align 4
  %and.i67.i = and i32 %552, -113
  %or.i68.i = or i32 %and.i67.i, 16
  store i32 %or.i68.i, ptr %data.i64.i, align 4
  %call5.i69.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047780, i32 noundef %or.i68.i) #10
  br label %update_by_mnemonic.exit72.i

update_by_mnemonic.exit72.i:                      ; preds = %if.end.i70.i, %update_by_mnemonic.exit63.i.update_by_mnemonic.exit72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i64.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i73.i) #10
  %553 = ptrtoint ptr %data.i73.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 -1, ptr %data.i73.i, align 4, !annotation !137
  %call.i74.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047780, ptr noundef nonnull %data.i73.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool.not.i75.i, label %if.end.i79.i, label %update_by_mnemonic.exit72.i.update_by_mnemonic.exit81.i_crit_edge

update_by_mnemonic.exit72.i.update_by_mnemonic.exit81.i_crit_edge: ; preds = %update_by_mnemonic.exit72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit81.i

if.end.i79.i:                                     ; preds = %update_by_mnemonic.exit72.i
  call void @__sanitizer_cov_trace_pc() #12
  %554 = ptrtoint ptr %data.i73.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %data.i73.i, align 4
  %and.i76.i = and i32 %555, -1793
  %or.i77.i = or i32 %and.i76.i, 256
  store i32 %or.i77.i, ptr %data.i73.i, align 4
  %call5.i78.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047780, i32 noundef %or.i77.i) #10
  br label %update_by_mnemonic.exit81.i

update_by_mnemonic.exit81.i:                      ; preds = %if.end.i79.i, %update_by_mnemonic.exit72.i.update_by_mnemonic.exit81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i73.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i82.i) #10
  %556 = ptrtoint ptr %data.i82.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 -1, ptr %data.i82.i, align 4, !annotation !137
  %call.i83.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047780, ptr noundef nonnull %data.i82.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool.not.i84.i, label %if.end.i88.i, label %update_by_mnemonic.exit81.i.update_by_mnemonic.exit90.i_crit_edge

update_by_mnemonic.exit81.i.update_by_mnemonic.exit90.i_crit_edge: ; preds = %update_by_mnemonic.exit81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit90.i

if.end.i88.i:                                     ; preds = %update_by_mnemonic.exit81.i
  call void @__sanitizer_cov_trace_pc() #12
  %557 = ptrtoint ptr %data.i82.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %data.i82.i, align 4
  %and.i85.i = and i32 %558, -117440513
  %or.i86.i = or i32 %and.i85.i, 16777216
  store i32 %or.i86.i, ptr %data.i82.i, align 4
  %call5.i87.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047780, i32 noundef %or.i86.i) #10
  br label %update_by_mnemonic.exit90.i

update_by_mnemonic.exit90.i:                      ; preds = %if.end.i88.i, %update_by_mnemonic.exit81.i.update_by_mnemonic.exit90.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i82.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i91.i) #10
  %559 = ptrtoint ptr %data.i91.i to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 -1, ptr %data.i91.i, align 4, !annotation !137
  %call.i92.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047780, ptr noundef nonnull %data.i91.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not.i93.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not.i93.i, label %if.end.i97.i, label %update_by_mnemonic.exit90.i.update_by_mnemonic.exit99.i_crit_edge

update_by_mnemonic.exit90.i.update_by_mnemonic.exit99.i_crit_edge: ; preds = %update_by_mnemonic.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit99.i

if.end.i97.i:                                     ; preds = %update_by_mnemonic.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  %560 = ptrtoint ptr %data.i91.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %data.i91.i, align 4
  %and.i94.i = and i32 %561, -1879048193
  %or.i95.i = or i32 %and.i94.i, 268435456
  store i32 %or.i95.i, ptr %data.i91.i, align 4
  %call5.i96.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047780, i32 noundef %or.i95.i) #10
  br label %update_by_mnemonic.exit99.i

update_by_mnemonic.exit99.i:                      ; preds = %if.end.i97.i, %update_by_mnemonic.exit90.i.update_by_mnemonic.exit99.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i91.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i100.i) #10
  %562 = ptrtoint ptr %data.i100.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 -1, ptr %data.i100.i, align 4, !annotation !137
  %call.i101.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047776, ptr noundef nonnull %data.i100.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool.not.i102.i, label %if.end.i106.i, label %update_by_mnemonic.exit99.i.update_by_mnemonic.exit108.i_crit_edge

update_by_mnemonic.exit99.i.update_by_mnemonic.exit108.i_crit_edge: ; preds = %update_by_mnemonic.exit99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit108.i

if.end.i106.i:                                    ; preds = %update_by_mnemonic.exit99.i
  call void @__sanitizer_cov_trace_pc() #12
  %563 = ptrtoint ptr %data.i100.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %data.i100.i, align 4
  %and.i103.i = and i32 %564, -8
  %or.i104.i = or i32 %and.i103.i, 1
  store i32 %or.i104.i, ptr %data.i100.i, align 4
  %call5.i105.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047776, i32 noundef %or.i104.i) #10
  br label %update_by_mnemonic.exit108.i

update_by_mnemonic.exit108.i:                     ; preds = %if.end.i106.i, %update_by_mnemonic.exit99.i.update_by_mnemonic.exit108.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i100.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i109.i) #10
  %565 = ptrtoint ptr %data.i109.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 -1, ptr %data.i109.i, align 4, !annotation !137
  %call.i110.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047776, ptr noundef nonnull %data.i109.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %tobool.not.i111.i = icmp eq i32 %call.i110.i, 0
  br i1 %tobool.not.i111.i, label %if.end.i115.i, label %update_by_mnemonic.exit108.i.update_by_mnemonic.exit117.i_crit_edge

update_by_mnemonic.exit108.i.update_by_mnemonic.exit117.i_crit_edge: ; preds = %update_by_mnemonic.exit108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit117.i

if.end.i115.i:                                    ; preds = %update_by_mnemonic.exit108.i
  call void @__sanitizer_cov_trace_pc() #12
  %566 = ptrtoint ptr %data.i109.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %data.i109.i, align 4
  %and.i112.i = and i32 %567, -113
  %or.i113.i = or i32 %and.i112.i, 16
  store i32 %or.i113.i, ptr %data.i109.i, align 4
  %call5.i114.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047776, i32 noundef %or.i113.i) #10
  br label %update_by_mnemonic.exit117.i

update_by_mnemonic.exit117.i:                     ; preds = %if.end.i115.i, %update_by_mnemonic.exit108.i.update_by_mnemonic.exit117.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i109.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i118.i) #10
  %568 = ptrtoint ptr %data.i118.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 -1, ptr %data.i118.i, align 4, !annotation !137
  %call.i119.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047776, ptr noundef nonnull %data.i118.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %tobool.not.i120.i = icmp eq i32 %call.i119.i, 0
  br i1 %tobool.not.i120.i, label %if.end.i124.i, label %update_by_mnemonic.exit117.i.update_by_mnemonic.exit126.i_crit_edge

update_by_mnemonic.exit117.i.update_by_mnemonic.exit126.i_crit_edge: ; preds = %update_by_mnemonic.exit117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit126.i

if.end.i124.i:                                    ; preds = %update_by_mnemonic.exit117.i
  call void @__sanitizer_cov_trace_pc() #12
  %569 = ptrtoint ptr %data.i118.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %data.i118.i, align 4
  %and.i121.i = and i32 %570, -7340033
  %or.i122.i = or i32 %and.i121.i, 1048576
  store i32 %or.i122.i, ptr %data.i118.i, align 4
  %call5.i123.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047776, i32 noundef %or.i122.i) #10
  br label %update_by_mnemonic.exit126.i

update_by_mnemonic.exit126.i:                     ; preds = %if.end.i124.i, %update_by_mnemonic.exit117.i.update_by_mnemonic.exit126.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i118.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i127.i) #10
  %571 = ptrtoint ptr %data.i127.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 -1, ptr %data.i127.i, align 4, !annotation !137
  %call.i128.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047776, ptr noundef nonnull %data.i127.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %tobool.not.i129.i = icmp eq i32 %call.i128.i, 0
  br i1 %tobool.not.i129.i, label %if.end.i133.i, label %update_by_mnemonic.exit126.i.update_by_mnemonic.exit135.i_crit_edge

update_by_mnemonic.exit126.i.update_by_mnemonic.exit135.i_crit_edge: ; preds = %update_by_mnemonic.exit126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit135.i

if.end.i133.i:                                    ; preds = %update_by_mnemonic.exit126.i
  call void @__sanitizer_cov_trace_pc() #12
  %572 = ptrtoint ptr %data.i127.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %data.i127.i, align 4
  %and.i130.i = and i32 %573, -117440513
  %or.i131.i = or i32 %and.i130.i, 16777216
  store i32 %or.i131.i, ptr %data.i127.i, align 4
  %call5.i132.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047776, i32 noundef %or.i131.i) #10
  br label %update_by_mnemonic.exit135.i

update_by_mnemonic.exit135.i:                     ; preds = %if.end.i133.i, %update_by_mnemonic.exit126.i.update_by_mnemonic.exit135.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i127.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i136.i) #10
  %574 = ptrtoint ptr %data.i136.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 -1, ptr %data.i136.i, align 4, !annotation !137
  %call.i137.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -1879047776, ptr noundef nonnull %data.i136.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i)
  %tobool.not.i138.i = icmp eq i32 %call.i137.i, 0
  br i1 %tobool.not.i138.i, label %if.end.i142.i, label %update_by_mnemonic.exit135.i.set_drive_strength.exit_crit_edge

update_by_mnemonic.exit135.i.set_drive_strength.exit_crit_edge: ; preds = %update_by_mnemonic.exit135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_drive_strength.exit

if.end.i142.i:                                    ; preds = %update_by_mnemonic.exit135.i
  call void @__sanitizer_cov_trace_pc() #12
  %575 = ptrtoint ptr %data.i136.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %data.i136.i, align 4
  %and.i139.i = and i32 %576, -1879048193
  %or.i140.i = or i32 %and.i139.i, 268435456
  store i32 %or.i140.i, ptr %data.i136.i, align 4
  %call5.i141.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1879047776, i32 noundef %or.i140.i) #10
  br label %set_drive_strength.exit

set_drive_strength.exit:                          ; preds = %if.end.i142.i, %update_by_mnemonic.exit135.i.set_drive_strength.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i136.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i266) #10
  br label %cleanup

cleanup:                                          ; preds = %set_drive_strength.exit, %config_ts.exit.cleanup_crit_edge, %load_fw.exit.cleanup_crit_edge, %if.end4.i230.cleanup_crit_edge, %if.end.i228.cleanup_crit_edge, %validate_sku.exit.cleanup_crit_edge, %sw.bb25.i.cleanup_crit_edge, %sw.bb14.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %read_by_mnemonic.exit59.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_drive_strength.exit ], [ -1, %validate_sku.exit.cleanup_crit_edge ], [ %retval.0.i231, %load_fw.exit.cleanup_crit_edge ], [ -1, %read_by_mnemonic.exit59.i.cleanup_crit_edge ], [ -1, %if.then5.i.cleanup_crit_edge ], [ -1, %sw.bb25.i.cleanup_crit_edge ], [ -1, %sw.bb14.i.cleanup_crit_edge ], [ -1, %sw.bb.i.cleanup_crit_edge ], [ -1, %do.end.i.cleanup_crit_edge ], [ -12, %if.end4.i230.cleanup_crit_edge ], [ -1, %if.end.i228.cleanup_crit_edge ], [ %or148.i, %config_ts.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_input(ptr nocapture noundef readonly %fe, i32 noundef %input) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %tuner = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %input, ptr %tuner, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_by_mnemonic(ptr nocapture noundef readonly %state, i32 noundef %reg, i8 noundef zeroext %lsbloc, i8 noundef zeroext %numofbits, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !137
  %call = call fastcc i32 @read_register(ptr noundef %state, i32 noundef %reg, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %numofbits to i32
  %sub = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub
  %conv1 = zext i8 %lsbloc to i32
  %shl = shl i32 %shr, %conv1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %shl3 = shl i32 %val, %conv1
  %and4 = and i32 %shl, %shl3
  %or = or i32 %and, %and4
  store i32 %or, ptr %data, align 4
  %call5 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef %reg, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @firmware_is_alive(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %hb0 = alloca i32, align 4
  %hb1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hb0) #10
  %0 = ptrtoint ptr %hb0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hb0, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hb1) #10
  %1 = ptrtoint ptr %hb1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %hb1, align 4, !annotation !137
  %call = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073737180, ptr noundef nonnull %hb0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 20) #10
  %call1 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073737180, ptr noundef nonnull %hb1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hb1, align 4
  %4 = ptrtoint ptr %hb0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hb0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ne i32 %3, %5
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb0) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_register(ptr nocapture noundef readonly %state, i32 noundef %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %msg.i.i39 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #10
  %0 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -5, ptr %data, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %0, align 1
  %conv = trunc i32 %reg to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %1, align 1
  %shr3 = lshr i32 %reg, 8
  %conv5 = trunc i32 %shr3 to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %2, align 1
  %shr7 = lshr i32 %reg, 16
  %conv9 = trunc i32 %shr7 to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9, ptr %3, align 1
  %shr11 = lshr i32 %reg, 24
  %conv13 = trunc i32 %shr11 to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %4, align 1
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %i2c_lock = getelementptr inbounds %struct.mxl_base, ptr %12, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #10
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %i2c.i = getelementptr inbounds %struct.mxl_base, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.mxl_base, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 458751, ptr %19, align 4
  %conv.i.i = zext i8 %18 to i16
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br i1 %cmp.i.i.not, label %if.then15.critedge, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %24 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2cdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12) #14
  br label %if.end17

if.then15.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %i2c.i41 = getelementptr inbounds %struct.mxl_base, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %i2c.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c.i41, align 4
  %adr.i42 = getelementptr inbounds %struct.mxl_base, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %adr.i42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %adr.i42, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i39) #10
  %32 = getelementptr inbounds i8, ptr %msg.i.i39, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 327679, ptr %32, align 4
  %conv.i.i43 = zext i8 %31 to i16
  %34 = ptrtoint ptr %msg.i.i39 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i43, ptr %msg.i.i39, align 4
  %flags.i.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i39, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i.i44 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags.i.i44, align 2
  %buf.i.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i39, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i.i45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %val, ptr %buf.i.i45, align 4
  %call.i.i46 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i39, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i46)
  %cmp.i.i47 = icmp ne i32 %call.i.i46, 1
  %cond.i.i48 = sext i1 %cmp.i.i47 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i39) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15.critedge, %do.end
  %stat.0 = phi i32 [ %cond.i.i48, %if.then15.critedge ], [ -1, %do.end ]
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %i2c_lock19 = getelementptr inbounds %struct.mxl_base, ptr %38, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %i2c_lock19) #10
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #10
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.0)
  %tobool20.not = icmp eq i32 %stat.0, 0
  br i1 %tobool20.not, label %if.end17.if.end26_crit_edge, label %do.end24

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev25 = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %43 = ptrtoint ptr %i2cdev25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2cdev25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.16) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end17.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #10
  ret i32 %stat.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_register(ptr nocapture noundef readonly %state, i32 noundef %reg, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %data) #10
  %0 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 9
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -4, ptr %data, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %0, align 1
  %conv = trunc i32 %reg to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %1, align 1
  %shr3 = lshr i32 %reg, 8
  %conv5 = trunc i32 %shr3 to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %2, align 1
  %shr7 = lshr i32 %reg, 16
  %conv9 = trunc i32 %shr7 to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %3, align 1
  %shr11 = lshr i32 %reg, 24
  %conv13 = trunc i32 %shr11 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13, ptr %4, align 1
  %conv17 = trunc i32 %val to i8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17, ptr %5, align 1
  %shr19 = lshr i32 %val, 8
  %conv21 = trunc i32 %shr19 to i8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv21, ptr %6, align 1
  %shr23 = lshr i32 %val, 16
  %conv25 = trunc i32 %shr23 to i8
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %7, align 1
  %shr27 = lshr i32 %val, 24
  %conv29 = trunc i32 %shr27 to i8
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv29, ptr %8, align 1
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %i2c_lock = getelementptr inbounds %struct.mxl_base, ptr %20, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #10
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %i2c.i = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 720895, ptr %27, align 4
  %conv.i.i = zext i8 %26 to i16
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %i2c_lock31 = getelementptr inbounds %struct.mxl_base, ptr %33, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %i2c_lock31) #10
  br i1 %cmp.i.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %34 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2cdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.18) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cond.i.i = sext i1 %cmp.i.i to i32
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %data) #10
  ret i32 %cond.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @firmware_download(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %mbin) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %reg_data = alloca i32, align 4
  %cmd_buff = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #10
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd_buff) #10
  %1 = getelementptr inbounds [10 x i8], ptr %cmd_buff, i32 0, i32 1
  %2 = getelementptr inbounds [10 x i8], ptr %cmd_buff, i32 0, i32 2
  %3 = getelementptr inbounds [10 x i8], ptr %cmd_buff, i32 0, i32 3
  %4 = getelementptr inbounds [10 x i8], ptr %cmd_buff, i32 0, i32 4
  %5 = getelementptr inbounds [10 x i8], ptr %cmd_buff, i32 0, i32 5
  %6 = getelementptr inbounds [10 x i8], ptr %cmd_buff, i32 0, i32 6
  %image_size24.i = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %mbin, i32 0, i32 5
  %7 = call ptr @memset(ptr %cmd_buff, i32 255, i32 10)
  %8 = ptrtoint ptr %image_size24.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %image_size24.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx2.i = getelementptr %struct.MBIN_FILE_HEADER_T, ptr %mbin, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %11 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx6.i = getelementptr %struct.MBIN_FILE_HEADER_T, ptr %mbin, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %13 to i32
  %or8.i = or i32 %or.i, %conv7.i
  %14 = ptrtoint ptr %mbin to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mbin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 77
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.check_fw.exit_crit_edge

entry.check_fw.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_fw.exit

lor.lhs.false.i:                                  ; preds = %entry
  %fmt_version.i = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %mbin, i32 0, i32 1
  %16 = ptrtoint ptr %fmt_version.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fmt_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %17)
  %cmp12.not.i = icmp ne i8 %17, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 262128, i32 %or8.i)
  %cmp15.i = icmp ugt i32 %or8.i, 262128
  %or.cond.i = select i1 %cmp12.not.i, i1 true, i1 %cmp15.i
  br i1 %or.cond.i, label %lor.lhs.false.i.check_fw.exit_crit_edge, label %if.end.i

lor.lhs.false.i.check_fw.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_fw.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %mbin, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp171.not.i = icmp eq i32 %or8.i, 0
  br i1 %cmp171.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %add23.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %cs.02.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx19.i = getelementptr i8, ptr %add.ptr.i, i32 %i.03.i
  %18 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %19 to i32
  %add.i = add nuw nsw i32 %cs.02.i, %conv20.i
  %add23.i = add nuw nsw i32 %i.03.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %add23.i, %or8.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %cs.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %image_checksum.i = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %mbin, i32 0, i32 6
  %20 = ptrtoint ptr %image_checksum.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %image_checksum.i, align 1
  %conv25.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cs.0.lcssa.i, i32 %conv25.i)
  %cmp26.not.i = icmp eq i32 %cs.0.lcssa.i, %conv25.i
  br i1 %cmp26.not.i, label %if.end, label %for.end.i.check_fw.exit_crit_edge

for.end.i.check_fw.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_fw.exit

check_fw.exit:                                    ; preds = %for.end.i.check_fw.exit_crit_edge, %lor.lhs.false.i.check_fw.exit_crit_edge, %entry.check_fw.exit_crit_edge
  %.str.25.sink.i = phi ptr [ @.str.22, %entry.check_fw.exit_crit_edge ], [ @.str.22, %lor.lhs.false.i.check_fw.exit_crit_edge ], [ @.str.25, %for.end.i.check_fw.exit_crit_edge ]
  %i2cdev32.i = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %22 = ptrtoint ptr %i2cdev32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2cdev32.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull %.str.25.sink.i) #14
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %data.i, align 4, !annotation !137
  %call.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147286980, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %update_by_mnemonic.exit, label %update_by_mnemonic.exit.thread

update_by_mnemonic.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  br label %cleanup

update_by_mnemonic.exit:                          ; preds = %if.end
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.i, align 4
  %and.i = and i32 %26, -2
  store i32 %and.i, ptr %data.i, align 4
  %call5.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147286980, i32 noundef %and.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool2.not = icmp eq i32 %call5.i, 0
  br i1 %tobool2.not, label %if.end4, label %update_by_mnemonic.exit.cleanup_crit_edge

update_by_mnemonic.exit.cleanup_crit_edge:        ; preds = %update_by_mnemonic.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %update_by_mnemonic.exit
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %call5 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147287000, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147287004, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147287008, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147287012, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147287016, ptr noundef nonnull %reg_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call fastcc i32 @do_firmware_download(ptr noundef %state, ptr noundef %mbin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.mxl_base, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp = icmp eq i32 %30, 8
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end28
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  %call30 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871577088, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.then29
  call void @msleep(i32 noundef 500) #10
  %call34 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871268592, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.if.end42_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.else:                                          ; preds = %if.end28
  %call38 = call fastcc i32 @update_by_mnemonic(ptr noundef %state, i32 noundef -2147286980, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 150) #10
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end33.if.end42_crit_edge
  %call43 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871707572, i32 noundef 1985229328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call47 = call fastcc i32 @firmware_is_alive(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %do.end

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %31 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2cdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.20) #14
  call void @msleep(i32 noundef 50) #10
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %sku_type = getelementptr inbounds %struct.mxl_base, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %sku_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sku_type, align 4
  %37 = ptrtoint ptr %cmd_buff to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -2, ptr %cmd_buff, align 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %1, align 1
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %2, align 1
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 58, ptr %3, align 1
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %4, align 1
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %5, align 1
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %36, ptr %6, align 1
  %call73 = call fastcc i32 @send_command(ptr noundef %state, i32 noundef 10, ptr noundef nonnull %cmd_buff)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %update_by_mnemonic.exit.cleanup_crit_edge, %update_by_mnemonic.exit.thread, %check_fw.exit
  %retval.0 = phi i32 [ %call73, %do.end ], [ -1, %check_fw.exit ], [ -1, %update_by_mnemonic.exit.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ], [ -1, %if.end16.cleanup_crit_edge ], [ -1, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ -1, %if.then29.cleanup_crit_edge ], [ -1, %if.end33.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ -1, %if.end42.cleanup_crit_edge ], [ -1, %if.end46.cleanup_crit_edge ], [ -1, %update_by_mnemonic.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd_buff) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_firmware_download(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %mbin_buffer_ptr) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbin_buffer_ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mbin_buffer_ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %1)
  %cmp.not = icmp eq i8 %1, 77
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %1 to i32
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2cdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %conv) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @write_register(ptr noundef %state, i32 noundef 1073736416, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %num_segments = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %mbin_buffer_ptr, i32 0, i32 3
  %4 = ptrtoint ptr %num_segments to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_segments, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp912.not = icmp eq i8 %5, 0
  br i1 %cmp912.not, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %data = getelementptr inbounds %struct.MBIN_FILE_T, ptr %mbin_buffer_ptr, i32 0, i32 1
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.lr.ph
  %xcpu_fw_flag.015 = phi i32 [ 0, %for.body.lr.ph ], [ %xcpu_fw_flag.210, %if.end62.for.body_crit_edge ]
  %segment_ptr.014 = phi ptr [ %data, %for.body.lr.ph ], [ %arrayidx64, %if.end62.for.body_crit_edge ]
  %index.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end62.for.body_crit_edge ]
  %6 = ptrtoint ptr %segment_ptr.014 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %segment_ptr.014, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %7)
  %cmp14.not = icmp eq i8 %7, 83
  br i1 %cmp14.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i8 %7 to i32
  %i2cdev20 = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %i2cdev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2cdev20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %conv13) #14
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %len24 = getelementptr inbounds %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 1
  %10 = ptrtoint ptr %len24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len24, align 1
  %conv1.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 16
  %arrayidx2.i = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %13 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %or19.i = or i32 %shl4.i, %shl.i
  %arrayidx20.i = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %15 to i32
  %or22.i = or i32 %or19.i, %conv21.i
  %address = getelementptr inbounds %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 2
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %address, align 1
  %conv10.i = zext i8 %17 to i32
  %shl11.i = shl nuw i32 %conv10.i, 24
  %arrayidx12.i = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %19 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or15.i = or i32 %shl14.i, %shl11.i
  %arrayidx16.i = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %21 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i3 = or i32 %or15.i, %shl18.i
  %arrayidx20.i4 = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %segment_ptr.014, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx20.i4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.i4, align 1
  %conv21.i5 = zext i8 %23 to i32
  %or22.i6 = or i32 %or19.i3, %conv21.i5
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %type = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp31 = icmp eq i32 %27, 8
  %and36 = and i32 %or15.i, -1871446016
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1871446016, i32 %and36)
  %cmp37 = icmp eq i32 %and36, -1871446016
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end24
  br i1 %cmp37, label %land.lhs.true, label %if.then33.if.end59_crit_edge

if.then33.if.end59_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xcpu_fw_flag.015)
  %cmp39 = icmp eq i32 %xcpu_fw_flag.015, 0
  br i1 %cmp39, label %if.then41, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then41:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %data.i, align 4, !annotation !137
  %call.i = call fastcc i32 @read_register(ptr noundef %state, i32 noundef -2147286980, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then41.update_by_mnemonic.exit_crit_edge

if.then41.update_by_mnemonic.exit_crit_edge:      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_by_mnemonic.exit

if.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data.i, align 4
  %or.i = or i32 %30, 1
  store i32 %or.i, ptr %data.i, align 4
  %call5.i = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -2147286980, i32 noundef %or.i) #10
  br label %update_by_mnemonic.exit

update_by_mnemonic.exit:                          ; preds = %if.end.i, %if.then41.update_by_mnemonic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @msleep(i32 noundef 200) #10
  %call43 = call fastcc i32 @write_register(ptr noundef %state, i32 noundef -1871577088, i32 noundef 0)
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  br label %if.end59

if.else:                                          ; preds = %if.end24
  br i1 %cmp37, label %if.else.if.end62_crit_edge, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end59:                                         ; preds = %if.else.if.end59_crit_edge, %update_by_mnemonic.exit, %land.lhs.true.if.end59_crit_edge, %if.then33.if.end59_crit_edge
  %xcpu_fw_flag.2 = phi i32 [ 1, %update_by_mnemonic.exit ], [ 1, %land.lhs.true.if.end59_crit_edge ], [ %xcpu_fw_flag.015, %if.then33.if.end59_crit_edge ], [ %xcpu_fw_flag.015, %if.else.if.end59_crit_edge ]
  %data55 = getelementptr inbounds %struct.MBIN_SEGMENT_T, ptr %segment_ptr.014, i32 0, i32 1
  %call57 = call fastcc i32 @write_fw_segment(ptr noundef %state, i32 noundef %or22.i6, i32 noundef %or22.i, ptr noundef %data55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool60.not = icmp eq i32 %call57, 0
  br i1 %tobool60.not, label %if.end59.if.end62_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62:                                         ; preds = %if.end59.if.end62_crit_edge, %if.else.if.end62_crit_edge
  %xcpu_fw_flag.210 = phi i32 [ %xcpu_fw_flag.2, %if.end59.if.end62_crit_edge ], [ %xcpu_fw_flag.015, %if.else.if.end62_crit_edge ]
  %add = add nuw nsw i32 %or22.i, 3
  %div1 = and i32 %add, 33554428
  %arrayidx64 = getelementptr %struct.MBIN_SEGMENT_T, ptr %segment_ptr.014, i32 0, i32 1, i32 %div1
  %inc = add nuw nsw i32 %index.013, 1
  %31 = ptrtoint ptr %num_segments to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_segments, align 1
  %conv8 = zext i8 %32 to i32
  %cmp9 = icmp ult i32 %inc, %conv8
  br i1 %cmp9, label %if.end62.for.body_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end62.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %do.end19, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -1, %if.end59.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_command(ptr nocapture noundef readonly %state, i32 noundef %size, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !137
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %i2c_lock = getelementptr inbounds %struct.mxl_base, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #10
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %fwversion = getelementptr inbounds %struct.mxl_base, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %fwversion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fwversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33620233, i32 %6)
  %cmp = icmp ugt i32 %6, 33620233
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  call fastcc void @read_register_unlocked(ptr noundef %state, ptr noundef nonnull %val)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2cdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and337 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %tobool4.not38 = icmp eq i32 %and337, 0
  br i1 %tobool4.not38, label %if.end.if.end20_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %count.039 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 10, %if.end.land.rhs_crit_edge ]
  %dec = add nsw i32 %count.039, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.end15.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %i2c_lock7 = getelementptr inbounds %struct.mxl_base, ptr %14, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %i2c_lock7) #10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %i2c_lock9 = getelementptr inbounds %struct.mxl_base, ptr %16, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %i2c_lock9, i32 noundef 0) #10
  call fastcc void @read_register_unlocked(ptr noundef %state, ptr noundef nonnull %val)
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and3 = and i32 %18, 8
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %while.body.if.end20_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end15.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev16 = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %19 = ptrtoint ptr %i2cdev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2cdev16, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #14
  br label %cleanup

if.end20:                                         ; preds = %while.body.if.end20_crit_edge, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %i2c.i = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4
  %conv.i.i = zext i8 %26 to i16
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i, align 2
  %conv2.i.i = trunc i32 %size to i16
  store i16 %conv2.i.i, ptr %27, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, 1
  %cond.i.i = sext i1 %cmp.i.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end15.critedge
  %retval.0 = phi i32 [ %cond.i.i, %if.end20 ], [ -16, %do.end15.critedge ]
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %i2c_lock23 = getelementptr inbounds %struct.mxl_base, ptr %33, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %i2c_lock23) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_fw_segment(ptr nocapture noundef readonly %state, i32 noundef %mem_addr, i32 noundef %total_size, ptr nocapture noundef readonly %data_ptr) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %w_msg_buffer = alloca [242 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 242, ptr nonnull %w_msg_buffer) #10
  %0 = call ptr @memset(ptr %w_msg_buffer, i32 255, i32 242)
  %base.i = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %entry
  %mem_addr.addr.0 = phi i32 [ %mem_addr, %entry ], [ %add7, %if.end5.do.body_crit_edge ]
  %data_ptr.addr.0 = phi ptr [ %data_ptr, %entry ], [ %add.ptr, %if.end5.do.body_crit_edge ]
  %data_count.0 = phi i32 [ 0, %entry ], [ %add6, %if.end5.do.body_crit_edge ]
  %add = add i32 %data_count.0, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_size)
  %cmp = icmp ugt i32 %add, %total_size
  %sub = sub i32 %total_size, %data_count.0
  %cond = select i1 %cmp, i32 %sub, i32 240
  %cond.biased = add i32 %cond, 3
  %size.0 = and i32 %cond.biased, -4
  %2 = call i32 @llvm.usub.sat.i32(i32 %size.0, i32 %cond)
  %3 = getelementptr i8, ptr %w_msg_buffer, i32 %cond
  %4 = call ptr @memset(ptr %3, i32 0, i32 %2)
  %5 = call ptr @memcpy(ptr %w_msg_buffer, ptr %data_ptr.addr.0, i32 %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp158.not.i = icmp eq i32 %size.0, 0
  br i1 %cmp158.not.i, label %do.body.convert_endian.exit_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.convert_endian.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %convert_endian.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %i.0159.i = phi i32 [ %add45.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %add.i = or i32 %i.0159.i, 3
  %arrayidx.i = getelementptr i8, ptr %w_msg_buffer, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %w_msg_buffer, i32 %i.0159.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  store i8 %9, ptr %arrayidx.i, align 1
  store i8 %7, ptr %arrayidx2.i, align 1
  %add21.i = or i32 %i.0159.i, 2
  %arrayidx22.i = getelementptr i8, ptr %w_msg_buffer, i32 %add21.i
  %10 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx22.i, align 1
  %add24.i = or i32 %i.0159.i, 1
  %arrayidx25.i = getelementptr i8, ptr %w_msg_buffer, i32 %add24.i
  %12 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx25.i, align 1
  store i8 %13, ptr %arrayidx22.i, align 1
  store i8 %11, ptr %arrayidx25.i, align 1
  %add45.i = add nuw i32 %i.0159.i, 4
  %cmp.i = icmp ult i32 %add45.i, %size.0
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.convert_endian.exit_crit_edge

for.body.i.convert_endian.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %convert_endian.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

convert_endian.exit:                              ; preds = %for.body.i.convert_endian.exit_crit_edge, %do.body.convert_endian.exit_crit_edge
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %buf1.i = getelementptr inbounds %struct.mxl_base, ptr %15, i32 0, i32 19
  %i2c_lock.i = getelementptr inbounds %struct.mxl_base, ptr %15, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %i2c_lock.i, i32 noundef 0) #10
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -4, ptr %buf1.i, align 1
  %17 = trunc i32 %size.0 to i8
  %conv.i = add i8 %17, 4
  %arrayidx3.i = getelementptr %struct.mxl_base, ptr %15, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %conv4.i = trunc i32 %mem_addr.addr.0 to i8
  %arrayidx5.i = getelementptr %struct.mxl_base, ptr %15, i32 0, i32 19, i32 2
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %mem_addr.addr.0, 8
  %conv8.i = trunc i32 %shr6.i to i8
  %arrayidx9.i = getelementptr %struct.mxl_base, ptr %15, i32 0, i32 19, i32 3
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.i, ptr %arrayidx9.i, align 1
  %shr10.i = lshr i32 %mem_addr.addr.0, 16
  %conv12.i = trunc i32 %shr10.i to i8
  %arrayidx13.i = getelementptr %struct.mxl_base, ptr %15, i32 0, i32 19, i32 4
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12.i, ptr %arrayidx13.i, align 1
  %shr14.i = lshr i32 %mem_addr.addr.0, 24
  %conv16.i = trunc i32 %shr14.i to i8
  %arrayidx17.i = getelementptr %struct.mxl_base, ptr %15, i32 0, i32 19, i32 5
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv16.i, ptr %arrayidx17.i, align 1
  %arrayidx18.i = getelementptr %struct.mxl_base, ptr %15, i32 0, i32 19, i32 6
  %23 = call ptr @memcpy(ptr %arrayidx18.i, ptr %w_msg_buffer, i32 %size.0)
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %i2c.i.i = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i.i, align 4
  %adr.i.i = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %1, align 4
  %conv.i.i.i = zext i8 %29 to i16
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i.i, align 2
  %33 = trunc i32 %size.0 to i16
  %conv2.i.i.i = add i16 %33, 6
  store i16 %conv2.i.i.i, ptr %1, align 4
  %34 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf1.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %call.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #10
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %i2c_lock21.i = getelementptr inbounds %struct.mxl_base, ptr %36, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %i2c_lock21.i) #10
  br i1 %cmp.i.i.i.not, label %if.end5, label %write_firmware_block.exit

write_firmware_block.exit:                        ; preds = %convert_endian.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev.i = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %37 = ptrtoint ptr %i2cdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2cdev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.32) #14
  br label %cleanup

if.end5:                                          ; preds = %convert_endian.exit
  %add6 = add i32 %size.0, %data_count.0
  %add7 = add i32 %size.0, %mem_addr.addr.0
  %add.ptr = getelementptr i8, ptr %data_ptr.addr.0, i32 %size.0
  %cmp8 = icmp ult i32 %add6, %total_size
  br i1 %cmp8, label %if.end5.do.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %write_firmware_block.exit
  %cond.i.i.i37 = phi i32 [ -1, %write_firmware_block.exit ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 242, ptr nonnull %w_msg_buffer) #10
  ret i32 %cond.i.i.i37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_register_unlocked(ptr nocapture noundef readonly %state, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %msg.i.i1 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #10
  %0 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -5, ptr %data, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 28, ptr %1, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %4, align 1
  %base.i = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %i2c.i = getelementptr inbounds %struct.mxl_base, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.mxl_base, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %17 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 458751, ptr %17, align 4
  %conv.i.i = zext i8 %16 to i16
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %data, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br i1 %cmp.i.i.not, label %if.then15.critedge, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %22 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2cdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12) #14
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  br label %do.end22

if.then15.critedge:                               ; preds = %entry
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %i2c.i3 = getelementptr inbounds %struct.mxl_base, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %i2c.i3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c.i3, align 4
  %adr.i4 = getelementptr inbounds %struct.mxl_base, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %adr.i4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %adr.i4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1) #10
  %34 = getelementptr inbounds i8, ptr %msg.i.i1, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 327679, ptr %34, align 4
  %conv.i.i5 = zext i8 %33 to i16
  %36 = ptrtoint ptr %msg.i.i1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i5, ptr %msg.i.i1, align 4
  %flags.i.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags.i.i6, align 2
  %buf.i.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i.i7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %val, ptr %buf.i.i7, align 4
  %call.i.i8 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i.i1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i8)
  %cmp.i.i9.not = icmp eq i32 %call.i.i8, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1) #10
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #10
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  br i1 %cmp.i.i9.not, label %if.then15.critedge.if.end24_crit_edge, label %if.then15.critedge.do.end22_crit_edge

if.then15.critedge.do.end22_crit_edge:            ; preds = %if.then15.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.then15.critedge.if.end24_crit_edge:            ; preds = %if.then15.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end22:                                         ; preds = %if.then15.critedge.do.end22_crit_edge, %do.end
  %i2cdev23 = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %43 = ptrtoint ptr %i2cdev23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2cdev23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.16) #14
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.then15.critedge.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %base = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %count = getelementptr inbounds %struct.mxl_base, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %count, align 4
  %14 = load ptr, ptr %base, align 4
  %count2 = getelementptr inbounds %struct.mxl_base, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %call.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #10
  br i1 %call.i.i10, label %if.end.i.i13, label %if.then.list_del.exit15_crit_edge

if.then.list_del.exit15_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit15

if.end.i.i13:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i11 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i11, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %prev1.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i12, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit15

list_del.exit15:                                  ; preds = %if.end.i.i13, %if.then.list_del.exit15_crit_edge
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i14 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i14, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  tail call void @kfree(ptr noundef %26) #10
  br label %if.end

if.end:                                           ; preds = %list_del.exit15, %list_del.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @init(ptr nocapture noundef writeonly %fe) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %2 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cnr, align 1
  %stat4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %3 = ptrtoint ptr %stat4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stat4, align 1
  %pre_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44
  %4 = ptrtoint ptr %pre_bit_error to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pre_bit_error, align 2
  %stat9 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %5 = ptrtoint ptr %stat9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %stat9, align 1
  %pre_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45
  %6 = ptrtoint ptr %pre_bit_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pre_bit_count, align 1
  %stat14 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %7 = ptrtoint ptr %stat14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %stat14, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %8 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %post_bit_error, align 4
  %stat19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %9 = ptrtoint ptr %stat19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %stat19, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %10 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %post_bit_count, align 1
  %stat24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %11 = ptrtoint ptr %stat24 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %stat24, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %cmd_buff.i = alloca [248 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %cmd_buff.i) #10
  %2 = getelementptr inbounds i8, ptr %cmd_buff.i, i32 10
  %3 = call ptr @memset(ptr %2, i32 255, i32 238)
  %demod.i = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod.i, align 4
  %6 = ptrtoint ptr %cmd_buff.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -2, ptr %cmd_buff.i, align 1
  %arrayidx6.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %5, ptr %arrayidx12.i, align 1
  %call.i = call fastcc i32 @send_command(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %cmd_buff.i) #10
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %cmd_buff.i) #10
  %tuner_in_use = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %tuner_in_use to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tuner_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %tune_lock = getelementptr inbounds %struct.mxl_base, ptr %16, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %tune_lock, i32 noundef 0) #10
  %17 = ptrtoint ptr %tuner_in_use to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %tuner_in_use, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %mxls = getelementptr inbounds %struct.mxl_base, ptr %19, i32 0, i32 1
  %tuner = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %p.0.in = phi ptr [ %mxls, %if.then ], [ %p.0, %for.body.for.cond_crit_edge ]
  %20 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp5.not = icmp eq ptr %p.0, %mxls
  br i1 %cmp5.not, label %if.then18, label %for.body

for.body:                                         ; preds = %for.cond
  %tuner_in_use6 = getelementptr inbounds %struct.mxl, ptr %p.0, i32 0, i32 6
  %21 = ptrtoint ptr %tuner_in_use6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tuner_in_use6, align 4
  %23 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tuner, align 4
  %cmp7 = icmp eq i32 %22, %24
  br i1 %cmp7, label %for.body.if.end21_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tuner, align 4
  call fastcc void @enable_tuner(ptr noundef %1, i32 noundef %26)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.body.if.end21_crit_edge
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %tune_lock23 = getelementptr inbounds %struct.mxl_base, ptr %28, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %tune_lock23) #10
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %entry.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  %buf.i.i = alloca [26 x i8], align 1
  %cmd_buff.i = alloca [248 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50, ptr %delay, align 4
  br i1 %re_tune, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %cmd_buff.i) #10
  %5 = call ptr @memset(ptr %cmd_buff.i, i32 255, i32 248)
  %6 = ptrtoint ptr %dtv_property_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache.i, align 4
  %8 = add i32 %7, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %8)
  %9 = icmp ult i32 %8, -1200001
  br i1 %9, label %if.then.set_parameters.exit.thread_crit_edge, label %if.end.i

if.then.set_parameters.exit.thread_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_parameters.exit.thread

if.end.i:                                         ; preds = %if.then
  %symbol_rate.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %10 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %symbol_rate.i, align 4
  %12 = add i32 %11, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44000001, i32 %12)
  %13 = icmp ult i32 %12, -44000001
  br i1 %13, label %if.end.i.set_parameters.exit.thread_crit_edge, label %if.end8.i

if.end.i.set_parameters.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_parameters.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %delivery_system.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %14 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delivery_system.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %15, label %if.end8.i.set_parameters.exit.thread_crit_edge [
    i32 4, label %if.end8.i.sw.epilog.i_crit_edge
    i32 5, label %sw.bb9.i
    i32 6, label %sw.bb16.i
  ]

if.end8.i.sw.epilog.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end8.i.set_parameters.exit.thread_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_parameters.exit.thread

sw.bb9.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = udiv i32 %11, 1000000
  %17 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 10) #10
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end8.i
  %scrambling_sequence_index.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 25
  %18 = ptrtoint ptr %scrambling_sequence_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scrambling_sequence_index.i, align 4
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %buf.i.i) #10
  %20 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 1
  %21 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 3
  %22 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 6
  %23 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %24 = call ptr @memset(ptr %23, i32 0, i32 20)
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -2, ptr %buf.i.i, align 1
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 24, ptr %20, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 24, ptr %21, align 1
  %demod.i.i = getelementptr inbounds %struct.mxl, ptr %4, i32 0, i32 4
  %28 = ptrtoint ptr %demod.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %demod.i.i, align 4
  %conv.i.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i.i, ptr %22, align 1
  %31 = add i32 %19, -262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262142, i32 %31)
  %32 = icmp ult i32 %31, -262142
  br i1 %32, label %sw.bb16.i.cfg_scrambler.exit.i_crit_edge, label %sw.bb16.i.for.body.i.i.i_crit_edge

sw.bb16.i.for.body.i.i.i_crit_edge:               ; preds = %sw.bb16.i
  br label %for.body.i.i.i

sw.bb16.i.cfg_scrambler.exit.i_crit_edge:         ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg_scrambler.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.bb16.i.for.body.i.i.i_crit_edge
  %g.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %sw.bb16.i.for.body.i.i.i_crit_edge ]
  %x.09.i.i.i = phi i32 [ %or.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %sw.bb16.i.for.body.i.i.i_crit_edge ]
  %shr.i.i.i = lshr i32 %x.09.i.i.i, 7
  %xor.i.i.i = xor i32 %shr.i.i.i, %x.09.i.i.i
  %and.i.i.i = shl i32 %xor.i.i.i, 17
  %shl.i.i.i = and i32 %and.i.i.i, 131072
  %shr2.i.i.i = lshr i32 %x.09.i.i.i, 1
  %or.i.i.i = or i32 %shl.i.i.i, %shr2.i.i.i
  %inc.i.i.i = add nuw nsw i32 %g.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %19
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.cfg_scrambler.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i.cfg_scrambler.exit.i_crit_edge:    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg_scrambler.exit.i

cfg_scrambler.exit.i:                             ; preds = %for.body.i.i.i.cfg_scrambler.exit.i_crit_edge, %sw.bb16.i.cfg_scrambler.exit.i_crit_edge
  %x.0.lcssa.i.i.i = phi i32 [ 1, %sw.bb16.i.cfg_scrambler.exit.i_crit_edge ], [ %or.i.i.i, %for.body.i.i.i.cfg_scrambler.exit.i_crit_edge ]
  %33 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 25
  %34 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 24
  %35 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 23
  %36 = getelementptr inbounds [26 x i8], ptr %buf.i.i, i32 0, i32 22
  %shr.i.i = lshr i32 %x.0.lcssa.i.i.i, 24
  %conv25.i.i = trunc i32 %shr.i.i to i8
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv25.i.i, ptr %33, align 1
  %shr26.i.i = lshr i32 %x.0.lcssa.i.i.i, 16
  %conv28.i.i = trunc i32 %shr26.i.i to i8
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv28.i.i, ptr %34, align 1
  %shr30.i.i = lshr i32 %x.0.lcssa.i.i.i, 8
  %conv32.i.i = trunc i32 %shr30.i.i to i8
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv32.i.i, ptr %35, align 1
  %conv35.i.i = trunc i32 %x.0.lcssa.i.i.i to i8
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv35.i.i, ptr %36, align 1
  %call37.i.i = call fastcc i32 @send_command(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %buf.i.i) #10
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %buf.i.i) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cfg_scrambler.exit.i, %sw.bb9.i, %if.end8.i.sw.epilog.i_crit_edge
  %demod_chan_cfg.sroa.7.0.i = phi i32 [ 2, %cfg_scrambler.exit.i ], [ 1, %sw.bb9.i ], [ 0, %if.end8.i.sw.epilog.i_crit_edge ]
  %demod_chan_cfg.sroa.11.0.i = phi i32 [ 0, %cfg_scrambler.exit.i ], [ 3, %sw.bb9.i ], [ 0, %if.end8.i.sw.epilog.i_crit_edge ]
  %demod_chan_cfg.sroa.15.0.i = phi i32 [ 2, %cfg_scrambler.exit.i ], [ 0, %sw.bb9.i ], [ -1, %if.end8.i.sw.epilog.i_crit_edge ]
  %demod_chan_cfg.sroa.17.0.i = phi i32 [ 0, %cfg_scrambler.exit.i ], [ 1, %sw.bb9.i ], [ -1, %if.end8.i.sw.epilog.i_crit_edge ]
  %srange.0.i = phi i32 [ 10, %cfg_scrambler.exit.i ], [ %17, %sw.bb9.i ], [ 10, %if.end8.i.sw.epilog.i_crit_edge ]
  %tuner.i = getelementptr inbounds %struct.mxl, ptr %4, i32 0, i32 5
  %41 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tuner.i, align 4
  %demod.i = getelementptr inbounds %struct.mxl, ptr %4, i32 0, i32 4
  %43 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %demod.i, align 4
  %45 = ptrtoint ptr %dtv_property_cache.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dtv_property_cache.i, align 4
  %mul.i = mul i32 %46, 1000
  %47 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %symbol_rate.i, align 4
  %base.i = getelementptr inbounds %struct.mxl, ptr %4, i32 0, i32 1
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %tune_lock.i = getelementptr inbounds %struct.mxl_base, ptr %50, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %tune_lock.i, i32 noundef 0) #10
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %next_tune.i = getelementptr inbounds %struct.mxl_base, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %next_tune.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %next_tune.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = add i32 %54, -20
  %sub.i = sub i32 %add.neg.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp25.i = icmp slt i32 %sub.i, 0
  br i1 %cmp25.i, label %while.cond.preheader.i, label %sw.epilog.i.set_parameters.exit_crit_edge

sw.epilog.i.set_parameters.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_parameters.exit

while.cond.preheader.i:                           ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub2992.i = sub i32 %56, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2992.i)
  %cmp3093.i = icmp slt i32 %sub2992.i, 0
  br i1 %cmp3093.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.set_parameters.exit_crit_edge

while.cond.preheader.i.set_parameters.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_parameters.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %next_tune28.i = getelementptr inbounds %struct.mxl_base, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %next_tune28.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %next_tune28.i, align 4
  %sub29.i = sub i32 %57, %61
  %cmp30.i = icmp slt i32 %sub29.i, 0
  br i1 %cmp30.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.set_parameters.exit_crit_edge

while.body.i.set_parameters.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_parameters.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

set_parameters.exit.thread:                       ; preds = %if.end8.i.set_parameters.exit.thread_crit_edge, %if.end.i.set_parameters.exit.thread_crit_edge, %if.then.set_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %cmd_buff.i) #10
  br label %cleanup

set_parameters.exit:                              ; preds = %while.body.i.set_parameters.exit_crit_edge, %while.cond.preheader.i.set_parameters.exit_crit_edge, %sw.epilog.i.set_parameters.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add33.i = add i32 %62, 10
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %next_tune35.i = getelementptr inbounds %struct.mxl_base, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %next_tune35.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add33.i, ptr %next_tune35.i, align 4
  %66 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tuner.i, align 4
  %tuner_in_use.i = getelementptr inbounds %struct.mxl, ptr %4, i32 0, i32 6
  %68 = ptrtoint ptr %tuner_in_use.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %tuner_in_use.i, align 4
  %69 = ptrtoint ptr %cmd_buff.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -2, ptr %cmd_buff.i, align 1
  %arrayidx44.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 48, ptr %arrayidx44.i, align 1
  %arrayidx45.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 2
  %71 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 44, ptr %arrayidx45.i, align 1
  %arrayidx46.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 8, ptr %arrayidx46.i, align 1
  %arrayidx47.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx47.i, align 1
  %arrayidx48.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 5
  %74 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx48.i, align 1
  %arrayidx50.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 6
  %75 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %42, ptr %arrayidx50.i, align 1
  %demod_chan_cfg.sroa.5.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 10
  %76 = ptrtoint ptr %demod_chan_cfg.sroa.5.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %44, ptr %demod_chan_cfg.sroa.5.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.6.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 14
  %77 = ptrtoint ptr %demod_chan_cfg.sroa.6.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %mul.i, ptr %demod_chan_cfg.sroa.6.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.7.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 18
  %78 = ptrtoint ptr %demod_chan_cfg.sroa.7.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %demod_chan_cfg.sroa.7.0.i, ptr %demod_chan_cfg.sroa.7.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.10.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 22
  %79 = ptrtoint ptr %demod_chan_cfg.sroa.10.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 0, ptr %demod_chan_cfg.sroa.10.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.11.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 26
  %80 = ptrtoint ptr %demod_chan_cfg.sroa.11.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %demod_chan_cfg.sroa.11.0.i, ptr %demod_chan_cfg.sroa.11.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.14.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 30
  %81 = ptrtoint ptr %demod_chan_cfg.sroa.14.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %48, ptr %demod_chan_cfg.sroa.14.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.15.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 34
  %82 = ptrtoint ptr %demod_chan_cfg.sroa.15.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %demod_chan_cfg.sroa.15.0.i, ptr %demod_chan_cfg.sroa.15.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.17.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 38
  %83 = ptrtoint ptr %demod_chan_cfg.sroa.17.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %demod_chan_cfg.sroa.17.0.i, ptr %demod_chan_cfg.sroa.17.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.19.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 42
  %84 = ptrtoint ptr %demod_chan_cfg.sroa.19.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 0, ptr %demod_chan_cfg.sroa.19.0.arrayidx50.sroa_idx.i, align 1
  %demod_chan_cfg.sroa.20.0.arrayidx50.sroa_idx.i = getelementptr inbounds [248 x i8], ptr %cmd_buff.i, i32 0, i32 46
  %85 = ptrtoint ptr %demod_chan_cfg.sroa.20.0.arrayidx50.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %srange.0.i, ptr %demod_chan_cfg.sroa.20.0.arrayidx50.sroa_idx.i, align 1
  %call55.i = call fastcc i32 @send_command(ptr noundef %4, i32 noundef 50, ptr noundef nonnull %cmd_buff.i) #10
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %tune_lock57.i = getelementptr inbounds %struct.mxl_base, ptr %87, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %tune_lock57.i) #10
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %cmd_buff.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool1.not = icmp eq i32 %call55.i, 0
  br i1 %tobool1.not, label %if.end, label %set_parameters.exit.cleanup_crit_edge

set_parameters.exit.cleanup_crit_edge:            ; preds = %set_parameters.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %set_parameters.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %tune_time = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 8
  %89 = ptrtoint ptr %tune_time to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tune_time, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %call4 = call i32 @read_status(ptr noundef %fe, ptr noundef %status)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %set_parameters.exit.cleanup_crit_edge, %set_parameters.exit.thread
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call55.i, %set_parameters.exit.cleanup_crit_edge ], [ -22, %set_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_algo(ptr nocapture noundef readnone %fe) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %reg_data = alloca [24 x i32], align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %reg_data) #10
  %2 = call ptr @memset(ptr %reg_data, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #10
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %freq, align 4, !annotation !137
  %base = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %status_lock = getelementptr inbounds %struct.mxl_base, ptr %5, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #10
  %demod = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %demod, align 4
  %mul = shl i32 %7, 8
  %add = add i32 %mul, 1073727160
  %call = tail call fastcc i32 @write_register(ptr noundef %1, i32 noundef %add, i32 noundef 1)
  %8 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %demod, align 4
  %mul2 = shl i32 %9, 8
  %add3 = add i32 %mul2, 1073727064
  call fastcc void @read_register_block(ptr noundef %1, i32 noundef %add3, i32 noundef 96, ptr noundef nonnull %reg_data)
  %10 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %demod, align 4
  %mul6 = shl i32 %11, 8
  %add7 = add i32 %mul6, 1073727236
  call fastcc void @read_register_block(ptr noundef %1, i32 noundef %add7, i32 noundef 4, ptr noundef nonnull %freq)
  %12 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %demod, align 4
  %mul10 = shl i32 %13, 8
  %add11 = add i32 %mul10, 1073727160
  %call12 = call fastcc i32 @write_register(ptr noundef %1, i32 noundef %add11, i32 noundef 0)
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %status_lock14 = getelementptr inbounds %struct.mxl_base, ptr %15, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %status_lock14) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_frontend.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_frontend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2cdev, align 4
  %18 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %freq, align 4
  %mul18 = mul i32 %19, 1000
  %20 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_data, align 4
  %arrayidx20 = getelementptr inbounds [24 x i32], ptr %reg_data, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_frontend.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.58, i32 noundef %mul18, i32 noundef %21, i32 noundef %23) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx21 = getelementptr inbounds [24 x i32], ptr %reg_data, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %26 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %symbol_rate, align 4
  %27 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freq, align 4
  %29 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %p, align 4
  %arrayidx22 = getelementptr inbounds [24 x i32], ptr %reg_data, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %cmp.i = icmp ugt i32 %31, 10
  br i1 %cmp.i, label %do.end.conv_fec.exit_crit_edge, label %if.end.i

do.end.conv_fec.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %conv_fec.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [11 x i32], ptr @__const.conv_fec.fec2fec, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  br label %conv_fec.exit

conv_fec.exit:                                    ; preds = %if.end.i, %do.end.conv_fec.exit_crit_edge
  %retval.0.i67 = phi i32 [ %33, %if.end.i ], [ 0, %do.end.conv_fec.exit_crit_edge ]
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %34 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i67, ptr %fec_inner, align 4
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 15
  %35 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delivery_system, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %36, label %conv_fec.exit.cleanup_crit_edge [
    i32 4, label %conv_fec.exit.sw.epilog44_crit_edge
    i32 6, label %sw.bb
    i32 5, label %conv_fec.exit.sw.bb28_crit_edge
  ]

conv_fec.exit.sw.bb28_crit_edge:                  ; preds = %conv_fec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

conv_fec.exit.sw.epilog44_crit_edge:              ; preds = %conv_fec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

conv_fec.exit.cleanup_crit_edge:                  ; preds = %conv_fec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %conv_fec.exit
  %arrayidx24 = getelementptr inbounds [24 x i32], ptr %reg_data, i32 0, i32 22
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx24, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %39, label %sw.bb.sw.bb28_crit_edge [
    i32 0, label %sw.bb.sw.bb28.sink.split_crit_edge
    i32 1, label %sw.bb26
  ]

sw.bb.sw.bb28.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28.sink.split

sw.bb.sw.bb28_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

sw.bb26:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28.sink.split

sw.bb28.sink.split:                               ; preds = %sw.bb26, %sw.bb.sw.bb28.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb26 ], [ 1, %sw.bb.sw.bb28.sink.split_crit_edge ]
  %pilot = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 13
  %41 = ptrtoint ptr %pilot to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %pilot, align 4
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb28.sink.split, %sw.bb.sw.bb28_crit_edge, %conv_fec.exit.sw.bb28_crit_edge
  %arrayidx29 = getelementptr inbounds [24 x i32], ptr %reg_data, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx29, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %43, label %sw.bb28.sw.epilog34_crit_edge [
    i32 1, label %sw.bb28.sw.epilog34.sink.split_crit_edge
    i32 2, label %sw.bb31
  ]

sw.bb28.sw.epilog34.sink.split_crit_edge:         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog34.sink.split

sw.bb28.sw.epilog34_crit_edge:                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog34

sw.bb31:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog34.sink.split

sw.epilog34.sink.split:                           ; preds = %sw.bb31, %sw.bb28.sw.epilog34.sink.split_crit_edge
  %.sink69 = phi i32 [ 9, %sw.bb31 ], [ 0, %sw.bb28.sw.epilog34.sink.split_crit_edge ]
  %modulation32 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %45 = ptrtoint ptr %modulation32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink69, ptr %modulation32, align 4
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.epilog34.sink.split, %sw.bb28.sw.epilog34_crit_edge
  %arrayidx35 = getelementptr inbounds [24 x i32], ptr %reg_data, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx35, align 4
  %switch.tableidx = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %48 = icmp ult i32 %switch.tableidx, 3
  br i1 %48, label %switch.lookup, label %sw.epilog34.sw.epilog44_crit_edge

sw.epilog34.sw.epilog44_crit_edge:                ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

switch.lookup:                                    ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.get_frontend, i32 0, i32 %switch.tableidx
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  %rolloff = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 14
  %50 = ptrtoint ptr %rolloff to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %switch.load, ptr %rolloff, align 4
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %switch.lookup, %sw.epilog34.sw.epilog44_crit_edge, %conv_fec.exit.sw.epilog44_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %conv_fec.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog44 ], [ -22, %conv_fec.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %reg_data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_status(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %reg.i = alloca [8 x i32], align 4
  %reg_data.i48 = alloca i32, align 4
  %reg_data.i = alloca i32, align 4
  %reg_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #10
  %2 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg_data, align 4
  %base = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %status_lock = getelementptr inbounds %struct.mxl_base, ptr %4, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #10
  %demod = getelementptr inbounds %struct.mxl, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod, align 4
  %mul = shl i32 %6, 8
  %add = add i32 %mul, 1073727160
  %call = tail call fastcc i32 @write_register(ptr noundef %1, i32 noundef %add, i32 noundef 1)
  %7 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod, align 4
  %mul2 = shl i32 %8, 8
  %add3 = add i32 %mul2, 1073727056
  %call4 = call fastcc i32 @read_register(ptr noundef %1, i32 noundef %add3, ptr noundef nonnull %reg_data)
  %9 = ptrtoint ptr %demod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %demod, align 4
  %mul6 = shl i32 %10, 8
  %add7 = add i32 %mul6, 1073727160
  %call8 = call fastcc i32 @write_register(ptr noundef %1, i32 noundef %add7, i32 noundef 0)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %status_lock10 = getelementptr inbounds %struct.mxl_base, ptr %12, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %status_lock10) #10
  %13 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  %cond = select i1 %cmp, i32 31, i32 0
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %status, align 4
  %16 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i) #10
  %18 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reg_data.i, align 4
  %base.i = getelementptr inbounds %struct.mxl, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %status_lock.i = getelementptr inbounds %struct.mxl_base, ptr %20, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %status_lock.i, i32 noundef 0) #10
  %demod.i = getelementptr inbounds %struct.mxl, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod.i, align 4
  %mul.i = shl i32 %22, 8
  %add.i = add i32 %mul.i, 1073727160
  %call.i = call fastcc i32 @write_register(ptr noundef %17, i32 noundef %add.i, i32 noundef 1) #10
  %23 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %demod.i, align 4
  %mul2.i = shl i32 %24, 8
  %add3.i = add i32 %mul2.i, 1073727240
  %call4.i = call fastcc i32 @read_register(ptr noundef %17, i32 noundef %add3.i, ptr noundef nonnull %reg_data.i) #10
  %25 = ptrtoint ptr %demod.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %demod.i, align 4
  %mul6.i = shl i32 %26, 8
  %add7.i = add i32 %mul6.i, 1073727160
  %call8.i = call fastcc i32 @write_register(ptr noundef %17, i32 noundef %add7.i, i32 noundef 0) #10
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %status_lock10.i = getelementptr inbounds %struct.mxl_base, ptr %28, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %status_lock10.i) #10
  %stat11.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %29 = ptrtoint ptr %stat11.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %stat11.i, align 1
  %30 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_data.i, align 4
  %sext.i = shl i32 %31, 16
  %conv12.i = ashr exact i32 %sext.i, 16
  %mul13.i = mul nsw i32 %conv12.i, 10
  %conv14.i = sext i32 %mul13.i to i64
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %conv14.i, ptr %32, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i) #10
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %and = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i48) #10
  %38 = ptrtoint ptr %reg_data.i48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %reg_data.i48, align 4
  %base.i50 = getelementptr inbounds %struct.mxl, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i50, align 4
  %status_lock.i51 = getelementptr inbounds %struct.mxl_base, ptr %40, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %status_lock.i51, i32 noundef 0) #10
  %demod.i52 = getelementptr inbounds %struct.mxl, ptr %37, i32 0, i32 4
  %41 = ptrtoint ptr %demod.i52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %demod.i52, align 4
  %mul.i53 = shl i32 %42, 8
  %add.i54 = add i32 %mul.i53, 1073727160
  %call.i55 = call fastcc i32 @write_register(ptr noundef %37, i32 noundef %add.i54, i32 noundef 1) #10
  %43 = ptrtoint ptr %demod.i52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %demod.i52, align 4
  %mul2.i56 = shl i32 %44, 8
  %add3.i57 = add i32 %mul2.i56, 1073727088
  %call4.i58 = call fastcc i32 @read_register(ptr noundef %37, i32 noundef %add3.i57, ptr noundef nonnull %reg_data.i48) #10
  %45 = ptrtoint ptr %demod.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %demod.i52, align 4
  %mul6.i59 = shl i32 %46, 8
  %add7.i60 = add i32 %mul6.i59, 1073727160
  %call8.i61 = call fastcc i32 @write_register(ptr noundef %37, i32 noundef %add7.i60, i32 noundef 0) #10
  %47 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i50, align 4
  %status_lock10.i62 = getelementptr inbounds %struct.mxl_base, ptr %48, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %status_lock10.i62) #10
  %49 = ptrtoint ptr %reg_data.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_data.i48, align 4
  %sext.i64 = shl i32 %50, 16
  %conv12.i65 = ashr exact i32 %sext.i64, 16
  %mul13.i66 = mul nsw i32 %conv12.i65, 10
  %conv14.i67 = sext i32 %mul13.i66 to i64
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %conv14.i67, ptr %51, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i48) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink, ptr %53, align 1
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status, align 4
  %and13 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.end
  %57 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reg.i) #10
  %59 = getelementptr inbounds [8 x i32], ptr %reg.i, i32 0, i32 1
  %60 = getelementptr inbounds [8 x i32], ptr %reg.i, i32 0, i32 2
  %61 = getelementptr inbounds [8 x i32], ptr %reg.i, i32 0, i32 5
  %62 = getelementptr inbounds [8 x i32], ptr %reg.i, i32 0, i32 6
  %base.i69 = getelementptr inbounds %struct.mxl, ptr %58, i32 0, i32 1
  %63 = call ptr @memset(ptr %reg.i, i32 255, i32 32)
  %64 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i69, align 4
  %status_lock.i70 = getelementptr inbounds %struct.mxl_base, ptr %65, i32 0, i32 17
  call void @mutex_lock_nested(ptr noundef %status_lock.i70, i32 noundef 0) #10
  %demod.i71 = getelementptr inbounds %struct.mxl, ptr %58, i32 0, i32 4
  %66 = ptrtoint ptr %demod.i71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %demod.i71, align 4
  %mul.i72 = shl i32 %67, 8
  %add.i73 = add i32 %mul.i72, 1073727160
  %call.i74 = call fastcc i32 @write_register(ptr noundef %58, i32 noundef %add.i73, i32 noundef 1) #10
  %68 = ptrtoint ptr %demod.i71 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %demod.i71, align 4
  %mul2.i75 = shl i32 %69, 8
  %add3.i76 = add i32 %mul2.i75, 1073727176
  call fastcc void @read_register_block(ptr noundef %58, i32 noundef %add3.i76, i32 noundef 16, ptr noundef nonnull %reg.i) #10
  %70 = ptrtoint ptr %demod.i71 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %demod.i71, align 4
  %mul6.i77 = shl i32 %71, 8
  %add7.i78 = add i32 %mul6.i77, 1073727160
  %call8.i79 = call fastcc i32 @write_register(ptr noundef %58, i32 noundef %add7.i78, i32 noundef 0) #10
  %delivery_system.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %72 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delivery_system.i, align 4
  %74 = and i32 %73, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %switch.i = icmp eq i32 %74, 4
  br i1 %switch.i, label %sw.bb.i, label %if.then15.sw.epilog.i_crit_edge

if.then15.sw.epilog.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %75 = getelementptr inbounds [8 x i32], ptr %reg.i, i32 0, i32 3
  %stat.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %76 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 3, ptr %stat.i, align 1
  %77 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %60, align 4
  %conv.i = zext i32 %78 to i64
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %conv.i, ptr %79, align 1
  %stat14.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %81 = ptrtoint ptr %stat14.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %stat14.i, align 1
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %75, align 4
  %conv18.i = zext i32 %83 to i64
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %conv18.i, ptr %84, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then15.sw.epilog.i_crit_edge
  %86 = ptrtoint ptr %demod.i71 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %demod.i71, align 4
  %mul23.i = shl i32 %87, 8
  %add24.i = add i32 %mul23.i, 1073727120
  call fastcc void @read_register_block(ptr noundef %58, i32 noundef %add24.i, i32 noundef 28, ptr noundef nonnull %reg.i) #10
  %88 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %delivery_system.i, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %89, label %sw.epilog.i.read_ber.exit_crit_edge [
    i32 4, label %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge
    i32 5, label %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge80
    i32 6, label %sw.bb45.i
  ]

sw.epilog.i.sw.epilog65.sink.split.i_crit_edge80: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog65.sink.split.i

sw.epilog.i.sw.epilog65.sink.split.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog65.sink.split.i

sw.epilog.i.read_ber.exit_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_ber.exit

sw.bb45.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog65.sink.split.i

sw.epilog65.sink.split.i:                         ; preds = %sw.bb45.i, %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge, %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge80
  %.sink2.i = phi ptr [ %59, %sw.bb45.i ], [ %61, %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge ], [ %61, %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge80 ]
  %.sink1.i = phi ptr [ %60, %sw.bb45.i ], [ %62, %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge ], [ %62, %sw.epilog.i.sw.epilog65.sink.split.i_crit_edge80 ]
  %stat47.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %91 = ptrtoint ptr %stat47.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %stat47.i, align 1
  %92 = ptrtoint ptr %.sink2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %.sink2.i, align 4
  %conv51.i = zext i32 %93 to i64
  %94 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 %conv51.i, ptr %94, align 1
  %stat56.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %96 = ptrtoint ptr %stat56.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %stat56.i, align 1
  %97 = ptrtoint ptr %.sink1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %.sink1.i, align 4
  %conv60.i = zext i32 %98 to i64
  %99 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %conv60.i, ptr %99, align 1
  br label %read_ber.exit

read_ber.exit:                                    ; preds = %sw.epilog65.sink.split.i, %sw.epilog.i.read_ber.exit_crit_edge
  %101 = ptrtoint ptr %base.i69 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i69, align 4
  %status_lock67.i = getelementptr inbounds %struct.mxl_base, ptr %102, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %status_lock67.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reg.i) #10
  br label %if.end30

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stat18 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %103 = ptrtoint ptr %stat18 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %stat18, align 1
  %stat21 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %104 = ptrtoint ptr %stat21 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %stat21, align 1
  %stat24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %105 = ptrtoint ptr %stat24 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %stat24, align 1
  %stat27 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %106 = ptrtoint ptr %stat27 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %stat27, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.else17, %read_ber.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @send_master_cmd(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %cmd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_tuner(ptr nocapture noundef readonly %state, i32 noundef %tuner) unnamed_addr #0 align 64 {
entry:
  %cmd_buff = alloca [248 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %cmd_buff) #10
  %0 = getelementptr inbounds i8, ptr %cmd_buff, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !137
  %3 = ptrtoint ptr %cmd_buff to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -2, ptr %cmd_buff, align 1
  %arrayidx9 = getelementptr inbounds [248 x i8], ptr %cmd_buff, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [248 x i8], ptr %cmd_buff, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [248 x i8], ptr %cmd_buff, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 55, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [248 x i8], ptr %cmd_buff, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds [248 x i8], ptr %cmd_buff, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr inbounds [248 x i8], ptr %cmd_buff, i32 0, i32 6
  %9 = trunc i32 %tuner to i16
  %ctrl_tuner_cmd.sroa.0.0.insert.ext = shl i16 %9, 8
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %ctrl_tuner_cmd.sroa.0.0.insert.ext, ptr %arrayidx15, align 1
  %call = call fastcc i32 @send_command(ptr noundef %state, i32 noundef 8, ptr noundef nonnull %cmd_buff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call20 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %11 = shl nuw i32 1, %tuner
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp22.not = icmp eq i32 %14, 0
  br i1 %cmp22.not, label %if.end.if.end27_crit_edge, label %while.body

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body:                                       ; preds = %if.end
  call void @msleep(i32 noundef 20) #10
  %call24 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %17 = and i32 %16, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22.not.1 = icmp eq i32 %17, 0
  br i1 %cmp22.not.1, label %while.body.if.end27_crit_edge, label %while.body.1

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.1:                                     ; preds = %while.body
  call void @msleep(i32 noundef 20) #10
  %call24.1 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = and i32 %19, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.not.2 = icmp eq i32 %20, 0
  br i1 %cmp22.not.2, label %while.body.1.if.end27_crit_edge, label %while.body.2

while.body.1.if.end27_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.2:                                     ; preds = %while.body.1
  call void @msleep(i32 noundef 20) #10
  %call24.2 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %23 = and i32 %22, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22.not.3 = icmp eq i32 %23, 0
  br i1 %cmp22.not.3, label %while.body.2.if.end27_crit_edge, label %while.body.3

while.body.2.if.end27_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.3:                                     ; preds = %while.body.2
  call void @msleep(i32 noundef 20) #10
  %call24.3 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %26 = and i32 %25, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp22.not.4 = icmp eq i32 %26, 0
  br i1 %cmp22.not.4, label %while.body.3.if.end27_crit_edge, label %while.body.4

while.body.3.if.end27_crit_edge:                  ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.4:                                     ; preds = %while.body.3
  call void @msleep(i32 noundef 20) #10
  %call24.4 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %29 = and i32 %28, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22.not.5 = icmp eq i32 %29, 0
  br i1 %cmp22.not.5, label %while.body.4.if.end27_crit_edge, label %while.body.5

while.body.4.if.end27_crit_edge:                  ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.5:                                     ; preds = %while.body.4
  call void @msleep(i32 noundef 20) #10
  %call24.5 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %32 = and i32 %31, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp22.not.6 = icmp eq i32 %32, 0
  br i1 %cmp22.not.6, label %while.body.5.if.end27_crit_edge, label %while.body.6

while.body.5.if.end27_crit_edge:                  ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.6:                                     ; preds = %while.body.5
  call void @msleep(i32 noundef 20) #10
  %call24.6 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %35 = and i32 %34, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp22.not.7 = icmp eq i32 %35, 0
  br i1 %cmp22.not.7, label %while.body.6.if.end27_crit_edge, label %while.body.7

while.body.6.if.end27_crit_edge:                  ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.7:                                     ; preds = %while.body.6
  call void @msleep(i32 noundef 20) #10
  %call24.7 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %38 = and i32 %37, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp22.not.8 = icmp eq i32 %38, 0
  br i1 %cmp22.not.8, label %while.body.7.if.end27_crit_edge, label %while.body.8

while.body.7.if.end27_crit_edge:                  ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

while.body.8:                                     ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 20) #10
  %call24.8 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  br label %cleanup

if.end27:                                         ; preds = %while.body.7.if.end27_crit_edge, %while.body.6.if.end27_crit_edge, %while.body.5.if.end27_crit_edge, %while.body.4.if.end27_crit_edge, %while.body.3.if.end27_crit_edge, %while.body.2.if.end27_crit_edge, %while.body.1.if.end27_crit_edge, %while.body.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %call28 = call fastcc i32 @read_register(ptr noundef %state, i32 noundef 1073736568, ptr noundef nonnull %val)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_tuner.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enable_tuner, %if.then34)) #10
          to label %cleanup [label %if.then34], !srcloc !138

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %i2cdev = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 3
  %39 = ptrtoint ptr %i2cdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2cdev, align 4
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %shr35 = lshr i32 %42, %tuner
  %and36 = and i32 %shr35, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enable_tuner.__UNIQUE_ID_ddebug291, ptr noundef %40, ptr noundef nonnull @.str.56, i32 noundef %tuner, i32 noundef %and36) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end27, %while.body.8, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %cmd_buff) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_register_block(ptr nocapture noundef readonly %state, i32 noundef %reg, i32 noundef %size, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %msg.i.i1 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mxl, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %buf1 = getelementptr inbounds %struct.mxl_base, ptr %1, i32 0, i32 19
  %i2c_lock = getelementptr inbounds %struct.mxl_base, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -5, ptr %buf1, align 1
  %3 = trunc i32 %size to i8
  %conv = add i8 %3, 4
  %arrayidx3 = getelementptr %struct.mxl_base, ptr %1, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx3, align 1
  %conv4 = trunc i32 %reg to i8
  %arrayidx5 = getelementptr %struct.mxl_base, ptr %1, i32 0, i32 19, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %reg, 8
  %conv8 = trunc i32 %shr6 to i8
  %arrayidx9 = getelementptr %struct.mxl_base, ptr %1, i32 0, i32 19, i32 3
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %arrayidx9, align 1
  %shr10 = lshr i32 %reg, 16
  %conv12 = trunc i32 %shr10 to i8
  %arrayidx13 = getelementptr %struct.mxl_base, ptr %1, i32 0, i32 19, i32 4
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12, ptr %arrayidx13, align 1
  %shr14 = lshr i32 %reg, 24
  %conv16 = trunc i32 %shr14 to i8
  %arrayidx17 = getelementptr %struct.mxl_base, ptr %1, i32 0, i32 19, i32 5
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv16, ptr %arrayidx17, align 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %i2c.i = getelementptr inbounds %struct.mxl_base, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.mxl_base, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #10
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 458751, ptr %15, align 4
  %conv.i.i = zext i8 %14 to i16
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf1, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #10
  br i1 %cmp.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %i2c.i3 = getelementptr inbounds %struct.mxl_base, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %i2c.i3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c.i3, align 4
  %adr.i4 = getelementptr inbounds %struct.mxl_base, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %adr.i4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adr.i4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1) #10
  %26 = getelementptr inbounds i8, ptr %msg.i.i1, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4
  %conv.i.i5 = zext i8 %25 to i16
  %28 = ptrtoint ptr %msg.i.i1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i5, ptr %msg.i.i1, align 4
  %flags.i.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i6 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags.i.i6, align 2
  %conv2.i.i = trunc i32 %size to i16
  store i16 %conv2.i.i, ptr %26, align 4
  %buf.i.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i.i7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data, ptr %buf.i.i7, align 4
  %call.i.i8 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i1, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %i2c_lock20 = getelementptr inbounds %struct.mxl_base, ptr %32, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %i2c_lock20) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !121, !122, !123, !124, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @mxl5xx_attach.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1857, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mxl5xx_attach.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1858, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mxl5xx_attach.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1859, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_mxl5xx_attach, !10, !"__ksymtab_mxl5xx_attach", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1883, i32 1}
!11 = !{ptr @__UNIQUE_ID_description292, !12, !"__UNIQUE_ID_description292", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1885, i32 1}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1886, i32 1}
!15 = !{ptr @__UNIQUE_ID_file294, !16, !"__UNIQUE_ID_file294", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1887, i32 1}
!17 = !{ptr @__UNIQUE_ID_license295, !16, !"__UNIQUE_ID_license295", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1785, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ts_map1_to_1, !27, !"ts_map1_to_1", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1678, i32 11}
!28 = !{ptr @ts_map54x, !29, !"ts_map54x", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1689, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1617, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @validate_sku._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @validate_sku._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 253, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @read_register._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @read_register._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 260, i32 3}
!43 = !{ptr @read_register._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @read_register._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 213, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @write_register._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @write_register._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1033, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @firmware_download._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @firmware_download._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 944, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @check_fw._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @check_fw._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 951, i32 3}
!62 = !{ptr @check_fw._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @check_fw._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 889, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @do_firmware_download._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @do_firmware_download._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 899, i32 4}
!71 = !{ptr @do_firmware_download._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @do_firmware_download._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 236, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @write_firmware_block._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @write_firmware_block._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 182, i32 4}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @send_command._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @send_command._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @send_command._entry.36, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 191, i32 4}
!85 = !{ptr @send_command._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 160, i32 3}
!88 = !{ptr @read_register_unlocked._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @read_register_unlocked._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @read_register_unlocked._entry.39, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 166, i32 3}
!92 = !{ptr @read_register_unlocked._entry_ptr.40, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1661, i32 2}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @get_fwinfo._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @get_fwinfo._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1666, i32 2}
!100 = !{ptr @get_fwinfo._entry.43, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @get_fwinfo._entry_ptr.45, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1671, i32 2}
!104 = !{ptr @get_fwinfo._entry.46, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @get_fwinfo._entry_ptr.48, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1321, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @set_drive_strength._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @set_drive_strength._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1322, i32 2}
!113 = !{ptr @set_drive_strength._entry.51, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @set_drive_strength._entry_ptr.53, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @mxllist, !116, !"mxllist", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 36, i32 8}
!117 = !{ptr @mxl_ops, !118, !"mxl_ops", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 774, i32 38}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 1370, i32 2}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @enable_tuner.__UNIQUE_ID_ddebug291, !120, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/mxl5xx.c", i32 702, i32 2}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @get_frontend.__UNIQUE_ID_ddebug290, !125, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{i64 2148743395, i64 2148743400, i64 2148743413, i64 2148743457, i64 2148743491, i64 2148743512}
