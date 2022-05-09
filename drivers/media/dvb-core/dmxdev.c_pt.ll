; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-core/dmxdev.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dmxdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_dmxdev_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmxdev_init\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmxdev_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmxdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmxdev_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmxdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_dmxdev_release\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_dmxdev_release\09\09\09\09"
module asm "\09.long\09__crc_dvb_dmxdev_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_dmxdev_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_dmxdev_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_dmxdev_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev_filter = type { %union.anon.76, %union.anon.77, %union.anon.78, i32, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.timer_list, i32, [3 x i8] }
%union.anon.76 = type { ptr }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.dmx_sct_filter_params }
%struct.dmx_sct_filter_params = type { i16, %struct.dmx_filter, i32, i32 }
%struct.dmx_filter = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dmx_stc = type { i32, i32, i64 }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_ts_feed = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
%struct.dmx_pes_filter_params = type { i16, i32, i32, i32, i32 }
%struct.dmxdev_feed = type { i16, ptr, %struct.list_head }
%struct.dmx_frontend = type { %struct.list_head, i32 }

@__param_str_debug = internal constant [15 x i8] c"dvb_core.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [28 x i8] c"dvb_core.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug237 = internal constant [57 x i8] c"dvb_core.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@dvb_dmxdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dmxdev->mutex\00", [17 x i8] zeroinitializer }, align 32
@dvb_dmxdev_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dmxdev->lock\00", [18 x i8] zeroinitializer }, align 32
@dvbdev_demux = internal constant { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_demux_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr @.str.4, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvbdev_dvr = internal constant { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_dvr_fops, ptr null, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr @.str.26, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_dmxdev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmxdev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmxdev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmxdev_init to i32), ptr @__kstrtab_dvb_dmxdev_init, ptr @__kstrtabns_dvb_dmxdev_init }, section "___ksymtab+dvb_dmxdev_init", align 4
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/dvb-core/dmxdev.c\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_dmxdev_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_dmxdev_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_dmxdev_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_dmxdev_release to i32), ptr @__kstrtab_dvb_dmxdev_release, ptr @__kstrtabns_dvb_dmxdev_release }, section "___ksymtab+dvb_dmxdev_release", align 4
@dvb_demux_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dvb_demux_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_demux_poll, ptr @dvb_demux_ioctl, ptr @dvb_demux_ioctl, ptr @dvb_demux_mmap, i32 0, ptr @dvb_demux_open, ptr null, ptr @dvb_demux_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb-demux\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dvb_dmxdev_filter_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dmxdev: DVB (%s): could not alloc feed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_dmxdev_filter_start\00", [40 x i8] zeroinitializer }, align 32
@dvb_dmxdev_filter_start._entry_ptr = internal global ptr @dvb_dmxdev_filter_start._entry, section ".printk_index", align 4
@dvb_dmxdev_filter_start._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dmxdev: DVB (%s): could not set feed\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_dmxdev_filter_start._entry_ptr.12 = internal global ptr @dvb_dmxdev_filter_start._entry.10, section ".printk_index", align 4
@dvb_dmxdev_filter_start._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dmxdev: %s: could not get filter\0A\00", [60 x i8] zeroinitializer }, align 32
@dvb_dmxdev_filter_start._entry_ptr.15 = internal global ptr @dvb_dmxdev_filter_start._entry.13, section ".printk_index", align 4
@dvb_dmxdev_section_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dmxdev: %s: section callback %*ph\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_dmxdev_section_callback\00", [36 x i8] zeroinitializer }, align 32
@dvb_dmxdev_section_callback._entry_ptr = internal global ptr @dvb_dmxdev_section_callback._entry, section ".printk_index", align 4
@dvb_dmxdev_buffer_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dmxdev: %s: buffer overflow\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_dmxdev_buffer_write\00", [40 x i8] zeroinitializer }, align 32
@dvb_dmxdev_buffer_write._entry_ptr = internal global ptr @dvb_dmxdev_buffer_write._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dvb_dmxdev_filter_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017dmxdev: %s: %s: PID=0x%04x, flags=%02x, timeout=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_dmxdev_filter_set\00", [42 x i8] zeroinitializer }, align 32
@dvb_dmxdev_filter_set._entry_ptr = internal global ptr @dvb_dmxdev_filter_set._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dvb_demux_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dmxdevfilter->mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"demux_filter\00", [19 x i8] zeroinitializer }, align 32
@dvb_demux_open.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&dmxdevfilter->timer)\00", [41 x i8] zeroinitializer }, align 32
@dvb_dvr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dvb_dvr_read, ptr @dvb_dvr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_dvr_poll, ptr @dvb_dvr_ioctl, ptr null, ptr @dvb_dvr_mmap, i32 0, ptr @dvb_dvr_open, ptr null, ptr @dvb_dvr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb-dvr\00", [24 x i8] zeroinitializer }, align 32
@dvb_dvr_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017dmxdev: %s: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_dvr_poll\00", [19 x i8] zeroinitializer }, align 32
@dvb_dvr_poll._entry_ptr = internal global ptr @dvb_dvr_poll._entry, section ".printk_index", align 4
@dvb_dvr_set_buffer_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.3, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_dvr_set_buffer_size\00", [40 x i8] zeroinitializer }, align 32
@dvb_dvr_set_buffer_size._entry_ptr = internal global ptr @dvb_dvr_set_buffer_size._entry, section ".printk_index", align 4
@dvb_dvr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.30, ptr @.str.3, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_dvr_open\00", [19 x i8] zeroinitializer }, align 32
@dvb_dvr_open._entry_ptr = internal global ptr @dvb_dvr_open._entry, section ".printk_index", align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvr\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 28457, i64 28458, i64 28461, i64 1073901363, i64 1073901364, i64 1075081004, i64 1077702443, i64 2148167471, i64 3221778236, i64 3222040382, i64 3222302514, i64 3222826813, i64 3222826815, i64 3222826816]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 28461, i64 3221778236, i64 3222040382, i64 3222826813, i64 3222826815, i64 3222826816]
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 23, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1416, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1417, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"dvbdev_demux\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1268, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"dvbdev_dvr\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1395, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1453, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"dvb_demux_fops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1254, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1273, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 230, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 214, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 156, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 714, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 722, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 735, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 395, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 46, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 915, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 803, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 813, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 817, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"dvb_dvr_fops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1381, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1400, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1337, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 286, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 123, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [35 x i8] c"../drivers/media/dvb-core/dmxdev.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 173, i32 39 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_debug237, ptr @__UNIQUE_ID_debugtype236, ptr @__ksymtab_dvb_dmxdev_init, ptr @__ksymtab_dvb_dmxdev_release, ptr @__param_debug, ptr @dvb_dmxdev_buffer_write._entry, ptr @dvb_dmxdev_buffer_write._entry_ptr, ptr @dvb_dmxdev_filter_set._entry, ptr @dvb_dmxdev_filter_set._entry_ptr, ptr @dvb_dmxdev_filter_start._entry, ptr @dvb_dmxdev_filter_start._entry.10, ptr @dvb_dmxdev_filter_start._entry.13, ptr @dvb_dmxdev_filter_start._entry_ptr, ptr @dvb_dmxdev_filter_start._entry_ptr.12, ptr @dvb_dmxdev_filter_start._entry_ptr.15, ptr @dvb_dmxdev_section_callback._entry, ptr @dvb_dmxdev_section_callback._entry_ptr, ptr @dvb_dvr_open._entry, ptr @dvb_dvr_open._entry_ptr, ptr @dvb_dvr_poll._entry, ptr @dvb_dvr_poll._entry_ptr, ptr @dvb_dvr_set_buffer_size._entry, ptr @dvb_dvr_set_buffer_size._entry_ptr, ptr @debug, ptr @dvb_dmxdev_init.__key, ptr @.str, ptr @dvb_dmxdev_init.__key.1, ptr @.str.2, ptr @dvbdev_demux, ptr @dvbdev_dvr, ptr @.str.3, ptr @dvb_demux_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dvb_demux_open.__key, ptr @.str.22, ptr @.str.23, ptr @dvb_demux_open.__key.24, ptr @.str.25, ptr @dvb_dvr_fops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_demux to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_dvr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_filter_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_filter_start._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_filter_start._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_section_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_buffer_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dmxdev_filter_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_demux_open.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dvr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dvr_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dvr_set_buffer_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_dvr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 3
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %open = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open, align 4
  %call = tail call i32 %3(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %filternum = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 4
  %4 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filternum, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 1064) #8
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %retval.0.i = select i1 %7, i32 -1, i32 %8
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #11
  %filter = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 2
  %9 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %filter, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @dvb_dmxdev_init.__key) #8
  %lock = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @dvb_dmxdev_init.__key.1, i16 noundef signext 3) #8
  %10 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filternum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1260 = icmp sgt i32 %11, 0
  br i1 %cmp1260, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %filter, align 4
  %dev = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.061, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dmxdev, ptr %dev, align 4
  %15 = load ptr, ptr %filter, align 4
  %buffer = getelementptr %struct.dmxdev_filter, ptr %15, i32 %i.061, i32 6
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %buffer, align 4
  %17 = load ptr, ptr %filter, align 4
  %dev.i = getelementptr %struct.dmxdev_filter, ptr %17, i32 %i.061, i32 5
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %19, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %state1.i = getelementptr %struct.dmxdev_filter, ptr %17, i32 %i.061, i32 4
  %20 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state1.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %lock3.i = getelementptr inbounds %struct.dmxdev, ptr %22, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #8
  %inc = add nuw nsw i32 %i.061, 1
  %23 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %filternum, align 4
  %cmp12 = icmp slt i32 %inc, %24
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %.lcssa = phi i32 [ %11, %do.body.for.end_crit_edge ], [ %24, %for.body.for.end_crit_edge ]
  %call19 = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %dmxdev, ptr noundef nonnull @dvbdev_demux, ptr noundef %dmxdev, i32 noundef 2, i32 noundef %.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %for.end.err_register_dvbdev_crit_edge, label %if.end22

for.end.err_register_dvbdev_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_register_dvbdev

if.end22:                                         ; preds = %for.end
  %dvr_dvbdev = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 1
  %25 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %filternum, align 4
  %call24 = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %dvr_dvbdev, ptr noundef nonnull @dvbdev_dvr, ptr noundef %dmxdev, i32 noundef 3, i32 noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %err_register_dvr_dvbdev, label %if.end27

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_buffer = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 8
  tail call void @dvb_ringbuffer_init(ptr noundef %dvr_buffer, ptr noundef null, i32 noundef 8192) #8
  br label %cleanup

err_register_dvr_dvbdev:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dmxdev, align 4
  tail call void @dvb_unregister_device(ptr noundef %28) #8
  br label %err_register_dvbdev

err_register_dvbdev:                              ; preds = %err_register_dvr_dvbdev, %for.end.err_register_dvbdev_crit_edge
  %ret.0 = phi i32 [ %call19, %for.end.err_register_dvbdev_crit_edge ], [ %call24, %err_register_dvr_dvbdev ]
  %29 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %filter, align 4
  tail call void @vfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %filter, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_register_dvbdev, %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_register_dvbdev ], [ 0, %if.end27 ], [ -87, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_dmxdev_release(ptr nocapture noundef %dmxdev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry31 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exit = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 6
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %exit, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %exit, align 4
  %1 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmxdev, align 4
  %users = getelementptr inbounds %struct.dvb_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body1:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1454) #8
  %5 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmxdev, align 4
  %users5 = getelementptr inbounds %struct.dvb_device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %users5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %users5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %do.body1.if.end17_crit_edge, label %if.end

do.body1.if.end17_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end:                                           ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %10 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmxdev, align 4
  %wait_queue80 = getelementptr inbounds %struct.dvb_device, ptr %11, i32 0, i32 9
  %call81 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue80, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %12 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmxdev, align 4
  %users1082 = getelementptr inbounds %struct.dvb_device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %users1082 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %users1082, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1183 = icmp eq i32 %15, 1
  br i1 %cmp1183, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #8
  %16 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmxdev, align 4
  %wait_queue = getelementptr inbounds %struct.dvb_device, ptr %17, i32 0, i32 9
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %18 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmxdev, align 4
  %users10 = getelementptr inbounds %struct.dvb_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %users10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %users10, align 4
  %cmp11 = icmp eq i32 %21, 1
  br i1 %cmp11, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %22 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmxdev, align 4
  %wait_queue15 = getelementptr inbounds %struct.dvb_device, ptr %23, i32 0, i32 9
  call void @finish_wait(ptr noundef %wait_queue15, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end17

if.end17:                                         ; preds = %for.end, %do.body1.if.end17_crit_edge, %entry.if.end17_crit_edge
  %dvr_dvbdev = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 1
  %24 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvr_dvbdev, align 4
  %users18 = getelementptr inbounds %struct.dvb_device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %users18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %users18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp19 = icmp sgt i32 %27, 1
  br i1 %cmp19, label %do.body22, label %if.end17.if.end52_crit_edge

if.end17.if.end52_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.body22:                                        ; preds = %if.end17
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1458) #8
  %28 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dvr_dvbdev, align 4
  %users27 = getelementptr inbounds %struct.dvb_device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %users27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %users27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp28 = icmp eq i32 %31, 1
  br i1 %cmp28, label %do.body22.if.end52_crit_edge, label %if.end30

do.body22.if.end52_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end30:                                         ; preds = %do.body22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry31) #8
  %32 = call ptr @memset(ptr %__wq_entry31, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry31, i32 noundef 0) #8
  %33 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dvr_dvbdev, align 4
  %wait_queue3684 = getelementptr inbounds %struct.dvb_device, ptr %34, i32 0, i32 9
  %call3785 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue3684, ptr noundef nonnull %__wq_entry31, i32 noundef 2) #8
  %35 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dvr_dvbdev, align 4
  %users3986 = getelementptr inbounds %struct.dvb_device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %users3986 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %users3986, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp4087 = icmp eq i32 %38, 1
  br i1 %cmp4087, label %if.end30.for.end46_crit_edge, label %if.end30.cleanup43_crit_edge

if.end30.cleanup43_crit_edge:                     ; preds = %if.end30
  br label %cleanup43

if.end30.for.end46_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

