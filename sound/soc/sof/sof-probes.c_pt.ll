; ModuleID = '/llk/IR_all_yes/sound/soc/sof/sof-probes.c_pt.bc'
source_filename = "../sound/soc/sof/sof-probes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_ipc_probe_points_info\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_ipc_probe_points_info\09\09\09\09"
module asm "\09.long\09__crc_sof_ipc_probe_points_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_ipc_probe_points_info:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_ipc_probe_points_info\22\09\09\09\09\09"
module asm "__kstrtabns_sof_ipc_probe_points_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_ipc_probe_points_add\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_ipc_probe_points_add\09\09\09\09"
module asm "\09.long\09__crc_sof_ipc_probe_points_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_ipc_probe_points_add:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_ipc_probe_points_add\22\09\09\09\09\09"
module asm "__kstrtabns_sof_ipc_probe_points_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_ipc_probe_points_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_ipc_probe_points_remove\09\09\09\09"
module asm "\09.long\09__crc_sof_ipc_probe_points_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_ipc_probe_points_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_ipc_probe_points_remove\22\09\09\09\09\09"
module asm "__kstrtabns_sof_ipc_probe_points_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_probe_compr_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_probe_compr_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_probe_compr_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_probe_compr_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_probe_compr_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_probe_compr_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_probe_compressed_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_probe_compressed_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_probe_compressed_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_probe_compressed_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_probe_compressed_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_probe_compressed_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_cdai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sof_ipc_probe_info_params = type { %struct.sof_ipc_reply, i32, %union.anon.92 }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%union.anon.92 = type { [0 x %struct.sof_probe_dma] }
%struct.sof_probe_dma = type { i32, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sof_ipc_probe_point_add_params = type { %struct.sof_ipc_cmd_hdr, i32, [0 x %struct.sof_probe_point_desc] }
%struct.sof_probe_point_desc = type { i32, i32, i32 }
%struct.sof_ipc_probe_point_remove_params = type { %struct.sof_ipc_cmd_hdr, i32, [0 x i32] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.sof_ipc_probe_dma_add_params = type { %struct.sof_ipc_cmd_hdr, i32, [0 x %struct.sof_probe_dma] }

@__kstrtab_sof_ipc_probe_points_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_ipc_probe_points_info = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_ipc_probe_points_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_ipc_probe_points_info to i32), ptr @__kstrtab_sof_ipc_probe_points_info, ptr @__kstrtabns_sof_ipc_probe_points_info }, section "___ksymtab+sof_ipc_probe_points_info", align 4
@__kstrtab_sof_ipc_probe_points_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_ipc_probe_points_add = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_ipc_probe_points_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_ipc_probe_points_add to i32), ptr @__kstrtab_sof_ipc_probe_points_add, ptr @__kstrtabns_sof_ipc_probe_points_add }, section "___ksymtab+sof_ipc_probe_points_add", align 4
@__kstrtab_sof_ipc_probe_points_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_ipc_probe_points_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_ipc_probe_points_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_ipc_probe_points_remove to i32), ptr @__kstrtab_sof_ipc_probe_points_remove, ptr @__kstrtabns_sof_ipc_probe_points_remove }, section "___ksymtab+sof_ipc_probe_points_remove", align 4
@sof_probe_compr_ops = dso_local constant { %struct.snd_soc_cdai_ops, [60 x i8] } { %struct.snd_soc_cdai_ops { ptr @sof_probe_compr_startup, ptr @sof_probe_compr_shutdown, ptr @sof_probe_compr_set_params, ptr null, ptr null, ptr null, ptr @sof_probe_compr_trigger, ptr @sof_probe_compr_pointer, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sof_probe_compr_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_probe_compr_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_probe_compr_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_probe_compr_ops to i32), ptr @__kstrtab_sof_probe_compr_ops, ptr @__kstrtabns_sof_probe_compr_ops }, section "___ksymtab+sof_probe_compr_ops", align 4
@sof_probe_compressed_ops = dso_local constant { %struct.snd_compress_ops, [44 x i8] } { %struct.snd_compress_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_probe_compr_copy, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_sof_probe_compressed_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_probe_compressed_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_probe_compressed_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_probe_compressed_ops to i32), ptr @__kstrtab_sof_probe_compressed_ops, ptr @__kstrtabns_sof_probe_compressed_ops }, section "___ksymtab+sof_probe_compressed_ops", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sof_probe_compr_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to assign probe stream: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof_probe_compr_startup\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/sof/sof-probes.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sof_probe_compr_startup._entry_ptr = internal global ptr @sof_probe_compr_startup._entry, section ".printk_index", align 4
@sof_probe_compr_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get probe points: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof_probe_compr_shutdown\00", [39 x i8] zeroinitializer }, align 32
@sof_probe_compr_shutdown._entry_ptr = internal global ptr @sof_probe_compr_shutdown._entry, section ".printk_index", align 4
@sof_probe_compr_shutdown._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to deinit probe: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_probe_compr_shutdown._entry_ptr.9 = internal global ptr @sof_probe_compr_shutdown._entry.7, section ".printk_index", align 4
@sof_probe_compr_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to init probe: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sof_probe_compr_set_params\00", [37 x i8] zeroinitializer }, align 32
@sof_probe_compr_set_params._entry_ptr = internal global ptr @sof_probe_compr_set_params._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"sof_probe_compr_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 324, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"sof_probe_compressed_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 361, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 241, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 260, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 271, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private constant [30 x i8] c"../sound/soc/sof/sof-probes.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 300, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 230, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 214, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 174, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_sof_ipc_probe_points_add, ptr @__ksymtab_sof_ipc_probe_points_info, ptr @__ksymtab_sof_ipc_probe_points_remove, ptr @__ksymtab_sof_probe_compr_ops, ptr @__ksymtab_sof_probe_compressed_ops, ptr @sof_probe_compr_set_params._entry, ptr @sof_probe_compr_set_params._entry_ptr, ptr @sof_probe_compr_shutdown._entry, ptr @sof_probe_compr_shutdown._entry.7, ptr @sof_probe_compr_shutdown._entry_ptr, ptr @sof_probe_compr_shutdown._entry_ptr.9, ptr @sof_probe_compr_startup._entry, ptr @sof_probe_compr_startup._entry_ptr, ptr @sof_probe_compr_ops, ptr @sof_probe_compressed_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_compr_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_compressed_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_compr_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_compr_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_compr_shutdown._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_probe_compr_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_ipc_probe_points_info(ptr nocapture noundef readonly %sdev, ptr nocapture noundef writeonly %desc, ptr nocapture noundef writeonly %num_desc) #0 align 64 {
entry:
  %msg.i = alloca %struct.sof_ipc_probe_info_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %desc, align 4
  %3 = ptrtoint ptr %num_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_desc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 384) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.sof_ipc_probe_info.exit_crit_edge, label %if.end.i

entry.sof_ipc_probe_info.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sof_ipc_probe_info.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %msg.i, align 4
  %cmd3.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %cmd3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1073283072, ptr %cmd3.i, align 4
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %7 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc.i, align 4
  %call10.i = call i32 @sof_ipc_tx_message(ptr noundef %8, i32 noundef -1073283072, ptr noundef nonnull %msg.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i, i32 noundef 384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.end.i.exit.i_crit_edge, label %lor.lhs.false.i

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %error.i = getelementptr inbounds %struct.sof_ipc_reply, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12.i = icmp slt i32 %10, 0
  br i1 %cmp12.i, label %lor.lhs.false.i.exit.i_crit_edge, label %if.end14.i

lor.lhs.false.i.exit.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %num_elems.i = getelementptr inbounds %struct.sof_ipc_probe_info_params, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_elems.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not.i = icmp eq i32 %12, 0
  br i1 %tobool15.not.i, label %if.end14.i.exit.i_crit_edge, label %if.end20.i

if.end14.i.exit.i_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end20.i:                                       ; preds = %if.end14.i
  %mul.i = mul i32 %12, 12
  %13 = getelementptr inbounds %struct.sof_ipc_probe_info_params, ptr %call7.i.i.i, i32 0, i32 2
  %call22.i = call ptr @kmemdup(ptr noundef %13, i32 noundef %mul.i, i32 noundef 3264) #7
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22.i, ptr %desc, align 4
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.end20.i.exit.i_crit_edge, label %if.end25.i

if.end20.i.exit.i_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_elems.i, align 4
  %17 = ptrtoint ptr %num_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_desc, align 4
  br label %exit.i

exit.i:                                           ; preds = %if.end25.i, %if.end20.i.exit.i_crit_edge, %if.end14.i.exit.i_crit_edge, %lor.lhs.false.i.exit.i_crit_edge, %if.end.i.exit.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.end.i.exit.i_crit_edge ], [ %call10.i, %lor.lhs.false.i.exit.i_crit_edge ], [ %call10.i, %if.end25.i ], [ %call10.i, %if.end14.i.exit.i_crit_edge ], [ -12, %if.end20.i.exit.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %sof_ipc_probe_info.exit

sof_ipc_probe_info.exit:                          ; preds = %exit.i, %entry.sof_ipc_probe_info.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %exit.i ], [ -12, %entry.sof_ipc_probe_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_ipc_probe_points_add(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %desc, i32 noundef %num_desc) #0 align 64 {
entry:
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #7
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reply, align 4, !annotation !52
  %1 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !52
  %3 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !52
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_desc, i32 12) #7
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 12) #7
  %retval.0.i = select i1 %6, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %call9.i, align 128
  %num_elems = getelementptr inbounds %struct.sof_ipc_probe_point_add_params, ptr %call9.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_elems to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num_desc, ptr %num_elems, align 8
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1073348608, ptr %cmd, align 4
  %desc4 = getelementptr inbounds %struct.sof_ipc_probe_point_add_params, ptr %call9.i, i32 0, i32 2
  %sub = add i32 %retval.0.i, -12
  %11 = call ptr @memcpy(ptr %desc4, ptr %desc, i32 %sub)
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %12 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipc, align 4
  %call9 = call i32 @sof_ipc_tx_message(ptr noundef %13, i32 noundef -1073348608, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i, ptr noundef nonnull %reply, i32 noundef 12) #7
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_ipc_probe_points_remove(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %buffer_id, i32 noundef %num_buffer_id) #0 align 64 {
entry:
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #7
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reply, align 4, !annotation !52
  %1 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !52
  %3 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !52
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_buffer_id, i32 4) #7
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 12) #7
  %retval.0.i = select i1 %6, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %call9.i, align 128
  %num_elems = getelementptr inbounds %struct.sof_ipc_probe_point_remove_params, ptr %call9.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_elems to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num_buffer_id, ptr %num_elems, align 8
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1073217536, ptr %cmd, align 4
  %buffer_id4 = getelementptr inbounds %struct.sof_ipc_probe_point_remove_params, ptr %call9.i, i32 0, i32 2
  %sub = add i32 %retval.0.i, -12
  %11 = call ptr @memcpy(ptr %buffer_id4, ptr %buffer_id, i32 %sub)
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %12 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipc, align 4
  %call9 = call i32 @sof_ipc_tx_message(ptr noundef %13, i32 noundef -1073217536, ptr noundef nonnull %call9.i, i32 noundef %retval.0.i, ptr noundef nonnull %reply, i32 noundef 12) #7
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_probe_compr_startup(ptr noundef %cstream, ptr noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %probe_assign.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %probe_assign.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %probe_assign.i, align 4
  %call.i = tail call i32 %13(ptr noundef %5, ptr noundef %cstream, ptr noundef %dai) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %extractor_stream_tag = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 45
  %16 = ptrtoint ptr %extractor_stream_tag to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %extractor_stream_tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_probe_compr_shutdown(ptr noundef %cstream, ptr noundef %dai) #0 align 64 {
entry:
  %msg.i = alloca %struct.sof_ipc_cmd_hdr, align 4
  %reply.i27 = alloca %struct.sof_ipc_reply, align 4
  %reply.i = alloca %struct.sof_ipc_reply, align 4
  %desc = alloca ptr, align 4
  %num_desc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #7
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %desc, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_desc) #7
  %7 = ptrtoint ptr %num_desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %num_desc, align 4, !annotation !52
  %call1 = call i32 @sof_ipc_probe_points_info(ptr noundef %5, ptr noundef nonnull %desc, ptr noundef nonnull %num_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp230.not = icmp eq i32 %9, 0
  br i1 %cmp230.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %12 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i, i32 0, i32 1
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 13
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %call1) #12
  br label %exit