cleanup43:                                        ; preds = %cleanup43.cleanup43_crit_edge, %if.end30.cleanup43_crit_edge
  call void @schedule() #8
  %39 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dvr_dvbdev, align 4
  %wait_queue36 = getelementptr inbounds %struct.dvb_device, ptr %40, i32 0, i32 9
  %call37 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue36, ptr noundef nonnull %__wq_entry31, i32 noundef 2) #8
  %41 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dvr_dvbdev, align 4
  %users39 = getelementptr inbounds %struct.dvb_device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %users39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %users39, align 4
  %cmp40 = icmp eq i32 %44, 1
  br i1 %cmp40, label %cleanup43.for.end46_crit_edge, label %cleanup43.cleanup43_crit_edge

cleanup43.cleanup43_crit_edge:                    ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup43

cleanup43.for.end46_crit_edge:                    ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.end46:                                        ; preds = %cleanup43.for.end46_crit_edge, %if.end30.for.end46_crit_edge
  %45 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dvr_dvbdev, align 4
  %wait_queue48 = getelementptr inbounds %struct.dvb_device, ptr %46, i32 0, i32 9
  call void @finish_wait(ptr noundef %wait_queue48, ptr noundef nonnull %__wq_entry31) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry31) #8
  br label %if.end52

if.end52:                                         ; preds = %for.end46, %do.body22.if.end52_crit_edge, %if.end17.if.end52_crit_edge
  %47 = ptrtoint ptr %dmxdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmxdev, align 4
  call void @dvb_unregister_device(ptr noundef %48) #8
  %49 = ptrtoint ptr %dvr_dvbdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dvr_dvbdev, align 4
  call void @dvb_unregister_device(ptr noundef %50) #8
  %filter = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 2
  %51 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %filter, align 4
  call void @vfree(ptr noundef %52) #8
  %53 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %filter, align 4
  %demux = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 3
  %54 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %demux, align 4
  %close = getelementptr inbounds %struct.dmx_demux, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %close, align 4
  %call57 = call i32 %57(ptr noundef %55) #8
  ret void
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %todo.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %todo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %if.then1.if.end28.i_crit_edge

if.then1.if.end28.i_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then.i:                                        ; preds = %if.then1
  %add.i = add nsw i32 %5, 3
  %6 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %count) #8
  %buffer.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %8, 2048
  %call.i = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %buffer.i, i32 noundef %and.i, ptr noundef %buf, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %todo.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %todo.i, align 4
  br label %if.end4

if.end7.i:                                        ; preds = %if.then.i
  %secheader.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %todo.i, align 4
  %idx.neg.i = sub i32 0, %11
  %add.ptr.i = getelementptr i8, ptr %secheader.i, i32 %idx.neg.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %call.i, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end7.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end7.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end7.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %call.i, i32 -1226833920) #12, !srcloc !100
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !101

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %call.i) #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !102
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %call.i) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end7.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %call.i, %if.end7.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %call.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end11.i, label %if.then11.i.i.i, !prof !101

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %call.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.end4

if.end11.i:                                       ; preds = %if.end.i.i.i
  %17 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %todo.i, align 4
  %sub14.i = sub i32 %18, %call.i
  store i32 %sub14.i, ptr %todo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %sub14.i)
  %cmp16.i = icmp sgt i32 %sub14.i, -3
  br i1 %cmp16.i, label %if.end11.i.if.end4_crit_edge, label %if.end18.i

if.end11.i.if.end4_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end18.i:                                       ; preds = %if.end11.i
  %sub.i = sub i32 %count, %call.i
  %add.ptr12.i = getelementptr i8, ptr %buf, i32 %call.i
  %arrayidx.i = getelementptr %struct.dmxdev_filter, ptr %1, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx21.i = getelementptr %struct.dmxdev_filter, ptr %1, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i, align 2
  %conv22.i = zext i8 %22 to i32
  %shl.masked.i = and i32 %shl.i, 3840
  %and23.i = or i32 %shl.masked.i, %conv22.i
  %23 = ptrtoint ptr %todo.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and23.i, ptr %todo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool25.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool25.not.i, label %if.end18.i.if.end4_crit_edge, label %if.end18.i.if.end28.i_crit_edge

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.end18.i.if.end4_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end28.i:                                       ; preds = %if.end18.i.if.end28.i_crit_edge, %if.then1.if.end28.i_crit_edge
  %buf.addr.0.i = phi ptr [ %add.ptr12.i, %if.end18.i.if.end28.i_crit_edge ], [ %buf, %if.then1.if.end28.i_crit_edge ]
  %count.addr.0.i = phi i32 [ %sub.i, %if.end18.i.if.end28.i_crit_edge ], [ %count, %if.then1.if.end28.i_crit_edge ]
  %done.0.i = phi i32 [ %call.i, %if.end18.i.if.end28.i_crit_edge ], [ 0, %if.then1.if.end28.i_crit_edge ]
  %24 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %todo.i, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %count.addr.0.i, i32 %25) #8
  %buffer35.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  %f_flags36.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %27 = ptrtoint ptr %f_flags36.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_flags36.i, align 4
  %and37.i = and i32 %28, 2048
  %call38.i = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %buffer35.i, i32 noundef %and37.i, ptr noundef %buf.addr.0.i, i32 noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end28.i.if.end4_crit_edge, label %if.end42.i

if.end28.i.if.end4_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end42.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %todo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %todo.i, align 4
  %sub44.i = sub i32 %30, %call38.i
  store i32 %sub44.i, ptr %todo.i, align 4
  %add45.i = add nuw i32 %call38.i, %done.0.i
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buffer = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %31 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f_flags, align 4
  %and = and i32 %32, 2048
  %call3 = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %buffer, i32 noundef %and, ptr noundef %buf, i32 noundef %count)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end42.i, %if.end28.i.if.end4_crit_edge, %if.end18.i.if.end4_crit_edge, %if.end11.i.if.end4_crit_edge, %if.then11.i.i.i, %if.then5.i
  %ret.0 = phi i32 [ %call3, %if.else ], [ %call.i, %if.then5.i ], [ %add45.i, %if.end42.i ], [ %call.i, %if.end11.i.if.end4_crit_edge ], [ %call.i, %if.end18.i.if.end4_crit_edge ], [ %call38.i, %if.end28.i.if.end4_crit_edge ], [ -14, %if.then11.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end4 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  %queue = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %poll_wait.exit.cleanup_crit_edge, label %lor.lhs.false

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %exit = getelementptr inbounds %struct.dmxdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %exit, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vb2_ctx = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call = tail call i32 @dvb_vb2_is_streaming(ptr noundef %vb2_ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @dvb_vb2_poll(ptr noundef %vb2_ctx, ptr noundef %file, ptr noundef %wait) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %.off = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 75
  %call19 = tail call i32 @dvb_ringbuffer_empty(ptr noundef %buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %or22 = or i32 %spec.select, 67
  %mask.1 = select i1 %tobool20.not, i32 %or22, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then3 ], [ %mask.1, %if.end13 ], [ 8, %lor.lhs.false.cleanup_crit_edge ], [ 8, %poll_wait.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usercopy(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, ptr noundef nonnull @dvb_demux_do_ioctl) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %may_do_mmap = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %may_do_mmap to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %may_do_mmap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex4 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %vb2_ctx = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call10 = tail call i32 @dvb_vb2_mmap(ptr noundef %vb2_ctx, ptr noundef %vma) #8
  tail call void @mutex_unlock(ptr noundef %mutex4) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call10, %if.end9 ], [ -512, %if.end3.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %filter = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %filternum = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %filternum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp47 = icmp sgt i32 %7, 0
  br i1 %cmp47, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %state = getelementptr %struct.dmxdev_filter, ptr %9, i32 %i.048, i32 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.048, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp9 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp9, label %for.end.cleanup.sink.split_crit_edge, label %if.end12

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %filter, align 4
  %arrayidx14 = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa
  %mutex15 = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 8
  tail call void @__mutex_init(ptr noundef %mutex15, ptr noundef nonnull @.str.22, ptr noundef nonnull @dvb_demux_open.__key) #8
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx14, ptr %private_data, align 4
  %may_do_mmap = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %may_do_mmap to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %may_do_mmap, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %may_do_mmap, align 4
  %buffer = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 6
  tail call void @dvb_ringbuffer_init(ptr noundef %buffer, ptr noundef null, i32 noundef 8192) #8
  %vb2_ctx = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 7
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and = and i32 %17, 2048
  %call17 = tail call i32 @dvb_vb2_init(ptr noundef %vb2_ctx, ptr noundef nonnull @.str.23, i32 noundef %and) #8
  %type = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 4
  %dev.i = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 5
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %20, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %state1.i = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 4
  %21 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state1.i, align 4
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %lock3.i = getelementptr inbounds %struct.dmxdev, ptr %23, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #8
  %timer = getelementptr %struct.dmxdev_filter, ptr %13, i32 %i.0.lcssa, i32 9
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dvb_dmxdev_filter_timeout, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @dvb_demux_open.__key.24) #8
  %users = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %users, align 4
  %inc21 = add i32 %25, 1
  store i32 %inc21, ptr %users, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %for.end.cleanup.sink.split_crit_edge, %for.inc.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end12 ], [ -24, %for.end.cleanup.sink.split_crit_edge ], [ -24, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %mutex.i = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %mutex1.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex1.i, i32 noundef 0) #8
  %vb2_ctx.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @dvb_vb2_is_streaming(ptr noundef %vb2_ctx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @dvb_vb2_stream_off(ptr noundef %vb2_ctx.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call5.i = tail call i32 @dvb_vb2_release(ptr noundef %vb2_ctx.i) #8
  %call6.i = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %1) #8
  %state.i.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 2
  br i1 %cmp.i.i, label %if.end.i.dvb_dmxdev_filter_reset.exit.i_crit_edge, label %if.end.i.i

if.end.i.dvb_dmxdev_filter_reset.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_filter_reset.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %type.i.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i.i = icmp eq i32 %7, 2
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end.i.i.if.end3.i.i_crit_edge

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %feed1.i.i.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %feed1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %feed1.i.i.i, align 4
  %cmp.not34.i.i.i = icmp eq ptr %9, %feed1.i.i.i
  br i1 %cmp.not34.i.i.i, label %if.then2.i.i.do.body.i.i.i_crit_edge, label %if.then2.i.i.for.body.i.i.i_crit_edge

if.then2.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.then2.i.i
  br label %for.body.i.i.i

if.then2.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

for.body.i.i.i:                                   ; preds = %list_del.exit.i.i.i.for.body.i.i.i_crit_edge, %if.then2.i.i.for.body.i.i.i_crit_edge
  %.pn.in35.i.i.i = phi ptr [ %.pn.i.i.i, %list_del.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %9, %if.then2.i.i.for.body.i.i.i_crit_edge ]
  %feed.0.i.i.i = getelementptr i8, ptr %.pn.in35.i.i.i, i32 -8
  %10 = ptrtoint ptr %.pn.in35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i.i = load ptr, ptr %.pn.in35.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35.i.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del.exit.i.i.i_crit_edge

for.body.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in35.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %.pn.in35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %feed.0.i.i.i) #8
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %feed1.i.i.i
  br i1 %cmp.not.i.i.i, label %list_del.exit.i.i.i.do.body.i.i.i_crit_edge, label %list_del.exit.i.i.i.for.body.i.i.i_crit_edge

list_del.exit.i.i.i.for.body.i.i.i_crit_edge:     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

list_del.exit.i.i.i.do.body.i.i.i_crit_edge:      ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %list_del.exit.i.i.i.do.body.i.i.i_crit_edge, %if.then2.i.i.do.body.i.i.i_crit_edge
  %19 = ptrtoint ptr %feed1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %feed1.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %20, %feed1.i.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body.i.i.i.if.end3.i.i_crit_edge, label %do.body21.i.i.i, !prof !101

do.body.i.i.i.if.end3.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

do.body21.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/dvb-core/dmxdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #8, !srcloc !105
  unreachable

if.end3.i.i:                                      ; preds = %do.body.i.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type.i.i, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %lock.i.i.i = getelementptr inbounds %struct.dmxdev, ptr %23, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #8
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state.i.i, align 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %lock3.i.i.i = getelementptr inbounds %struct.dmxdev, ptr %26, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i.i) #8
  br label %dvb_dmxdev_filter_reset.exit.i

dvb_dmxdev_filter_reset.exit.i:                   ; preds = %if.end3.i.i, %if.end.i.dvb_dmxdev_filter_reset.exit.i_crit_edge
  %buffer.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer.i, align 4
  %tobool8.not.i = icmp eq ptr %28, null
  br i1 %tobool8.not.i, label %dvb_dmxdev_filter_reset.exit.i.dvb_dmxdev_filter_free.exit_crit_edge, label %if.then9.i

dvb_dmxdev_filter_reset.exit.i.dvb_dmxdev_filter_free.exit_crit_edge: ; preds = %dvb_dmxdev_filter_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_filter_free.exit

if.then9.i:                                       ; preds = %dvb_dmxdev_filter_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %29 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %buffer.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  tail call void @vfree(ptr noundef nonnull %28) #8
  br label %dvb_dmxdev_filter_free.exit

dvb_dmxdev_filter_free.exit:                      ; preds = %if.then9.i, %dvb_dmxdev_filter_reset.exit.i.dvb_dmxdev_filter_free.exit_crit_edge
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %lock.i.i = getelementptr inbounds %struct.dmxdev, ptr %31, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state.i.i, align 4
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %lock3.i.i = getelementptr inbounds %struct.dmxdev, ptr %34, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i) #8
  %queue.i = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %mutex1.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %users = getelementptr inbounds %struct.dvb_device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %users, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %users, align 4
  %39 = load ptr, ptr %3, align 4
  %users2 = getelementptr inbounds %struct.dvb_device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %users2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %users2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp = icmp eq i32 %41, 1
  br i1 %cmp, label %land.lhs.true, label %dvb_dmxdev_filter_free.exit.if.else_crit_edge