for.body:                                         ; preds = %sof_ipc_probe_points_remove.exit.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sof_ipc_probe_points_remove.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i) #7
  %16 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reply.i, align 4, !annotation !52
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %12, align 4, !annotation !52
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %13, align 4, !annotation !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.sof_ipc_probe_points_remove.exit_crit_edge, label %if.end.i

for.body.sof_ipc_probe_points_remove.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sof_ipc_probe_points_remove.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.sof_probe_point_desc, ptr %11, i32 %i.031
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %call7.i.i, align 8
  %num_elems.i = getelementptr inbounds %struct.sof_ipc_probe_point_remove_params, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_elems.i, align 8
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1073217536, ptr %cmd.i, align 4
  %buffer_id4.i = getelementptr inbounds %struct.sof_ipc_probe_point_remove_params, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %buffer_id4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buffer_id4.i, align 4
  %26 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipc.i, align 4
  %call9.i = call i32 @sof_ipc_tx_message(ptr noundef %27, i32 noundef -1073217536, ptr noundef nonnull %call7.i.i, i32 noundef 16, ptr noundef nonnull %reply.i, i32 noundef 12) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %sof_ipc_probe_points_remove.exit

sof_ipc_probe_points_remove.exit:                 ; preds = %if.end.i, %for.body.sof_ipc_probe_points_remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %sof_ipc_probe_points_remove.exit.for.end_crit_edge, label %sof_ipc_probe_points_remove.exit.for.body_crit_edge

sof_ipc_probe_points_remove.exit.for.body_crit_edge: ; preds = %sof_ipc_probe_points_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

sof_ipc_probe_points_remove.exit.for.end_crit_edge: ; preds = %sof_ipc_probe_points_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %sof_ipc_probe_points_remove.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %28 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc, align 4
  call void @kfree(ptr noundef %29) #7
  br label %exit

exit:                                             ; preds = %for.end, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #7
  %30 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %msg.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i27) #7
  %31 = ptrtoint ptr %reply.i27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %reply.i27, align 4, !annotation !52
  %32 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i27, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !52
  %34 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i27, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %34, align 4, !annotation !52
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %msg.i, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1073610752, ptr %30, align 4
  %ipc.i28 = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 13
  %38 = ptrtoint ptr %ipc.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipc.i28, align 4
  %call.i = call i32 @sof_ipc_tx_message(ptr noundef %39, i32 noundef -1073610752, ptr noundef nonnull %msg.i, i32 noundef 8, ptr noundef nonnull %reply.i27, i32 noundef 12) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i27) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %do.end9, label %exit.if.end11_crit_edge

exit.if.end11_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end9:                                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %40 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.8, i32 noundef %call.i) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %exit.if.end11_crit_edge
  %extractor_stream_tag = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 45
  %42 = ptrtoint ptr %extractor_stream_tag to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %extractor_stream_tag, align 4
  %call12 = call i32 @snd_compr_free_pages(ptr noundef %cstream) #7
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %43 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %probe_free.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %48, i32 0, i32 30
  %49 = ptrtoint ptr %probe_free.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %probe_free.i, align 4
  %call.i29 = call i32 %50(ptr noundef %5, ptr noundef %cstream, ptr noundef %dai) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_desc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #7
  ret i32 %call.i29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_probe_compr_set_params(ptr noundef %cstream, ptr noundef %params, ptr noundef %dai) #0 align 64 {
entry:
  %reply.i = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %dma_buffer = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 11
  %8 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %dma_buffer, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %dev4 = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 11, i32 0, i32 3
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev4, align 4
  %buffer_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %buffer_size, align 8
  %conv = trunc i64 %13 to i32
  %call5 = tail call i32 @snd_compr_malloc_pages(ptr noundef %cstream, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %probe_set_params.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %probe_set_params.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %probe_set_params.i, align 4
  %call.i = tail call i32 %21(ptr noundef %5, ptr noundef %cstream, ptr noundef %params, ptr noundef %dai) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %extractor_stream_tag = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 45
  %22 = ptrtoint ptr %extractor_stream_tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extractor_stream_tag, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_compr_runtime, ptr %7, i32 0, i32 12
  %24 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i) #7
  %26 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %reply.i, align 4, !annotation !52
  %27 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !52
  %29 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 20) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sof_ipc_probe_init.exit.thread, label %sof_ipc_probe_init.exit