dvb_dmxdev_filter_free.exit.if.else_crit_edge:    ; preds = %dvb_dmxdev_filter_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %dvb_dmxdev_filter_free.exit
  %exit = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %42 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %exit, align 4
  %43 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp3.not = icmp eq i8 %43, 0
  br i1 %cmp3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %wait_queue = getelementptr inbounds %struct.dvb_device, ptr %45, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dvb_dmxdev_filter_free.exit.if.else_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %src, i32 noundef %non_blocking, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup53

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.dvb_ringbuffer, ptr %src, i32 0, i32 4
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.then2

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not23 = icmp eq i32 %count, 0
  br i1 %cmp.not23, label %for.cond.preheader.for.end49_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end49_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %non_blocking)
  %tobool5.not = icmp eq i32 %non_blocking, 0
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, ptr %src, i32 0, i32 5
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dvb_ringbuffer_flush(ptr noundef %src) #8
  br label %cleanup53

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.026 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %if.end48.for.body_crit_edge ]
  %todo.024 = phi i32 [ %count, %for.body.lr.ph ], [ %sub, %if.end48.for.body_crit_edge ]
  br i1 %tobool5.not, label %for.body.if.end8_crit_edge, label %land.lhs.true

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %call = call i32 @dvb_ringbuffer_empty(ptr noundef %src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.for.end49_crit_edge

land.lhs.true.for.end49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 78) #8
  %call12 = call i32 @dvb_ringbuffer_empty(ptr noundef %src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end8.if.end35_crit_edge, label %lor.lhs.false

if.end8.if.end35_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

lor.lhs.false:                                    ; preds = %if.end8
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not = icmp eq i32 %5, 0
  br i1 %cmp15.not, label %if.then16, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then16:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call1918 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call2019 = call i32 @dvb_ringbuffer_empty(ptr noundef %src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2019)
  %tobool21.not20 = icmp eq i32 %call2019, 0
  br i1 %tobool21.not20, label %if.then16.if.end31.thread10_crit_edge, label %if.then16.lor.lhs.false22_crit_edge

if.then16.lor.lhs.false22_crit_edge:              ; preds = %if.then16
  br label %lor.lhs.false22

if.then16.if.end31.thread10_crit_edge:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.thread10

lor.lhs.false22:                                  ; preds = %cleanup.lor.lhs.false22_crit_edge, %if.then16.lor.lhs.false22_crit_edge
  %call1921 = phi i32 [ %call19, %cleanup.lor.lhs.false22_crit_edge ], [ %call1918, %if.then16.lor.lhs.false22_crit_edge ]
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp24.not = icmp eq i32 %8, 0
  br i1 %cmp24.not, label %if.end26, label %lor.lhs.false22.if.end31.thread10_crit_edge

lor.lhs.false22.if.end31.thread10_crit_edge:      ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.thread10

if.end26:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1921)
  %tobool27.not = icmp eq i32 %call1921, 0
  br i1 %tobool27.not, label %cleanup, label %if.end31

cleanup:                                          ; preds = %if.end26
  call void @schedule() #8
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %call20 = call i32 @dvb_ringbuffer_empty(ptr noundef %src) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.if.end31.thread10_crit_edge, label %cleanup.lor.lhs.false22_crit_edge

cleanup.lor.lhs.false22_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false22

cleanup.if.end31.thread10_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.thread10

if.end31.thread10:                                ; preds = %cleanup.if.end31.thread10_crit_edge, %lor.lhs.false22.if.end31.thread10_crit_edge, %if.then16.if.end31.thread10_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end35

if.end31:                                         ; preds = %if.end26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1921)
  %cmp33 = icmp slt i32 %call1921, 0
  br i1 %cmp33, label %if.end31.for.end49_crit_edge, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end31.for.end49_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

if.end35:                                         ; preds = %if.end31.if.end35_crit_edge, %if.end31.thread10, %if.end8.if.end35_crit_edge
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool37.not = icmp eq i32 %.pr, 0
  br i1 %tobool37.not, label %if.end40, label %if.end35.if.then38_crit_edge

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then38:                                        ; preds = %if.end35.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge
  %10 = phi i32 [ %.pr, %if.end35.if.then38_crit_edge ], [ %5, %lor.lhs.false.if.then38_crit_edge ]
  call void @dvb_ringbuffer_flush(ptr noundef %src) #8
  br label %for.end49

if.end40:                                         ; preds = %if.end35
  %call41 = call i32 @dvb_ringbuffer_avail(ptr noundef %src) #8
  %11 = call i32 @llvm.umin.i32(i32 %call41, i32 %todo.024)
  %call45 = call i32 @dvb_ringbuffer_read_user(ptr noundef %src, ptr noundef %buf.addr.026, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end40.for.end49_crit_edge, label %if.end48

if.end40.for.end49_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

if.end48:                                         ; preds = %if.end40
  %add.ptr = getelementptr i8, ptr %buf.addr.026, i32 %call45
  %sub = sub i32 %todo.024, %call45
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end48.for.end49_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end48.for.end49_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

for.end49:                                        ; preds = %if.end48.for.end49_crit_edge, %if.end40.for.end49_crit_edge, %if.then38, %if.end31.for.end49_crit_edge, %land.lhs.true.for.end49_crit_edge, %for.cond.preheader.for.end49_crit_edge
  %todo.017 = phi i32 [ %todo.024, %if.then38 ], [ 0, %for.cond.preheader.for.end49_crit_edge ], [ 0, %if.end48.for.end49_crit_edge ], [ %todo.024, %if.end31.for.end49_crit_edge ], [ %todo.024, %if.end40.for.end49_crit_edge ], [ %todo.024, %land.lhs.true.for.end49_crit_edge ]
  %ret.1 = phi i32 [ %10, %if.then38 ], [ 0, %for.cond.preheader.for.end49_crit_edge ], [ %call45, %if.end48.for.end49_crit_edge ], [ %call1921, %if.end31.for.end49_crit_edge ], [ %call45, %if.end40.for.end49_crit_edge ], [ -11, %land.lhs.true.for.end49_crit_edge ]
  %sub50 = sub i32 %count, %todo.017
  call void @__sanitizer_cov_trace_cmp4(i32 %todo.017, i32 %count)
  %tobool51.not = icmp eq i32 %todo.017, %count
  %ret.1.sub50 = select i1 %tobool51.not, i32 %ret.1, i32 %sub50
  br label %cleanup53

cleanup53:                                        ; preds = %for.end49, %if.then2, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ %3, %if.then2 ], [ %ret.1.sub50, %for.end49 ], [ 0, %entry.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_read_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_is_streaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_demux_do_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %parg to i32
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup.sink.split_crit_edge [
    i32 28457, label %sw.bb
    i32 28458, label %sw.bb11
    i32 1077702443, label %sw.bb20
    i32 1075081004, label %sw.bb29
    i32 28461, label %sw.bb38
    i32 -2146799825, label %sw.bb47
    i32 -1072664782, label %sw.bb55
    i32 1073901363, label %sw.bb64
    i32 1073901364, label %sw.bb72
    i32 -1073189060, label %sw.bb80
    i32 -1072140483, label %sw.bb89
    i32 -1072926914, label %sw.bb99
    i32 -1072140481, label %sw.bb109
    i32 -1072140480, label %sw.bb127
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  %mutex1 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %sw.bb
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ult i32 %7, 2
  br i1 %cmp, label %if.end6.if.end9_crit_edge, label %if.else

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %1)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end6.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.else ], [ -22, %if.end6.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex1) #8
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %if.end
  %mutex12 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call13 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex12, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %sw.bb11.cleanup.sink.split_crit_edge

sw.bb11.cleanup.sink.split_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex12) #8
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %if.end
  %mutex21 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call22 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex21, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %sw.bb20.cleanup.sink.split_crit_edge

sw.bb20.cleanup.sink.split_crit_edge:             ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end26:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call fastcc i32 @dvb_dmxdev_filter_set(ptr noundef %1, ptr noundef %parg)
  tail call void @mutex_unlock(ptr noundef %mutex21) #8
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end
  %mutex30 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call31 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex30, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %sw.bb29.cleanup.sink.split_crit_edge

sw.bb29.cleanup.sink.split_crit_edge:             ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end35:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call fastcc i32 @dvb_dmxdev_pes_filter_set(ptr noundef %3, ptr noundef %1, ptr noundef %parg)
  tail call void @mutex_unlock(ptr noundef %mutex30) #8
  br label %cleanup.sink.split

sw.bb38:                                          ; preds = %if.end
  %mutex39 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call40 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex39, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end44, label %sw.bb38.cleanup.sink.split_crit_edge

sw.bb38.cleanup.sink.split_crit_edge:             ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end44:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call fastcc i32 @dvb_dmxdev_set_buffer_size(ptr noundef %1, i32 noundef %4)
  tail call void @mutex_unlock(ptr noundef %mutex39) #8
  br label %cleanup.sink.split

sw.bb47:                                          ; preds = %if.end
  %demux = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demux, align 4
  %get_pes_pids = getelementptr inbounds %struct.dmx_demux, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %get_pes_pids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_pes_pids, align 4
  %tobool48.not = icmp eq ptr %11, null
  br i1 %tobool48.not, label %sw.bb47.cleanup.sink.split_crit_edge, label %if.end50

sw.bb47.cleanup.sink.split_crit_edge:             ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end50:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 %11(ptr noundef %9, ptr noundef %parg) #8
  br label %cleanup.sink.split

sw.bb55:                                          ; preds = %if.end
  %demux56 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %demux56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %demux56, align 4
  %get_stc = getelementptr inbounds %struct.dmx_demux, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %get_stc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_stc, align 4
  %tobool57.not = icmp eq ptr %15, null
  br i1 %tobool57.not, label %sw.bb55.cleanup.sink.split_crit_edge, label %if.end59

sw.bb55.cleanup.sink.split_crit_edge:             ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end59:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parg, align 8
  %stc = getelementptr inbounds %struct.dmx_stc, ptr %parg, i32 0, i32 2
  %base = getelementptr inbounds %struct.dmx_stc, ptr %parg, i32 0, i32 1
  %call63 = tail call i32 %15(ptr noundef %13, i32 noundef %17, ptr noundef %stc, ptr noundef %base) #8
  br label %cleanup.sink.split

sw.bb64:                                          ; preds = %if.end
  %mutex65 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call66 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex65, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %sw.bb64.cleanup.sink.split_crit_edge

sw.bb64.cleanup.sink.split_crit_edge:             ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end69:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %parg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %parg, align 2
  %call70 = tail call fastcc i32 @dvb_dmxdev_add_pid(ptr noundef %3, ptr noundef %1, i16 noundef zeroext %19)
  tail call void @mutex_unlock(ptr noundef %mutex65) #8
  br label %cleanup.sink.split

sw.bb72:                                          ; preds = %if.end
  %mutex73 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call74 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex73, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %sw.bb72.cleanup.sink.split_crit_edge

sw.bb72.cleanup.sink.split_crit_edge:             ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end77:                                         ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %parg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %parg, align 2
  %call78 = tail call fastcc i32 @dvb_dmxdev_remove_pid(ptr noundef %1, i16 noundef zeroext %21)
  tail call void @mutex_unlock(ptr noundef %mutex73) #8
  br label %cleanup.sink.split

sw.bb80:                                          ; preds = %if.end
  %mutex81 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call82 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex81, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end86, label %sw.bb80.cleanup.sink.split_crit_edge

sw.bb80.cleanup.sink.split_crit_edge:             ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end86:                                         ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  %vb2_ctx = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call87 = tail call i32 @dvb_vb2_reqbufs(ptr noundef %vb2_ctx, ptr noundef %parg) #8
  tail call void @mutex_unlock(ptr noundef %mutex81) #8
  br label %cleanup.sink.split

sw.bb89:                                          ; preds = %if.end
  %mutex90 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call91 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex90, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end95, label %sw.bb89.cleanup.sink.split_crit_edge

sw.bb89.cleanup.sink.split_crit_edge:             ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end95:                                         ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #10
  %vb2_ctx96 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call97 = tail call i32 @dvb_vb2_querybuf(ptr noundef %vb2_ctx96, ptr noundef %parg) #8
  tail call void @mutex_unlock(ptr noundef %mutex90) #8
  br label %cleanup.sink.split

sw.bb99:                                          ; preds = %if.end
  %mutex100 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call101 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex100, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end105, label %sw.bb99.cleanup.sink.split_crit_edge

sw.bb99.cleanup.sink.split_crit_edge:             ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end105:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #10
  %vb2_ctx106 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call107 = tail call i32 @dvb_vb2_expbuf(ptr noundef %vb2_ctx106, ptr noundef %parg) #8
  tail call void @mutex_unlock(ptr noundef %mutex100) #8
  br label %cleanup.sink.split

sw.bb109:                                         ; preds = %if.end
  %mutex110 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call111 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex110, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end115, label %sw.bb109.cleanup.sink.split_crit_edge

sw.bb109.cleanup.sink.split_crit_edge:            ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end115:                                        ; preds = %sw.bb109
  %vb2_ctx116 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call117 = tail call i32 @dvb_vb2_qbuf(ptr noundef %vb2_ctx116, ptr noundef %parg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %land.lhs.true, label %if.end115.if.end125_crit_edge

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

land.lhs.true:                                    ; preds = %if.end115
  %call120 = tail call i32 @dvb_vb2_is_streaming(ptr noundef %vb2_ctx116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then122, label %land.lhs.true.if.end125_crit_edge

land.lhs.true.if.end125_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then122:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call124 = tail call i32 @dvb_vb2_stream_on(ptr noundef %vb2_ctx116) #8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %land.lhs.true.if.end125_crit_edge, %if.end115.if.end125_crit_edge
  %ret.1 = phi i32 [ 0, %land.lhs.true.if.end125_crit_edge ], [ %call124, %if.then122 ], [ %call117, %if.end115.if.end125_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex110) #8
  br label %cleanup.sink.split

sw.bb127:                                         ; preds = %if.end
  %mutex128 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 8
  %call129 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex128, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end133, label %sw.bb127.cleanup.sink.split_crit_edge

sw.bb127.cleanup.sink.split_crit_edge:            ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end133:                                        ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #10
  %vb2_ctx134 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call135 = tail call i32 @dvb_vb2_dqbuf(ptr noundef %vb2_ctx134, ptr noundef %parg) #8
  tail call void @mutex_unlock(ptr noundef %mutex128) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end133, %sw.bb127.cleanup.sink.split_crit_edge, %if.end125, %sw.bb109.cleanup.sink.split_crit_edge, %if.end105, %sw.bb99.cleanup.sink.split_crit_edge, %if.end95, %sw.bb89.cleanup.sink.split_crit_edge, %if.end86, %sw.bb80.cleanup.sink.split_crit_edge, %if.end77, %sw.bb72.cleanup.sink.split_crit_edge, %if.end69, %sw.bb64.cleanup.sink.split_crit_edge, %if.end59, %sw.bb55.cleanup.sink.split_crit_edge, %if.end50, %sw.bb47.cleanup.sink.split_crit_edge, %if.end44, %sw.bb38.cleanup.sink.split_crit_edge, %if.end35, %sw.bb29.cleanup.sink.split_crit_edge, %if.end26, %sw.bb20.cleanup.sink.split_crit_edge, %if.end17, %sw.bb11.cleanup.sink.split_crit_edge, %if.end9, %sw.bb.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -512, %sw.bb.cleanup.sink.split_crit_edge ], [ -512, %sw.bb11.cleanup.sink.split_crit_edge ], [ -512, %sw.bb20.cleanup.sink.split_crit_edge ], [ -512, %sw.bb29.cleanup.sink.split_crit_edge ], [ -512, %sw.bb38.cleanup.sink.split_crit_edge ], [ -512, %sw.bb80.cleanup.sink.split_crit_edge ], [ -512, %sw.bb89.cleanup.sink.split_crit_edge ], [ -512, %sw.bb99.cleanup.sink.split_crit_edge ], [ -512, %sw.bb109.cleanup.sink.split_crit_edge ], [ -512, %sw.bb127.cleanup.sink.split_crit_edge ], [ %call135, %if.end133 ], [ %ret.1, %if.end125 ], [ %call107, %if.end105 ], [ %call97, %if.end95 ], [ %call87, %if.end86 ], [ %call78, %if.end77 ], [ %call70, %if.end69 ], [ %call63, %if.end59 ], [ 0, %if.end50 ], [ %call45, %if.end44 ], [ %call36, %if.end35 ], [ %call27, %if.end26 ], [ %call18, %if.end17 ], [ %ret.0, %if.end9 ], [ -22, %sw.bb47.cleanup.sink.split_crit_edge ], [ -22, %sw.bb55.cleanup.sink.split_crit_edge ], [ -512, %sw.bb64.cleanup.sink.split_crit_edge ], [ -512, %sw.bb72.cleanup.sink.split_crit_edge ], [ -25, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %filter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup144_crit_edge, label %if.end

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.not = icmp eq i32 %3, 2
  br i1 %cmp2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %filter)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %buffer = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 6
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then5, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then5:                                         ; preds = %if.end4
  %size = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %call7 = tail call noalias ptr @vmalloc(i32 noundef %7) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.cleanup144_crit_edge, label %if.end10

if.then5.cleanup144_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.dmxdev, ptr %9, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %buffer, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %lock15 = getelementptr inbounds %struct.dmxdev, ptr %12, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock15) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.end4.if.end16_crit_edge
  tail call void @dvb_ringbuffer_flush(ptr noundef %buffer) #8
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %14, label %if.end16.cleanup144_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb122
  ]

if.end16.cleanup144_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

sw.bb:                                            ; preds = %if.end16
  %params = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2
  %feed19 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 1
  %16 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %filter, align 4
  %17 = ptrtoint ptr %feed19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %feed19, align 4
  %filternum = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %filternum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20240 = icmp sgt i32 %19, 0
  br i1 %cmp20240, label %for.body.lr.ph, label %sw.bb.for.endthread-pre-split_crit_edge

sw.bb.for.endthread-pre-split_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.body.lr.ph:                                   ; preds = %sw.bb
  %filter21 = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %filter21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %filter21, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0241 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %state22 = getelementptr %struct.dmxdev_filter, ptr %21, i32 %i.0241, i32 4
  %22 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp23 = icmp ugt i32 %23, 2
  br i1 %cmp23, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %type26 = getelementptr %struct.dmxdev_filter, ptr %21, i32 %i.0241, i32 3
  %24 = ptrtoint ptr %type26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp27 = icmp eq i32 %25, 1
  br i1 %cmp27, label %land.lhs.true28, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true
  %params31 = getelementptr %struct.dmxdev_filter, ptr %21, i32 %i.0241, i32 2
  %26 = ptrtoint ptr %params31 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %params31, align 4
  %28 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %params, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp34 = icmp eq i16 %27, %29
  br i1 %cmp34, label %if.then36, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %feed39 = getelementptr %struct.dmxdev_filter, ptr %21, i32 %i.0241, i32 1
  %30 = ptrtoint ptr %feed39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %feed39, align 4
  %32 = ptrtoint ptr %feed19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %feed19, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true28.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0241, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %sw.bb.for.endthread-pre-split_crit_edge
  %33 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load ptr, ptr %feed19, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then36
  %34 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %31, %if.then36 ]
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %if.then42, label %if.else

if.then42:                                        ; preds = %for.end
  %demux = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %demux, align 4
  %allocate_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %allocate_section_feed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %allocate_section_feed, align 4
  %call44 = tail call i32 %38(ptr noundef %36, ptr noundef %feed19, ptr noundef nonnull @dvb_dmxdev_section_callback) #8
  %39 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %feed19, align 4
  %tobool45.not = icmp eq ptr %40, null
  br i1 %tobool45.not, label %do.end, label %if.end48

do.end:                                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #13
  br label %cleanup144

if.end48:                                         ; preds = %if.then42
  %set = getelementptr inbounds %struct.dmx_section_feed, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set, align 4
  %43 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %params, align 4
  %flags = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 3
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and = and i32 %46, 1
  %call51 = tail call i32 %42(ptr noundef nonnull %40, i16 noundef zeroext %44, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end57, label %if.end48.if.end63_crit_edge

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #13
  tail call fastcc void @dvb_dmxdev_feed_restart(ptr noundef %filter)
  br label %cleanup144

if.else:                                          ; preds = %for.end
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %lock.i.i = getelementptr inbounds %struct.dmxdev, ptr %48, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %state, align 4
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %lock3.i.i = getelementptr inbounds %struct.dmxdev, ptr %51, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i) #8
  %52 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %53, label %if.else.if.end63_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 9
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #8
  %55 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %feed19, align 4
  %stop_filtering.i = getelementptr inbounds %struct.dmx_section_feed, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %stop_filtering.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stop_filtering.i, align 4
  %call3.i = tail call i32 %58(ptr noundef %56) #8
  br label %if.end63

sw.bb4.i:                                         ; preds = %if.else
  %59 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn1.i = load ptr, ptr %feed19, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %feed19
  br i1 %cmp.not2.i, label %sw.bb4.i.if.end63_crit_edge, label %sw.bb4.i.for.body.i_crit_edge

sw.bb4.i.for.body.i_crit_edge:                    ; preds = %sw.bb4.i
  br label %for.body.i

sw.bb4.i.if.end63_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb4.i.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %sw.bb4.i.for.body.i_crit_edge ]
  %ts.i = getelementptr i8, ptr %.pn3.i, i32 -4
  %60 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ts.i, align 4
  %stop_filtering8.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %stop_filtering8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stop_filtering8.i, align 4
  %call10.i = tail call i32 %63(ptr noundef %61) #8
  %64 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %feed19
  br i1 %cmp.not.i, label %for.body.i.if.end63_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end63_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %for.body.i.if.end63_crit_edge, %sw.bb4.i.if.end63_crit_edge, %sw.bb.i, %if.else.if.end63_crit_edge, %if.end48.if.end63_crit_edge
  %65 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %feed19, align 4
  %allocate_filter = getelementptr inbounds %struct.dmx_section_feed, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %allocate_filter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %allocate_filter, align 4
  %call64 = tail call i32 %68(ptr noundef %66, ptr noundef %filter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end82

if.then67:                                        ; preds = %if.end63
  tail call fastcc void @dvb_dmxdev_feed_restart(ptr noundef %filter)
  %69 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %feed19, align 4
  %start_filtering = getelementptr inbounds %struct.dmx_section_feed, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %start_filtering to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %start_filtering, align 4
  %call70 = tail call i32 %72(ptr noundef %70) #8
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool72.not = icmp eq i32 %73, 0
  br i1 %tobool72.not, label %if.then67.cleanup144_crit_edge, label %do.end76

if.then67.cleanup144_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

do.end76:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9) #13
  br label %cleanup144

if.end82:                                         ; preds = %if.end63
  %74 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %filter, align 4
  %priv = getelementptr inbounds %struct.dmx_section_filter, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %filter, ptr %priv, align 4
  %77 = load ptr, ptr %filter, align 4
  %arrayidx83 = getelementptr [18 x i8], ptr %77, i32 0, i32 3
  %filter84 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1
  %arrayidx86 = getelementptr %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %arrayidx83, ptr %arrayidx86, i32 15)
  %79 = load ptr, ptr %filter, align 4
  %arrayidx87 = getelementptr %struct.dmx_section_filter, ptr %79, i32 0, i32 1, i32 3
  %mask = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 1
  %arrayidx89 = getelementptr %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 1, i32 1
  %80 = call ptr @memcpy(ptr %arrayidx87, ptr %arrayidx89, i32 15)
  %81 = load ptr, ptr %filter, align 4
  %arrayidx90 = getelementptr %struct.dmx_section_filter, ptr %81, i32 0, i32 2, i32 3
  %mode = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 2
  %arrayidx92 = getelementptr %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 1
  %82 = call ptr @memcpy(ptr %arrayidx90, ptr %arrayidx92, i32 15)
  %83 = ptrtoint ptr %filter84 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %filter84, align 2
  %85 = load ptr, ptr %filter, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %84, ptr %85, align 4
  %87 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mask, align 2
  %89 = load ptr, ptr %filter, align 4
  %filter_mask101 = getelementptr inbounds %struct.dmx_section_filter, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %filter_mask101 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %88, ptr %filter_mask101, align 2
  %91 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %mode, align 2
  %93 = load ptr, ptr %filter, align 4
  %filter_mode106 = getelementptr inbounds %struct.dmx_section_filter, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %filter_mode106 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %92, ptr %filter_mode106, align 4
  %95 = load ptr, ptr %filter, align 4
  %arrayidx109 = getelementptr %struct.dmx_section_filter, ptr %95, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx109, align 1
  %97 = load ptr, ptr %filter, align 4
  %arrayidx111 = getelementptr %struct.dmx_section_filter, ptr %97, i32 0, i32 1, i32 2
  %98 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx111, align 2
  %todo = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 10
  %99 = ptrtoint ptr %todo to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %todo, align 4
  %100 = ptrtoint ptr %feed19 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %feed19, align 4
  %start_filtering113 = getelementptr inbounds %struct.dmx_section_feed, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %start_filtering113 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %start_filtering113, align 4
  %call115 = tail call i32 %103(ptr noundef %101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end82.cleanup144_crit_edge, label %if.end119

if.end82.cleanup144_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

if.end119:                                        ; preds = %if.end82
  %timer.i228 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 9
  %call.i229 = tail call i32 @del_timer(ptr noundef %timer.i228) #8
  %timeout.i = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 2
  %104 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i, label %if.end119.sw.epilog_crit_edge, label %if.then.i

if.end119.sw.epilog_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %105, 100
  %add2.i = add i32 %mul.i, 50
  %div.i = udiv i32 %add2.i, 1000
  %add.i = add nuw nsw i32 %div.i, 1
  %add3.i = add i32 %add.i, %106
  %expires.i = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 9, i32 1
  %107 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add3.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer.i228) #8
  br label %sw.epilog

sw.bb122:                                         ; preds = %if.end16
  %feed123 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 1
  %output.i = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %pes_type.i = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  %demux.i = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 3
  br label %for.cond125

for.cond125:                                      ; preds = %if.end27.i.for.cond125_crit_edge, %sw.bb122
  %.pn.in = phi ptr [ %feed123, %sw.bb122 ], [ %.pn, %if.end27.i.for.cond125_crit_edge ]
  %108 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp128.not = icmp eq ptr %.pn, %feed123
  br i1 %cmp128.not, label %for.cond125.sw.epilog_crit_edge, label %for.body130

for.cond125.sw.epilog_crit_edge:                  ; preds = %for.cond125
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body130:                                      ; preds = %for.cond125
  %feed.0 = getelementptr i8, ptr %.pn, i32 -8
  %ts.i230 = getelementptr i8, ptr %.pn, i32 -4
  %109 = ptrtoint ptr %ts.i230 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %ts.i230, align 4
  %110 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %output.i, align 4
  %112 = ptrtoint ptr %pes_type.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pes_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %113)
  %cmp.i = icmp ult i32 %113, 20
  %..i = select i1 %cmp.i, i32 4, i32 0
  %114 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %111, label %for.body130.if.end13.i_crit_edge [
    i32 2, label %if.then2.i
    i32 3, label %if.then5.i
    i32 1, label %if.then9.i
  ]

for.body130.if.end13.i_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then2.i:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %..i, 1
  br label %if.end13.i

if.then5.i:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %..i, 9
  br label %if.end13.i

if.then9.i:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i = or i32 %..i, 11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.then5.i, %if.then2.i, %for.body130.if.end13.i_crit_edge
  %ts_type.1.i = phi i32 [ %or.i, %if.then2.i ], [ %or6.i, %if.then5.i ], [ %or10.i, %if.then9.i ], [ %..i, %for.body130.if.end13.i_crit_edge ]
  %115 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %demux.i, align 4
  %allocate_ts_feed.i = getelementptr inbounds %struct.dmx_demux, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %allocate_ts_feed.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %allocate_ts_feed.i, align 4
  %call16.i = tail call i32 %118(ptr noundef %116, ptr noundef %ts.i230, ptr noundef nonnull @dvb_dmxdev_ts_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end13.i.if.then134_crit_edge, label %if.end19.i

if.end13.i.if.then134_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

if.end19.i:                                       ; preds = %if.end13.i
  %119 = ptrtoint ptr %ts.i230 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ts.i230, align 4
  %priv.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %filter, ptr %priv.i, align 4
  %set.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %120, i32 0, i32 3
  %122 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %set.i, align 4
  %124 = ptrtoint ptr %feed.0 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %feed.0, align 4
  %call21.i = tail call i32 %123(ptr noundef %120, i16 noundef zeroext %125, i32 noundef %ts_type.1.i, i32 noundef %113, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end19.i.cleanup.sink.split.i_crit_edge, label %if.end27.i

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end27.i:                                       ; preds = %if.end19.i
  %start_filtering.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %120, i32 0, i32 4
  %126 = ptrtoint ptr %start_filtering.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %start_filtering.i, align 4
  %call28.i = tail call i32 %127(ptr noundef %120) #8
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end27.i.cleanup.sink.split.i_crit_edge, label %if.end27.i.for.cond125_crit_edge

if.end27.i.for.cond125_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond125

if.end27.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end27.i.cleanup.sink.split.i_crit_edge, %if.end19.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call21.i, %if.end19.i.cleanup.sink.split.i_crit_edge ], [ %call28.i, %if.end27.i.cleanup.sink.split.i_crit_edge ]
  %128 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %demux.i, align 4
  %release_ts_feed32.i = getelementptr inbounds %struct.dmx_demux, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %release_ts_feed32.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %release_ts_feed32.i, align 4
  %call34.i = tail call i32 %131(ptr noundef %129, ptr noundef %120) #8
  br label %if.then134

if.then134:                                       ; preds = %cleanup.sink.split.i, %if.end13.i.if.then134_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call16.i, %if.end13.i.if.then134_crit_edge ]
  %call135 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %filter)
  br label %cleanup144