sof_ipc_probe_init.exit.thread:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  br label %do.end

sof_ipc_probe_init.exit:                          ; preds = %if.end11
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 20, ptr %call7.i.i, align 8
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1073676288, ptr %cmd.i, align 4
  %num_elems.i = getelementptr inbounds %struct.sof_ipc_probe_dma_add_params, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %num_elems.i, align 8
  %dma.i = getelementptr inbounds %struct.sof_ipc_probe_dma_add_params, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %23, ptr %dma.i, align 4
  %dma_buffer_size.i = getelementptr inbounds %struct.sof_ipc_probe_dma_add_params, ptr %call7.i.i, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %dma_buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %25, ptr %dma_buffer_size.i, align 8
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 13
  %37 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ipc.i, align 4
  %call11.i = call i32 @sof_ipc_tx_message(ptr noundef %38, i32 noundef -1073676288, ptr noundef nonnull %call7.i.i, i32 noundef 20, ptr noundef nonnull %reply.i, i32 noundef 12) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp13 = icmp slt i32 %call11.i, 0
  br i1 %cmp13, label %sof_ipc_probe_init.exit.do.end_crit_edge, label %sof_ipc_probe_init.exit.cleanup_crit_edge

sof_ipc_probe_init.exit.cleanup_crit_edge:        ; preds = %sof_ipc_probe_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sof_ipc_probe_init.exit.do.end_crit_edge:         ; preds = %sof_ipc_probe_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %sof_ipc_probe_init.exit.do.end_crit_edge, %sof_ipc_probe_init.exit.thread
  %retval.0.i38 = phi i32 [ -12, %sof_ipc_probe_init.exit.thread ], [ %call11.i, %sof_ipc_probe_init.exit.do.end_crit_edge ]
  %dev16 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %39 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i38) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sof_ipc_probe_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i38, %do.end ], [ %call5, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %sof_ipc_probe_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_probe_compr_trigger(ptr noundef %cstream, i32 noundef %cmd, ptr noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %probe_trigger.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %probe_trigger.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %probe_trigger.i, align 4
  %call.i = tail call i32 %13(ptr noundef %5, ptr noundef %cstream, i32 noundef %cmd, ptr noundef %dai) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_probe_compr_pointer(ptr noundef %cstream, ptr noundef %tstamp, ptr noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.snd_sof_probe_compr_pointer.exit_crit_edge, label %land.lhs.true.i

entry.snd_sof_probe_compr_pointer.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_probe_compr_pointer.exit

land.lhs.true.i:                                  ; preds = %entry
  %probe_pointer.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %probe_pointer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %probe_pointer.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.snd_sof_probe_compr_pointer.exit_crit_edge, label %if.then.i

land.lhs.true.i.snd_sof_probe_compr_pointer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_probe_compr_pointer.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %13(ptr noundef %5, ptr noundef %cstream, ptr noundef %tstamp, ptr noundef %dai) #7
  br label %snd_sof_probe_compr_pointer.exit

snd_sof_probe_compr_pointer.exit:                 ; preds = %if.then.i, %land.lhs.true.i.snd_sof_probe_compr_pointer.exit_crit_edge, %entry.snd_sof_probe_compr_pointer.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %land.lhs.true.i.snd_sof_probe_compr_pointer.exit_crit_edge ], [ 0, %entry.snd_sof_probe_compr_pointer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_probe_compr_copy(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %cstream, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %conv = zext i32 %count to i64
  %buffer_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp = icmp ult i64 %3, %conv
  %conv3 = trunc i64 %3 to i32
  %spec.select = select i1 %cmp, i32 %conv3, i32 %count
  %total_bytes_transferred = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %total_bytes_transferred to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total_bytes_transferred, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp164.i = icmp ult i64 %5, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !53

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %5 to i32
  %rem170.i = urem i32 %conv169.i, %conv3
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3, i64 %5) #13, !srcloc !54
  %asmresult.i3.i = extractvalue { i64, i64 } %6, 0
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %dma_area = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_area, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %__rem.0.i
  %conv8 = sub i32 %conv3, %__rem.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv8)
  %cmp9 = icmp ult i32 %spec.select, %conv8
  br i1 %cmp9, label %if.end8.i.i, label %if.end8.i.i52

if.end8.i.i:                                      ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end18_crit_edge, label %if.then27.i.i, !prof !53

land.rhs16.i.i.if.end18_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.end18

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %spec.select, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end18_crit_edge, label %if.end.i.i

if.then.i.i.i.if.end18_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %spec.select, i32 -1226833920) #13, !srcloc !55
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.if.end18_crit_edge

if.end.i.i.if.end18_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %spec.select) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %spec.select) #7
  br label %if.end18