sw.epilog:                                        ; preds = %for.cond125.sw.epilog_crit_edge, %if.then.i, %if.end119.sw.epilog_crit_edge
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %133, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %134 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 3, ptr %state, align 4
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev, align 4
  %lock3.i = getelementptr inbounds %struct.dmxdev, ptr %136, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #8
  br label %cleanup144

cleanup144:                                       ; preds = %sw.epilog, %if.then134, %if.end82.cleanup144_crit_edge, %do.end76, %if.then67.cleanup144_crit_edge, %do.end57, %do.end, %if.end16.cleanup144_crit_edge, %if.then5.cleanup144_crit_edge, %entry.cleanup144_crit_edge
  %retval.1 = phi i32 [ %retval.0.i.ph, %if.then134 ], [ 0, %sw.epilog ], [ -22, %entry.cleanup144_crit_edge ], [ -12, %if.then5.cleanup144_crit_edge ], [ -22, %if.end16.cleanup144_crit_edge ], [ %call115, %if.end82.cleanup144_crit_edge ], [ %call64, %if.then67.cleanup144_crit_edge ], [ %call64, %do.end76 ], [ %call44, %do.end ], [ %call51, %do.end57 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %dmxdevfilter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %feed1 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1
  %5 = ptrtoint ptr %feed1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %feed1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end3

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end3:                                          ; preds = %sw.bb
  %dev.i.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %state, align 4
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %lock3.i.i = getelementptr inbounds %struct.dmxdev, ptr %11, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i) #8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %13, label %if.end3.dvb_dmxdev_feed_stop.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

if.end3.dvb_dmxdev_feed_stop.exit_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_feed_stop.exit

sw.bb.i:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 9
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #8
  %15 = ptrtoint ptr %feed1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %feed1, align 4
  %stop_filtering.i = getelementptr inbounds %struct.dmx_section_feed, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %stop_filtering.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop_filtering.i, align 4
  %call3.i = tail call i32 %18(ptr noundef %16) #8
  br label %dvb_dmxdev_feed_stop.exit

sw.bb4.i:                                         ; preds = %if.end3
  %19 = ptrtoint ptr %feed1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn1.i = load ptr, ptr %feed1, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %feed1
  br i1 %cmp.not2.i, label %sw.bb4.i.dvb_dmxdev_feed_stop.exit_crit_edge, label %sw.bb4.i.for.body.i_crit_edge

sw.bb4.i.for.body.i_crit_edge:                    ; preds = %sw.bb4.i
  br label %for.body.i

sw.bb4.i.dvb_dmxdev_feed_stop.exit_crit_edge:     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_feed_stop.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb4.i.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %sw.bb4.i.for.body.i_crit_edge ]
  %ts.i = getelementptr i8, ptr %.pn3.i, i32 -4
  %20 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ts.i, align 4
  %stop_filtering8.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %stop_filtering8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop_filtering8.i, align 4
  %call10.i = tail call i32 %23(ptr noundef %21) #8
  %24 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %feed1
  br i1 %cmp.not.i, label %for.body.i.dvb_dmxdev_feed_stop.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.dvb_dmxdev_feed_stop.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_feed_stop.exit

dvb_dmxdev_feed_stop.exit:                        ; preds = %for.body.i.dvb_dmxdev_feed_stop.exit_crit_edge, %sw.bb4.i.dvb_dmxdev_feed_stop.exit_crit_edge, %sw.bb.i, %if.end3.dvb_dmxdev_feed_stop.exit_crit_edge
  %25 = ptrtoint ptr %dmxdevfilter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmxdevfilter, align 4
  %tobool4.not = icmp eq ptr %26, null
  br i1 %tobool4.not, label %dvb_dmxdev_feed_stop.exit.if.end10_crit_edge, label %if.then5

dvb_dmxdev_feed_stop.exit.if.end10_crit_edge:     ; preds = %dvb_dmxdev_feed_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %dvb_dmxdev_feed_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %feed1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %feed1, align 4
  %release_filter = getelementptr inbounds %struct.dmx_section_feed, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %release_filter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release_filter, align 4
  %call9 = tail call i32 %30(ptr noundef %28, ptr noundef nonnull %26) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %dvb_dmxdev_feed_stop.exit.if.end10_crit_edge
  tail call fastcc void @dvb_dmxdev_feed_restart(ptr noundef %dmxdevfilter)
  %31 = ptrtoint ptr %feed1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %feed1, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %dev.i.i52 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 5
  %32 = ptrtoint ptr %dev.i.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i52, align 4
  %lock.i.i53 = getelementptr inbounds %struct.dmxdev, ptr %33, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i53) #8
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %state, align 4
  %35 = ptrtoint ptr %dev.i.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i52, align 4
  %lock3.i.i55 = getelementptr inbounds %struct.dmxdev, ptr %36, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i55) #8
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %38, label %sw.bb13.dvb_dmxdev_feed_stop.exit74_crit_edge [
    i32 1, label %sw.bb.i62
    i32 2, label %sw.bb4.i66
  ]

sw.bb13.dvb_dmxdev_feed_stop.exit74_crit_edge:    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_feed_stop.exit74

sw.bb.i62:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i57 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 9
  %call.i58 = tail call i32 @del_timer(ptr noundef %timer.i57) #8
  %feed1.i59 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1
  %40 = ptrtoint ptr %feed1.i59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %feed1.i59, align 4
  %stop_filtering.i60 = getelementptr inbounds %struct.dmx_section_feed, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %stop_filtering.i60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stop_filtering.i60, align 4
  %call3.i61 = tail call i32 %43(ptr noundef %41) #8
  br label %dvb_dmxdev_feed_stop.exit74

sw.bb4.i66:                                       ; preds = %sw.bb13
  %feed5.i63 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1
  %44 = ptrtoint ptr %feed5.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn1.i64 = load ptr, ptr %feed5.i63, align 4
  %cmp.not2.i65 = icmp eq ptr %.pn1.i64, %feed5.i63
  br i1 %cmp.not2.i65, label %sw.bb4.i66.dvb_dmxdev_feed_stop.exit74_crit_edge, label %sw.bb4.i66.for.body.i73_crit_edge

sw.bb4.i66.for.body.i73_crit_edge:                ; preds = %sw.bb4.i66
  br label %for.body.i73

sw.bb4.i66.dvb_dmxdev_feed_stop.exit74_crit_edge: ; preds = %sw.bb4.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_feed_stop.exit74

for.body.i73:                                     ; preds = %for.body.i73.for.body.i73_crit_edge, %sw.bb4.i66.for.body.i73_crit_edge
  %.pn3.i67 = phi ptr [ %.pn.i71, %for.body.i73.for.body.i73_crit_edge ], [ %.pn1.i64, %sw.bb4.i66.for.body.i73_crit_edge ]
  %ts.i68 = getelementptr i8, ptr %.pn3.i67, i32 -4
  %45 = ptrtoint ptr %ts.i68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ts.i68, align 4
  %stop_filtering8.i69 = getelementptr inbounds %struct.dmx_ts_feed, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %stop_filtering8.i69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stop_filtering8.i69, align 4
  %call10.i70 = tail call i32 %48(ptr noundef %46) #8
  %49 = ptrtoint ptr %.pn3.i67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i71 = load ptr, ptr %.pn3.i67, align 4
  %cmp.not.i72 = icmp eq ptr %.pn.i71, %feed5.i63
  br i1 %cmp.not.i72, label %for.body.i73.dvb_dmxdev_feed_stop.exit74_crit_edge, label %for.body.i73.for.body.i73_crit_edge

for.body.i73.for.body.i73_crit_edge:              ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i73

for.body.i73.dvb_dmxdev_feed_stop.exit74_crit_edge: ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_feed_stop.exit74

dvb_dmxdev_feed_stop.exit74:                      ; preds = %for.body.i73.dvb_dmxdev_feed_stop.exit74_crit_edge, %sw.bb4.i66.dvb_dmxdev_feed_stop.exit74_crit_edge, %sw.bb.i62, %sw.bb13.dvb_dmxdev_feed_stop.exit74_crit_edge
  %50 = ptrtoint ptr %dev.i.i52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i52, align 4
  %demux15 = getelementptr inbounds %struct.dmxdev, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %demux15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %demux15, align 4
  %feed16 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1
  %54 = ptrtoint ptr %feed16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn75 = load ptr, ptr %feed16, align 4
  %cmp19.not76 = icmp eq ptr %.pn75, %feed16
  br i1 %cmp19.not76, label %dvb_dmxdev_feed_stop.exit74.sw.epilog_crit_edge, label %for.body.lr.ph

dvb_dmxdev_feed_stop.exit74.sw.epilog_crit_edge:  ; preds = %dvb_dmxdev_feed_stop.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %dvb_dmxdev_feed_stop.exit74
  %release_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %53, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn77 = phi ptr [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %55 = ptrtoint ptr %release_ts_feed to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %release_ts_feed, align 4
  %ts = getelementptr i8, ptr %.pn77, i32 -4
  %57 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ts, align 4
  %call20 = tail call i32 %56(ptr noundef %53, ptr noundef %58) #8
  %59 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %ts, align 4
  %60 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp19.not = icmp eq ptr %.pn, %feed16
  br i1 %cmp19.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %dvb_dmxdev_feed_stop.exit74.sw.epilog_crit_edge, %if.end10, %sw.bb.sw.epilog_crit_edge
  %buffer = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 6
  tail call void @dvb_ringbuffer_flush(ptr noundef %buffer) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_filter_set(ptr noundef %dmxdevfilter, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %params, align 4
  %conv = zext i16 %2 to i32
  %flags = getelementptr inbounds %struct.dmx_sct_filter_params, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %timeout = getelementptr inbounds %struct.dmx_sct_filter_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %4, i32 noundef %6) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %dmxdevfilter)
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %params4 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %params4, ptr %params, i32 60)
  %arrayidx.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = xor i8 %10, -1
  store i8 %11, ptr %arrayidx.i, align 1
  %arrayidx.1.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %14 = xor i8 %13, -1
  store i8 %14, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2.i, align 1
  %17 = xor i8 %16, -1
  store i8 %17, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3.i, align 1
  %20 = xor i8 %19, -1
  store i8 %20, ptr %arrayidx.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4.i, align 1
  %23 = xor i8 %22, -1
  store i8 %23, ptr %arrayidx.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5.i, align 1
  %26 = xor i8 %25, -1
  store i8 %26, ptr %arrayidx.5.i, align 1
  %arrayidx.6.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 6
  %27 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.6.i, align 1
  %29 = xor i8 %28, -1
  store i8 %29, ptr %arrayidx.6.i, align 1
  %arrayidx.7.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 7
  %30 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.7.i, align 1
  %32 = xor i8 %31, -1
  store i8 %32, ptr %arrayidx.7.i, align 1
  %arrayidx.8.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 8
  %33 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.8.i, align 1
  %35 = xor i8 %34, -1
  store i8 %35, ptr %arrayidx.8.i, align 1
  %arrayidx.9.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 9
  %36 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.9.i, align 1
  %38 = xor i8 %37, -1
  store i8 %38, ptr %arrayidx.9.i, align 1
  %arrayidx.10.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 10
  %39 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.10.i, align 1
  %41 = xor i8 %40, -1
  store i8 %41, ptr %arrayidx.10.i, align 1
  %arrayidx.11.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 11
  %42 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.11.i, align 1
  %44 = xor i8 %43, -1
  store i8 %44, ptr %arrayidx.11.i, align 1
  %arrayidx.12.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 12
  %45 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.12.i, align 1
  %47 = xor i8 %46, -1
  store i8 %47, ptr %arrayidx.12.i, align 1
  %arrayidx.13.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 13
  %48 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.13.i, align 1
  %50 = xor i8 %49, -1
  store i8 %50, ptr %arrayidx.13.i, align 1
  %arrayidx.14.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 14
  %51 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.14.i, align 1
  %53 = xor i8 %52, -1
  store i8 %53, ptr %arrayidx.14.i, align 1
  %arrayidx.15.i = getelementptr %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2, i32 0, i32 1, i32 2, i32 15
  %54 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.15.i, align 1
  %56 = xor i8 %55, -1
  store i8 %56, ptr %arrayidx.15.i, align 1
  %dev.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 5
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %58, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %state1.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 4
  %59 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %state1.i, align 4
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %lock3.i = getelementptr inbounds %struct.dmxdev, ptr %61, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #8
  %flags6 = getelementptr inbounds %struct.dmx_sct_filter_params, ptr %params, i32 0, i32 3
  %62 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags6, align 4
  %and = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end2.return_crit_edge, label %if.then8

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then8:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %dmxdevfilter)
  br label %return

return:                                           ; preds = %if.then8, %do.end2.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ 0, %do.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_pes_filter_set(ptr nocapture noundef readonly %dmxdev, ptr noundef %dmxdevfilter, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dvb_dmxdev_filter_stop(ptr noundef %dmxdevfilter)
  %state.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp ult i32 %1, 2
  br i1 %cmp.i, label %entry.dvb_dmxdev_filter_reset.exit_crit_edge, label %if.end.i

entry.dvb_dmxdev_filter_reset.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_filter_reset.exit

if.end.i:                                         ; preds = %entry
  %type.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i = icmp eq i32 %3, 2
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %feed1.i.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1
  %4 = ptrtoint ptr %feed1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feed1.i.i, align 4
  %cmp.not34.i.i = icmp eq ptr %5, %feed1.i.i
  br i1 %cmp.not34.i.i, label %if.then2.i.do.body.i.i_crit_edge, label %if.then2.i.for.body.i.i_crit_edge

if.then2.i.for.body.i.i_crit_edge:                ; preds = %if.then2.i
  br label %for.body.i.i

if.then2.i.do.body.i.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then2.i.for.body.i.i_crit_edge
  %.pn.in35.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %5, %if.then2.i.for.body.i.i_crit_edge ]
  %feed.0.i.i = getelementptr i8, ptr %.pn.in35.i.i, i32 -8
  %6 = ptrtoint ptr %.pn.in35.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in35.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in35.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in35.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %.pn.in35.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %feed.0.i.i) #8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %feed1.i.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.do.body.i.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