if.end8.i.i52:                                    ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp9.i.i51 = icmp slt i32 %conv8, 0
  br i1 %cmp9.i.i51, label %land.rhs16.i.i54, label %if.then.i.i.i57

land.rhs16.i.i54:                                 ; preds = %if.end8.i.i52
  %.b1.i.i53 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i53, label %land.rhs16.i.i54.copy_to_user.exit67_crit_edge, label %if.then27.i.i55, !prof !53

land.rhs16.i.i54.copy_to_user.exit67_crit_edge:   ; preds = %land.rhs16.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit67

if.then27.i.i55:                                  ; preds = %land.rhs16.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_to_user.exit67

if.then.i.i.i57:                                  ; preds = %if.end8.i.i52
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %conv8, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #7
  %call.i.i58 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i58, label %if.then.i.i.i57.copy_to_user.exit67_crit_edge, label %if.end.i.i62

if.then.i.i.i57.copy_to_user.exit67_crit_edge:    ; preds = %if.then.i.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit67

if.end.i.i62:                                     ; preds = %if.then.i.i.i57
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %conv8, i32 -1226833920) #13, !srcloc !55
  %asmresult.i.i60 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i60)
  %cmp.i6.i61 = icmp eq i32 %asmresult.i.i60, 0
  br i1 %cmp.i6.i61, label %if.then2.i.i65, label %if.end.i.i62.copy_to_user.exit67_crit_edge

if.end.i.i62.copy_to_user.exit67_crit_edge:       ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit67

if.then2.i.i65:                                   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i63 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %conv8) #7
  %call.i12.i.i64 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %conv8) #7
  br label %copy_to_user.exit67

copy_to_user.exit67:                              ; preds = %if.then2.i.i65, %if.end.i.i62.copy_to_user.exit67_crit_edge, %if.then.i.i.i57.copy_to_user.exit67_crit_edge, %if.then27.i.i55, %land.rhs16.i.i54.copy_to_user.exit67_crit_edge
  %n.addr.0.i66 = phi i32 [ %conv8, %if.then.i.i.i57.copy_to_user.exit67_crit_edge ], [ %call.i12.i.i64, %if.then2.i.i65 ], [ %conv8, %if.end.i.i62.copy_to_user.exit67_crit_edge ], [ %conv8, %if.then27.i.i55 ], [ %conv8, %land.rhs16.i.i54.copy_to_user.exit67_crit_edge ]
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %conv8
  %11 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_area, align 8
  %sub16 = sub i32 %spec.select, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp9.i.i74 = icmp slt i32 %sub16, 0
  br i1 %cmp9.i.i74, label %land.rhs16.i.i77, label %if.then.i.i.i80

land.rhs16.i.i77:                                 ; preds = %copy_to_user.exit67
  %.b1.i.i76 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i76, label %land.rhs16.i.i77.copy_to_user.exit90_crit_edge, label %if.then27.i.i78, !prof !53

land.rhs16.i.i77.copy_to_user.exit90_crit_edge:   ; preds = %land.rhs16.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit90

if.then27.i.i78:                                  ; preds = %land.rhs16.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %copy_to_user.exit90