list_del.exit.i.i.do.body.i.i_crit_edge:          ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %list_del.exit.i.i.do.body.i.i_crit_edge, %if.then2.i.do.body.i.i_crit_edge
  %15 = ptrtoint ptr %feed1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %feed1.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %feed1.i.i
  br i1 %cmp.i.not.i.i, label %do.body.i.i.if.end3.i_crit_edge, label %do.body21.i.i, !prof !101

do.body.i.i.if.end3.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

do.body21.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/dvb-core/dmxdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 595, 0\0A.popsection", ""() #8, !srcloc !105
  unreachable

if.end3.i:                                        ; preds = %do.body.i.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 5
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.dmxdev, ptr %19, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state.i, align 4
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %lock3.i.i = getelementptr inbounds %struct.dmxdev, ptr %22, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i) #8
  br label %dvb_dmxdev_filter_reset.exit

dvb_dmxdev_filter_reset.exit:                     ; preds = %if.end3.i, %entry.dvb_dmxdev_filter_reset.exit_crit_edge
  %pes_type = getelementptr inbounds %struct.dmx_pes_filter_params, ptr %params, i32 0, i32 3
  %23 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pes_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %24)
  %cmp = icmp ugt i32 %24, 20
  br i1 %cmp, label %dvb_dmxdev_filter_reset.exit.cleanup_crit_edge, label %if.end

dvb_dmxdev_filter_reset.exit.cleanup_crit_edge:   ; preds = %dvb_dmxdev_filter_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dvb_dmxdev_filter_reset.exit
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 3
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %type, align 4
  %params2 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %params2, ptr %params, i32 20)
  %feed = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1
  %27 = ptrtoint ptr %feed to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %feed, ptr %feed, align 4
  %prev.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %feed, ptr %prev.i, align 4
  %dev.i = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 5
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %30, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %state.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %lock3.i = getelementptr inbounds %struct.dmxdev, ptr %33, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i) #8
  %34 = ptrtoint ptr %params2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %params2, align 4
  %call4 = tail call fastcc i32 @dvb_dmxdev_add_pid(ptr noundef %dmxdev, ptr noundef %dmxdevfilter, i16 noundef zeroext %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.dmx_pes_filter_params, ptr %params, i32 0, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.then8

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @dvb_dmxdev_filter_start(ptr noundef %dmxdevfilter)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dvb_dmxdev_filter_reset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ -22, %dvb_dmxdev_filter_reset.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_set_buffer_size(ptr noundef %dmxdevfilter, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 6
  %size1 = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp eq i32 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp4 = icmp ugt i32 %3, 2
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call noalias ptr @vmalloc(i32 noundef %size) #11
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %dmxdevfilter, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.dmxdev, ptr %7, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %buffer, align 4
  %9 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size1, align 4
  tail call void @dvb_ringbuffer_reset(ptr noundef %buffer) #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %lock13 = getelementptr inbounds %struct.dmxdev, ptr %11, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock13) #8
  tail call void @vfree(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_add_pid(ptr nocapture noundef readonly %dmxdev, ptr noundef %filter, i16 noundef zeroext %pid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ult i32 %3, 2
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %output = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp2.not = icmp eq i32 %5, 3
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %feed3 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 1
  %6 = ptrtoint ptr %feed3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %feed3, align 4
  %cmp.i.not = icmp eq ptr %7, %feed3
  br i1 %cmp.i.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #14
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %pid, ptr %call7.i.i, align 8
  %next = getelementptr inbounds %struct.dmxdev_feed, ptr %call7.i.i, i32 0, i32 2
  %feed11 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 1
  %10 = ptrtoint ptr %feed11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %feed11, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %feed11, ptr noundef %11) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add.exit_crit_edge

if.end9.list_add.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %next, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %next, align 8
  %prev3.i.i = getelementptr inbounds %struct.dmxdev_feed, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %feed11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %feed11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %next, ptr %feed11, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end9.list_add.exit_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp13 = icmp ugt i32 %17, 2
  br i1 %cmp13, label %if.then14, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %list_add.exit
  %ts.i = getelementptr inbounds %struct.dmxdev_feed, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ts.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ts.i, align 4
  %19 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output, align 4
  %pes_type.i = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2, i32 0, i32 1, i32 0, i32 10
  %21 = ptrtoint ptr %pes_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pes_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %22)
  %cmp.i26 = icmp ult i32 %22, 20
  %..i = select i1 %cmp.i26, i32 4, i32 0
  %23 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %20, label %if.then14.if.end13.i_crit_edge [
    i32 2, label %if.then2.i
    i32 3, label %if.then5.i
    i32 1, label %if.then9.i
  ]

if.then14.if.end13.i_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then2.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %..i, 1
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %or6.i = or i32 %..i, 9
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i = or i32 %..i, 11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.then5.i, %if.then2.i, %if.then14.if.end13.i_crit_edge
  %ts_type.1.i = phi i32 [ %or.i, %if.then2.i ], [ %or6.i, %if.then5.i ], [ %or10.i, %if.then9.i ], [ %..i, %if.then14.if.end13.i_crit_edge ]
  %demux.i = getelementptr inbounds %struct.dmxdev, ptr %dmxdev, i32 0, i32 3
  %24 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %demux.i, align 4
  %allocate_ts_feed.i = getelementptr inbounds %struct.dmx_demux, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %allocate_ts_feed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %allocate_ts_feed.i, align 4
  %call16.i = tail call i32 %27(ptr noundef %25, ptr noundef %ts.i, ptr noundef nonnull @dvb_dmxdev_ts_callback) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end13.i.cleanup_crit_edge, label %if.end19.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.i:                                       ; preds = %if.end13.i
  %28 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts.i, align 4
  %priv.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %filter, ptr %priv.i, align 4
  %set.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %29, i32 0, i32 3
  %31 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call7.i.i, align 8
  %call21.i = tail call i32 %32(ptr noundef %29, i16 noundef zeroext %34, i32 noundef %ts_type.1.i, i32 noundef %22, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end19.i.cleanup.sink.split.i_crit_edge, label %if.end27.i

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end27.i:                                       ; preds = %if.end19.i
  %start_filtering.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %29, i32 0, i32 4
  %35 = ptrtoint ptr %start_filtering.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %start_filtering.i, align 4
  %call28.i = tail call i32 %36(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end27.i.cleanup.sink.split.i_crit_edge, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end27.i.cleanup.sink.split.i_crit_edge, %if.end19.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call21.i, %if.end19.i.cleanup.sink.split.i_crit_edge ], [ %call28.i, %if.end27.i.cleanup.sink.split.i_crit_edge ]
  %37 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %demux.i, align 4
  %release_ts_feed32.i = getelementptr inbounds %struct.dmx_demux, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %release_ts_feed32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %release_ts_feed32.i, align 4
  %call34.i = tail call i32 %40(ptr noundef %38, ptr noundef %29) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end27.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ], [ %call16.i, %if.end13.i.cleanup_crit_edge ], [ 0, %if.end27.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_dmxdev_remove_pid(ptr noundef readonly %filter, i16 noundef zeroext %pid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp ult i32 %3, 2
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %feed2 = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 1
  %4 = ptrtoint ptr %feed2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feed2, align 4
  %cmp11.not4 = icmp eq ptr %5, %feed2
  br i1 %cmp11.not4, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in5 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn8, %for.inc.for.body_crit_edge ]
  %feed.07 = getelementptr i8, ptr %.pn.in5, i32 -8
  %6 = ptrtoint ptr %.pn.in5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn8 = load ptr, ptr %.pn.in5, align 4
  %7 = ptrtoint ptr %feed.07 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %feed.07, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %pid)
  %cmp14 = icmp eq i16 %8, %pid
  br i1 %cmp14, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ts = getelementptr i8, ptr %.pn.in5, i32 -4
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts, align 4
  %cmp16.not = icmp eq ptr %10, null
  br i1 %cmp16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  %stop_filtering = getelementptr inbounds %struct.dmx_ts_feed, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %stop_filtering to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop_filtering, align 4
  %call = tail call i32 %12(ptr noundef nonnull %10) #8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %demux = getelementptr inbounds %struct.dmxdev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %demux, align 4
  %release_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %release_ts_feed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release_ts_feed, align 4
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts, align 4
  %call24 = tail call i32 %18(ptr noundef %16, ptr noundef %20) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in5) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.list_del.exit_crit_edge

if.then18.list_del.exit_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in5, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then18.list_del.exit_crit_edge
  %27 = ptrtoint ptr %.pn.in5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in5, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %feed.07) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp11.not = icmp eq ptr %.pn8, %feed2
  br i1 %cmp11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_expbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_stream_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_dqbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dmxdev_section_callback(ptr noundef %buffer1, i32 noundef %buffer1_len, ptr noundef %buffer2, i32 noundef %buffer2_len, ptr nocapture noundef readonly %filter, ptr noundef %buffer_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dmx_section_filter, ptr %filter, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vb2_ctx = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  %call = tail call i32 @dvb_vb2_is_streaming(ptr noundef %vb2_ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %error = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %queue = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.dmxdev, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %state = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %lock6 = getelementptr inbounds %struct.dmxdev, ptr %9, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock6) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %timer = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 9
  %call8 = tail call i32 @del_timer(ptr noundef %timer) #8
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.end7.do.end15_crit_edge, label %do.end

if.end7.do.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 6, ptr noundef %buffer1) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.end7.do.end15_crit_edge
  %call17 = tail call i32 @dvb_vb2_is_streaming(ptr noundef %vb2_ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end15
  %call21 = tail call i32 @dvb_vb2_fill_buffer(ptr noundef %vb2_ctx, ptr noundef %buffer1, i32 noundef %buffer1_len, ptr noundef %buffer_flags) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %buffer1_len)
  %cmp22 = icmp eq i32 %call21, %buffer1_len
  br i1 %cmp22, label %if.then23, label %if.then19.if.end34_crit_edge

if.then19.if.end34_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 @dvb_vb2_fill_buffer(ptr noundef %vb2_ctx, ptr noundef %buffer2, i32 noundef %buffer2_len, ptr noundef %buffer_flags) #8
  br label %if.end34

if.else:                                          ; preds = %do.end15
  %buffer27 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer1_len)
  %tobool.not.i = icmp eq i32 %buffer1_len, 0
  br i1 %tobool.not.i, label %if.else.dvb_dmxdev_buffer_write.exit_crit_edge, label %if.end.i

if.else.dvb_dmxdev_buffer_write.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_buffer_write.exit

if.end.i:                                         ; preds = %if.else
  %11 = ptrtoint ptr %buffer27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer27, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge, label %if.end3.i

if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_buffer_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %buffer27) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %buffer1_len)
  %cmp.i = icmp ult i32 %call.i, %buffer1_len
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end3.i
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge, label %do.end.i

do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_buffer_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %dvb_dmxdev_buffer_write.exit

if.end12.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 @dvb_ringbuffer_write(ptr noundef %buffer27, ptr noundef %buffer1, i32 noundef %buffer1_len) #8
  br label %dvb_dmxdev_buffer_write.exit

dvb_dmxdev_buffer_write.exit:                     ; preds = %if.end12.i, %do.end.i, %do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge, %if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge, %if.else.dvb_dmxdev_buffer_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end12.i ], [ 0, %if.else.dvb_dmxdev_buffer_write.exit_crit_edge ], [ 0, %if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge ], [ -75, %do.end.i ], [ -75, %do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %buffer1_len)
  %cmp29 = icmp eq i32 %retval.0.i, %buffer1_len
  br i1 %cmp29, label %if.then30, label %dvb_dmxdev_buffer_write.exit.if.end34_crit_edge

dvb_dmxdev_buffer_write.exit.if.end34_crit_edge:  ; preds = %dvb_dmxdev_buffer_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30:                                        ; preds = %dvb_dmxdev_buffer_write.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer2_len)
  %tobool.not.i76 = icmp eq i32 %buffer2_len, 0
  br i1 %tobool.not.i76, label %if.then30.if.end39_crit_edge, label %if.end.i78

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end.i78:                                       ; preds = %if.then30
  %14 = ptrtoint ptr %buffer27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer27, align 4
  %tobool1.not.i77 = icmp eq ptr %15, null
  br i1 %tobool1.not.i77, label %if.end.i78.if.end39_crit_edge, label %if.end3.i81

if.end.i78.if.end39_crit_edge:                    ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end3.i81:                                      ; preds = %if.end.i78
  %call.i79 = tail call i32 @dvb_ringbuffer_free(ptr noundef %buffer27) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i79, i32 %buffer2_len)
  %cmp.i80 = icmp ult i32 %call.i79, %buffer2_len
  br i1 %cmp.i80, label %do.body.i83, label %if.end12.i87

do.body.i83:                                      ; preds = %if.end3.i81
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i82 = icmp eq i32 %16, 0
  br i1 %tobool5.not.i82, label %do.body.i83.if.then36_crit_edge, label %do.end.i85

do.body.i83.if.then36_crit_edge:                  ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

do.end.i85:                                       ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %if.then36

if.end12.i87:                                     ; preds = %if.end3.i81
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i86 = tail call i32 @dvb_ringbuffer_write(ptr noundef %buffer27, ptr noundef %buffer2, i32 noundef %buffer2_len) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end12.i87, %dvb_dmxdev_buffer_write.exit.if.end34_crit_edge, %if.then23, %if.then19.if.end34_crit_edge
  %ret.0 = phi i32 [ %call25, %if.then23 ], [ %call21, %if.then19.if.end34_crit_edge ], [ %retval.0.i, %dvb_dmxdev_buffer_write.exit.if.end34_crit_edge ], [ %call13.i86, %if.end12.i87 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp35 = icmp slt i32 %ret.0, 0
  br i1 %cmp35, label %if.end34.if.then36_crit_edge, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %do.end.i85, %do.body.i83.if.then36_crit_edge
  %ret.092 = phi i32 [ %ret.0, %if.end34.if.then36_crit_edge ], [ -75, %do.end.i85 ], [ -75, %do.body.i83.if.then36_crit_edge ]
  %error38 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %error38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ret.092, ptr %error38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34.if.end39_crit_edge, %if.end.i78.if.end39_crit_edge, %if.then30.if.end39_crit_edge
  %flags = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %state, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %lock45 = getelementptr inbounds %struct.dmxdev, ptr %22, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock45) #8
  %queue47 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6, i32 5
  tail call void @__wake_up(ptr noundef %queue47, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then4, %if.then
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_dmxdev_feed_restart(ptr nocapture noundef readonly %filter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %params = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 2
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %params, align 4
  %filternum = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filternum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %filter2 = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %filter2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filter2, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %state = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp3 = icmp ugt i32 %9, 2
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 3
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  %params10 = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 2
  %12 = ptrtoint ptr %params10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %params10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %3)
  %cmp13 = icmp eq i16 %13, %3
  br i1 %cmp13, label %if.then, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true7
  %dev.i.i = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 5
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.dmxdev, ptr %15, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %state, align 4
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %lock3.i.i = getelementptr inbounds %struct.dmxdev, ptr %18, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i) #8
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %20, label %if.then.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %feed1.i = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 1
  %22 = ptrtoint ptr %feed1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %feed1.i, align 4
  %start_filtering.i = getelementptr inbounds %struct.dmx_section_feed, ptr %23, i32 0, i32 13
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %if.then
  %feed4.i = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb3.i
  %.pn.in.i = phi ptr [ %feed4.i, %sw.bb3.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %feed4.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ts.i = getelementptr i8, ptr %.pn.i, i32 -4
  %25 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ts.i, align 4
  %start_filtering7.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %start_filtering7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %start_filtering7.i, align 4
  %call9.i = tail call i32 %28(ptr noundef %26) #8
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.dmxdev, ptr %30, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i.i) #8
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %state, align 4
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %lock3.i.i.i = getelementptr inbounds %struct.dmxdev, ptr %33, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3.i.i.i) #8
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %35, label %if.then.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb4.i.i
  ]

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i.i = getelementptr %struct.dmxdev_filter, ptr %7, i32 %i.05, i32 9
  %call.i.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #8
  %37 = ptrtoint ptr %feed4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %feed4.i, align 4
  %stop_filtering.i.i = getelementptr inbounds %struct.dmx_section_feed, ptr %38, i32 0, i32 14
  br label %cleanup.sink.split.i

sw.bb4.i.i:                                       ; preds = %if.then.i
  %39 = ptrtoint ptr %feed4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn1.i.i = load ptr, ptr %feed4.i, align 4
  %cmp.not2.i.i = icmp eq ptr %.pn1.i.i, %feed4.i
  br i1 %cmp.not2.i.i, label %sw.bb4.i.i.cleanup_crit_edge, label %sw.bb4.i.i.for.body.i.i_crit_edge

sw.bb4.i.i.for.body.i.i_crit_edge:                ; preds = %sw.bb4.i.i
  br label %for.body.i.i

sw.bb4.i.i.cleanup_crit_edge:                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb4.i.i.for.body.i.i_crit_edge
  %.pn3.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn1.i.i, %sw.bb4.i.i.for.body.i.i_crit_edge ]
  %ts.i.i = getelementptr i8, ptr %.pn3.i.i, i32 -4
  %40 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ts.i.i, align 4
  %stop_filtering8.i.i = getelementptr inbounds %struct.dmx_ts_feed, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %stop_filtering8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stop_filtering8.i.i, align 4
  %call10.i.i = tail call i32 %43(ptr noundef %41) #8
  %44 = ptrtoint ptr %.pn3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i.i = load ptr, ptr %.pn3.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %feed4.i
  br i1 %cmp.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %sw.bb.i.i, %sw.bb.i
  %stop_filtering.i.sink.i = phi ptr [ %stop_filtering.i.i, %sw.bb.i.i ], [ %start_filtering.i, %sw.bb.i ]
  %.sink.i = phi ptr [ %38, %sw.bb.i.i ], [ %23, %sw.bb.i ]
  %45 = ptrtoint ptr %stop_filtering.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stop_filtering.i.sink.i, align 4
  %call3.i.i = tail call i32 %46(ptr noundef %.sink.i) #8
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %demux = getelementptr inbounds %struct.dmxdev, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %demux, align 4
  %release_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %release_section_feed to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %release_section_feed, align 4
  %feed = getelementptr inbounds %struct.dmxdev_filter, ptr %filter, i32 0, i32 1
  %51 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %feed, align 4
  %call19 = tail call i32 %50(ptr noundef %48, ptr noundef %52) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cleanup.sink.split.i, %for.body.i.i.cleanup_crit_edge, %sw.bb4.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_fill_buffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dmxdev_ts_callback(ptr noundef %buffer1, i32 noundef %buffer1_len, ptr noundef %buffer2, i32 noundef %buffer2_len, ptr nocapture noundef readonly %feed, ptr noundef %buffer_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dmx_ts_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %output = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %if.else [
    i32 0, label %if.then
    i32 1, label %entry.if.then9_crit_edge
    i32 3, label %entry.if.then9_crit_edge90
  ]

entry.if.then9_crit_edge90:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %lock2 = getelementptr inbounds %struct.dmxdev, ptr %8, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock2) #8
  br label %cleanup

if.then9:                                         ; preds = %entry.if.then9_crit_edge, %entry.if.then9_crit_edge90
  %buffer10 = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 6
  %vb2_ctx = getelementptr inbounds %struct.dmxdev_filter, ptr %1, i32 0, i32 7
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dvr_buffer = getelementptr inbounds %struct.dmxdev, ptr %10, i32 0, i32 8
  %dvr_vb2_ctx = getelementptr inbounds %struct.dmxdev, ptr %10, i32 0, i32 9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %buffer.0 = phi ptr [ %buffer10, %if.then9 ], [ %dvr_buffer, %if.else ]
  %ctx.0 = phi ptr [ %vb2_ctx, %if.then9 ], [ %dvr_vb2_ctx, %if.else ]
  %call = tail call i32 @dvb_vb2_is_streaming(ptr noundef %ctx.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else20, label %if.then14

if.then14:                                        ; preds = %if.end13
  %call15 = tail call i32 @dvb_vb2_fill_buffer(ptr noundef %ctx.0, ptr noundef %buffer1, i32 noundef %buffer1_len, ptr noundef %buffer_flags) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %buffer1_len)
  %cmp16 = icmp eq i32 %call15, %buffer1_len
  br i1 %cmp16, label %if.then17, label %if.then14.if.end31_crit_edge

if.then14.if.end31_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @dvb_vb2_fill_buffer(ptr noundef %ctx.0, ptr noundef %buffer2, i32 noundef %buffer2_len, ptr noundef %buffer_flags) #8
  br label %if.end31

if.else20:                                        ; preds = %if.end13
  %error = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buffer.0, i32 0, i32 4
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %lock24 = getelementptr inbounds %struct.dmxdev, ptr %14, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock24) #8
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buffer.0, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer1_len)
  %tobool.not.i = icmp eq i32 %buffer1_len, 0
  br i1 %tobool.not.i, label %if.end25.dvb_dmxdev_buffer_write.exit_crit_edge, label %if.end.i

if.end25.dvb_dmxdev_buffer_write.exit_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_buffer_write.exit

if.end.i:                                         ; preds = %if.end25
  %15 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer.0, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge, label %if.end3.i

if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_buffer_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %buffer.0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %buffer1_len)
  %cmp.i = icmp ult i32 %call.i, %buffer1_len
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end3.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br i1 %tobool5.not.i, label %do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge, label %do.end.i

do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dvb_dmxdev_buffer_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %dvb_dmxdev_buffer_write.exit

if.end12.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 @dvb_ringbuffer_write(ptr noundef %buffer.0, ptr noundef %buffer1, i32 noundef %buffer1_len) #8
  br label %dvb_dmxdev_buffer_write.exit

dvb_dmxdev_buffer_write.exit:                     ; preds = %if.end12.i, %do.end.i, %do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge, %if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge, %if.end25.dvb_dmxdev_buffer_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.end12.i ], [ 0, %if.end25.dvb_dmxdev_buffer_write.exit_crit_edge ], [ 0, %if.end.i.dvb_dmxdev_buffer_write.exit_crit_edge ], [ -75, %do.end.i ], [ -75, %do.body.i.dvb_dmxdev_buffer_write.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %buffer1_len)
  %cmp27 = icmp eq i32 %retval.0.i, %buffer1_len
  br i1 %cmp27, label %if.then28, label %dvb_dmxdev_buffer_write.exit.if.end31_crit_edge

dvb_dmxdev_buffer_write.exit.if.end31_crit_edge:  ; preds = %dvb_dmxdev_buffer_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %dvb_dmxdev_buffer_write.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer2_len)
  %tobool.not.i69 = icmp eq i32 %buffer2_len, 0
  br i1 %tobool.not.i69, label %if.then28.if.end35_crit_edge, label %if.end.i71

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.i71:                                       ; preds = %if.then28
  %18 = ptrtoint ptr %buffer.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.0, align 4
  %tobool1.not.i70 = icmp eq ptr %19, null
  br i1 %tobool1.not.i70, label %if.end.i71.if.end35_crit_edge, label %if.end3.i74

if.end.i71.if.end35_crit_edge:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end3.i74:                                      ; preds = %if.end.i71
  %call.i72 = tail call i32 @dvb_ringbuffer_free(ptr noundef %buffer.0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i72, i32 %buffer2_len)
  %cmp.i73 = icmp ult i32 %call.i72, %buffer2_len
  br i1 %cmp.i73, label %do.body.i76, label %if.end12.i80

do.body.i76:                                      ; preds = %if.end3.i74
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.i75 = icmp eq i32 %20, 0
  br i1 %tobool5.not.i75, label %do.body.i76.if.then33_crit_edge, label %do.end.i78

do.body.i76.if.then33_crit_edge:                  ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

do.end.i78:                                       ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %if.then33

if.end12.i80:                                     ; preds = %if.end3.i74
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i79 = tail call i32 @dvb_ringbuffer_write(ptr noundef %buffer.0, ptr noundef %buffer2, i32 noundef %buffer2_len) #8
  br label %if.end31

if.end31:                                         ; preds = %if.end12.i80, %dvb_dmxdev_buffer_write.exit.if.end31_crit_edge, %if.then17, %if.then14.if.end31_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then17 ], [ %call15, %if.then14.if.end31_crit_edge ], [ %retval.0.i, %dvb_dmxdev_buffer_write.exit.if.end31_crit_edge ], [ %call13.i79, %if.end12.i80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp32 = icmp slt i32 %ret.0, 0
  br i1 %cmp32, label %if.end31.if.then33_crit_edge, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end31.if.then33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %if.end31.if.then33_crit_edge, %do.end.i78, %do.body.i76.if.then33_crit_edge
  %ret.085 = phi i32 [ %ret.0, %if.end31.if.then33_crit_edge ], [ -75, %do.end.i78 ], [ -75, %do.body.i76.if.then33_crit_edge ]
  %error34 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buffer.0, i32 0, i32 4
  %21 = ptrtoint ptr %error34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %ret.085, ptr %error34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge, %if.end.i71.if.end35_crit_edge, %if.then28.if.end35_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %lock37 = getelementptr inbounds %struct.dmxdev, ptr %23, i32 0, i32 11
  tail call void @_raw_spin_unlock(ptr noundef %lock37) #8
  %queue38 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buffer.0, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %queue38, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then22, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_dmxdev_filter_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr i8, ptr %t, i32 -908
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -110, ptr %error, align 4
  %dev = getelementptr i8, ptr %t, i32 -928
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.dmxdev, ptr %2, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %state = getelementptr i8, ptr %t, i32 -932
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %state, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %lock2 = getelementptr inbounds %struct.dmxdev, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock2) #8
  %queue = getelementptr i8, ptr %t, i32 -904
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_stream_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_vb2_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %exit = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %exit, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_buffer = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  %call = tail call fastcc i32 @dvb_dmxdev_buffer_read(ptr noundef %dvr_buffer, i32 noundef %and, ptr noundef %buf, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %demux = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demux, align 4
  %write = getelementptr inbounds %struct.dmx_demux, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %exit = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %exit, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end9, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %demux, align 4
  %write11 = getelementptr inbounds %struct.dmx_demux, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write11, align 4
  %call13 = tail call i32 %15(ptr noundef %13, ptr noundef %buf, i32 noundef %count) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call13, %if.end9 ], [ -19, %if.end5.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -512, %if.end2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dvr_buffer = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8
  %queue = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %do.end3.poll_wait.exit_crit_edge, label %land.lhs.true.i

do.end3.poll_wait.exit_crit_edge:                 ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %do.end3
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %do.end3.poll_wait.exit_crit_edge
  %exit = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %exit, align 4
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end6, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %poll_wait.exit
  %dvr_vb2_ctx = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call7 = tail call i32 @dvb_vb2_is_streaming(ptr noundef %dvr_vb2_ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @dvb_vb2_poll(ptr noundef %dvr_vb2_ctx, ptr noundef %file, ptr noundef %wait) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end12.if.then17_crit_edge, label %lor.lhs.false

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end12
  %11 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load13 = load i8, ptr %exit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13)
  %tobool16.not = icmp sgt i8 %bf.load13, -1
  br i1 %tobool16.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %error = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool19.not, i32 0, i32 75
  %call23 = tail call i32 @dvb_ringbuffer_empty(ptr noundef %dvr_buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %or26 = or i32 %spec.select, 67
  %spec.select45 = select i1 %tobool24.not, i32 %or26, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %lor.lhs.false.cleanup_crit_edge, %if.then9, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then9 ], [ 8, %poll_wait.exit.cleanup_crit_edge ], [ 262, %lor.lhs.false.cleanup_crit_edge ], [ %spec.select45, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usercopy(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, ptr noundef nonnull @dvb_dvr_do_ioctl) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %may_do_mmap = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %may_do_mmap to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %may_do_mmap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_vb2_ctx = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call10 = tail call i32 @dvb_vb2_mmap(ptr noundef %dvr_vb2_ctx, ptr noundef %vma) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -25, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -512, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.30) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup75_crit_edge

do.end3.cleanup75_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.end7:                                          ; preds = %do.end3
  %exit = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %exit, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end11, label %if.end7.cleanup75.sink.split_crit_edge

if.end7.cleanup75.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

if.end11:                                         ; preds = %if.end7
  %bf.clear13 = and i8 %bf.load, 127
  %7 = ptrtoint ptr %exit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.clear13, ptr %exit, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 3
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and, label %if.end11.if.end51_crit_edge [
    i32 0, label %if.end11.if.then30_crit_edge
    i32 2, label %if.then18
  ]

if.end11.if.then30_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end11.if.end51_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then18:                                        ; preds = %if.end11
  %capabilities = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities, align 4
  %and19 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then18.if.end51_crit_edge

if.then18.if.end51_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set25 = or i8 %bf.load, -128
  %13 = ptrtoint ptr %exit to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.set25, ptr %exit, align 4
  br label %if.then30

if.then30:                                        ; preds = %if.then21, %if.end11.if.then30_crit_edge
  %readers = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %readers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool31.not = icmp eq i32 %15, 0
  br i1 %tobool31.not, label %if.then30.cleanup75.sink.split_crit_edge, label %if.end34

if.then30.cleanup75.sink.split_crit_edge:         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

if.end34:                                         ; preds = %if.then30
  %call35 = tail call noalias ptr @vmalloc(i32 noundef 1925120) #11
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.cleanup75.sink.split_crit_edge, label %if.end39

if.end34.cleanup75.sink.split_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

if.end39:                                         ; preds = %if.end34
  %dvr_buffer = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8
  tail call void @dvb_ringbuffer_init(ptr noundef %dvr_buffer, ptr noundef nonnull %call35, i32 noundef 1925120) #8
  %16 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load41 = load i8, ptr %exit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41)
  %tobool44.not = icmp sgt i8 %bf.load41, -1
  br i1 %tobool44.not, label %if.end39.cleanup_crit_edge, label %if.then45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_vb2_ctx = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags, align 4
  %and47 = and i32 %18, 2048
  %call48 = tail call i32 @dvb_vb2_init(ptr noundef %dvr_vb2_ctx, ptr noundef nonnull @.str.31, i32 noundef %and47) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end39.cleanup_crit_edge
  %19 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %readers, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %readers, align 4
  br label %if.end51