if.then.i.i.i80:                                  ; preds = %copy_to_user.exit67
  tail call void @__check_object_size(ptr noundef %12, i32 noundef %sub16, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #7
  %call.i.i81 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i81, label %if.then.i.i.i80.copy_to_user.exit90_crit_edge, label %if.end.i.i85

if.then.i.i.i80.copy_to_user.exit90_crit_edge:    ; preds = %if.then.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit90

if.end.i.i85:                                     ; preds = %if.then.i.i.i80
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr14, i32 %sub16, i32 -1226833920) #13, !srcloc !55
  %asmresult.i.i83 = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i83)
  %cmp.i6.i84 = icmp eq i32 %asmresult.i.i83, 0
  br i1 %cmp.i6.i84, label %if.then2.i.i88, label %if.end.i.i85.copy_to_user.exit90_crit_edge

if.end.i.i85.copy_to_user.exit90_crit_edge:       ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit90

if.then2.i.i88:                                   ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef %sub16) #7
  %call.i12.i.i87 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr14, ptr noundef %12, i32 noundef %sub16) #7
  br label %copy_to_user.exit90

copy_to_user.exit90:                              ; preds = %if.then2.i.i88, %if.end.i.i85.copy_to_user.exit90_crit_edge, %if.then.i.i.i80.copy_to_user.exit90_crit_edge, %if.then27.i.i78, %land.rhs16.i.i77.copy_to_user.exit90_crit_edge
  %n.addr.0.i89 = phi i32 [ %sub16, %if.then.i.i.i80.copy_to_user.exit90_crit_edge ], [ %call.i12.i.i87, %if.then2.i.i88 ], [ %sub16, %if.end.i.i85.copy_to_user.exit90_crit_edge ], [ %sub16, %if.then27.i.i78 ], [ %sub16, %land.rhs16.i.i77.copy_to_user.exit90_crit_edge ]
  %add = add i32 %n.addr.0.i89, %n.addr.0.i66
  br label %if.end18

if.end18:                                         ; preds = %copy_to_user.exit90, %if.then2.i.i, %if.end.i.i.if.end18_crit_edge, %if.then.i.i.i.if.end18_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end18_crit_edge
  %ret.0 = phi i32 [ %add, %copy_to_user.exit90 ], [ %spec.select, %if.then.i.i.i.if.end18_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %spec.select, %if.end.i.i.if.end18_crit_edge ], [ %spec.select, %if.then27.i.i ], [ %spec.select, %land.rhs16.i.i.if.end18_crit_edge ]
  %sub20 = sub i32 %spec.select, %ret.0
  ret i32 %sub20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_compr_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_compr_malloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_sof_ipc_probe_points_info, !1, !"__ksymtab_sof_ipc_probe_points_info", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/sof-probes.c", i32 163, i32 1}
!2 = !{ptr @__ksymtab_sof_ipc_probe_points_add, !3, !"__ksymtab_sof_ipc_probe_points_add", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/sof-probes.c", i32 199, i32 1}
!4 = !{ptr @__ksymtab_sof_ipc_probe_points_remove, !5, !"__ksymtab_sof_ipc_probe_points_remove", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/sof-probes.c", i32 231, i32 1}
!6 = !{ptr @sof_probe_compr_ops, !7, !"sof_probe_compr_ops", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/sof-probes.c", i32 324, i32 31}
!8 = !{ptr @__ksymtab_sof_probe_compr_ops, !9, !"__ksymtab_sof_probe_compr_ops", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/sof-probes.c", i32 331, i32 1}
!10 = !{ptr @sof_probe_compressed_ops, !11, !"sof_probe_compressed_ops", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/sof-probes.c", i32 361, i32 31}
!12 = !{ptr @__ksymtab_sof_probe_compressed_ops, !13, !"__ksymtab_sof_probe_compressed_ops", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/sof-probes.c", i32 364, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/sof-probes.c", i32 241, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sof_probe_compr_startup._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sof_probe_compr_startup._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/sof-probes.c", i32 260, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sof_probe_compr_shutdown._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sof_probe_compr_shutdown._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/sof-probes.c", i32 271, i32 3}
!29 = !{ptr @sof_probe_compr_shutdown._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sof_probe_compr_shutdown._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/sof-probes.c", i32 300, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sof_probe_compr_set_params._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sof_probe_compr_set_params._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148938790, i64 2148939070, i64 2148939404, i64 2148939738}
!55 = !{i64 2153762472, i64 2153762497}