if.end51:                                         ; preds = %cleanup, %if.then18.if.end51_crit_edge, %if.end11.if.end51_crit_edge
  %21 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_flags, align 4
  %and53 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 1
  br i1 %cmp54, label %if.then55, label %if.end51.if.end73_crit_edge

if.end51.if.end73_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then55:                                        ; preds = %if.end51
  %demux = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %demux, align 4
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frontend, align 4
  %dvr_orig_fe = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %dvr_orig_fe to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dvr_orig_fe, align 4
  %write = getelementptr inbounds %struct.dmx_demux, ptr %24, i32 0, i32 5
  %28 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write, align 4
  %tobool57.not = icmp eq ptr %29, null
  br i1 %tobool57.not, label %if.then55.cleanup75.sink.split_crit_edge, label %if.end60

if.then55.cleanup75.sink.split_crit_edge:         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

if.end60:                                         ; preds = %if.then55
  %get_frontends.i = getelementptr inbounds %struct.dmx_demux, ptr %24, i32 0, i32 12
  %30 = ptrtoint ptr %get_frontends.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_frontends.i, align 4
  %call.i = tail call ptr %31(ptr noundef %24) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end60.cleanup75.sink.split_crit_edge, label %if.end60.for.cond.i_crit_edge

if.end60.for.cond.i_crit_edge:                    ; preds = %if.end60
  br label %for.cond.i

if.end60.cleanup75.sink.split_crit_edge:          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end60.for.cond.i_crit_edge
  %pos.0.in.i = phi ptr [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ], [ %call.i, %if.end60.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %call.i
  br i1 %cmp.i.not.i, label %for.cond.i.cleanup75.sink.split_crit_edge, label %for.body.i

for.cond.i.cleanup75.sink.split_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %source.i = getelementptr inbounds %struct.dmx_frontend, ptr %pos.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %source.i, align 4
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %get_fe.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

get_fe.exit:                                      ; preds = %for.body.i
  %tobool63.not = icmp eq ptr %pos.0.i, null
  br i1 %tobool63.not, label %get_fe.exit.cleanup75.sink.split_crit_edge, label %if.end66

get_fe.exit.cleanup75.sink.split_crit_edge:       ; preds = %get_fe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75.sink.split

if.end66:                                         ; preds = %get_fe.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %demux, align 4
  %disconnect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disconnect_frontend, align 4
  %call69 = tail call i32 %38(ptr noundef %36) #8
  %39 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %demux, align 4
  %connect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %connect_frontend, align 4
  %call72 = tail call i32 %42(ptr noundef %40, ptr noundef nonnull %pos.0.i) #8
  br label %if.end73

if.end73:                                         ; preds = %if.end66, %if.end51.if.end73_crit_edge
  %users = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %users, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %users, align 4
  br label %cleanup75.sink.split

cleanup75.sink.split:                             ; preds = %if.end73, %get_fe.exit.cleanup75.sink.split_crit_edge, %for.cond.i.cleanup75.sink.split_crit_edge, %if.end60.cleanup75.sink.split_crit_edge, %if.then55.cleanup75.sink.split_crit_edge, %if.end34.cleanup75.sink.split_crit_edge, %if.then30.cleanup75.sink.split_crit_edge, %if.end7.cleanup75.sink.split_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.end73 ], [ -19, %if.end7.cleanup75.sink.split_crit_edge ], [ -16, %if.then30.cleanup75.sink.split_crit_edge ], [ -12, %if.end34.cleanup75.sink.split_crit_edge ], [ -95, %if.then55.cleanup75.sink.split_crit_edge ], [ -22, %if.end60.cleanup75.sink.split_crit_edge ], [ -22, %get_fe.exit.cleanup75.sink.split_crit_edge ], [ -22, %for.cond.i.cleanup75.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup75

cleanup75:                                        ; preds = %cleanup75.sink.split, %do.end3.cleanup75_crit_edge
  %retval.1 = phi i32 [ -512, %do.end3.cleanup75_crit_edge ], [ %retval.1.ph, %cleanup75.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %demux = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demux, align 4
  %disconnect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %disconnect_frontend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disconnect_frontend, align 4
  %call = tail call i32 %9(ptr noundef %7) #8
  %10 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %demux, align 4
  %connect_frontend = getelementptr inbounds %struct.dmx_demux, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %connect_frontend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connect_frontend, align 4
  %dvr_orig_fe = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %dvr_orig_fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvr_orig_fe, align 4
  %call4 = tail call i32 %13(ptr noundef %11, ptr noundef %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and6 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %may_do_mmap = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %may_do_mmap to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %may_do_mmap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %may_do_mmap9 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %may_do_mmap9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load10 = load i8, ptr %may_do_mmap9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10)
  %tobool13.not = icmp sgt i8 %bf.load10, -1
  br i1 %tobool13.not, label %if.then8.if.end23_crit_edge, label %if.then14

if.then8.if.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %if.then8
  %dvr_vb2_ctx = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call15 = tail call i32 @dvb_vb2_is_streaming(ptr noundef %dvr_vb2_ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end20_crit_edge, label %if.then17

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @dvb_vb2_stream_off(ptr noundef %dvr_vb2_ctx) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge
  %call22 = tail call i32 @dvb_vb2_release(ptr noundef %dvr_vb2_ctx) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.then8.if.end23_crit_edge
  %readers = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %readers, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %readers, align 4
  %dvr_buffer = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %dvr_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvr_buffer, align 4
  %tobool24.not = icmp eq ptr %23, null
  br i1 %tobool24.not, label %if.end23.if.end32_crit_edge, label %if.then25

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %lock = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %24 = ptrtoint ptr %dvr_buffer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dvr_buffer, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  tail call void @vfree(ptr noundef nonnull %23) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end23.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %users = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %users, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp34 = icmp eq i32 %dec, 1
  br i1 %cmp34, label %land.lhs.true, label %if.end32.if.else_crit_edge

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end32
  %exit = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load35 = load i8, ptr %exit, align 4
  %28 = and i8 %bf.load35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp38.not = icmp eq i8 %28, 0
  br i1 %cmp38.not, label %land.lhs.true.if.else_crit_edge, label %if.then39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %wait_queue = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end32.if.else_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_dvr_do_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %parg to i32
  %mutex = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 10
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 28461, label %sw.bb
    i32 -1073189060, label %sw.bb2
    i32 -1072140483, label %sw.bb4
    i32 -1072926914, label %sw.bb7
    i32 -1072140481, label %sw.bb10
    i32 -1072140480, label %sw.bb20
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %dvr_buffer.i = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %sw.bb.do.end3.i_crit_edge, label %do.end.i

sw.bb.do.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb.do.end3.i_crit_edge
  %size4.i = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp.i = icmp eq i32 %8, %4
  br i1 %cmp.i, label %do.end3.i.sw.epilog_crit_edge, label %if.end6.i

do.end3.i.sw.epilog_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end6.i:                                        ; preds = %do.end3.i
  %tobool7.not.i = icmp eq ptr %parg, null
  br i1 %tobool7.not.i, label %if.end6.i.sw.epilog_crit_edge, label %if.end9.i

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end6.i
  %call10.i = tail call noalias ptr @vmalloc(i32 noundef %4) #11
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.sw.epilog_crit_edge, label %if.end13.i

if.end9.i.sw.epilog_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dvr_buffer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dvr_buffer.i, align 4
  %lock.i = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %11 = ptrtoint ptr %dvr_buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10.i, ptr %dvr_buffer.i, align 4
  %12 = ptrtoint ptr %size4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %4, ptr %size4.i, align 4
  tail call void @dvb_ringbuffer_reset(ptr noundef %dvr_buffer.i) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  tail call void @vfree(ptr noundef %10) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_vb2_ctx = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call3 = tail call i32 @dvb_vb2_reqbufs(ptr noundef %dvr_vb2_ctx, ptr noundef %parg) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_vb2_ctx5 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call6 = tail call i32 @dvb_vb2_querybuf(ptr noundef %dvr_vb2_ctx5, ptr noundef %parg) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_vb2_ctx8 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call9 = tail call i32 @dvb_vb2_expbuf(ptr noundef %dvr_vb2_ctx8, ptr noundef %parg) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %dvr_vb2_ctx11 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call12 = tail call i32 @dvb_vb2_qbuf(ptr noundef %dvr_vb2_ctx11, ptr noundef %parg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb10
  %call14 = tail call i32 @dvb_vb2_is_streaming(ptr noundef %dvr_vb2_ctx11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @dvb_vb2_stream_on(ptr noundef %dvr_vb2_ctx11) #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dvr_vb2_ctx21 = getelementptr inbounds %struct.dmxdev, ptr %3, i32 0, i32 9
  %call22 = tail call i32 @dvb_vb2_dqbuf(ptr noundef %dvr_vb2_ctx21, ptr noundef %parg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.then16, %land.lhs.true.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb7, %sw.bb4, %sw.bb2, %if.end13.i, %if.end9.i.sw.epilog_crit_edge, %if.end6.i.sw.epilog_crit_edge, %do.end3.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call22, %sw.bb20 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %call18, %if.then16 ], [ %call12, %sw.bb10.sw.epilog_crit_edge ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb2 ], [ -25, %if.end.sw.epilog_crit_edge ], [ 0, %if.end13.i ], [ 0, %do.end3.i.sw.epilog_crit_edge ], [ -22, %if.end6.i.sw.epilog_crit_edge ], [ -12, %if.end9.i.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype236, !1, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug237, !4, !"__UNIQUE_ID_debug237", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 26, i32 1}
!5 = !{ptr @dvb_dmxdev_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1416, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dvb_dmxdev_init.__key.1, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1417, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_dvb_dmxdev_init, !12, !"__ksymtab_dvb_dmxdev_init", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1447, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1453, i32 3}
!15 = !{ptr @__ksymtab_dvb_dmxdev_release, !16, !"__ksymtab_dvb_dmxdev_release", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1469, i32 1}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 23, i32 12}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1273, i32 10}
!22 = !{ptr @dvbdev_demux, !23, !"dvbdev_demux", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1268, i32 32}
!24 = !{ptr @dvb_demux_fops, !25, !"dvb_demux_fops", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1254, i32 37}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 714, i32 5}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dvb_dmxdev_filter_start._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @dvb_dmxdev_filter_start._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 722, i32 5}
!40 = !{ptr @dvb_dmxdev_filter_start._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dvb_dmxdev_filter_start._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 735, i32 4}
!44 = !{ptr @dvb_dmxdev_filter_start._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dvb_dmxdev_filter_start._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 395, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dvb_dmxdev_section_callback._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dvb_dmxdev_section_callback._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 46, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dvb_dmxdev_buffer_write._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dvb_dmxdev_buffer_write._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 915, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dvb_dmxdev_filter_set._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dvb_dmxdev_filter_set._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @dvb_demux_open.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 803, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 813, i32 39}
!66 = !{ptr @dvb_demux_open.__key.24, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 817, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1400, i32 10}
!71 = !{ptr @dvbdev_dvr, !72, !"dvbdev_dvr", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1395, i32 32}
!73 = !{ptr @dvb_dvr_fops, !74, !"dvb_dvr_fops", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1381, i32 37}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 1337, i32 2}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dvb_dvr_poll._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @dvb_dvr_poll._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 286, i32 2}
!82 = !{ptr @dvb_dvr_set_buffer_size._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @dvb_dvr_set_buffer_size._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 123, i32 2}
!86 = !{ptr @dvb_dvr_open._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dvb_dvr_open._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-core/dmxdev.c", i32 173, i32 39}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2152859995, i64 2152860020}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 5355550}
!103 = !{i64 5355747}
!104 = !{i64 2152840980}
!105 = !{i64 2154445745, i64 2154446241, i64 2154445782, i64 2154445838, i64 2154445872, i64 2154445896, i64 2154445937, i64 2154445958, i64 2154445986, i64 2154446020}
!106 = !{i64 2154424597}
