; ModuleID = '/llk/IR_all_yes/drivers/soundwire/stream.c_pt.bc'
source_filename = "../drivers/soundwire/stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sdw_rows\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_rows\09\09\09\09"
module asm "\09.long\09__crc_sdw_rows\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_rows:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_rows\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_rows:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_cols\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_cols\09\09\09\09"
module asm "\09.long\09__crc_sdw_cols\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_cols:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_cols\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_cols:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_find_col_index\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_find_col_index\09\09\09\09"
module asm "\09.long\09__crc_sdw_find_col_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_find_col_index:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_find_col_index\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_find_col_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_find_row_index\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_find_row_index\09\09\09\09"
module asm "\09.long\09__crc_sdw_find_row_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_find_row_index:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_find_row_index\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_find_row_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_release_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_release_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_release_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_release_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_release_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_release_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_alloc_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_alloc_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_alloc_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_alloc_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_alloc_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_alloc_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_stream_remove_master\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_stream_remove_master\09\09\09\09"
module asm "\09.long\09__crc_sdw_stream_remove_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_stream_remove_master:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_stream_remove_master\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_stream_remove_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_stream_remove_slave\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_stream_remove_slave\09\09\09\09"
module asm "\09.long\09__crc_sdw_stream_remove_slave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_stream_remove_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_stream_remove_slave\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_stream_remove_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_stream_add_master\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_stream_add_master\09\09\09\09"
module asm "\09.long\09__crc_sdw_stream_add_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_stream_add_master:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_stream_add_master\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_stream_add_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_stream_add_slave\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_stream_add_slave\09\09\09\09"
module asm "\09.long\09__crc_sdw_stream_add_slave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_stream_add_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_stream_add_slave\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_stream_add_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_prepare_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_prepare_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_prepare_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_prepare_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_prepare_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_prepare_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_enable_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_enable_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_enable_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_enable_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_enable_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_enable_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_disable_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_disable_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_disable_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_disable_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_disable_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_disable_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_deprepare_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_deprepare_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_deprepare_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_deprepare_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_deprepare_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_deprepare_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_startup_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_startup_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_startup_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_startup_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_startup_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_startup_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sdw_shutdown_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_shutdown_stream\09\09\09\09"
module asm "\09.long\09__crc_sdw_shutdown_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_shutdown_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_shutdown_stream\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_shutdown_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdw_stream_runtime = type { ptr, %struct.sdw_stream_params, i32, i32, %struct.list_head, i32 }
%struct.sdw_stream_params = type { i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sdw_bus = type { ptr, ptr, i32, i32, %struct.list_head, [1 x i32], %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.sdw_bus_params, %struct.sdw_master_prop, %struct.list_head, ptr, %struct.sdw_defer, i32, i32, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_master_prop = type { i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i8, i64 }
%struct.sdw_defer = type { i32, %struct.completion, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sdw_master_runtime = type { ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.sdw_port_runtime = type { i32, i32, %struct.sdw_transport_params, %struct.sdw_port_params, %struct.list_head }
%struct.sdw_transport_params = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_port_params = type { i32, i32, i32, i32 }
%struct.sdw_slave_runtime = type { ptr, i32, i32, %struct.list_head, %struct.list_head }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.sdw_master_port_ops = type { ptr, ptr, ptr, ptr }
%struct.sdw_master_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_msg = type { i16, i16, i8, i8, i8, i8, ptr, i8, i8 }
%struct.sdw_prepare_ch = type { i32, i32, i8, i32 }
%struct.sdw_enable_ch = type { i32, i32, i8 }

@sdw_rows = dso_local global { [24 x i32], [32 x i8] } { [24 x i32] [i32 48, i32 50, i32 60, i32 64, i32 75, i32 80, i32 125, i32 147, i32 96, i32 100, i32 120, i32 128, i32 150, i32 160, i32 250, i32 0, i32 192, i32 200, i32 240, i32 256, i32 72, i32 144, i32 90, i32 180], [32 x i8] zeroinitializer }, align 32
@__kstrtab_sdw_rows = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_rows = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_rows = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_rows to i32), ptr @__kstrtab_sdw_rows, ptr @__kstrtabns_sdw_rows }, section "___ksymtab+sdw_rows", align 4
@sdw_cols = dso_local global { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16], [32 x i8] zeroinitializer }, align 32
@__kstrtab_sdw_cols = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_cols = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_cols = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_cols to i32), ptr @__kstrtab_sdw_cols, ptr @__kstrtabns_sdw_cols }, section "___ksymtab+sdw_cols", align 4
@sdw_find_col_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014Requested column not found, selecting lowest column no: 2\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_find_col_index\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/soundwire/stream.c\00", [37 x i8] zeroinitializer }, align 32
@sdw_find_col_index._entry_ptr = internal global ptr @sdw_find_col_index._entry, section ".printk_index", align 4
@__kstrtab_sdw_find_col_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_find_col_index = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_find_col_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_find_col_index to i32), ptr @__kstrtab_sdw_find_col_index, ptr @__kstrtabns_sdw_find_col_index }, section "___ksymtab+sdw_find_col_index", align 4
@sdw_find_row_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014Requested row not found, selecting lowest row no: 48\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_find_row_index\00", [45 x i8] zeroinitializer }, align 32
@sdw_find_row_index._entry_ptr = internal global ptr @sdw_find_row_index._entry, section ".printk_index", align 4
@__kstrtab_sdw_find_row_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_find_row_index = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_find_row_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_find_row_index to i32), ptr @__kstrtab_sdw_find_row_index, ptr @__kstrtabns_sdw_find_row_index }, section "___ksymtab+sdw_find_row_index", align 4
@__kstrtab_sdw_release_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_release_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_release_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_release_stream to i32), ptr @__kstrtab_sdw_release_stream, ptr @__kstrtabns_sdw_release_stream }, section "___ksymtab+sdw_release_stream", align 4
@__kstrtab_sdw_alloc_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_alloc_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_alloc_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_alloc_stream to i32), ptr @__kstrtab_sdw_alloc_stream, ptr @__kstrtabns_sdw_alloc_stream }, section "___ksymtab+sdw_alloc_stream", align 4
@__kstrtab_sdw_stream_remove_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_stream_remove_master = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_stream_remove_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_stream_remove_master to i32), ptr @__kstrtab_sdw_stream_remove_master, ptr @__kstrtabns_sdw_stream_remove_master }, section "___ksymtab+sdw_stream_remove_master", align 4
@__kstrtab_sdw_stream_remove_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_stream_remove_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_stream_remove_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_stream_remove_slave to i32), ptr @__kstrtab_sdw_stream_remove_slave, ptr @__kstrtabns_sdw_stream_remove_slave }, section "___ksymtab+sdw_stream_remove_slave", align 4
@sdw_stream_add_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1298, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Multilink not supported, link %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdw_stream_add_master\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdw_stream_add_master._entry_ptr = internal global ptr @sdw_stream_add_master._entry, section ".printk_index", align 4
@sdw_stream_add_master._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 1307, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Master runtime config failed for stream:%s\0A\00", [52 x i8] zeroinitializer }, align 32
@sdw_stream_add_master._entry_ptr.11 = internal global ptr @sdw_stream_add_master._entry.9, section ".printk_index", align 4
@__kstrtab_sdw_stream_add_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_stream_add_master = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_stream_add_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_stream_add_master to i32), ptr @__kstrtab_sdw_stream_add_master, ptr @__kstrtabns_sdw_stream_add_master }, section "___ksymtab+sdw_stream_add_master", align 4
@sdw_stream_add_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1365, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"alloc master runtime failed for stream:%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdw_stream_add_slave\00", [43 x i8] zeroinitializer }, align 32
@sdw_stream_add_slave._entry_ptr = internal global ptr @sdw_stream_add_slave._entry, section ".printk_index", align 4
@sdw_stream_add_slave._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1374, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Slave runtime config failed for stream:%s\0A\00", [53 x i8] zeroinitializer }, align 32
@sdw_stream_add_slave._entry_ptr.16 = internal global ptr @sdw_stream_add_slave._entry.14, section ".printk_index", align 4
@__kstrtab_sdw_stream_add_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_stream_add_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_stream_add_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_stream_add_slave to i32), ptr @__kstrtab_sdw_stream_add_slave, ptr @__kstrtabns_sdw_stream_add_slave }, section "___ksymtab+sdw_stream_add_slave", align 4
@sdw_prepare_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013SoundWire: Handle not found for stream\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_prepare_stream\00", [45 x i8] zeroinitializer }, align 32
@sdw_prepare_stream._entry_ptr = internal global ptr @sdw_prepare_stream._entry, section ".printk_index", align 4
@sdw_prepare_stream._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: %s: inconsistent state state %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sdw_prepare_stream._entry_ptr.21 = internal global ptr @sdw_prepare_stream._entry.19, section ".printk_index", align 4
@__kstrtab_sdw_prepare_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_prepare_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_prepare_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_prepare_stream to i32), ptr @__kstrtab_sdw_prepare_stream, ptr @__kstrtabns_sdw_prepare_stream }, section "___ksymtab+sdw_prepare_stream", align 4
@sdw_enable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.22, ptr @.str.2, i32 1676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdw_enable_stream\00", [46 x i8] zeroinitializer }, align 32
@sdw_enable_stream._entry_ptr = internal global ptr @sdw_enable_stream._entry, section ".printk_index", align 4
@sdw_enable_stream._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.2, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdw_enable_stream._entry_ptr.24 = internal global ptr @sdw_enable_stream._entry.23, section ".printk_index", align 4
@__kstrtab_sdw_enable_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_enable_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_enable_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_enable_stream to i32), ptr @__kstrtab_sdw_enable_stream, ptr @__kstrtabns_sdw_enable_stream }, section "___ksymtab+sdw_enable_stream", align 4
@sdw_disable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.25, ptr @.str.2, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_disable_stream\00", [45 x i8] zeroinitializer }, align 32
@sdw_disable_stream._entry_ptr = internal global ptr @sdw_disable_stream._entry, section ".printk_index", align 4
@sdw_disable_stream._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.2, i32 1767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdw_disable_stream._entry_ptr.27 = internal global ptr @sdw_disable_stream._entry.26, section ".printk_index", align 4
@__kstrtab_sdw_disable_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_disable_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_disable_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_disable_stream to i32), ptr @__kstrtab_sdw_disable_stream, ptr @__kstrtabns_sdw_disable_stream }, section "___ksymtab+sdw_disable_stream", align 4
@sdw_deprepare_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.28, ptr @.str.2, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdw_deprepare_stream\00", [43 x i8] zeroinitializer }, align 32
@sdw_deprepare_stream._entry_ptr = internal global ptr @sdw_deprepare_stream._entry, section ".printk_index", align 4
@sdw_deprepare_stream._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.28, ptr @.str.2, i32 1843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdw_deprepare_stream._entry_ptr.30 = internal global ptr @sdw_deprepare_stream._entry.29, section ".printk_index", align 4
@__kstrtab_sdw_deprepare_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_deprepare_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_deprepare_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_deprepare_stream to i32), ptr @__kstrtab_sdw_deprepare_stream, ptr @__kstrtabns_sdw_deprepare_stream }, section "___ksymtab+sdw_deprepare_stream", align 4
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-Playback\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-Capture\00", [21 x i8] zeroinitializer }, align 32
@sdw_startup_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"alloc stream failed for substream DAI %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_startup_stream\00", [45 x i8] zeroinitializer }, align 32
@sdw_startup_stream._entry_ptr = internal global ptr @sdw_startup_stream._entry, section ".printk_index", align 4
@__kstrtab_sdw_startup_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_startup_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_startup_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_startup_stream to i32), ptr @__kstrtab_sdw_startup_stream, ptr @__kstrtabns_sdw_startup_stream }, section "___ksymtab+sdw_startup_stream", align 4
@sdw_shutdown_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1940, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no stream found for DAI %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdw_shutdown_stream\00", [44 x i8] zeroinitializer }, align 32
@sdw_shutdown_stream._entry_ptr = internal global ptr @sdw_shutdown_stream._entry, section ".printk_index", align 4
@__kstrtab_sdw_shutdown_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_shutdown_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_shutdown_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_shutdown_stream to i32), ptr @__kstrtab_sdw_shutdown_stream, ptr @__kstrtabns_sdw_shutdown_stream }, section "___ksymtab+sdw_shutdown_stream", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sdw_config_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1161, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rate not matching, stream:%s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdw_config_stream\00", [46 x i8] zeroinitializer }, align 32
@sdw_config_stream._entry_ptr = internal global ptr @sdw_config_stream._entry, section ".printk_index", align 4
@sdw_config_stream._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 1167, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bps not matching, stream:%s\0A\00", [35 x i8] zeroinitializer }, align 32
@sdw_config_stream._entry_ptr.41 = internal global ptr @sdw_config_stream._entry.39, section ".printk_index", align 4
@sdw_is_valid_port_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1187, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SoundWire: Invalid port number :%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdw_is_valid_port_range\00", [40 x i8] zeroinitializer }, align 32
@sdw_is_valid_port_range._entry_ptr = internal global ptr @sdw_is_valid_port_range._entry, section ".printk_index", align 4
@_sdw_prepare_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Async mode not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_sdw_prepare_stream\00", [44 x i8] zeroinitializer }, align 32
@_sdw_prepare_stream._entry_ptr = internal global ptr @_sdw_prepare_stream._entry, section ".printk_index", align 4
@_sdw_prepare_stream._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 1527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Compute params failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@_sdw_prepare_stream._entry_ptr.48 = internal global ptr @_sdw_prepare_stream._entry.46, section ".printk_index", align 4
@_sdw_prepare_stream._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 1536, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Program params failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@_sdw_prepare_stream._entry_ptr.51 = internal global ptr @_sdw_prepare_stream._entry.49, section ".printk_index", align 4
@_sdw_prepare_stream._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Configuration error in %s\0A\00", [35 x i8] zeroinitializer }, align 32
@_sdw_prepare_stream._entry_ptr.54 = internal global ptr @_sdw_prepare_stream._entry.52, section ".printk_index", align 4
@_sdw_prepare_stream._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 1548, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bank switch failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@_sdw_prepare_stream._entry_ptr.57 = internal global ptr @_sdw_prepare_stream._entry.55, section ".printk_index", align 4
@_sdw_prepare_stream._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.2, i32 1559, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Prepare port(s) failed ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@_sdw_prepare_stream._entry_ptr.60 = internal global ptr @_sdw_prepare_stream._entry.58, section ".printk_index", align 4
@sdw_program_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 632, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Program transport params failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdw_program_params\00", [45 x i8] zeroinitializer }, align 32
@sdw_program_params._entry_ptr = internal global ptr @sdw_program_params._entry, section ".printk_index", align 4
@sdw_program_params._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 639, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Notify bus config failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sdw_program_params._entry_ptr.65 = internal global ptr @sdw_program_params._entry.63, section ".printk_index", align 4
@sdw_program_params._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 649, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enable channel failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sdw_program_params._entry_ptr.68 = internal global ptr @sdw_program_params._entry.66, section ".printk_index", align 4
@sdw_program_slave_port_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 169, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DPN_PortCtrl register write failed for port %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sdw_program_slave_port_params\00", [34 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr = internal global ptr @sdw_program_slave_port_params._entry, section ".printk_index", align 4
@sdw_program_slave_port_params._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 179, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DPN_BlockCtrl1 register write failed for port %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr.73 = internal global ptr @sdw_program_slave_port_params._entry.71, section ".printk_index", align 4
@sdw_program_slave_port_params._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 190, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DPN_SampleCtrl1 register write failed for port %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr.76 = internal global ptr @sdw_program_slave_port_params._entry.74, section ".printk_index", align 4
@sdw_program_slave_port_params._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DPN_OffsetCtrl1 register write failed for port %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr.79 = internal global ptr @sdw_program_slave_port_params._entry.77, section ".printk_index", align 4
@sdw_program_slave_port_params._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.2, i32 209, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DPN_BlockCtrl2 reg write failed for port %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr.82 = internal global ptr @sdw_program_slave_port_params._entry.80, section ".printk_index", align 4
@sdw_program_slave_port_params._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.70, ptr @.str.2, i32 220, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DPN_LaneCtrl register write failed for port %d\0A\00", [48 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr.85 = internal global ptr @sdw_program_slave_port_params._entry.83, section ".printk_index", align 4
@sdw_program_slave_port_params._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.70, ptr @.str.2, i32 231, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Transport reg write failed for port: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sdw_program_slave_port_params._entry_ptr.88 = internal global ptr @sdw_program_slave_port_params._entry.86, section ".printk_index", align 4
@_sdw_program_slave_port_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 85, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DPN_OffsetCtrl2 register write failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"_sdw_program_slave_port_params\00", [33 x i8] zeroinitializer }, align 32
@_sdw_program_slave_port_params._entry_ptr = internal global ptr @_sdw_program_slave_port_params._entry, section ".printk_index", align 4
@_sdw_program_slave_port_params._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 92, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DPN_BlockCtrl3 register write failed\0A\00", [58 x i8] zeroinitializer }, align 32
@_sdw_program_slave_port_params._entry_ptr.93 = internal global ptr @_sdw_program_slave_port_params._entry.91, section ".printk_index", align 4
@_sdw_program_slave_port_params._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 109, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DPN_SampleCtrl2 register write failed\0A\00", [57 x i8] zeroinitializer }, align 32
@_sdw_program_slave_port_params._entry_ptr.96 = internal global ptr @_sdw_program_slave_port_params._entry.94, section ".printk_index", align 4
@_sdw_program_slave_port_params._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.2, i32 119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DPN_HCtrl register write failed\0A\00", [63 x i8] zeroinitializer }, align 32
@_sdw_program_slave_port_params._entry_ptr.99 = internal global ptr @_sdw_program_slave_port_params._entry.97, section ".printk_index", align 4
@sdw_notify_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 596, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Notify Slave: %d failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdw_notify_config\00", [46 x i8] zeroinitializer }, align 32
@sdw_notify_config._entry_ptr = internal global ptr @sdw_notify_config._entry, section ".printk_index", align 4
@sdw_enable_disable_slave_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 328, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Slave chn_en reg write failed:%d port:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdw_enable_disable_slave_ports\00", [33 x i8] zeroinitializer }, align 32
@sdw_enable_disable_slave_ports._entry_ptr = internal global ptr @sdw_enable_disable_slave_ports._entry, section ".printk_index", align 4
@sdw_enable_disable_master_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 354, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Master chn_en write failed:%d port:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdw_enable_disable_master_ports\00", [32 x i8] zeroinitializer }, align 32
@sdw_enable_disable_master_ports._entry_ptr = internal global ptr @sdw_enable_disable_master_ports._entry, section ".printk_index", align 4
@sdw_enable_disable_master_ports._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 360, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dpn_port_enable_ch not supported, %s failed\0A\00", [51 x i8] zeroinitializer }, align 32
@sdw_enable_disable_master_ports._entry_ptr.108 = internal global ptr @sdw_enable_disable_master_ports._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@do_bank_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 785, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pre bank switch op failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_bank_switch\00", [17 x i8] zeroinitializer }, align 32
@do_bank_switch._entry_ptr = internal global ptr @do_bank_switch._entry, section ".printk_index", align 4
@do_bank_switch._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.112, ptr @.str.2, i32 798, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@do_bank_switch._entry_ptr.114 = internal global ptr @do_bank_switch._entry.113, section ".printk_index", align 4
@do_bank_switch._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.112, ptr @.str.2, i32 819, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Post bank switch op failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@do_bank_switch._entry_ptr.117 = internal global ptr @do_bank_switch._entry.115, section ".printk_index", align 4
@do_bank_switch._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.112, ptr @.str.2, i32 824, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Post bank switch ops not implemented\0A\00", [58 x i8] zeroinitializer }, align 32
@do_bank_switch._entry_ptr.120 = internal global ptr @do_bank_switch._entry.118, section ".printk_index", align 4
@do_bank_switch._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.112, ptr @.str.2, i32 836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"multi link bank switch failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@do_bank_switch._entry_ptr.123 = internal global ptr @do_bank_switch._entry.121, section ".printk_index", align 4
@sdw_bank_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 704, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Slave frame_ctrl reg write failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdw_bank_switch\00", [16 x i8] zeroinitializer }, align 32
@sdw_bank_switch._entry_ptr = internal global ptr @sdw_bank_switch._entry, section ".printk_index", align 4
@sdw_ml_sync_bank_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Controller Timed out on bank switch\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdw_ml_sync_bank_switch\00", [40 x i8] zeroinitializer }, align 32
@sdw_ml_sync_bank_switch._entry_ptr = internal global ptr @sdw_ml_sync_bank_switch._entry, section ".printk_index", align 4
@sdw_prep_deprep_slave_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Slave Port:%d properties not found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdw_prep_deprep_slave_ports\00", [36 x i8] zeroinitializer }, align 32
@sdw_prep_deprep_slave_ports._entry_ptr = internal global ptr @sdw_prep_deprep_slave_ports._entry, section ".printk_index", align 4
@sdw_prep_deprep_slave_ports._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 478, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Slave prep_ctrl reg write failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sdw_prep_deprep_slave_ports._entry_ptr.132 = internal global ptr @sdw_prep_deprep_slave_ports._entry.130, section ".printk_index", align 4
@sdw_prep_deprep_slave_ports._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.2, i32 491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Chn prep failed for port %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sdw_prep_deprep_slave_ports._entry_ptr.135 = internal global ptr @sdw_prep_deprep_slave_ports._entry.133, section ".printk_index", align 4
@sdw_do_port_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 412, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Slave Port Prep cmd %d failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdw_do_port_prep\00", [47 x i8] zeroinitializer }, align 32
@sdw_do_port_prep._entry_ptr = internal global ptr @sdw_do_port_prep._entry, section ".printk_index", align 4
@sdw_prep_deprep_master_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Port prepare failed for port:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdw_prep_deprep_master_ports\00", [35 x i8] zeroinitializer }, align 32
@sdw_prep_deprep_master_ports._entry_ptr = internal global ptr @sdw_prep_deprep_master_ports._entry, section ".printk_index", align 4
@_sdw_enable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.140, ptr @.str.2, i32 1636, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_sdw_enable_stream\00", [45 x i8] zeroinitializer }, align 32
@_sdw_enable_stream._entry_ptr = internal global ptr @_sdw_enable_stream._entry, section ".printk_index", align 4
@_sdw_enable_stream._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 1644, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable port(s) failed ret: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@_sdw_enable_stream._entry_ptr.143 = internal global ptr @_sdw_enable_stream._entry.141, section ".printk_index", align 4
@_sdw_enable_stream._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.140, ptr @.str.2, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_sdw_enable_stream._entry_ptr.145 = internal global ptr @_sdw_enable_stream._entry.144, section ".printk_index", align 4
@_sdw_enable_stream._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.140, ptr @.str.2, i32 1656, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@_sdw_enable_stream._entry_ptr.147 = internal global ptr @_sdw_enable_stream._entry.146, section ".printk_index", align 4
@_sdw_disable_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1709, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disable port(s) failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_sdw_disable_stream\00", [44 x i8] zeroinitializer }, align 32
@_sdw_disable_stream._entry_ptr = internal global ptr @_sdw_disable_stream._entry, section ".printk_index", align 4
@_sdw_disable_stream._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.149, ptr @.str.2, i32 1721, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@_sdw_disable_stream._entry_ptr.151 = internal global ptr @_sdw_disable_stream._entry.150, section ".printk_index", align 4
@_sdw_disable_stream._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.149, ptr @.str.2, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Bank switch failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@_sdw_disable_stream._entry_ptr.154 = internal global ptr @_sdw_disable_stream._entry.152, section ".printk_index", align 4
@_sdw_disable_stream._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1739, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@_sdw_disable_stream._entry_ptr.156 = internal global ptr @_sdw_disable_stream._entry.155, section ".printk_index", align 4
@_sdw_deprepare_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1792, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"De-prepare port(s) failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_sdw_deprepare_stream\00", [42 x i8] zeroinitializer }, align 32
@_sdw_deprepare_stream._entry_ptr = internal global ptr @_sdw_deprepare_stream._entry, section ".printk_index", align 4
@_sdw_deprepare_stream._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.158, ptr @.str.2, i32 1805, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@_sdw_deprepare_stream._entry_ptr.160 = internal global ptr @_sdw_deprepare_stream._entry.159, section ".printk_index", align 4
@_sdw_deprepare_stream._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.158, ptr @.str.2, i32 1813, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@_sdw_deprepare_stream._entry_ptr.162 = internal global ptr @_sdw_deprepare_stream._entry.161, section ".printk_index", align 4
@set_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 1868, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set stream pointer on dai %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_stream\00", [21 x i8] zeroinitializer }, align 32
@set_stream._entry_ptr = internal global ptr @set_stream._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"sdw_rows\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 25, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant [9 x i8] c"sdw_cols\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 30, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 42, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 56, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1297, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1305, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1363, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1372, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1586, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1600, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1676, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1684, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1759, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1766, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1834, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1842, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1892, i32 32 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1894, i32 32 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1901, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1940, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1161, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1167, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1186, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1510, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1526, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1536, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1542, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1548, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1558, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 631, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 638, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 649, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 167, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 177, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 188, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 197, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 207, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 218, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 229, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 85, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 92, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 109, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 119, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 595, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 326, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 352, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 358, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 784, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 798, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 817, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 823, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 835, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 704, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 745, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 439, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 477, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 490, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 410, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 526, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1636, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1643, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1650, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1656, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1709, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1721, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1728, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1739, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1791, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1804, i32 5 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1813, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.639 = private constant [30 x i8] c"../drivers/soundwire/stream.c\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1868, i32 4 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @__ksymtab_sdw_alloc_stream, ptr @__ksymtab_sdw_cols, ptr @__ksymtab_sdw_deprepare_stream, ptr @__ksymtab_sdw_disable_stream, ptr @__ksymtab_sdw_enable_stream, ptr @__ksymtab_sdw_find_col_index, ptr @__ksymtab_sdw_find_row_index, ptr @__ksymtab_sdw_prepare_stream, ptr @__ksymtab_sdw_release_stream, ptr @__ksymtab_sdw_rows, ptr @__ksymtab_sdw_shutdown_stream, ptr @__ksymtab_sdw_startup_stream, ptr @__ksymtab_sdw_stream_add_master, ptr @__ksymtab_sdw_stream_add_slave, ptr @__ksymtab_sdw_stream_remove_master, ptr @__ksymtab_sdw_stream_remove_slave, ptr @_sdw_deprepare_stream._entry, ptr @_sdw_deprepare_stream._entry.159, ptr @_sdw_deprepare_stream._entry.161, ptr @_sdw_deprepare_stream._entry_ptr, ptr @_sdw_deprepare_stream._entry_ptr.160, ptr @_sdw_deprepare_stream._entry_ptr.162, ptr @_sdw_disable_stream._entry, ptr @_sdw_disable_stream._entry.150, ptr @_sdw_disable_stream._entry.152, ptr @_sdw_disable_stream._entry.155, ptr @_sdw_disable_stream._entry_ptr, ptr @_sdw_disable_stream._entry_ptr.151, ptr @_sdw_disable_stream._entry_ptr.154, ptr @_sdw_disable_stream._entry_ptr.156, ptr @_sdw_enable_stream._entry, ptr @_sdw_enable_stream._entry.141, ptr @_sdw_enable_stream._entry.144, ptr @_sdw_enable_stream._entry.146, ptr @_sdw_enable_stream._entry_ptr, ptr @_sdw_enable_stream._entry_ptr.143, ptr @_sdw_enable_stream._entry_ptr.145, ptr @_sdw_enable_stream._entry_ptr.147, ptr @_sdw_prepare_stream._entry, ptr @_sdw_prepare_stream._entry.46, ptr @_sdw_prepare_stream._entry.49, ptr @_sdw_prepare_stream._entry.52, ptr @_sdw_prepare_stream._entry.55, ptr @_sdw_prepare_stream._entry.58, ptr @_sdw_prepare_stream._entry_ptr, ptr @_sdw_prepare_stream._entry_ptr.48, ptr @_sdw_prepare_stream._entry_ptr.51, ptr @_sdw_prepare_stream._entry_ptr.54, ptr @_sdw_prepare_stream._entry_ptr.57, ptr @_sdw_prepare_stream._entry_ptr.60, ptr @_sdw_program_slave_port_params._entry, ptr @_sdw_program_slave_port_params._entry.91, ptr @_sdw_program_slave_port_params._entry.94, ptr @_sdw_program_slave_port_params._entry.97, ptr @_sdw_program_slave_port_params._entry_ptr, ptr @_sdw_program_slave_port_params._entry_ptr.93, ptr @_sdw_program_slave_port_params._entry_ptr.96, ptr @_sdw_program_slave_port_params._entry_ptr.99, ptr @do_bank_switch._entry, ptr @do_bank_switch._entry.113, ptr @do_bank_switch._entry.115, ptr @do_bank_switch._entry.118, ptr @do_bank_switch._entry.121, ptr @do_bank_switch._entry_ptr, ptr @do_bank_switch._entry_ptr.114, ptr @do_bank_switch._entry_ptr.117, ptr @do_bank_switch._entry_ptr.120, ptr @do_bank_switch._entry_ptr.123, ptr @sdw_bank_switch._entry, ptr @sdw_bank_switch._entry_ptr, ptr @sdw_config_stream._entry, ptr @sdw_config_stream._entry.39, ptr @sdw_config_stream._entry_ptr, ptr @sdw_config_stream._entry_ptr.41, ptr @sdw_deprepare_stream._entry, ptr @sdw_deprepare_stream._entry.29, ptr @sdw_deprepare_stream._entry_ptr, ptr @sdw_deprepare_stream._entry_ptr.30, ptr @sdw_disable_stream._entry, ptr @sdw_disable_stream._entry.26, ptr @sdw_disable_stream._entry_ptr, ptr @sdw_disable_stream._entry_ptr.27, ptr @sdw_do_port_prep._entry, ptr @sdw_do_port_prep._entry_ptr, ptr @sdw_enable_disable_master_ports._entry, ptr @sdw_enable_disable_master_ports._entry.106, ptr @sdw_enable_disable_master_ports._entry_ptr, ptr @sdw_enable_disable_master_ports._entry_ptr.108, ptr @sdw_enable_disable_slave_ports._entry, ptr @sdw_enable_disable_slave_ports._entry_ptr, ptr @sdw_enable_stream._entry, ptr @sdw_enable_stream._entry.23, ptr @sdw_enable_stream._entry_ptr, ptr @sdw_enable_stream._entry_ptr.24, ptr @sdw_find_col_index._entry, ptr @sdw_find_col_index._entry_ptr, ptr @sdw_find_row_index._entry, ptr @sdw_find_row_index._entry_ptr, ptr @sdw_is_valid_port_range._entry, ptr @sdw_is_valid_port_range._entry_ptr, ptr @sdw_ml_sync_bank_switch._entry, ptr @sdw_ml_sync_bank_switch._entry_ptr, ptr @sdw_notify_config._entry, ptr @sdw_notify_config._entry_ptr, ptr @sdw_prep_deprep_master_ports._entry, ptr @sdw_prep_deprep_master_ports._entry_ptr, ptr @sdw_prep_deprep_slave_ports._entry, ptr @sdw_prep_deprep_slave_ports._entry.130, ptr @sdw_prep_deprep_slave_ports._entry.133, ptr @sdw_prep_deprep_slave_ports._entry_ptr, ptr @sdw_prep_deprep_slave_ports._entry_ptr.132, ptr @sdw_prep_deprep_slave_ports._entry_ptr.135, ptr @sdw_prepare_stream._entry, ptr @sdw_prepare_stream._entry.19, ptr @sdw_prepare_stream._entry_ptr, ptr @sdw_prepare_stream._entry_ptr.21, ptr @sdw_program_params._entry, ptr @sdw_program_params._entry.63, ptr @sdw_program_params._entry.66, ptr @sdw_program_params._entry_ptr, ptr @sdw_program_params._entry_ptr.65, ptr @sdw_program_params._entry_ptr.68, ptr @sdw_program_slave_port_params._entry, ptr @sdw_program_slave_port_params._entry.71, ptr @sdw_program_slave_port_params._entry.74, ptr @sdw_program_slave_port_params._entry.77, ptr @sdw_program_slave_port_params._entry.80, ptr @sdw_program_slave_port_params._entry.83, ptr @sdw_program_slave_port_params._entry.86, ptr @sdw_program_slave_port_params._entry_ptr, ptr @sdw_program_slave_port_params._entry_ptr.73, ptr @sdw_program_slave_port_params._entry_ptr.76, ptr @sdw_program_slave_port_params._entry_ptr.79, ptr @sdw_program_slave_port_params._entry_ptr.82, ptr @sdw_program_slave_port_params._entry_ptr.85, ptr @sdw_program_slave_port_params._entry_ptr.88, ptr @sdw_shutdown_stream._entry, ptr @sdw_shutdown_stream._entry_ptr, ptr @sdw_startup_stream._entry, ptr @sdw_startup_stream._entry_ptr, ptr @sdw_stream_add_master._entry, ptr @sdw_stream_add_master._entry.9, ptr @sdw_stream_add_master._entry_ptr, ptr @sdw_stream_add_master._entry_ptr.11, ptr @sdw_stream_add_slave._entry, ptr @sdw_stream_add_slave._entry.14, ptr @sdw_stream_add_slave._entry_ptr, ptr @sdw_stream_add_slave._entry_ptr.16, ptr @set_stream._entry, ptr @set_stream._entry_ptr, ptr @sdw_rows, ptr @sdw_cols, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.148, ptr @.str.149, ptr @.str.153, ptr @.str.157, ptr @.str.158, ptr @.str.163, ptr @.str.164], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_rows to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_cols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_find_col_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_find_row_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_stream_add_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_stream_add_master._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_stream_add_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_stream_add_slave._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_prepare_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_prepare_stream._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_enable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_enable_stream._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_disable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_disable_stream._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_deprepare_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_deprepare_stream._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_startup_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_shutdown_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_config_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_config_stream._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_is_valid_port_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_prepare_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_prepare_stream._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_prepare_stream._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_prepare_stream._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_prepare_stream._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_prepare_stream._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_params._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_params._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_program_slave_port_params._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_program_slave_port_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_program_slave_port_params._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_program_slave_port_params._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_program_slave_port_params._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_notify_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_enable_disable_slave_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_enable_disable_master_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_enable_disable_master_ports._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bank_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bank_switch._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bank_switch._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bank_switch._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_bank_switch._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_bank_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_ml_sync_bank_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_prep_deprep_slave_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_prep_deprep_slave_ports._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_prep_deprep_slave_ports._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_do_port_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_prep_deprep_master_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_enable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_enable_stream._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_enable_stream._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_enable_stream._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_disable_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_disable_stream._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_disable_stream._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_disable_stream._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_deprepare_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_deprepare_stream._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sdw_deprepare_stream._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_find_col_index(i32 noundef %col) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sdw_cols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %col)
  %cmp1 = icmp eq i32 %0, %col
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %col)
  %cmp1.1 = icmp eq i32 %1, %col
  br i1 %cmp1.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %2 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %col)
  %cmp1.2 = icmp eq i32 %2, %col
  br i1 %cmp1.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %col)
  %cmp1.3 = icmp eq i32 %3, %col
  br i1 %cmp1.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %col)
  %cmp1.4 = icmp eq i32 %4, %col
  br i1 %cmp1.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %col)
  %cmp1.5 = icmp eq i32 %5, %col
  br i1 %cmp1.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %col)
  %cmp1.6 = icmp eq i32 %6, %col
  br i1 %cmp1.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %col)
  %cmp1.7 = icmp eq i32 %7, %col
  br i1 %cmp1.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.7 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ 7, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_find_row_index(i32 noundef %row) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sdw_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %row)
  %cmp1 = icmp eq i32 %0, %row
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %row)
  %cmp1.1 = icmp eq i32 %1, %row
  br i1 %cmp1.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %2 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %row)
  %cmp1.2 = icmp eq i32 %2, %row
  br i1 %cmp1.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %row)
  %cmp1.3 = icmp eq i32 %3, %row
  br i1 %cmp1.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %row)
  %cmp1.4 = icmp eq i32 %4, %row
  br i1 %cmp1.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %row)
  %cmp1.5 = icmp eq i32 %5, %row
  br i1 %cmp1.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %row)
  %cmp1.6 = icmp eq i32 %6, %row
  br i1 %cmp1.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %row)
  %cmp1.7 = icmp eq i32 %7, %row
  br i1 %cmp1.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %8 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %row)
  %cmp1.8 = icmp eq i32 %8, %row
  br i1 %cmp1.8, label %for.inc.7.cleanup_crit_edge, label %for.inc.8

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %9 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %row)
  %cmp1.9 = icmp eq i32 %9, %row
  br i1 %cmp1.9, label %for.inc.8.cleanup_crit_edge, label %for.inc.9

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %10 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %row)
  %cmp1.10 = icmp eq i32 %10, %row
  br i1 %cmp1.10, label %for.inc.9.cleanup_crit_edge, label %for.inc.10

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %11 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %row)
  %cmp1.11 = icmp eq i32 %11, %row
  br i1 %cmp1.11, label %for.inc.10.cleanup_crit_edge, label %for.inc.11

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %12 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %row)
  %cmp1.12 = icmp eq i32 %12, %row
  br i1 %cmp1.12, label %for.inc.11.cleanup_crit_edge, label %for.inc.12

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  %13 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %row)
  %cmp1.13 = icmp eq i32 %13, %row
  br i1 %cmp1.13, label %for.inc.12.cleanup_crit_edge, label %for.inc.13

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.13:                                       ; preds = %for.inc.12
  %14 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %row)
  %cmp1.14 = icmp eq i32 %14, %row
  br i1 %cmp1.14, label %for.inc.13.cleanup_crit_edge, label %for.inc.14

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.14:                                       ; preds = %for.inc.13
  %15 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %row)
  %cmp1.15 = icmp eq i32 %15, %row
  br i1 %cmp1.15, label %for.inc.14.cleanup_crit_edge, label %for.inc.15

for.inc.14.cleanup_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.15:                                       ; preds = %for.inc.14
  %16 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %row)
  %cmp1.16 = icmp eq i32 %16, %row
  br i1 %cmp1.16, label %for.inc.15.cleanup_crit_edge, label %for.inc.16

for.inc.15.cleanup_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.16:                                       ; preds = %for.inc.15
  %17 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %row)
  %cmp1.17 = icmp eq i32 %17, %row
  br i1 %cmp1.17, label %for.inc.16.cleanup_crit_edge, label %for.inc.17

for.inc.16.cleanup_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.17:                                       ; preds = %for.inc.16
  %18 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 18), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %row)
  %cmp1.18 = icmp eq i32 %18, %row
  br i1 %cmp1.18, label %for.inc.17.cleanup_crit_edge, label %for.inc.18

for.inc.17.cleanup_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.18:                                       ; preds = %for.inc.17
  %19 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 19), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %row)
  %cmp1.19 = icmp eq i32 %19, %row
  br i1 %cmp1.19, label %for.inc.18.cleanup_crit_edge, label %for.inc.19

for.inc.18.cleanup_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.19:                                       ; preds = %for.inc.18
  %20 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 20), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %row)
  %cmp1.20 = icmp eq i32 %20, %row
  br i1 %cmp1.20, label %for.inc.19.cleanup_crit_edge, label %for.inc.20

for.inc.19.cleanup_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.20:                                       ; preds = %for.inc.19
  %21 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 21), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %row)
  %cmp1.21 = icmp eq i32 %21, %row
  br i1 %cmp1.21, label %for.inc.20.cleanup_crit_edge, label %for.inc.21

for.inc.20.cleanup_crit_edge:                     ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.21:                                       ; preds = %for.inc.20
  %22 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 22), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %row)
  %cmp1.22 = icmp eq i32 %22, %row
  br i1 %cmp1.22, label %for.inc.21.cleanup_crit_edge, label %for.inc.22

for.inc.21.cleanup_crit_edge:                     ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.22:                                       ; preds = %for.inc.21
  %23 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @sdw_rows, i32 0, i32 23), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %row)
  %cmp1.23 = icmp eq i32 %23, %row
  br i1 %cmp1.23, label %for.inc.22.cleanup_crit_edge, label %for.inc.23

for.inc.22.cleanup_crit_edge:                     ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.23:                                       ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.23, %for.inc.22.cleanup_crit_edge, %for.inc.21.cleanup_crit_edge, %for.inc.20.cleanup_crit_edge, %for.inc.19.cleanup_crit_edge, %for.inc.18.cleanup_crit_edge, %for.inc.17.cleanup_crit_edge, %for.inc.16.cleanup_crit_edge, %for.inc.15.cleanup_crit_edge, %for.inc.14.cleanup_crit_edge, %for.inc.13.cleanup_crit_edge, %for.inc.12.cleanup_crit_edge, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.23 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ 7, %for.inc.6.cleanup_crit_edge ], [ 8, %for.inc.7.cleanup_crit_edge ], [ 9, %for.inc.8.cleanup_crit_edge ], [ 10, %for.inc.9.cleanup_crit_edge ], [ 11, %for.inc.10.cleanup_crit_edge ], [ 12, %for.inc.11.cleanup_crit_edge ], [ 13, %for.inc.12.cleanup_crit_edge ], [ 14, %for.inc.13.cleanup_crit_edge ], [ 15, %for.inc.14.cleanup_crit_edge ], [ 16, %for.inc.15.cleanup_crit_edge ], [ 17, %for.inc.16.cleanup_crit_edge ], [ 18, %for.inc.17.cleanup_crit_edge ], [ 19, %for.inc.18.cleanup_crit_edge ], [ 20, %for.inc.19.cleanup_crit_edge ], [ 21, %for.inc.20.cleanup_crit_edge ], [ 22, %for.inc.21.cleanup_crit_edge ], [ 23, %for.inc.22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_release_stream(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %stream) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sdw_alloc_stream(ptr noundef %stream_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %stream_name, ptr %call7.i.i, align 8
  %master_list = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %master_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %master_list, ptr %master_list, align 8
  %prev.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %master_list, ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 8
  %m_rt_count = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %m_rt_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %m_rt_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_stream_remove_master(ptr noundef %bus, ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_lock = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #5
  %master_list = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %0 = ptrtoint ptr %master_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_list, align 4
  %cmp.not34 = icmp eq ptr %1, %master_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %m_rt_count = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in35 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn37, %for.inc.for.body_crit_edge ]
  %m_rt.036 = getelementptr i8, ptr %.pn.in35, i32 -32
  %2 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %.pn.in35, align 4
  %3 = ptrtoint ptr %m_rt.036 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_rt.036, align 4
  %cmp8.not = icmp eq ptr %4, %bus
  br i1 %cmp8.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %port_list.i = getelementptr i8, ptr %.pn.in35, i32 -8
  %5 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_list.i, align 4
  %cmp.not2.i = icmp eq ptr %6, %port_list.i
  br i1 %cmp.not2.i, label %if.end.sdw_master_port_release.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sdw_master_port_release.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_master_port_release.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in3.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %6, %if.end.for.body.i_crit_edge ]
  %p_rt.0.i = getelementptr i8, ptr %.pn.in3.i, i32 -64
  %7 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in3.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in3.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in3.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in3.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p_rt.0.i) #5
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.sdw_master_port_release.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.sdw_master_port_release.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_master_port_release.exit

sdw_master_port_release.exit:                     ; preds = %list_del.exit.i.sdw_master_port_release.exit_crit_edge, %if.end.sdw_master_port_release.exit_crit_edge
  tail call fastcc void @sdw_release_master_stream(ptr noundef %m_rt.036, ptr noundef %stream)
  %16 = ptrtoint ptr %m_rt_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_rt_count, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %m_rt_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %sdw_master_port_release.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn37, %master_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %18 = ptrtoint ptr %master_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %master_list, align 4
  %cmp.i.not = icmp eq ptr %19, %master_list
  br i1 %cmp.i.not, label %if.then15, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %state, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %bus_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdw_release_master_stream(ptr noundef %m_rt, ptr noundef readonly %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_rt_list = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 4
  %0 = ptrtoint ptr %slave_rt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_rt_list, align 4
  %cmp.not47 = icmp eq ptr %1, %slave_rt_list
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %sdw_release_slave_stream.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in48 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %sdw_release_slave_stream.exit.for.body_crit_edge ]
  %s_rt.0 = getelementptr i8, ptr %.pn.in48, i32 -12
  %2 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in48, align 4
  %3 = ptrtoint ptr %s_rt.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_rt.0, align 4
  %5 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn10.i = load ptr, ptr %master_list.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %master_list.i
  br i1 %cmp.not11.i, label %for.body.sdw_slave_port_release.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.sdw_slave_port_release.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_slave_port_release.exit

for.cond.loopexit.i:                              ; preds = %for.inc33.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %6 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.sdw_slave_port_release.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.loopexit.i.sdw_slave_port_release.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_slave_port_release.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn10.i, %for.body.for.body.i_crit_edge ]
  %slave_rt_list.i = getelementptr i8, ptr %.pn12.i, i32 -16
  %7 = ptrtoint ptr %slave_rt_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn17.i = load ptr, ptr %slave_rt_list.i, align 4
  %cmp8.not8.i = icmp eq ptr %.pn17.i, %slave_rt_list.i
  br i1 %cmp8.not8.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body10.i_crit_edge

for.body.i.for.body10.i_crit_edge:                ; preds = %for.body.i
  br label %for.body10.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

for.body10.i:                                     ; preds = %for.inc33.i.for.body10.i_crit_edge, %for.body.i.for.body10.i_crit_edge
  %.pn19.i = phi ptr [ %.pn1.i, %for.inc33.i.for.body10.i_crit_edge ], [ %.pn17.i, %for.body.i.for.body10.i_crit_edge ]
  %s_rt.0.i = getelementptr i8, ptr %.pn19.i, i32 -12
  %8 = ptrtoint ptr %s_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_rt.0.i, align 4
  %cmp12.not.i = icmp eq ptr %9, %4
  br i1 %cmp12.not.i, label %if.end.i, label %for.body10.i.for.inc33.i_crit_edge

for.body10.i.for.inc33.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.i

if.end.i:                                         ; preds = %for.body10.i
  %port_list.i = getelementptr i8, ptr %.pn19.i, i32 8
  %10 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_list.i, align 4
  %cmp24.not4.i = icmp eq ptr %11, %port_list.i
  br i1 %cmp24.not4.i, label %if.end.i.for.inc33.i_crit_edge, label %if.end.i.for.body26.i_crit_edge

if.end.i.for.body26.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body26.i

if.end.i.for.inc33.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.i

for.body26.i:                                     ; preds = %list_del.exit.i.for.body26.i_crit_edge, %if.end.i.for.body26.i_crit_edge
  %.pn2.in5.i = phi ptr [ %.pn2.i, %list_del.exit.i.for.body26.i_crit_edge ], [ %11, %if.end.i.for.body26.i_crit_edge ]
  %p_rt.0.i = getelementptr i8, ptr %.pn2.in5.i, i32 -64
  %12 = ptrtoint ptr %.pn2.in5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn2.i = load ptr, ptr %.pn2.in5.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn2.in5.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body26.i.list_del.exit.i_crit_edge

for.body26.i.list_del.exit.i_crit_edge:           ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn2.in5.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn2.in5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn2.in5.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body26.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn2.in5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn2.in5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn2.in5.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p_rt.0.i) #5
  %cmp24.not.i = icmp eq ptr %.pn2.i, %port_list.i
  br i1 %cmp24.not.i, label %list_del.exit.i.for.inc33.i_crit_edge, label %list_del.exit.i.for.body26.i_crit_edge

list_del.exit.i.for.body26.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26.i

list_del.exit.i.for.inc33.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.i

for.inc33.i:                                      ; preds = %list_del.exit.i.for.inc33.i_crit_edge, %if.end.i.for.inc33.i_crit_edge, %for.body10.i.for.inc33.i_crit_edge
  %21 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn1.i = load ptr, ptr %.pn19.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn1.i, %slave_rt_list.i
  br i1 %cmp8.not.i, label %for.inc33.i.for.cond.loopexit.i_crit_edge, label %for.inc33.i.for.body10.i_crit_edge

for.inc33.i.for.body10.i_crit_edge:               ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.inc33.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

sdw_slave_port_release.exit:                      ; preds = %for.cond.loopexit.i.sdw_slave_port_release.exit_crit_edge, %for.body.sdw_slave_port_release.exit_crit_edge
  %22 = ptrtoint ptr %s_rt.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_rt.0, align 4
  %24 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn46.i = load ptr, ptr %master_list.i, align 4
  %cmp.not47.i = icmp eq ptr %.pn46.i, %master_list.i
  br i1 %cmp.not47.i, label %sdw_slave_port_release.exit.sdw_release_slave_stream.exit_crit_edge, label %sdw_slave_port_release.exit.for.body.i30_crit_edge

sdw_slave_port_release.exit.for.body.i30_crit_edge: ; preds = %sdw_slave_port_release.exit
  br label %for.body.i30

sdw_slave_port_release.exit.sdw_release_slave_stream.exit_crit_edge: ; preds = %sdw_slave_port_release.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_release_slave_stream.exit

for.cond.loopexit.i28:                            ; preds = %for.cond10.i
  %25 = ptrtoint ptr %.pn48.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i26 = load ptr, ptr %.pn48.i, align 4
  %cmp.not.i27 = icmp eq ptr %.pn.i26, %master_list.i
  br i1 %cmp.not.i27, label %for.cond.loopexit.i28.sdw_release_slave_stream.exit_crit_edge, label %for.cond.loopexit.i28.for.body.i30_crit_edge

for.cond.loopexit.i28.for.body.i30_crit_edge:     ; preds = %for.cond.loopexit.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i30

for.cond.loopexit.i28.sdw_release_slave_stream.exit_crit_edge: ; preds = %for.cond.loopexit.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_release_slave_stream.exit

for.body.i30:                                     ; preds = %for.cond.loopexit.i28.for.body.i30_crit_edge, %sdw_slave_port_release.exit.for.body.i30_crit_edge
  %.pn48.i = phi ptr [ %.pn.i26, %for.cond.loopexit.i28.for.body.i30_crit_edge ], [ %.pn46.i, %sdw_slave_port_release.exit.for.body.i30_crit_edge ]
  %slave_rt_list.i29 = getelementptr i8, ptr %.pn48.i, i32 -16
  br label %for.cond10.i

for.cond10.i:                                     ; preds = %for.body15.i.for.cond10.i_crit_edge, %for.body.i30
  %.pn42.in.in.i = phi ptr [ %slave_rt_list.i29, %for.body.i30 ], [ %.pn42.in.i, %for.body15.i.for.cond10.i_crit_edge ]
  %26 = ptrtoint ptr %.pn42.in.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn42.in.i = load ptr, ptr %.pn42.in.in.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn42.in.i, %slave_rt_list.i29
  br i1 %cmp13.not.i, label %for.cond.loopexit.i28, label %for.body15.i

for.body15.i:                                     ; preds = %for.cond10.i
  %s_rt.0.i31 = getelementptr i8, ptr %.pn42.in.i, i32 -12
  %27 = ptrtoint ptr %s_rt.0.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_rt.0.i31, align 4
  %cmp17.i = icmp eq ptr %28, %23
  br i1 %cmp17.i, label %if.then.i, label %for.body15.i.for.cond10.i_crit_edge

for.body15.i.for.cond10.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.i

if.then.i:                                        ; preds = %for.body15.i
  %s_rt.0.i31.le = getelementptr i8, ptr %.pn42.in.i, i32 -12
  %call.i.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn42.in.i) #5
  br i1 %call.i.i.i32, label %if.end.i.i.i35, label %if.then.i.list_del.exit.i37_crit_edge

if.then.i.list_del.exit.i37_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i37

if.end.i.i.i35:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %.pn42.in.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i33, align 4
  %31 = ptrtoint ptr %.pn42.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn42.in.i, align 4
  %prev1.i.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i34, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i37

list_del.exit.i37:                                ; preds = %if.end.i.i.i35, %if.then.i.list_del.exit.i37_crit_edge
  %35 = ptrtoint ptr %.pn42.in.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn42.in.i, align 4
  %prev.i.i36 = getelementptr inbounds %struct.list_head, ptr %.pn42.in.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i36, align 4
  tail call void @kfree(ptr noundef %s_rt.0.i31.le) #5
  br label %sdw_release_slave_stream.exit

sdw_release_slave_stream.exit:                    ; preds = %list_del.exit.i37, %for.cond.loopexit.i28.sdw_release_slave_stream.exit_crit_edge, %sdw_slave_port_release.exit.sdw_release_slave_stream.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %slave_rt_list
  br i1 %cmp.not, label %sdw_release_slave_stream.exit.for.end_crit_edge, label %sdw_release_slave_stream.exit.for.body_crit_edge

sdw_release_slave_stream.exit.for.body_crit_edge: ; preds = %sdw_release_slave_stream.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sdw_release_slave_stream.exit.for.end_crit_edge:  ; preds = %sdw_release_slave_stream.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %sdw_release_slave_stream.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %stream_node = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %stream_node) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i38 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i38, align 4
  %39 = ptrtoint ptr %stream_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %43 = ptrtoint ptr %stream_node to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %stream_node, align 4
  %prev.i = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %bus_node = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 7
  %call.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bus_node) #5
  br i1 %call.i.i39, label %if.end.i.i42, label %list_del.exit.list_del.exit44_crit_edge

list_del.exit.list_del.exit44_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit44

if.end.i.i42:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i40 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i40, align 4
  %47 = ptrtoint ptr %bus_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus_node, align 4
  %prev1.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i41, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit44

list_del.exit44:                                  ; preds = %if.end.i.i42, %list_del.exit.list_del.exit44_crit_edge
  %51 = ptrtoint ptr %bus_node to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %bus_node, align 4
  %prev.i43 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i43, align 4
  tail call void @kfree(ptr noundef %m_rt) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_stream_remove_slave(ptr noundef readonly %slave, ptr noundef readonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %bus_lock = getelementptr inbounds %struct.sdw_bus, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #5
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %2 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn10.i = load ptr, ptr %master_list.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %master_list.i
  br i1 %cmp.not11.i, label %entry.sdw_slave_port_release.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sdw_slave_port_release.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_slave_port_release.exit

for.cond.loopexit.i:                              ; preds = %for.inc33.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %3 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.sdw_slave_port_release.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.loopexit.i.sdw_slave_port_release.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_slave_port_release.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn10.i, %entry.for.body.i_crit_edge ]
  %slave_rt_list.i = getelementptr i8, ptr %.pn12.i, i32 -16
  %4 = ptrtoint ptr %slave_rt_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn17.i = load ptr, ptr %slave_rt_list.i, align 4
  %cmp8.not8.i = icmp eq ptr %.pn17.i, %slave_rt_list.i
  br i1 %cmp8.not8.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body10.i_crit_edge

for.body.i.for.body10.i_crit_edge:                ; preds = %for.body.i
  br label %for.body10.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

for.body10.i:                                     ; preds = %for.inc33.i.for.body10.i_crit_edge, %for.body.i.for.body10.i_crit_edge
  %.pn19.i = phi ptr [ %.pn1.i, %for.inc33.i.for.body10.i_crit_edge ], [ %.pn17.i, %for.body.i.for.body10.i_crit_edge ]
  %s_rt.0.i = getelementptr i8, ptr %.pn19.i, i32 -12
  %5 = ptrtoint ptr %s_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_rt.0.i, align 4
  %cmp12.not.i = icmp eq ptr %6, %slave
  br i1 %cmp12.not.i, label %if.end.i, label %for.body10.i.for.inc33.i_crit_edge

for.body10.i.for.inc33.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.i

if.end.i:                                         ; preds = %for.body10.i
  %port_list.i = getelementptr i8, ptr %.pn19.i, i32 8
  %7 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_list.i, align 4
  %cmp24.not4.i = icmp eq ptr %8, %port_list.i
  br i1 %cmp24.not4.i, label %if.end.i.for.inc33.i_crit_edge, label %if.end.i.for.body26.i_crit_edge

if.end.i.for.body26.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body26.i

if.end.i.for.inc33.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.i

for.body26.i:                                     ; preds = %list_del.exit.i.for.body26.i_crit_edge, %if.end.i.for.body26.i_crit_edge
  %.pn2.in5.i = phi ptr [ %.pn2.i, %list_del.exit.i.for.body26.i_crit_edge ], [ %8, %if.end.i.for.body26.i_crit_edge ]
  %p_rt.0.i = getelementptr i8, ptr %.pn2.in5.i, i32 -64
  %9 = ptrtoint ptr %.pn2.in5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn2.i = load ptr, ptr %.pn2.in5.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn2.in5.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body26.i.list_del.exit.i_crit_edge

for.body26.i.list_del.exit.i_crit_edge:           ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn2.in5.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %.pn2.in5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn2.in5.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body26.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %.pn2.in5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn2.in5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn2.in5.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p_rt.0.i) #5
  %cmp24.not.i = icmp eq ptr %.pn2.i, %port_list.i
  br i1 %cmp24.not.i, label %list_del.exit.i.for.inc33.i_crit_edge, label %list_del.exit.i.for.body26.i_crit_edge

list_del.exit.i.for.body26.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26.i

list_del.exit.i.for.inc33.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.i

for.inc33.i:                                      ; preds = %list_del.exit.i.for.inc33.i_crit_edge, %if.end.i.for.inc33.i_crit_edge, %for.body10.i.for.inc33.i_crit_edge
  %18 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn1.i = load ptr, ptr %.pn19.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn1.i, %slave_rt_list.i
  br i1 %cmp8.not.i, label %for.inc33.i.for.cond.loopexit.i_crit_edge, label %for.inc33.i.for.body10.i_crit_edge

for.inc33.i.for.body10.i_crit_edge:               ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.inc33.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

sdw_slave_port_release.exit:                      ; preds = %for.cond.loopexit.i.sdw_slave_port_release.exit_crit_edge, %entry.sdw_slave_port_release.exit_crit_edge
  %19 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn46.i = load ptr, ptr %master_list.i, align 4
  %cmp.not47.i = icmp eq ptr %.pn46.i, %master_list.i
  br i1 %cmp.not47.i, label %sdw_slave_port_release.exit.sdw_release_slave_stream.exit_crit_edge, label %sdw_slave_port_release.exit.for.body.i14_crit_edge

sdw_slave_port_release.exit.for.body.i14_crit_edge: ; preds = %sdw_slave_port_release.exit
  br label %for.body.i14

sdw_slave_port_release.exit.sdw_release_slave_stream.exit_crit_edge: ; preds = %sdw_slave_port_release.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_release_slave_stream.exit

for.cond.loopexit.i12:                            ; preds = %for.cond10.i
  %20 = ptrtoint ptr %.pn48.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i10 = load ptr, ptr %.pn48.i, align 4
  %cmp.not.i11 = icmp eq ptr %.pn.i10, %master_list.i
  br i1 %cmp.not.i11, label %for.cond.loopexit.i12.sdw_release_slave_stream.exit_crit_edge, label %for.cond.loopexit.i12.for.body.i14_crit_edge

for.cond.loopexit.i12.for.body.i14_crit_edge:     ; preds = %for.cond.loopexit.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i14

for.cond.loopexit.i12.sdw_release_slave_stream.exit_crit_edge: ; preds = %for.cond.loopexit.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_release_slave_stream.exit

for.body.i14:                                     ; preds = %for.cond.loopexit.i12.for.body.i14_crit_edge, %sdw_slave_port_release.exit.for.body.i14_crit_edge
  %.pn48.i = phi ptr [ %.pn.i10, %for.cond.loopexit.i12.for.body.i14_crit_edge ], [ %.pn46.i, %sdw_slave_port_release.exit.for.body.i14_crit_edge ]
  %slave_rt_list.i13 = getelementptr i8, ptr %.pn48.i, i32 -16
  br label %for.cond10.i

for.cond10.i:                                     ; preds = %for.body15.i.for.cond10.i_crit_edge, %for.body.i14
  %.pn42.in.in.i = phi ptr [ %slave_rt_list.i13, %for.body.i14 ], [ %.pn42.in.i, %for.body15.i.for.cond10.i_crit_edge ]
  %21 = ptrtoint ptr %.pn42.in.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn42.in.i = load ptr, ptr %.pn42.in.in.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn42.in.i, %slave_rt_list.i13
  br i1 %cmp13.not.i, label %for.cond.loopexit.i12, label %for.body15.i

for.body15.i:                                     ; preds = %for.cond10.i
  %s_rt.0.i15 = getelementptr i8, ptr %.pn42.in.i, i32 -12
  %22 = ptrtoint ptr %s_rt.0.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_rt.0.i15, align 4
  %cmp17.i = icmp eq ptr %23, %slave
  br i1 %cmp17.i, label %if.then.i, label %for.body15.i.for.cond10.i_crit_edge

for.body15.i.for.cond10.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.i

if.then.i:                                        ; preds = %for.body15.i
  %s_rt.0.i15.le = getelementptr i8, ptr %.pn42.in.i, i32 -12
  %call.i.i.i16 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn42.in.i) #5
  br i1 %call.i.i.i16, label %if.end.i.i.i19, label %if.then.i.list_del.exit.i21_crit_edge

if.then.i.list_del.exit.i21_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i21

if.end.i.i.i19:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %.pn42.in.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i17, align 4
  %26 = ptrtoint ptr %.pn42.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn42.in.i, align 4
  %prev1.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i18, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i21

list_del.exit.i21:                                ; preds = %if.end.i.i.i19, %if.then.i.list_del.exit.i21_crit_edge
  %30 = ptrtoint ptr %.pn42.in.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn42.in.i, align 4
  %prev.i.i20 = getelementptr inbounds %struct.list_head, ptr %.pn42.in.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i20, align 4
  tail call void @kfree(ptr noundef %s_rt.0.i15.le) #5
  br label %sdw_release_slave_stream.exit

sdw_release_slave_stream.exit:                    ; preds = %list_del.exit.i21, %for.cond.loopexit.i12.sdw_release_slave_stream.exit_crit_edge, %sdw_slave_port_release.exit.sdw_release_slave_stream.exit_crit_edge
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 4
  %bus_lock3 = getelementptr inbounds %struct.sdw_bus, ptr %33, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %bus_lock3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_stream_add_master(ptr noundef %bus, ptr nocapture noundef readonly %stream_config, ptr nocapture noundef readonly %port_config, i32 noundef %num_ports, ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_lock = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #5
  %multi_link = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 18
  %0 = ptrtoint ptr %multi_link to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multi_link, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %m_rt_count = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 5
  %2 = ptrtoint ptr %m_rt_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_rt_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %link_id = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 2
  %6 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %7) #8
  br label %unlock

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call fastcc ptr @sdw_alloc_master_rt(ptr noundef %bus, ptr noundef %stream_config, ptr noundef %stream)
  %tobool1.not = icmp eq ptr %call, null
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %11) #8
  br label %unlock

if.end7:                                          ; preds = %if.end
  %params.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 1
  %12 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end7.if.end.i_crit_edge, label %land.lhs.true.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end7
  %14 = ptrtoint ptr %stream_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp eq i32 %13, %15
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.stream_error.sink.split_crit_edge

land.lhs.true.i.stream_error.sink.split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_error.sink.split

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %bps.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end12_crit_edge, label %land.lhs.true5.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true5.i:                                 ; preds = %if.end.i
  %bps8.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %18 = ptrtoint ptr %bps8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bps8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp9.not.i = icmp eq i32 %17, %19
  br i1 %cmp9.not.i, label %land.lhs.true5.i.if.end12_crit_edge, label %land.lhs.true5.i.stream_error.sink.split_crit_edge

land.lhs.true5.i.stream_error.sink.split_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_error.sink.split

land.lhs.true5.i.if.end12_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true5.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge
  %type.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 4
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  %type15.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 3
  %22 = ptrtoint ptr %type15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %type15.i, align 4
  %23 = ptrtoint ptr %stream_config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream_config, align 4
  %25 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %params.i, align 4
  %bps19.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %26 = ptrtoint ptr %bps19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bps19.i, align 4
  %28 = ptrtoint ptr %bps.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ports)
  %cmp5.not.i = icmp eq i32 %num_ports, 0
  br i1 %cmp5.not.i, label %if.end12.if.end16_crit_edge, label %for.body.lr.ph.i

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body.lr.ph.i:                                 ; preds = %if.end12
  %port_list.i = getelementptr inbounds %struct.sdw_master_runtime, ptr %call, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.sdw_master_runtime, ptr %call, i32 0, i32 5, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 72) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.stream_error_crit_edge, label %if.end.i37

for.body.i.stream_error_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_error

if.end.i37:                                       ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.sdw_port_config, ptr %port_config, i32 %i.06.i
  %ch_mask.i.i = getelementptr %struct.sdw_port_config, ptr %port_config, i32 %i.06.i, i32 1
  %30 = ptrtoint ptr %ch_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_mask.i.i, align 4
  %ch_mask1.i.i = getelementptr inbounds %struct.sdw_port_runtime, ptr %call7.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %ch_mask1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ch_mask1.i.i, align 4
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %35 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %call7.i.i.i.i, align 8
  %port_node.i = getelementptr inbounds %struct.sdw_port_runtime, ptr %call7.i.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port_node.i, ptr noundef %37, ptr noundef %port_list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i37.list_add_tail.exit.i_crit_edge

if.end.i37.list_add_tail.exit.i_crit_edge:        ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %port_node.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %port_node.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %port_list.i, ptr %port_node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.sdw_port_runtime, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %port_node.i, ptr %37, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i37.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_ports
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.if.end16_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_add_tail.exit.i.if.end16_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %list_add_tail.exit.i.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %m_rt_count17 = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 5
  %42 = ptrtoint ptr %m_rt_count17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m_rt_count17, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %m_rt_count17, align 4
  br label %unlock

stream_error.sink.split:                          ; preds = %land.lhs.true5.i.stream_error.sink.split_crit_edge, %land.lhs.true.i.stream_error.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.37, %land.lhs.true.i.stream_error.sink.split_crit_edge ], [ @.str.40, %land.lhs.true5.i.stream_error.sink.split_crit_edge ]
  %44 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stream, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull %.str.40.sink, ptr noundef %45) #8
  br label %stream_error

stream_error:                                     ; preds = %stream_error.sink.split, %for.body.i.stream_error_crit_edge
  %ret.0 = phi i32 [ -22, %stream_error.sink.split ], [ -12, %for.body.i.stream_error_crit_edge ]
  tail call fastcc void @sdw_release_master_stream(ptr noundef nonnull %call, ptr noundef %stream)
  br label %unlock

unlock:                                           ; preds = %stream_error, %if.end16, %do.end5, %do.end
  %ret.1 = phi i32 [ %ret.0, %stream_error ], [ 0, %if.end16 ], [ -12, %do.end5 ], [ -22, %do.end ]
  tail call void @mutex_unlock(ptr noundef %bus_lock) #5
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sdw_alloc_master_rt(ptr noundef %bus, ptr nocapture noundef readonly %stream_config, ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %master_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %m_rt.0.i = getelementptr i8, ptr %.pn.i, i32 -32
  %1 = ptrtoint ptr %m_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_rt.0.i, align 4
  %cmp3.i = icmp eq ptr %2, %bus
  br i1 %cmp3.i, label %sdw_find_master_rt.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

sdw_find_master_rt.exit:                          ; preds = %for.body.i
  %m_rt.0.i.le = getelementptr i8, ptr %.pn.i, i32 -32
  %tobool.not = icmp eq ptr %m_rt.0.i.le, null
  br i1 %tobool.not, label %sdw_find_master_rt.exit.if.end_crit_edge, label %sdw_find_master_rt.exit.stream_config5_crit_edge

sdw_find_master_rt.exit.stream_config5_crit_edge: ; preds = %sdw_find_master_rt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_config5

sdw_find_master_rt.exit.if.end_crit_edge:         ; preds = %sdw_find_master_rt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %sdw_find_master_rt.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %port_list = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %port_list, ptr %port_list, align 8
  %prev.i = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %port_list, ptr %prev.i, align 4
  %slave_rt_list = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %slave_rt_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %slave_rt_list, ptr %slave_rt_list, align 8
  %prev.i25 = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %slave_rt_list, ptr %prev.i25, align 4
  %stream_node = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 6
  %prev.i26 = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i26, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %stream_node, ptr noundef %9, ptr noundef %master_list.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add_tail.exit_crit_edge

if.end4.list_add_tail.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %stream_node, ptr %prev.i26, align 4
  %11 = ptrtoint ptr %stream_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %master_list.i, ptr %stream_node, align 8
  %prev3.i.i = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %stream_node, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end4.list_add_tail.exit_crit_edge
  %bus_node = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 7
  %m_rt_list = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 13
  %prev.i27 = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i27, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %bus_node, ptr noundef %15, ptr noundef %m_rt_list) #5
  br i1 %call.i.i28, label %if.end.i.i30, label %list_add_tail.exit.stream_config5_crit_edge

list_add_tail.exit.stream_config5_crit_edge:      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_config5

if.end.i.i30:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bus_node, ptr %prev.i27, align 4
  %17 = ptrtoint ptr %bus_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m_rt_list, ptr %bus_node, align 8
  %prev3.i.i29 = getelementptr inbounds %struct.sdw_master_runtime, ptr %call7.i.i, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %prev3.i.i29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i29, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %bus_node, ptr %15, align 4
  br label %stream_config5

stream_config5:                                   ; preds = %if.end.i.i30, %list_add_tail.exit.stream_config5_crit_edge, %sdw_find_master_rt.exit.stream_config5_crit_edge
  %m_rt.0 = phi ptr [ %m_rt.0.i.le, %sdw_find_master_rt.exit.stream_config5_crit_edge ], [ %call7.i.i, %list_add_tail.exit.stream_config5_crit_edge ], [ %call7.i.i, %if.end.i.i30 ]
  %ch_count = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %20 = ptrtoint ptr %ch_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_count, align 4
  %ch_count6 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt.0, i32 0, i32 3
  %22 = ptrtoint ptr %ch_count6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ch_count6, align 4
  %23 = ptrtoint ptr %m_rt.0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bus, ptr %m_rt.0, align 4
  %stream8 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt.0, i32 0, i32 1
  %24 = ptrtoint ptr %stream8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %stream, ptr %stream8, align 4
  %direction = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %25 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %direction, align 4
  %direction9 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt.0, i32 0, i32 2
  %27 = ptrtoint ptr %direction9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %direction9, align 4
  br label %cleanup

cleanup:                                          ; preds = %stream_config5, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %m_rt.0, %stream_config5 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_stream_add_slave(ptr noundef %slave, ptr nocapture noundef readonly %stream_config, ptr nocapture noundef readonly %port_config, i32 noundef %num_ports, ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %bus_lock = getelementptr inbounds %struct.sdw_bus, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %call = tail call fastcc ptr @sdw_alloc_master_rt(ptr noundef %3, ptr noundef %stream_config, ptr noundef %stream)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %5) #8
  br label %error

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.15, ptr noundef %8) #8
  br label %stream_error

if.end10:                                         ; preds = %if.end
  %port_list.i = getelementptr inbounds %struct.sdw_slave_runtime, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %port_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %port_list.i, ptr %port_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sdw_slave_runtime, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %port_list.i, ptr %prev.i.i, align 8
  %ch_count.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %11 = ptrtoint ptr %ch_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_count.i, align 4
  %ch_count1.i = getelementptr inbounds %struct.sdw_slave_runtime, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ch_count1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ch_count1.i, align 8
  %direction.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %14 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction.i, align 4
  %direction2.i = getelementptr inbounds %struct.sdw_slave_runtime, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %direction2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %direction2.i, align 4
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %slave, ptr %call7.i.i.i, align 8
  %dev11 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %params.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 1
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i44 = icmp eq i32 %19, 0
  br i1 %tobool.not.i44, label %if.end10.if.end.i45_crit_edge, label %land.lhs.true.i

if.end10.if.end.i45_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i45

land.lhs.true.i:                                  ; preds = %if.end10
  %20 = ptrtoint ptr %stream_config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream_config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp eq i32 %19, %21
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i45_crit_edge, label %land.lhs.true.i.if.then14_crit_edge

land.lhs.true.i.if.then14_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

land.lhs.true.i.if.end.i45_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i45

if.end.i45:                                       ; preds = %land.lhs.true.i.if.end.i45_crit_edge, %if.end10.if.end.i45_crit_edge
  %bps.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i = icmp eq i32 %23, 0
  br i1 %tobool4.not.i, label %if.end.i45.if.end15_crit_edge, label %land.lhs.true5.i

if.end.i45.if.end15_crit_edge:                    ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true5.i:                                 ; preds = %if.end.i45
  %bps8.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %24 = ptrtoint ptr %bps8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bps8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp9.not.i = icmp eq i32 %23, %25
  br i1 %cmp9.not.i, label %land.lhs.true5.i.if.end15_crit_edge, label %land.lhs.true5.i.if.then14_crit_edge

land.lhs.true5.i.if.then14_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

land.lhs.true5.i.if.end15_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true5.i.if.then14_crit_edge, %land.lhs.true.i.if.then14_crit_edge
  %.str.37.sink = phi ptr [ @.str.37, %land.lhs.true.i.if.then14_crit_edge ], [ @.str.40, %land.lhs.true5.i.if.then14_crit_edge ]
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull %.str.37.sink, ptr noundef %27) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %stream_error

if.end15:                                         ; preds = %land.lhs.true5.i.if.end15_crit_edge, %if.end.i45.if.end15_crit_edge
  %type.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 4
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %type15.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 3
  %30 = ptrtoint ptr %type15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %type15.i, align 4
  %31 = ptrtoint ptr %stream_config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream_config, align 4
  %33 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %params.i, align 4
  %bps19.i = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %34 = ptrtoint ptr %bps19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bps19.i, align 4
  %36 = ptrtoint ptr %bps.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bps.i, align 4
  %37 = ptrtoint ptr %ch_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ch_count.i, align 4
  %ch_count25.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %ch_count25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ch_count25.i, align 4
  %add.i = add i32 %40, %38
  store i32 %add.i, ptr %ch_count25.i, align 4
  %m_rt_node = getelementptr inbounds %struct.sdw_slave_runtime, ptr %call7.i.i.i, i32 0, i32 3
  %slave_rt_list = getelementptr inbounds %struct.sdw_master_runtime, ptr %call, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.sdw_master_runtime, ptr %call, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %m_rt_node, ptr noundef %42, ptr noundef %slave_rt_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m_rt_node, ptr %prev.i, align 4
  %44 = ptrtoint ptr %m_rt_node to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %slave_rt_list, ptr %m_rt_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sdw_slave_runtime, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %m_rt_node, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ports)
  %cmp18.not.i = icmp eq i32 %num_ports, 0
  br i1 %cmp18.not.i, label %list_add_tail.exit.if.end19_crit_edge, label %list_add_tail.exit.for.body.i_crit_edge

list_add_tail.exit.for.body.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body.i

list_add_tail.exit.if.end19_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %list_add_tail.exit.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %list_add_tail.exit.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 72) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.stream_error_crit_edge, label %if.end.i49

for.body.i.stream_error_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_error

if.end.i49:                                       ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.sdw_port_config, ptr %port_config, i32 %i.019.i
  %ch_mask.i.i = getelementptr %struct.sdw_port_config, ptr %port_config, i32 %i.019.i, i32 1
  %48 = ptrtoint ptr %ch_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch_mask.i.i, align 4
  %ch_mask1.i.i = getelementptr inbounds %struct.sdw_port_runtime, ptr %call7.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %ch_mask1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ch_mask1.i.i, align 4
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %call7.i.i.i.i, align 8
  %54 = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %54)
  %55 = icmp ult i32 %54, 14
  br i1 %55, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.42, i32 noundef %52) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  br label %stream_error

if.end5.i:                                        ; preds = %if.end.i49
  %port_node.i = getelementptr inbounds %struct.sdw_port_runtime, ptr %call7.i.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port_node.i, ptr noundef %57, ptr noundef %port_list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.i.list_add_tail.exit.i_crit_edge

if.end5.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %port_node.i, ptr %prev.i.i, align 8
  %59 = ptrtoint ptr %port_node.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %port_list.i, ptr %port_node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.sdw_port_runtime, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %port_node.i, ptr %57, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end5.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_ports
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.if.end19_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_add_tail.exit.i.if.end19_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %list_add_tail.exit.i.if.end19_crit_edge, %list_add_tail.exit.if.end19_crit_edge
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 2
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %state, align 4
  br label %error

stream_error:                                     ; preds = %if.then4.i, %for.body.i.stream_error_crit_edge, %if.then14, %do.end7
  %ret.0 = phi i32 [ -22, %if.then14 ], [ -12, %do.end7 ], [ -22, %if.then4.i ], [ -12, %for.body.i.stream_error_crit_edge ]
  tail call fastcc void @sdw_release_master_stream(ptr noundef nonnull %call, ptr noundef %stream)
  br label %error

error:                                            ; preds = %stream_error, %if.end19, %do.end
  %ret.1 = phi i32 [ %ret.0, %stream_error ], [ 0, %if.end19 ], [ -12, %do.end ]
  %63 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus, align 4
  %bus_lock21 = getelementptr inbounds %struct.sdw_bus, ptr %64, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %bus_lock21) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sdw_get_slave_dpn_prop(ptr nocapture noundef readonly %slave, i32 noundef %direction, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %cond.false, label %cond.false701

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %0 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %source_ports, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %1) #5
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  br label %if.end

cond.false701:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %2 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sink_ports, align 4
  %call.i799 = tail call i32 @__sw_hweight32(i32 noundef %3) #5
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  br label %if.end

if.end:                                           ; preds = %cond.false701, %cond.false
  %dpn_prop.0.in = phi ptr [ %src_dpn_prop, %cond.false ], [ %sink_dpn_prop, %cond.false701 ]
  %num_ports.0.in = phi i32 [ %call.i, %cond.false ], [ %call.i799, %cond.false701 ]
  %4 = ptrtoint ptr %dpn_prop.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %dpn_prop.0 = load ptr, ptr %dpn_prop.0.in, align 4
  %conv709 = and i32 %num_ports.0.in, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv709)
  %cmp710800.not = icmp eq i32 %conv709, 0
  br i1 %cmp710800.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0801, 1
  %exitcond.not = icmp eq i32 %inc, %conv709
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0801 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0, i32 %i.0801
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port_num)
  %cmp712 = icmp eq i32 %6, %port_num
  br i1 %cmp712, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %arrayidx, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_prepare_stream(ptr noundef %stream) #0 align 64 {
entry:
  %params.i = alloca %struct.sdw_bus_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %0 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11.i = load ptr, ptr %master_list.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %master_list.i
  br i1 %cmp.not12.i, label %if.end.sdw_acquire_bus_lock.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sdw_acquire_bus_lock.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %if.end.for.body.i_crit_edge ]
  %m_rt.0.i = getelementptr i8, ptr %.pn13.i, i32 -32
  %1 = ptrtoint ptr %m_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_rt.0.i, align 4
  %bus_lock.i = getelementptr inbounds %struct.sdw_bus, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #5
  %3 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sdw_acquire_bus_lock.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

sdw_acquire_bus_lock.exit:                        ; preds = %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, %if.end.sdw_acquire_bus_lock.exit_crit_edge
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end13 [
    i32 2, label %sdw_acquire_bus_lock.exit.state_err_crit_edge
    i32 1, label %sdw_acquire_bus_lock.exit.if.end17_crit_edge
    i32 5, label %sdw_acquire_bus_lock.exit.if.end17_crit_edge116
    i32 4, label %sdw_acquire_bus_lock.exit.if.end17_crit_edge117
  ]

sdw_acquire_bus_lock.exit.if.end17_crit_edge117:  ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sdw_acquire_bus_lock.exit.if.end17_crit_edge116:  ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sdw_acquire_bus_lock.exit.if.end17_crit_edge:     ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sdw_acquire_bus_lock.exit.state_err_crit_edge:    ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %state_err

do.end13:                                         ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef %8, i32 noundef %5) #8
  br label %state_err

if.end17:                                         ; preds = %sdw_acquire_bus_lock.exit.if.end17_crit_edge, %sdw_acquire_bus_lock.exit.if.end17_crit_edge116, %sdw_acquire_bus_lock.exit.if.end17_crit_edge117
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp19.not = icmp eq i32 %5, 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %params.i)
  %9 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn135.i = load ptr, ptr %master_list.i, align 4
  %cmp.not136.i = icmp eq ptr %.pn135.i, %master_list.i
  br i1 %cmp.not136.i, label %if.end17.do.end44.i_crit_edge, label %for.body.lr.ph.i

if.end17.do.end44.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end44.i

for.body.lr.ph.i:                                 ; preds = %if.end17
  %params5.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 1
  br label %for.body.i39

for.cond.i:                                       ; preds = %program_params.i
  %10 = ptrtoint ptr %.pn137.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i36 = load ptr, ptr %.pn137.i, align 4
  %cmp.not.i37 = icmp eq ptr %.pn.i36, %master_list.i
  br i1 %cmp.not.i37, label %for.end.i, label %for.cond.i.for.body.i39_crit_edge

for.cond.i.for.body.i39_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i39

for.body.i39:                                     ; preds = %for.cond.i.for.body.i39_crit_edge, %for.body.lr.ph.i
  %.pn137.i = phi ptr [ %.pn135.i, %for.body.lr.ph.i ], [ %.pn.i36, %for.cond.i.for.body.i39_crit_edge ]
  %m_rt.0.i38 = getelementptr i8, ptr %.pn137.i, i32 -32
  %11 = ptrtoint ptr %m_rt.0.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_rt.0.i38, align 4
  %params4.i = getelementptr inbounds %struct.sdw_bus, ptr %12, i32 0, i32 11
  %13 = call ptr @memcpy(ptr %params.i, ptr %params4.i, i32 36)
  %max_clk_freq.i = getelementptr inbounds %struct.sdw_bus, ptr %12, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %max_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_clk_freq.i, align 8
  %16 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params5.i, align 4
  %rem.i = urem i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp6.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp6.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.44) #8
  br label %_sdw_prepare_stream.exit

if.end.i:                                         ; preds = %for.body.i39
  br i1 %cmp19.not, label %if.end.i.program_params.i_crit_edge, label %if.end8.i

if.end.i.program_params.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_params.i

if.end8.i:                                        ; preds = %if.end.i
  %stream9.i = getelementptr i8, ptr %.pn137.i, i32 -28
  %20 = ptrtoint ptr %stream9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream9.i, align 4
  %params10.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %params10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %params10.i, align 4
  %ch_count.i = getelementptr i8, ptr %.pn137.i, i32 -20
  %24 = ptrtoint ptr %ch_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_count.i, align 4
  %mul.i = mul i32 %25, %23
  %bps.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %21, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bps.i, align 4
  %mul14.i = mul i32 %mul.i, %27
  %bandwidth.i = getelementptr inbounds %struct.sdw_bus, ptr %12, i32 0, i32 11, i32 4
  %28 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bandwidth.i, align 8
  %add.i = add i32 %29, %mul14.i
  store i32 %add.i, ptr %bandwidth.i, align 8
  %compute_params.i = getelementptr inbounds %struct.sdw_bus, ptr %12, i32 0, i32 8
  %30 = ptrtoint ptr %compute_params.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %compute_params.i, align 4
  %tobool16.not.i = icmp eq ptr %31, null
  br i1 %tobool16.not.i, label %if.end8.i.program_params.i_crit_edge, label %if.then17.i

if.end8.i.program_params.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_params.i

if.then17.i:                                      ; preds = %if.end8.i
  %call.i = tail call i32 %31(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19.i = icmp slt i32 %call.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %if.then17.i.program_params.i_crit_edge

if.then17.i.program_params.i_crit_edge:           ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %program_params.i

do.end23.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.47, i32 noundef %call.i) #8
  br label %_sdw_prepare_stream.exit

program_params.i:                                 ; preds = %if.then17.i.program_params.i_crit_edge, %if.end8.i.program_params.i_crit_edge, %if.end.i.program_params.i_crit_edge
  %call27.i = tail call fastcc i32 @sdw_program_params(ptr noundef %12, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %do.end32.i, label %for.cond.i

do.end32.i:                                       ; preds = %program_params.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.50, i32 noundef %call27.i) #8
  br label %restore_params.i

for.end.i:                                        ; preds = %for.cond.i
  %tobool40.not.i = icmp eq ptr %12, null
  br i1 %tobool40.not.i, label %for.end.i.do.end44.i_crit_edge, label %if.end47.i

for.end.i.do.end44.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end44.i

do.end44.i:                                       ; preds = %for.end.i.do.end44.i_crit_edge, %if.end17.do.end44.i_crit_edge
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.45) #8
  br label %_sdw_prepare_stream.exit

if.end47.i:                                       ; preds = %for.end.i
  %call48.i = tail call fastcc i32 @do_bank_switch(ptr noundef nonnull %stream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %do.end53.i, label %for.cond61.preheader.i

for.cond61.preheader.i:                           ; preds = %if.end47.i
  %36 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn127138.i = load ptr, ptr %master_list.i, align 4
  %cmp64.not139.i = icmp eq ptr %.pn127138.i, %master_list.i
  br i1 %cmp64.not139.i, label %for.cond61.preheader.i.for.end82.i_crit_edge, label %for.cond61.preheader.i.for.body66.i_crit_edge

for.cond61.preheader.i.for.body66.i_crit_edge:    ; preds = %for.cond61.preheader.i
  br label %for.body66.i

for.cond61.preheader.i.for.end82.i_crit_edge:     ; preds = %for.cond61.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.56, i32 noundef %call48.i) #8
  br label %restore_params.i

for.cond61.i:                                     ; preds = %for.body66.i
  %39 = ptrtoint ptr %.pn127140.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn127.i = load ptr, ptr %.pn127140.i, align 4
  %cmp64.not.i = icmp eq ptr %.pn127.i, %master_list.i
  br i1 %cmp64.not.i, label %for.cond61.i.for.end82.i_crit_edge, label %for.cond61.i.for.body66.i_crit_edge

for.cond61.i.for.body66.i_crit_edge:              ; preds = %for.cond61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body66.i

for.cond61.i.for.end82.i_crit_edge:               ; preds = %for.cond61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82.i

for.body66.i:                                     ; preds = %for.cond61.i.for.body66.i_crit_edge, %for.cond61.preheader.i.for.body66.i_crit_edge
  %.pn127140.i = phi ptr [ %.pn127.i, %for.cond61.i.for.body66.i_crit_edge ], [ %.pn127138.i, %for.cond61.preheader.i.for.body66.i_crit_edge ]
  %m_rt.1.i = getelementptr i8, ptr %.pn127140.i, i32 -32
  %40 = ptrtoint ptr %m_rt.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m_rt.1.i, align 4
  %call68.i = tail call fastcc i32 @sdw_prep_deprep_ports(ptr noundef %m_rt.1.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %do.end73.i, label %for.cond61.i

do.end73.i:                                       ; preds = %for.body66.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.59, i32 noundef %call68.i) #8
  br label %_sdw_prepare_stream.exit

for.end82.i:                                      ; preds = %for.cond61.i.for.end82.i_crit_edge, %for.cond61.preheader.i.for.end82.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call48.i, %for.cond61.preheader.i.for.end82.i_crit_edge ], [ %call68.i, %for.cond61.i.for.end82.i_crit_edge ]
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %state, align 4
  br label %_sdw_prepare_stream.exit

restore_params.i:                                 ; preds = %do.end53.i, %do.end32.i
  %ret.1.i = phi i32 [ %call27.i, %do.end32.i ], [ %call48.i, %do.end53.i ]
  %45 = call ptr @memcpy(ptr %params4.i, ptr %params.i, i32 36)
  br label %_sdw_prepare_stream.exit

_sdw_prepare_stream.exit:                         ; preds = %restore_params.i, %for.end82.i, %do.end73.i, %do.end44.i, %do.end23.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call.i, %do.end23.i ], [ %ret.1.i, %restore_params.i ], [ %call68.i, %do.end73.i ], [ %ret.0.lcssa.i, %for.end82.i ], [ -22, %do.end44.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %params.i)
  br label %state_err

state_err:                                        ; preds = %_sdw_prepare_stream.exit, %do.end13, %sdw_acquire_bus_lock.exit.state_err_crit_edge
  %ret.0 = phi i32 [ -22, %do.end13 ], [ %retval.0.i, %_sdw_prepare_stream.exit ], [ 0, %sdw_acquire_bus_lock.exit.state_err_crit_edge ]
  %prev.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn11.i41 = load ptr, ptr %prev.i, align 4
  %cmp.not12.i42 = icmp eq ptr %.pn11.i41, %master_list.i
  br i1 %cmp.not12.i42, label %state_err.cleanup_crit_edge, label %state_err.for.body.i48_crit_edge

state_err.for.body.i48_crit_edge:                 ; preds = %state_err
  br label %for.body.i48

state_err.cleanup_crit_edge:                      ; preds = %state_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i48:                                     ; preds = %for.body.i48.for.body.i48_crit_edge, %state_err.for.body.i48_crit_edge
  %.pn13.i43 = phi ptr [ %.pn.i46, %for.body.i48.for.body.i48_crit_edge ], [ %.pn11.i41, %state_err.for.body.i48_crit_edge ]
  %m_rt.0.i44 = getelementptr i8, ptr %.pn13.i43, i32 -32
  %47 = ptrtoint ptr %m_rt.0.i44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_rt.0.i44, align 4
  %bus_lock.i45 = getelementptr inbounds %struct.sdw_bus, ptr %48, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %bus_lock.i45) #5
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %.pn13.i43, i32 0, i32 1
  %49 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.i46 = load ptr, ptr %prev5.i, align 4
  %cmp.not.i47 = icmp eq ptr %.pn.i46, %master_list.i
  br i1 %cmp.not.i47, label %for.body.i48.cleanup_crit_edge, label %for.body.i48.for.body.i48_crit_edge

for.body.i48.for.body.i48_crit_edge:              ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i48

for.body.i48.cleanup_crit_edge:                   ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i48.cleanup_crit_edge, %state_err.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %state_err.cleanup_crit_edge ], [ %ret.0, %for.body.i48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_enable_stream(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %0 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11.i = load ptr, ptr %master_list.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %master_list.i
  br i1 %cmp.not12.i, label %if.end.sdw_acquire_bus_lock.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sdw_acquire_bus_lock.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %if.end.for.body.i_crit_edge ]
  %m_rt.0.i = getelementptr i8, ptr %.pn13.i, i32 -32
  %1 = ptrtoint ptr %m_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_rt.0.i, align 4
  %bus_lock.i = getelementptr inbounds %struct.sdw_bus, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #5
  %3 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sdw_acquire_bus_lock.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

sdw_acquire_bus_lock.exit:                        ; preds = %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, %if.end.sdw_acquire_bus_lock.exit_crit_edge
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %5, label %do.end6 [
    i32 2, label %sdw_acquire_bus_lock.exit.if.end10_crit_edge
    i32 4, label %sdw_acquire_bus_lock.exit.if.end10_crit_edge63
  ]

sdw_acquire_bus_lock.exit.if.end10_crit_edge63:   ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

sdw_acquire_bus_lock.exit.if.end10_crit_edge:     ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end6:                                          ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, ptr noundef %8, i32 noundef %5) #8
  br label %state_err

if.end10:                                         ; preds = %sdw_acquire_bus_lock.exit.if.end10_crit_edge, %sdw_acquire_bus_lock.exit.if.end10_crit_edge63
  %9 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn56.i = load ptr, ptr %master_list.i, align 4
  %cmp.not58.i = icmp eq ptr %.pn56.i, %master_list.i
  br i1 %cmp.not58.i, label %if.end10.do.end20.i_crit_edge, label %if.end10.for.body.i22_crit_edge

if.end10.for.body.i22_crit_edge:                  ; preds = %if.end10
  br label %for.body.i22

if.end10.do.end20.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

for.cond.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %.pn59.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i20 = load ptr, ptr %.pn59.i, align 4
  %cmp.not.i21 = icmp eq ptr %.pn.i20, %master_list.i
  br i1 %cmp.not.i21, label %for.end.i, label %for.cond.i.for.body.i22_crit_edge

for.cond.i.for.body.i22_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.cond.i.for.body.i22_crit_edge, %if.end10.for.body.i22_crit_edge
  %.pn59.i = phi ptr [ %.pn.i20, %for.cond.i.for.body.i22_crit_edge ], [ %.pn56.i, %if.end10.for.body.i22_crit_edge ]
  %m_rt.060.i = getelementptr i8, ptr %.pn59.i, i32 -32
  %11 = ptrtoint ptr %m_rt.060.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_rt.060.i, align 4
  %call.i = tail call fastcc i32 @sdw_program_params(ptr noundef %12, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.50, i32 noundef %call.i) #8
  br label %state_err

if.end.i:                                         ; preds = %for.body.i22
  %call4.i = tail call fastcc i32 @sdw_enable_disable_ports(ptr noundef %m_rt.060.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %for.cond.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.142, i32 noundef %call4.i) #8
  br label %state_err

for.end.i:                                        ; preds = %for.cond.i
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.end.i.do.end20.i_crit_edge, label %if.end23.i

for.end.i.do.end20.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

do.end20.i:                                       ; preds = %for.end.i.do.end20.i_crit_edge, %if.end10.do.end20.i_crit_edge
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.140) #8
  br label %state_err

if.end23.i:                                       ; preds = %for.end.i
  %call24.i = tail call fastcc i32 @do_bank_switch(ptr noundef nonnull %stream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.56, i32 noundef %call24.i) #8
  br label %state_err

if.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %state, align 4
  br label %state_err

state_err:                                        ; preds = %if.end31.i, %do.end29.i, %do.end20.i, %do.end9.i, %do.end.i, %do.end6
  %ret.0 = phi i32 [ -22, %do.end6 ], [ %call.i, %do.end.i ], [ %call4.i, %do.end9.i ], [ %call24.i, %do.end29.i ], [ 0, %if.end31.i ], [ -22, %do.end20.i ]
  %prev.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn11.i24 = load ptr, ptr %prev.i, align 4
  %cmp.not12.i25 = icmp eq ptr %.pn11.i24, %master_list.i
  br i1 %cmp.not12.i25, label %state_err.cleanup_crit_edge, label %state_err.for.body.i31_crit_edge

state_err.for.body.i31_crit_edge:                 ; preds = %state_err
  br label %for.body.i31

state_err.cleanup_crit_edge:                      ; preds = %state_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %state_err.for.body.i31_crit_edge
  %.pn13.i26 = phi ptr [ %.pn.i29, %for.body.i31.for.body.i31_crit_edge ], [ %.pn11.i24, %state_err.for.body.i31_crit_edge ]
  %m_rt.0.i27 = getelementptr i8, ptr %.pn13.i26, i32 -32
  %21 = ptrtoint ptr %m_rt.0.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_rt.0.i27, align 4
  %bus_lock.i28 = getelementptr inbounds %struct.sdw_bus, ptr %22, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %bus_lock.i28) #5
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %.pn13.i26, i32 0, i32 1
  %23 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i29 = load ptr, ptr %prev5.i, align 4
  %cmp.not.i30 = icmp eq ptr %.pn.i29, %master_list.i
  br i1 %cmp.not.i30, label %for.body.i31.cleanup_crit_edge, label %for.body.i31.for.body.i31_crit_edge

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i31

for.body.i31.cleanup_crit_edge:                   ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i31.cleanup_crit_edge, %state_err.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %state_err.cleanup_crit_edge ], [ %ret.0, %for.body.i31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_disable_stream(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %0 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11.i = load ptr, ptr %master_list.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %master_list.i
  br i1 %cmp.not12.i, label %if.end.sdw_acquire_bus_lock.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sdw_acquire_bus_lock.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %if.end.for.body.i_crit_edge ]
  %m_rt.0.i = getelementptr i8, ptr %.pn13.i, i32 -32
  %1 = ptrtoint ptr %m_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_rt.0.i, align 4
  %bus_lock.i = getelementptr inbounds %struct.sdw_bus, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #5
  %3 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sdw_acquire_bus_lock.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

sdw_acquire_bus_lock.exit:                        ; preds = %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, %if.end.sdw_acquire_bus_lock.exit_crit_edge
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %sdw_acquire_bus_lock.exit.for.cond.i_crit_edge, label %do.end4

sdw_acquire_bus_lock.exit.for.cond.i_crit_edge:   ; preds = %sdw_acquire_bus_lock.exit
  br label %for.cond.i

do.end4:                                          ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.25, ptr noundef %7, i32 noundef %5) #8
  br label %state_err

for.cond.i:                                       ; preds = %for.body.i20.for.cond.i_crit_edge, %sdw_acquire_bus_lock.exit.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i17, %for.body.i20.for.cond.i_crit_edge ], [ %master_list.i, %sdw_acquire_bus_lock.exit.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i17 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i18 = icmp eq ptr %.pn.i17, %master_list.i
  br i1 %cmp.not.i18, label %for.end.i, label %for.body.i20

for.body.i20:                                     ; preds = %for.cond.i
  %m_rt.0.i19 = getelementptr i8, ptr %.pn.i17, i32 -32
  %9 = ptrtoint ptr %m_rt.0.i19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_rt.0.i19, align 4
  %call.i = tail call fastcc i32 @sdw_enable_disable_ports(ptr noundef %m_rt.0.i19, i1 noundef zeroext false) #5
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %cleanup.thread.i, label %for.body.i20.for.cond.i_crit_edge

for.body.i20.for.cond.i_crit_edge:                ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

cleanup.thread.i:                                 ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.148, i32 noundef %call.i) #8
  br label %state_err

for.end.i:                                        ; preds = %for.cond.i
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %state, align 4
  br label %for.cond14.i

for.cond14.i:                                     ; preds = %for.body19.i.for.cond14.i_crit_edge, %for.end.i
  %.pn115.in.i = phi ptr [ %master_list.i, %for.end.i ], [ %.pn115.i, %for.body19.i.for.cond14.i_crit_edge ]
  %14 = ptrtoint ptr %.pn115.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn115.i = load ptr, ptr %.pn115.in.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn115.i, %master_list.i
  br i1 %cmp17.not.i, label %for.end39.i, label %for.body19.i

for.body19.i:                                     ; preds = %for.cond14.i
  %m_rt.1.i = getelementptr i8, ptr %.pn115.i, i32 -32
  %15 = ptrtoint ptr %m_rt.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_rt.1.i, align 4
  %call22.i = tail call fastcc i32 @sdw_program_params(ptr noundef %16, i1 noundef zeroext false) #5
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %cleanup30.thread.i, label %for.body19.i.for.cond14.i_crit_edge

for.body19.i.for.cond14.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.i

cleanup30.thread.i:                               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.50, i32 noundef %call22.i) #8
  br label %state_err

for.end39.i:                                      ; preds = %for.cond14.i
  %call40.i = tail call fastcc i32 @do_bank_switch(ptr noundef nonnull %stream) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %do.end45.i, label %for.end39.i.for.cond54.i_crit_edge

for.end39.i.for.cond54.i_crit_edge:               ; preds = %for.end39.i
  br label %for.cond54.i

do.end45.i:                                       ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %call40.i) #8
  br label %state_err

for.cond54.i:                                     ; preds = %for.body59.i.for.cond54.i_crit_edge, %for.end39.i.for.cond54.i_crit_edge
  %.pn116.in.i = phi ptr [ %.pn116.i, %for.body59.i.for.cond54.i_crit_edge ], [ %master_list.i, %for.end39.i.for.cond54.i_crit_edge ]
  %19 = ptrtoint ptr %.pn116.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn116.i = load ptr, ptr %.pn116.in.i, align 4
  %cmp57.not.i = icmp eq ptr %.pn116.i, %master_list.i
  br i1 %cmp57.not.i, label %for.cond54.i.state_err_crit_edge, label %for.body59.i

for.cond54.i.state_err_crit_edge:                 ; preds = %for.cond54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %state_err

for.body59.i:                                     ; preds = %for.cond54.i
  %m_rt.2.i = getelementptr i8, ptr %.pn116.i, i32 -32
  %20 = ptrtoint ptr %m_rt.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_rt.2.i, align 4
  %call62.i = tail call fastcc i32 @sdw_enable_disable_ports(ptr noundef %m_rt.2.i, i1 noundef zeroext false) #5
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %cleanup70.thread.i, label %for.body59.i.for.cond54.i_crit_edge

for.body59.i.for.cond54.i_crit_edge:              ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond54.i

cleanup70.thread.i:                               ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.148, i32 noundef %call62.i) #8
  br label %state_err

state_err:                                        ; preds = %cleanup70.thread.i, %for.cond54.i.state_err_crit_edge, %do.end45.i, %cleanup30.thread.i, %cleanup.thread.i, %do.end4
  %ret.0 = phi i32 [ -22, %do.end4 ], [ %call40.i, %do.end45.i ], [ %call.i, %cleanup.thread.i ], [ %call22.i, %cleanup30.thread.i ], [ %call62.i, %cleanup70.thread.i ], [ 0, %for.cond54.i.state_err_crit_edge ]
  %prev.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn11.i22 = load ptr, ptr %prev.i, align 4
  %cmp.not12.i23 = icmp eq ptr %.pn11.i22, %master_list.i
  br i1 %cmp.not12.i23, label %state_err.cleanup_crit_edge, label %state_err.for.body.i29_crit_edge

state_err.for.body.i29_crit_edge:                 ; preds = %state_err
  br label %for.body.i29

state_err.cleanup_crit_edge:                      ; preds = %state_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %state_err.for.body.i29_crit_edge
  %.pn13.i24 = phi ptr [ %.pn.i27, %for.body.i29.for.body.i29_crit_edge ], [ %.pn11.i22, %state_err.for.body.i29_crit_edge ]
  %m_rt.0.i25 = getelementptr i8, ptr %.pn13.i24, i32 -32
  %25 = ptrtoint ptr %m_rt.0.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m_rt.0.i25, align 4
  %bus_lock.i26 = getelementptr inbounds %struct.sdw_bus, ptr %26, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %bus_lock.i26) #5
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %.pn13.i24, i32 0, i32 1
  %27 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i27 = load ptr, ptr %prev5.i, align 4
  %cmp.not.i28 = icmp eq ptr %.pn.i27, %master_list.i
  br i1 %cmp.not.i28, label %for.body.i29.cleanup_crit_edge, label %for.body.i29.for.body.i29_crit_edge

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i29

for.body.i29.cleanup_crit_edge:                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i29.cleanup_crit_edge, %state_err.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %state_err.cleanup_crit_edge ], [ %ret.0, %for.body.i29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_deprepare_stream(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %0 = ptrtoint ptr %master_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11.i = load ptr, ptr %master_list.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %master_list.i
  br i1 %cmp.not12.i, label %if.end.sdw_acquire_bus_lock.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sdw_acquire_bus_lock.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %if.end.for.body.i_crit_edge ]
  %m_rt.0.i = getelementptr i8, ptr %.pn13.i, i32 -32
  %1 = ptrtoint ptr %m_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_rt.0.i, align 4
  %bus_lock.i = getelementptr inbounds %struct.sdw_bus, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bus_lock.i, i32 noundef 0) #5
  %3 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %master_list.i
  br i1 %cmp.not.i, label %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.sdw_acquire_bus_lock.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_acquire_bus_lock.exit

sdw_acquire_bus_lock.exit:                        ; preds = %for.body.i.sdw_acquire_bus_lock.exit_crit_edge, %if.end.sdw_acquire_bus_lock.exit_crit_edge
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %5, label %do.end6 [
    i32 2, label %sdw_acquire_bus_lock.exit.for.cond.i.preheader_crit_edge
    i32 4, label %sdw_acquire_bus_lock.exit.for.cond.i.preheader_crit_edge58
  ]

sdw_acquire_bus_lock.exit.for.cond.i.preheader_crit_edge58: ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

sdw_acquire_bus_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %sdw_acquire_bus_lock.exit.for.cond.i.preheader_crit_edge, %sdw_acquire_bus_lock.exit.for.cond.i.preheader_crit_edge58
  br label %for.cond.i

do.end6:                                          ; preds = %sdw_acquire_bus_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.28, ptr noundef %8, i32 noundef %5) #8
  br label %state_err

for.cond.i:                                       ; preds = %if.end19.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i20, %if.end19.i.for.cond.i_crit_edge ], [ %master_list.i, %for.cond.i.preheader ]
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i20 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i21 = icmp eq ptr %.pn.i20, %master_list.i
  br i1 %cmp.not.i21, label %for.end.i, label %for.body.i23

for.body.i23:                                     ; preds = %for.cond.i
  %m_rt.0.i22 = getelementptr i8, ptr %.pn.i20, i32 -32
  %10 = ptrtoint ptr %m_rt.0.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_rt.0.i22, align 4
  %call.i = tail call fastcc i32 @sdw_prep_deprep_ports(ptr noundef %m_rt.0.i22, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.157, i32 noundef %call.i) #8
  br label %state_err

if.end.i:                                         ; preds = %for.body.i23
  %stream4.i = getelementptr i8, ptr %.pn.i20, i32 -28
  %14 = ptrtoint ptr %stream4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream4.i, align 4
  %params.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params.i, align 4
  %ch_count.i = getelementptr i8, ptr %.pn.i20, i32 -20
  %18 = ptrtoint ptr %ch_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_count.i, align 4
  %mul.i = mul i32 %19, %17
  %bps.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %15, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bps.i, align 4
  %mul7.i = mul i32 %mul.i, %21
  %bandwidth.i = getelementptr inbounds %struct.sdw_bus, ptr %11, i32 0, i32 11, i32 4
  %22 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bandwidth.i, align 8
  %sub.i = sub i32 %23, %mul7.i
  store i32 %sub.i, ptr %bandwidth.i, align 8
  %compute_params.i = getelementptr inbounds %struct.sdw_bus, ptr %11, i32 0, i32 8
  %24 = ptrtoint ptr %compute_params.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %compute_params.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then9.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then9.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 %25(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %if.then9.i.if.end19.i_crit_edge

if.then9.i.if.end19.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

do.end16.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.47, i32 noundef %call11.i) #8
  br label %state_err

if.end19.i:                                       ; preds = %if.then9.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %call20.i = tail call fastcc i32 @sdw_program_params(ptr noundef %11, i1 noundef zeroext false) #5
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.end25.i, label %if.end19.i.for.cond.i_crit_edge

if.end19.i.for.cond.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.50, i32 noundef %call20.i) #8
  br label %state_err

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %state, align 4
  %call33.i = tail call fastcc i32 @do_bank_switch(ptr noundef nonnull %stream) #5
  br label %state_err

state_err:                                        ; preds = %for.end.i, %do.end25.i, %do.end16.i, %do.end.i, %do.end6
  %ret.0 = phi i32 [ -22, %do.end6 ], [ %call.i, %do.end.i ], [ %call11.i, %do.end16.i ], [ %call20.i, %do.end25.i ], [ %call33.i, %for.end.i ]
  %prev.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn11.i25 = load ptr, ptr %prev.i, align 4
  %cmp.not12.i26 = icmp eq ptr %.pn11.i25, %master_list.i
  br i1 %cmp.not12.i26, label %state_err.cleanup_crit_edge, label %state_err.for.body.i32_crit_edge

state_err.for.body.i32_crit_edge:                 ; preds = %state_err
  br label %for.body.i32

state_err.cleanup_crit_edge:                      ; preds = %state_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %state_err.for.body.i32_crit_edge
  %.pn13.i27 = phi ptr [ %.pn.i30, %for.body.i32.for.body.i32_crit_edge ], [ %.pn11.i25, %state_err.for.body.i32_crit_edge ]
  %m_rt.0.i28 = getelementptr i8, ptr %.pn13.i27, i32 -32
  %32 = ptrtoint ptr %m_rt.0.i28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m_rt.0.i28, align 4
  %bus_lock.i29 = getelementptr inbounds %struct.sdw_bus, ptr %33, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %bus_lock.i29) #5
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %.pn13.i27, i32 0, i32 1
  %34 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i30 = load ptr, ptr %prev5.i, align 4
  %cmp.not.i31 = icmp eq ptr %.pn.i30, %master_list.i
  br i1 %cmp.not.i31, label %for.body.i32.cleanup_crit_edge, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i32

for.body.i32.cleanup_crit_edge:                   ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i32.cleanup_crit_edge, %state_err.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %state_err.cleanup_crit_edge ], [ %ret.0, %for.body.i32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_startup_stream(ptr noundef %sdw_substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sdw_substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %sdw_substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %name1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %sdw_substream, i32 0, i32 4
  %.str.31..str.32 = select i1 %cmp, ptr @.str.31, ptr @.str.32
  %call4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull %.str.31..str.32, ptr noundef %name1) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %name10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %sdw_substream, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33, ptr noundef %name10) #8
  br label %error

if.end12:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %call7.i.i.i, align 8
  %master_list.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %master_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %master_list.i, ptr %master_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %master_list.i, ptr %prev.i.i, align 4
  %state.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state.i, align 8
  %m_rt_count.i = getelementptr inbounds %struct.sdw_stream_runtime, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %m_rt_count.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %m_rt_count.i, align 8
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %13, i32 0, i32 11
  %num_codecs.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cpus.i, align 4
  %16 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_codecs.i, align 4
  %add14.i = sub i32 0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add14.i)
  %cmp15.not.i = icmp eq i32 %17, %add14.i
  br i1 %cmp15.not.i, label %if.end12.cleanup_crit_edge, label %land.rhs.lr.ph.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.lr.ph.i:                                 ; preds = %if.end12
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %13, i32 0, i32 9
  br label %land.rhs.i

for.cond.i:                                       ; preds = %snd_soc_dai_set_stream.exit.i
  %inc.i = add nuw i32 %i.017.i, 1
  %18 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_cpus.i, align 4
  %20 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_codecs.i, align 4
  %add.i = add i32 %21, %19
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %for.cond.i.land.rhs.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.017.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.cond.i.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dais.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %23, i32 %i.017.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i33 = icmp eq ptr %25, null
  br i1 %tobool.not.i33, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %driver.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 8
  %set_stream.i.i = getelementptr inbounds %struct.snd_soc_dai_ops, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %set_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_stream.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %for.body.i.release_stream_crit_edge, label %snd_soc_dai_set_stream.exit.i

for.body.i.release_stream_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_stream

snd_soc_dai_set_stream.exit.i:                    ; preds = %for.body.i
  %32 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream, align 4
  %call.i.i = tail call i32 %31(ptr noundef nonnull %25, ptr noundef nonnull %call7.i.i.i, i32 noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %snd_soc_dai_set_stream.exit.i.release_stream_crit_edge, label %for.cond.i

snd_soc_dai_set_stream.exit.i.release_stream_crit_edge: ; preds = %snd_soc_dai_set_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_stream

release_stream:                                   ; preds = %snd_soc_dai_set_stream.exit.i.release_stream_crit_edge, %for.body.i.release_stream_crit_edge
  %retval.0.i12.i = phi i32 [ %call.i.i, %snd_soc_dai_set_stream.exit.i.release_stream_crit_edge ], [ -524, %for.body.i.release_stream_crit_edge ]
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %13, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.163, ptr noundef %37) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data, align 4
  %num_cpus.i35 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %39, i32 0, i32 11
  %num_codecs.i36 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %num_cpus.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_cpus.i35, align 4
  %42 = ptrtoint ptr %num_codecs.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_codecs.i36, align 4
  %add14.i37 = sub i32 0, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add14.i37)
  %cmp15.not.i38 = icmp eq i32 %43, %add14.i37
  br i1 %cmp15.not.i38, label %release_stream.error_crit_edge, label %land.rhs.lr.ph.i41

release_stream.error_crit_edge:                   ; preds = %release_stream
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

land.rhs.lr.ph.i41:                               ; preds = %release_stream
  %dais.i39 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %39, i32 0, i32 9
  br label %land.rhs.i50

for.cond.i45:                                     ; preds = %snd_soc_dai_set_stream.exit.i58
  %inc.i42 = add nuw i32 %i.017.i46, 1
  %44 = ptrtoint ptr %num_cpus.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_cpus.i35, align 4
  %46 = ptrtoint ptr %num_codecs.i36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_codecs.i36, align 4
  %add.i43 = add i32 %47, %45
  %cmp.i44 = icmp ult i32 %inc.i42, %add.i43
  br i1 %cmp.i44, label %for.cond.i45.land.rhs.i50_crit_edge, label %for.cond.i45.error_crit_edge

for.cond.i45.error_crit_edge:                     ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.i45.land.rhs.i50_crit_edge:              ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i50

land.rhs.i50:                                     ; preds = %for.cond.i45.land.rhs.i50_crit_edge, %land.rhs.lr.ph.i41
  %i.017.i46 = phi i32 [ 0, %land.rhs.lr.ph.i41 ], [ %inc.i42, %for.cond.i45.land.rhs.i50_crit_edge ]
  %48 = ptrtoint ptr %dais.i39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dais.i39, align 4
  %arrayidx.i48 = getelementptr ptr, ptr %49, i32 %i.017.i46
  %50 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i48, align 4
  %tobool.not.i49 = icmp eq ptr %51, null
  br i1 %tobool.not.i49, label %land.rhs.i50.error_crit_edge, label %for.body.i55

land.rhs.i50.error_crit_edge:                     ; preds = %land.rhs.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.body.i55:                                     ; preds = %land.rhs.i50
  %driver.i.i51 = getelementptr inbounds %struct.snd_soc_dai, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %driver.i.i51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver.i.i51, align 4
  %ops.i.i52 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %ops.i.i52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i52, align 8
  %set_stream.i.i53 = getelementptr inbounds %struct.snd_soc_dai_ops, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %set_stream.i.i53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_stream.i.i53, align 4
  %tobool.not.i.i54 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i54, label %for.body.i55.do.end.i60_crit_edge, label %snd_soc_dai_set_stream.exit.i58

for.body.i55.do.end.i60_crit_edge:                ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i60

snd_soc_dai_set_stream.exit.i58:                  ; preds = %for.body.i55
  %58 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stream, align 4
  %call.i.i56 = tail call i32 %57(ptr noundef nonnull %51, ptr noundef null, i32 noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp1.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp1.i57, label %snd_soc_dai_set_stream.exit.i58.do.end.i60_crit_edge, label %for.cond.i45

snd_soc_dai_set_stream.exit.i58.do.end.i60_crit_edge: ; preds = %snd_soc_dai_set_stream.exit.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i60

do.end.i60:                                       ; preds = %snd_soc_dai_set_stream.exit.i58.do.end.i60_crit_edge, %for.body.i55.do.end.i60_crit_edge
  %60 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %39, align 4
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.163, ptr noundef %63) #8
  br label %error

error:                                            ; preds = %do.end.i60, %land.rhs.i50.error_crit_edge, %for.cond.i45.error_crit_edge, %release_stream.error_crit_edge, %do.end
  %ret.0 = phi i32 [ -12, %do.end ], [ %retval.0.i12.i, %release_stream.error_crit_edge ], [ %retval.0.i12.i, %do.end.i60 ], [ %retval.0.i12.i, %for.cond.i45.error_crit_edge ], [ %retval.0.i12.i, %land.rhs.i50.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %land.rhs.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_shutdown_stream(ptr nocapture noundef readonly %sdw_substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sdw_substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %sdw_substream, i32 0, i32 5
  %driver.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 8
  %get_stream.i = getelementptr inbounds %struct.snd_soc_dai_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %get_stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_stream.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.cleanup.sink.split_crit_edge, label %snd_soc_dai_get_stream.exit

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

snd_soc_dai_get_stream.exit:                      ; preds = %entry
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  %call.i = tail call ptr %11(ptr noundef %5, i32 noundef %13) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %snd_soc_dai_get_stream.exit.cleanup.sink.split_crit_edge, label %if.end

snd_soc_dai_get_stream.exit.cleanup.sink.split_crit_edge: ; preds = %snd_soc_dai_get_stream.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %snd_soc_dai_get_stream.exit
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %15) #5
  tail call void @kfree(ptr noundef %call.i) #5
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %17, i32 0, i32 11
  %num_codecs.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_cpus.i, align 4
  %20 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_codecs.i, align 4
  %add14.i = sub i32 0, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add14.i)
  %cmp15.not.i = icmp eq i32 %21, %add14.i
  br i1 %cmp15.not.i, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %17, i32 0, i32 9
  br label %land.rhs.i

for.cond.i:                                       ; preds = %snd_soc_dai_set_stream.exit.i
  %inc.i = add nuw i32 %i.017.i, 1
  %22 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_cpus.i, align 4
  %24 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_codecs.i, align 4
  %add.i = add i32 %25, %23
  %cmp.i13 = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i13, label %for.cond.i.land.rhs.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i.land.rhs.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.017.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.cond.i.land.rhs.i_crit_edge ]
  %26 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dais.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %27, i32 %i.017.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i14 = icmp eq ptr %29, null
  br i1 %tobool.not.i14, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %driver.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 8
  %set_stream.i.i = getelementptr inbounds %struct.snd_soc_dai_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %set_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_stream.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %for.body.i.cleanup.sink.split_crit_edge, label %snd_soc_dai_set_stream.exit.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

snd_soc_dai_set_stream.exit.i:                    ; preds = %for.body.i
  %36 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream, align 4
  %call.i.i = tail call i32 %35(ptr noundef nonnull %29, ptr noundef null, i32 noundef %37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %snd_soc_dai_set_stream.exit.i.cleanup.sink.split_crit_edge, label %for.cond.i

snd_soc_dai_set_stream.exit.i.cleanup.sink.split_crit_edge: ; preds = %snd_soc_dai_set_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %snd_soc_dai_set_stream.exit.i.cleanup.sink.split_crit_edge, %for.body.i.cleanup.sink.split_crit_edge, %snd_soc_dai_get_stream.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink21 = phi ptr [ %1, %entry.cleanup.sink.split_crit_edge ], [ %1, %snd_soc_dai_get_stream.exit.cleanup.sink.split_crit_edge ], [ %17, %snd_soc_dai_set_stream.exit.i.cleanup.sink.split_crit_edge ], [ %17, %for.body.i.cleanup.sink.split_crit_edge ]
  %.lcssa19.sink = phi ptr [ %5, %entry.cleanup.sink.split_crit_edge ], [ %5, %snd_soc_dai_get_stream.exit.cleanup.sink.split_crit_edge ], [ %29, %snd_soc_dai_set_stream.exit.i.cleanup.sink.split_crit_edge ], [ %29, %for.body.i.cleanup.sink.split_crit_edge ]
  %.str.163.sink = phi ptr [ @.str.35, %entry.cleanup.sink.split_crit_edge ], [ @.str.35, %snd_soc_dai_get_stream.exit.cleanup.sink.split_crit_edge ], [ @.str.163, %snd_soc_dai_set_stream.exit.i.cleanup.sink.split_crit_edge ], [ @.str.163, %for.body.i.cleanup.sink.split_crit_edge ]
  %38 = ptrtoint ptr %.sink21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.sink21, align 4
  %40 = ptrtoint ptr %.lcssa19.sink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.lcssa19.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull %.str.163.sink, ptr noundef %41) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdw_program_params(ptr noundef readonly %bus, i1 noundef zeroext %prepare) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rt_list = getelementptr inbounds %struct.sdw_bus, ptr %bus, i32 0, i32 13
  %0 = ptrtoint ptr %m_rt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn128 = load ptr, ptr %m_rt_list, align 4
  %cmp.not130 = icmp eq ptr %.pn128, %m_rt_list
  br i1 %cmp.not130, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn132 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn128, %entry.for.body_crit_edge ]
  %ret.0131 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %m_rt.0133 = getelementptr i8, ptr %.pn132, i32 -40
  br i1 %prepare, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %stream = getelementptr i8, ptr %.pn132, i32 -36
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 4
  %state = getelementptr inbounds %struct.sdw_stream_runtime, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %5 = ptrtoint ptr %m_rt.0133 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rt.0133, align 4
  %slave_rt_list.i = getelementptr i8, ptr %.pn132, i32 -24
  %7 = ptrtoint ptr %slave_rt_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn111.i = load ptr, ptr %slave_rt_list.i, align 4
  %cmp.not113.i = icmp eq ptr %.pn111.i, %slave_rt_list.i
  br i1 %cmp.not113.i, label %if.end.for.end24.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end24.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %next_bank.i.i = getelementptr inbounds %struct.sdw_bus, ptr %6, i32 0, i32 11, i32 1
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %sdw_program_slave_port_params.exit.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %8 = ptrtoint ptr %.pn114.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn114.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slave_rt_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.end24.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.loopexit.i.for.end24.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn114.i = phi ptr [ %.pn111.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %s_rt.0115.i = getelementptr i8, ptr %.pn114.i, i32 -12
  %port_list.i = getelementptr i8, ptr %.pn114.i, i32 8
  %9 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn68108.i = load ptr, ptr %port_list.i, align 4
  %cmp9.not109.i = icmp eq ptr %.pn68108.i, %port_list.i
  br i1 %cmp9.not109.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body11.lr.ph.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

for.body11.lr.ph.i:                               ; preds = %for.body.i
  %direction.i.i = getelementptr i8, ptr %.pn114.i, i32 -8
  br label %for.body11.i

for.body11.i:                                     ; preds = %sdw_program_slave_port_params.exit.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %.pn68110.i = phi ptr [ %.pn68108.i, %for.body11.lr.ph.i ], [ %.pn68.i, %sdw_program_slave_port_params.exit.i.for.body11.i_crit_edge ]
  %transport_params.i.i = getelementptr i8, ptr %.pn68110.i, i32 -56
  %10 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_rt.0115.i, align 4
  %is_mockup_device.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %is_mockup_device.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_mockup_device.i.i, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body11.i.sdw_program_slave_port_params.exit.i_crit_edge

for.body11.i.sdw_program_slave_port_params.exit.i_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_program_slave_port_params.exit.i

if.end.i.i:                                       ; preds = %for.body11.i
  %14 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction.i.i, align 4
  %port_num.i.i = getelementptr i8, ptr %.pn68110.i, i32 -52
  %16 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i.i.i = icmp eq i32 %15, 1
  br i1 %cmp.i.i.i, label %cond.false.i.i.i, label %cond.false701.i.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %source_ports.i.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 14
  %18 = ptrtoint ptr %source_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %source_ports.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %19) #5
  %src_dpn_prop.i.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 17
  br label %if.end.i.i.i

cond.false701.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sink_ports.i.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 15
  %20 = ptrtoint ptr %sink_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sink_ports.i.i.i, align 4
  %call.i799.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %21) #5
  %sink_dpn_prop.i.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cond.false701.i.i.i, %cond.false.i.i.i
  %dpn_prop.0.in.i.i.i = phi ptr [ %src_dpn_prop.i.i.i, %cond.false.i.i.i ], [ %sink_dpn_prop.i.i.i, %cond.false701.i.i.i ]
  %num_ports.0.in.i.i.i = phi i32 [ %call.i.i.i.i, %cond.false.i.i.i ], [ %call.i799.i.i.i, %cond.false701.i.i.i ]
  %22 = ptrtoint ptr %dpn_prop.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %dpn_prop.0.i.i.i = load ptr, ptr %dpn_prop.0.in.i.i.i, align 4
  %conv709.i.i.i = and i32 %num_ports.0.in.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv709.i.i.i)
  %cmp710800.not.i.i.i = icmp eq i32 %conv709.i.i.i, 0
  br i1 %cmp710800.not.i.i.i, label %if.end.i.i.i.do.end_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.do.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0801.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv709.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.do.end_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.cond.i.i.i.do.end_crit_edge:                  ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %i.0801.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i.i, i32 %i.0801.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %17)
  %cmp712.i.i.i = icmp eq i32 %24, %17
  br i1 %cmp712.i.i.i, label %sdw_get_slave_dpn_prop.exit.i.i, label %for.cond.i.i.i

sdw_get_slave_dpn_prop.exit.i.i:                  ; preds = %for.body.i.i.i
  %tobool3.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool3.not.i.i, label %sdw_get_slave_dpn_prop.exit.i.i.do.end_crit_edge, label %if.end5.i.i

sdw_get_slave_dpn_prop.exit.i.i.do.end_crit_edge: ; preds = %sdw_get_slave_dpn_prop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end5.i.i:                                      ; preds = %sdw_get_slave_dpn_prop.exit.i.i
  %25 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_num.i.i, align 4
  %mul.i.i = shl i32 %26, 8
  %add.i.i = or i32 %mul.i.i, 2
  %add9.i.i = or i32 %mul.i.i, 3
  %27 = ptrtoint ptr %next_bank.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i.i = icmp eq i32 %28, 0
  %..i.i = select i1 %tobool10.not.i.i, i32 34, i32 50
  %.282.i.i = select i1 %tobool10.not.i.i, i32 36, i32 52
  %.283.i.i = select i1 %tobool10.not.i.i, i32 33, i32 49
  %.284.i.i = select i1 %tobool10.not.i.i, i32 40, i32 56
  %add14.i.i = or i32 %..i.i, %mul.i.i
  %add17.i.i = or i32 %.282.i.i, %mul.i.i
  %add20.i.i = or i32 %.283.i.i, %mul.i.i
  %add23.i.i = or i32 %.284.i.i, %mul.i.i
  %data_mode.i.i = getelementptr i8, ptr %.pn68110.i, i32 -4
  %29 = ptrtoint ptr %data_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_mode.i.i, align 4
  %flow_mode.i.i = getelementptr i8, ptr %.pn68110.i, i32 -8
  %31 = ptrtoint ptr %flow_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flow_mode.i.i, align 4
  %33 = shl i32 %30, 2
  %conv.i.i = and i32 %33, 12
  %and80.i.i = and i32 %32, 3
  %or.i.i = or i32 %and80.i.i, %conv.i.i
  %conv82.i.i = trunc i32 %or.i.i to i8
  %34 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_rt.0115.i, align 4
  %call84.i.i = tail call i32 @sdw_update(ptr noundef %35, i32 noundef %add.i.i, i8 noundef zeroext 15, i8 noundef zeroext %conv82.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i.i)
  %cmp.i.i = icmp slt i32 %call84.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %if.end92.i.i

if.end5.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i.i

if.end92.i.i:                                     ; preds = %if.end5.i.i
  %read_only_wordlength.i.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i.i, i32 %i.0801.i.i.i, i32 19
  %36 = ptrtoint ptr %read_only_wordlength.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %read_only_wordlength.i.i, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool93.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.end92.i.i.if.end108.i.i_crit_edge

if.end92.i.i.if.end108.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108.i.i

if.then94.i.i:                                    ; preds = %if.end92.i.i
  %38 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_rt.0115.i, align 4
  %bps.i.i = getelementptr i8, ptr %.pn68110.i, i32 -12
  %40 = ptrtoint ptr %bps.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bps.i.i, align 4
  %42 = trunc i32 %41 to i8
  %conv96.i.i = add i8 %42, -1
  %call97.i.i = tail call i32 @sdw_write(ptr noundef %39, i32 noundef %add9.i.i, i8 noundef zeroext %conv96.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i)
  %cmp98.i.i = icmp slt i32 %call97.i.i, 0
  br i1 %cmp98.i.i, label %if.then94.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %if.then94.i.i.if.end108.i.i_crit_edge

if.then94.i.i.if.end108.i.i_crit_edge:            ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108.i.i

if.then94.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i.i

if.end108.i.i:                                    ; preds = %if.then94.i.i.if.end108.i.i_crit_edge, %if.end92.i.i.if.end108.i.i_crit_edge
  %sample_interval.i.i = getelementptr i8, ptr %.pn68110.i, i32 -44
  %43 = ptrtoint ptr %sample_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sample_interval.i.i, align 4
  %45 = trunc i32 %44 to i8
  %conv111.i.i = add i8 %45, -1
  %46 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_rt.0115.i, align 4
  %call113.i.i = tail call i32 @sdw_write(ptr noundef %47, i32 noundef %add14.i.i, i8 noundef zeroext %conv111.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i.i)
  %cmp114.i.i = icmp slt i32 %call113.i.i, 0
  %48 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_rt.0115.i, align 4
  br i1 %cmp114.i.i, label %if.end108.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end123.i.i

if.end108.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end123.i.i:                                    ; preds = %if.end108.i.i
  %offset1.i.i = getelementptr i8, ptr %.pn68110.i, i32 -40
  %50 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset1.i.i, align 4
  %conv125.i.i = trunc i32 %51 to i8
  %call126.i.i = tail call i32 @sdw_write(ptr noundef %49, i32 noundef %add17.i.i, i8 noundef zeroext %conv125.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i.i)
  %cmp127.i.i = icmp slt i32 %call126.i.i, 0
  br i1 %cmp127.i.i, label %if.end123.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %if.end136.i.i

if.end123.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i.i

if.end136.i.i:                                    ; preds = %if.end123.i.i
  %52 = ptrtoint ptr %transport_params.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %transport_params.i.i, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool137.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool137.not.i.i, label %if.end136.i.i.if.end152.i.i_crit_edge, label %if.then138.i.i

if.end136.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.i.i

if.then138.i.i:                                   ; preds = %if.end136.i.i
  %54 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_rt.0115.i, align 4
  %blk_grp_ctrl.i.i = getelementptr i8, ptr %.pn68110.i, i32 -48
  %56 = ptrtoint ptr %blk_grp_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %blk_grp_ctrl.i.i, align 4
  %conv140.i.i = trunc i32 %57 to i8
  %call141.i.i = tail call i32 @sdw_write(ptr noundef %55, i32 noundef %add20.i.i, i8 noundef zeroext %conv140.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i.i)
  %cmp142.i.i = icmp slt i32 %call141.i.i, 0
  br i1 %cmp142.i.i, label %if.then138.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %if.then138.i.i.if.end152.i.i_crit_edge

if.then138.i.i.if.end152.i.i_crit_edge:           ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152.i.i

if.then138.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then138.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i.i

if.end152.i.i:                                    ; preds = %if.then138.i.i.if.end152.i.i_crit_edge, %if.end136.i.i.if.end152.i.i_crit_edge
  %lane_control_support.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 12
  %58 = ptrtoint ptr %lane_control_support.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lane_control_support.i.i, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool153.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool153.not.i.i, label %if.end152.i.i.if.end168.i.i_crit_edge, label %if.then154.i.i

if.end152.i.i.if.end168.i.i_crit_edge:            ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168.i.i

if.then154.i.i:                                   ; preds = %if.end152.i.i
  %60 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_rt.0115.i, align 4
  %lane_ctrl.i.i = getelementptr i8, ptr %.pn68110.i, i32 -20
  %62 = ptrtoint ptr %lane_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lane_ctrl.i.i, align 4
  %conv156.i.i = trunc i32 %63 to i8
  %call157.i.i = tail call i32 @sdw_write(ptr noundef %61, i32 noundef %add23.i.i, i8 noundef zeroext %conv156.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i.i)
  %cmp158.i.i = icmp slt i32 %call157.i.i, 0
  br i1 %cmp158.i.i, label %if.then154.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, label %if.then154.i.i.if.end168.i.i_crit_edge

if.then154.i.i.if.end168.i.i_crit_edge:           ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168.i.i

if.then154.i.i.cleanup.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split.i.i

if.end168.i.i:                                    ; preds = %if.then154.i.i.if.end168.i.i_crit_edge, %if.end152.i.i.if.end168.i.i_crit_edge
  %type.i.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i.i, i32 %i.0801.i.i.i, i32 5
  %64 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp169.not.i.i = icmp eq i32 %65, 1
  br i1 %cmp169.not.i.i, label %if.end168.i.i.sdw_program_slave_port_params.exit.i_crit_edge, label %if.then171.i.i

if.end168.i.i.sdw_program_slave_port_params.exit.i_crit_edge: ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_program_slave_port_params.exit.i

if.then171.i.i:                                   ; preds = %if.end168.i.i
  %66 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_rt.0115.i, align 4
  %68 = ptrtoint ptr %next_bank.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %next_bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i = icmp eq i32 %69, 0
  %70 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_num.i.i, align 4
  %mul11.i.i.i = shl i32 %71, 8
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 37, i32 53
  %.172.i.i.i = select i1 %tobool.not.i.i.i, i32 35, i32 51
  %.173.i.i.i = select i1 %tobool.not.i.i.i, i32 38, i32 54
  %add12.i.i.i = or i32 %mul11.i.i.i, %..i.i.i
  %add18.i.i.i = or i32 %mul11.i.i.i, %.172.i.i.i
  %add21.i.i.i = or i32 %mul11.i.i.i, %.173.i.i.i
  %offset2.i.i.i = getelementptr i8, ptr %.pn68110.i, i32 -36
  %72 = ptrtoint ptr %offset2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset2.i.i.i, align 4
  %conv.i.i.i = trunc i32 %73 to i8
  %call.i.i.i = tail call i32 @sdw_write(ptr noundef %67, i32 noundef %add12.i.i.i, i8 noundef zeroext %conv.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i265.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i265.i.i, label %if.then171.i.i.do.end180.i.i_crit_edge, label %if.end24.i.i.i

if.then171.i.i.do.end180.i.i_crit_edge:           ; preds = %if.then171.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180.i.i

if.end24.i.i.i:                                   ; preds = %if.then171.i.i
  %.171.i.i.i = select i1 %tobool.not.i.i.i, i32 39, i32 55
  %add15.i.i.i = or i32 %mul11.i.i.i, %.171.i.i.i
  %blk_pkg_mode.i.i.i = getelementptr i8, ptr %.pn68110.i, i32 -24
  %74 = ptrtoint ptr %blk_pkg_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %blk_pkg_mode.i.i.i, align 4
  %conv25.i.i.i = trunc i32 %75 to i8
  %call26.i.i.i = tail call i32 @sdw_write(ptr noundef %67, i32 noundef %add15.i.i.i, i8 noundef zeroext %conv25.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %cmp27.i.i.i = icmp slt i32 %call26.i.i.i, 0
  br i1 %cmp27.i.i.i, label %if.end24.i.i.i.do.end180.i.i_crit_edge, label %if.end34.i.i.i

if.end24.i.i.i.do.end180.i.i_crit_edge:           ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180.i.i

if.end34.i.i.i:                                   ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp35.not.i.i.i = icmp eq i32 %65, 0
  br i1 %cmp35.not.i.i.i, label %do.end53.i.i.i, label %if.end34.i.i.i.sdw_program_slave_port_params.exit.i_crit_edge

if.end34.i.i.i.sdw_program_slave_port_params.exit.i_crit_edge: ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_program_slave_port_params.exit.i

do.end53.i.i.i:                                   ; preds = %if.end34.i.i.i
  %76 = ptrtoint ptr %sample_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sample_interval.i.i, align 4
  %78 = trunc i32 %77 to i16
  %79 = add i16 %78, -1
  %80 = lshr i16 %79, 8
  %conv55.i.i.i = trunc i16 %80 to i8
  %call56.i.i.i = tail call i32 @sdw_write(ptr noundef %67, i32 noundef %add18.i.i.i, i8 noundef zeroext %conv55.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i.i)
  %cmp57.i.i.i = icmp slt i32 %call56.i.i.i, 0
  br i1 %cmp57.i.i.i, label %do.end53.i.i.i.do.end180.i.i_crit_edge, label %do.body71.i.i.i

do.end53.i.i.i.do.end180.i.i_crit_edge:           ; preds = %do.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180.i.i

do.body71.i.i.i:                                  ; preds = %do.end53.i.i.i
  %hstart.i.i.i = getelementptr i8, ptr %.pn68110.i, i32 -32
  %81 = ptrtoint ptr %hstart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hstart.i.i.i, align 4
  %hstop.i.i.i = getelementptr i8, ptr %.pn68110.i, i32 -28
  %83 = ptrtoint ptr %hstop.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hstop.i.i.i, align 4
  %85 = shl i32 %82, 4
  %and114.i.i.i = and i32 %84, 15
  %or.i.i.i = or i32 %and114.i.i.i, %85
  %conv117.i.i.i = trunc i32 %or.i.i.i to i8
  %call118.i.i.i = tail call i32 @sdw_write(ptr noundef %67, i32 noundef %add21.i.i.i, i8 noundef zeroext %conv117.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i.i.i)
  %cmp119.i.i.i = icmp slt i32 %call118.i.i.i, 0
  br i1 %cmp119.i.i.i, label %do.body71.i.i.i.do.end180.i.i_crit_edge, label %do.body71.i.i.i.sdw_program_slave_port_params.exit.i_crit_edge

do.body71.i.i.i.sdw_program_slave_port_params.exit.i_crit_edge: ; preds = %do.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_program_slave_port_params.exit.i

do.body71.i.i.i.do.end180.i.i_crit_edge:          ; preds = %do.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180.i.i

do.end180.i.i:                                    ; preds = %do.body71.i.i.i.do.end180.i.i_crit_edge, %do.end53.i.i.i.do.end180.i.i_crit_edge, %if.end24.i.i.i.do.end180.i.i_crit_edge, %if.then171.i.i.do.end180.i.i_crit_edge
  %.str.98.sink.i.i.i = phi ptr [ @.str.89, %if.then171.i.i.do.end180.i.i_crit_edge ], [ @.str.92, %if.end24.i.i.i.do.end180.i.i_crit_edge ], [ @.str.95, %do.end53.i.i.i.do.end180.i.i_crit_edge ], [ @.str.98, %do.body71.i.i.i.do.end180.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ %call.i.i.i, %if.then171.i.i.do.end180.i.i_crit_edge ], [ %call26.i.i.i, %if.end24.i.i.i.do.end180.i.i_crit_edge ], [ %call56.i.i.i, %do.end53.i.i.i.do.end180.i.i_crit_edge ], [ %call118.i.i.i, %do.body71.i.i.i.do.end180.i.i_crit_edge ]
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull %.str.98.sink.i.i.i) #8
  br label %cleanup.sink.split.sink.split.i.i

cleanup.sink.split.sink.split.i.i:                ; preds = %do.end180.i.i, %if.then154.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, %if.then138.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, %if.end123.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, %if.then94.i.i.cleanup.sink.split.sink.split.i.i_crit_edge, %if.end5.i.i.cleanup.sink.split.sink.split.i.i_crit_edge
  %.str.87.sink.ph.i.i = phi ptr [ @.str.87, %do.end180.i.i ], [ @.str.69, %if.end5.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ @.str.72, %if.then94.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ @.str.78, %if.end123.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ @.str.81, %if.then138.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ @.str.84, %if.then154.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ]
  %retval.0.ph.ph.i.i = phi i32 [ %retval.0.ph.i.i.i, %do.end180.i.i ], [ %call84.i.i, %if.end5.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ %call97.i.i, %if.then94.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ %call126.i.i, %if.end123.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ %call141.i.i, %if.then138.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ], [ %call157.i.i, %if.then154.i.i.cleanup.sink.split.sink.split.i.i_crit_edge ]
  %88 = ptrtoint ptr %s_rt.0115.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_rt.0115.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %cleanup.sink.split.sink.split.i.i, %if.end108.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink281.i.i = phi ptr [ %89, %cleanup.sink.split.sink.split.i.i ], [ %49, %if.end108.i.i.cleanup.sink.split.i.i_crit_edge ]
  %.str.87.sink.i.i = phi ptr [ %.str.87.sink.ph.i.i, %cleanup.sink.split.sink.split.i.i ], [ @.str.75, %if.end108.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %retval.0.ph.ph.i.i, %cleanup.sink.split.sink.split.i.i ], [ %call113.i.i, %if.end108.i.i.cleanup.sink.split.i.i_crit_edge ]
  %dev182.i.i = getelementptr inbounds %struct.sdw_slave, ptr %.sink281.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port_num.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev182.i.i, ptr noundef nonnull %.str.87.sink.i.i, i32 noundef %91) #8
  br label %do.end

sdw_program_slave_port_params.exit.i:             ; preds = %do.body71.i.i.i.sdw_program_slave_port_params.exit.i_crit_edge, %if.end34.i.i.i.sdw_program_slave_port_params.exit.i_crit_edge, %if.end168.i.i.sdw_program_slave_port_params.exit.i_crit_edge, %for.body11.i.sdw_program_slave_port_params.exit.i_crit_edge
  %92 = ptrtoint ptr %.pn68110.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn68.i = load ptr, ptr %.pn68110.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn68.i, %port_list.i
  br i1 %cmp9.not.i, label %sdw_program_slave_port_params.exit.i.for.cond.loopexit.i_crit_edge, label %sdw_program_slave_port_params.exit.i.for.body11.i_crit_edge

sdw_program_slave_port_params.exit.i.for.body11.i_crit_edge: ; preds = %sdw_program_slave_port_params.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.i

sdw_program_slave_port_params.exit.i.for.cond.loopexit.i_crit_edge: ; preds = %sdw_program_slave_port_params.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

for.end24.i:                                      ; preds = %for.cond.loopexit.i.for.end24.i_crit_edge, %if.end.for.end24.i_crit_edge
  %port_list26.i = getelementptr i8, ptr %.pn132, i32 -16
  %port_ops.i.i = getelementptr inbounds %struct.sdw_bus, ptr %6, i32 0, i32 10
  %next_bank.i70.i = getelementptr inbounds %struct.sdw_bus, ptr %6, i32 0, i32 11, i32 1
  br label %for.cond30.i

for.cond30.i:                                     ; preds = %sdw_program_master_port_params.exit.i.for.cond30.i_crit_edge, %for.end24.i
  %.pn67.in.i = phi ptr [ %port_list26.i, %for.end24.i ], [ %.pn67.i, %sdw_program_master_port_params.exit.i.for.cond30.i_crit_edge ]
  %93 = ptrtoint ptr %.pn67.in.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn67.i = load ptr, ptr %.pn67.in.i, align 4
  %cmp33.not.i = icmp eq ptr %.pn67.i, %port_list26.i
  br i1 %cmp33.not.i, label %if.end5, label %for.body35.i

for.body35.i:                                     ; preds = %for.cond30.i
  %94 = ptrtoint ptr %port_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %port_ops.i.i, align 4
  %dpn_set_port_transport_params.i.i = getelementptr inbounds %struct.sdw_master_port_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %dpn_set_port_transport_params.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dpn_set_port_transport_params.i.i, align 4
  %transport_params.i69.i = getelementptr i8, ptr %.pn67.i, i32 -56
  %98 = ptrtoint ptr %next_bank.i70.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %next_bank.i70.i, align 4
  %call.i.i = tail call i32 %97(ptr noundef %6, ptr noundef %transport_params.i69.i, i32 noundef %99) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i71.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i71.i, label %for.body35.i.do.end_crit_edge, label %sdw_program_master_port_params.exit.i

for.body35.i.do.end_crit_edge:                    ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

sdw_program_master_port_params.exit.i:            ; preds = %for.body35.i
  %100 = ptrtoint ptr %port_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %port_ops.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %port_params.i.i = getelementptr i8, ptr %.pn67.i, i32 -16
  %104 = ptrtoint ptr %next_bank.i70.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %next_bank.i70.i, align 4
  %call4.i.i = tail call i32 %103(ptr noundef %6, ptr noundef %port_params.i.i, i32 noundef %105) #5
  %cmp37.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp37.i, label %sdw_program_master_port_params.exit.i.do.end_crit_edge, label %sdw_program_master_port_params.exit.i.for.cond30.i_crit_edge

sdw_program_master_port_params.exit.i.for.cond30.i_crit_edge: ; preds = %sdw_program_master_port_params.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond30.i

sdw_program_master_port_params.exit.i.do.end_crit_edge: ; preds = %sdw_program_master_port_params.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %sdw_program_master_port_params.exit.i.do.end_crit_edge, %for.body35.i.do.end_crit_edge, %cleanup.sink.split.i.i, %sdw_get_slave_dpn_prop.exit.i.i.do.end_crit_edge, %for.cond.i.i.i.do.end_crit_edge, %if.end.i.i.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ], [ -22, %for.cond.i.i.i.do.end_crit_edge ], [ -22, %if.end.i.i.i.do.end_crit_edge ], [ -22, %sdw_get_slave_dpn_prop.exit.i.i.do.end_crit_edge ], [ %call.i.i, %for.body35.i.do.end_crit_edge ], [ %call4.i.i, %sdw_program_master_port_params.exit.i.do.end_crit_edge ]
  %106 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end5:                                          ; preds = %for.cond30.i
  %108 = ptrtoint ptr %m_rt.0133 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %m_rt.0133, align 4
  %ops.i = getelementptr inbounds %struct.sdw_bus, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i, align 8
  %set_bus_conf.i = getelementptr inbounds %struct.sdw_master_ops, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %set_bus_conf.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_bus_conf.i, align 4
  %tobool.not.i = icmp eq ptr %113, null
  br i1 %tobool.not.i, label %if.end5.if.end5.i_crit_edge, label %if.then.i

if.end5.if.end5.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end5
  %params.i = getelementptr inbounds %struct.sdw_bus, ptr %109, i32 0, i32 11
  %call.i = tail call i32 %113(ptr noundef %109, ptr noundef %params.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i.do.end11_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i.do.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end5.if.end5.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i.if.end5.i_crit_edge ], [ 0, %if.end5.if.end5.i_crit_edge ]
  %114 = ptrtoint ptr %slave_rt_list.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn46.i = load ptr, ptr %slave_rt_list.i, align 4
  %cmp7.not47.i = icmp eq ptr %.pn46.i, %slave_rt_list.i
  br i1 %cmp7.not47.i, label %if.end5.i.if.end13_crit_edge, label %for.body.lr.ph.i53

if.end5.i.if.end13_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

for.body.lr.ph.i53:                               ; preds = %if.end5.i
  %params14.i = getelementptr inbounds %struct.sdw_bus, ptr %109, i32 0, i32 11
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.inc.i.for.body.i54_crit_edge, %for.body.lr.ph.i53
  %.pn49.i = phi ptr [ %.pn46.i, %for.body.lr.ph.i53 ], [ %.pn.i55, %for.inc.i.for.body.i54_crit_edge ]
  %ret.148.i = phi i32 [ %ret.0.i, %for.body.lr.ph.i53 ], [ %ret.2.i, %for.inc.i.for.body.i54_crit_edge ]
  %s_rt.0.i = getelementptr i8, ptr %.pn49.i, i32 -12
  %115 = ptrtoint ptr %s_rt.0.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_rt.0.i, align 4
  %ops9.i = getelementptr inbounds %struct.sdw_slave, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %ops9.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops9.i, align 8
  %bus_config.i = getelementptr inbounds %struct.sdw_slave_ops, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %bus_config.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bus_config.i, align 4
  %tobool10.not.i = icmp eq ptr %120, null
  br i1 %tobool10.not.i, label %for.body.i54.for.inc.i_crit_edge, label %if.then11.i

for.body.i54.for.inc.i_crit_edge:                 ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i54
  %call15.i = tail call i32 %120(ptr noundef %116, ptr noundef %params14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end.i, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %109, align 8
  %dev_num.i = getelementptr inbounds %struct.sdw_slave, ptr %116, i32 0, i32 10
  %123 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %dev_num.i, align 8
  %conv.i = zext i16 %124 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.100, i32 noundef %conv.i) #8
  br label %do.end11

for.inc.i:                                        ; preds = %if.then11.i.for.inc.i_crit_edge, %for.body.i54.for.inc.i_crit_edge
  %ret.2.i = phi i32 [ %call15.i, %if.then11.i.for.inc.i_crit_edge ], [ %ret.148.i, %for.body.i54.for.inc.i_crit_edge ]
  %125 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i55 = load ptr, ptr %.pn49.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i55, %slave_rt_list.i
  br i1 %cmp7.not.i, label %sdw_notify_config.exit, label %for.inc.i.for.body.i54_crit_edge

for.inc.i.for.body.i54_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i54

sdw_notify_config.exit:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp7 = icmp slt i32 %ret.2.i, 0
  br i1 %cmp7, label %sdw_notify_config.exit.do.end11_crit_edge, label %sdw_notify_config.exit.if.end13_crit_edge

sdw_notify_config.exit.if.end13_crit_edge:        ; preds = %sdw_notify_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

sdw_notify_config.exit.do.end11_crit_edge:        ; preds = %sdw_notify_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.end11:                                         ; preds = %sdw_notify_config.exit.do.end11_crit_edge, %do.end.i, %if.then.i.do.end11_crit_edge
  %retval.0.i5662 = phi i32 [ %call15.i, %do.end.i ], [ %call.i, %if.then.i.do.end11_crit_edge ], [ %ret.2.i, %sdw_notify_config.exit.do.end11_crit_edge ]
  %126 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bus, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.64, i32 noundef %retval.0.i5662) #8
  br label %cleanup

if.end13:                                         ; preds = %sdw_notify_config.exit.if.end13_crit_edge, %if.end5.i.if.end13_crit_edge
  %retval.0.i5666 = phi i32 [ %ret.2.i, %sdw_notify_config.exit.if.end13_crit_edge ], [ %ret.0.i, %if.end5.i.if.end13_crit_edge ]
  %stream14 = getelementptr i8, ptr %.pn132, i32 -36
  %128 = ptrtoint ptr %stream14 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %stream14, align 4
  %state15 = getelementptr inbounds %struct.sdw_stream_runtime, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %state15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp16.not = icmp eq i32 %131, 3
  br i1 %cmp16.not, label %if.end18, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end18:                                         ; preds = %if.end13
  %call19 = tail call fastcc i32 @sdw_enable_disable_ports(ptr noundef %m_rt.0133, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bus, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.67, i32 noundef %call19) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %ret.1 = phi i32 [ %retval.0.i5666, %if.end13.for.inc_crit_edge ], [ 0, %if.end18.for.inc_crit_edge ], [ %ret.0131, %land.lhs.true.for.inc_crit_edge ]
  %134 = ptrtoint ptr %.pn132 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn = load ptr, ptr %.pn132, align 4
  %cmp.not = icmp eq ptr %.pn, %m_rt_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end24, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i5662, %do.end11 ], [ %call19, %do.end24 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_bank_switch(ptr noundef readonly %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_rt_count1 = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %m_rt_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_rt_count1, align 4
  %master_list = getelementptr inbounds %struct.sdw_stream_runtime, ptr %stream, i32 0, i32 4
  %2 = ptrtoint ptr %master_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn245 = load ptr, ptr %master_list, align 4
  %cmp.not246 = icmp eq ptr %.pn245, %master_list
  br i1 %cmp.not246, label %entry.for.cond32.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond32.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %sdw_bank_switch.exit.for.cond32.preheader_crit_edge, %entry.for.cond32.preheader_crit_edge
  %multi_link.0.off0.lcssa = phi i1 [ false, %entry.for.cond32.preheader_crit_edge ], [ %multi_link.1.off0, %sdw_bank_switch.exit.for.cond32.preheader_crit_edge ]
  %3 = ptrtoint ptr %master_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn205249 = load ptr, ptr %master_list, align 4
  %cmp35.not250 = icmp eq ptr %.pn205249, %master_list
  br i1 %cmp35.not250, label %for.cond32.preheader.cleanup_crit_edge, label %for.cond32.preheader.for.body37_crit_edge

for.cond32.preheader.for.body37_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body37

for.cond32.preheader.cleanup_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %sdw_bank_switch.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn248 = phi ptr [ %.pn, %sdw_bank_switch.exit.for.body_crit_edge ], [ %.pn245, %entry.for.body_crit_edge ]
  %multi_link.0.off0247 = phi i1 [ %multi_link.1.off0, %sdw_bank_switch.exit.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %m_rt.0 = getelementptr i8, ptr %.pn248, i32 -32
  %4 = ptrtoint ptr %m_rt.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rt.0, align 4
  %ops4 = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops4, align 8
  %multi_link5 = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %multi_link5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %multi_link5, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %hw_sync_min_links = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %hw_sync_min_links to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_sync_min_links, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %11)
  %cmp6.not = icmp slt i32 %1, %11
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %msg_lock = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %multi_link.1.off0 = phi i1 [ true, %if.then ], [ %multi_link.0.off0247, %land.lhs.true.if.end_crit_edge ], [ %multi_link.0.off0247, %for.body.if.end_crit_edge ]
  %pre_bank_switch = getelementptr inbounds %struct.sdw_master_ops, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %pre_bank_switch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pre_bank_switch, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then8:                                         ; preds = %if.end
  %call = tail call i32 %13(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %do.end, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.then8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.111, i32 noundef %call) #8
  br i1 %multi_link.1.off0, label %do.end.for.cond115.preheader_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.for.cond115.preheader_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond115.preheader

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end13.do.end19_crit_edge, label %if.end.i

if.end13.do.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.end.i:                                         ; preds = %if.end13
  %defer_msg.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 15
  %msg.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 15, i32 2
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %msg.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i84.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1) #9
  %tobool2.not.i = icmp eq ptr %call7.i.i84.i, null
  br i1 %tobool2.not.i, label %if.end.i.error_1.i_crit_edge, label %if.end4.i

if.end.i.error_1.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_1.i

if.end4.i:                                        ; preds = %if.end.i
  %params.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 11
  %col.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %col.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %col.i, align 4
  %21 = load i32, ptr @sdw_cols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp1.i.i = icmp eq i32 %21, %20
  br i1 %cmp1.i.i, label %if.end4.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.i.i

if.end4.i.sdw_find_col_index.exit.i_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.i.i:                                      ; preds = %if.end4.i
  %22 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp1.1.i.i = icmp eq i32 %22, %20
  br i1 %cmp1.1.i.i, label %for.inc.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.sdw_find_col_index.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %23 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %20)
  %cmp1.2.i.i = icmp eq i32 %23, %20
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.sdw_find_col_index.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %24 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %20)
  %cmp1.3.i.i = icmp eq i32 %24, %20
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.sdw_find_col_index.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %25 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp1.4.i.i = icmp eq i32 %25, %20
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.sdw_find_col_index.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %26 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %20)
  %cmp1.5.i.i = icmp eq i32 %26, %20
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.sdw_find_col_index.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %27 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %20)
  %cmp1.6.i.i = icmp eq i32 %27, %20
  br i1 %cmp1.6.i.i, label %for.inc.5.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.sdw_find_col_index.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %28 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @sdw_cols, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %20)
  %cmp1.7.i.i = icmp eq i32 %28, %20
  br i1 %cmp1.7.i.i, label %for.inc.6.i.i.sdw_find_col_index.exit.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.sdw_find_col_index.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_find_col_index.exit.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %sdw_find_col_index.exit.i

sdw_find_col_index.exit.i:                        ; preds = %for.inc.7.i.i, %for.inc.6.i.i.sdw_find_col_index.exit.i_crit_edge, %for.inc.5.i.i.sdw_find_col_index.exit.i_crit_edge, %for.inc.4.i.i.sdw_find_col_index.exit.i_crit_edge, %for.inc.3.i.i.sdw_find_col_index.exit.i_crit_edge, %for.inc.2.i.i.sdw_find_col_index.exit.i_crit_edge, %for.inc.1.i.i.sdw_find_col_index.exit.i_crit_edge, %for.inc.i.i.sdw_find_col_index.exit.i_crit_edge, %if.end4.i.sdw_find_col_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.inc.7.i.i ], [ 0, %if.end4.i.sdw_find_col_index.exit.i_crit_edge ], [ 1, %for.inc.i.i.sdw_find_col_index.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.sdw_find_col_index.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.sdw_find_col_index.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.sdw_find_col_index.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.sdw_find_col_index.exit.i_crit_edge ], [ 6, %for.inc.5.i.i.sdw_find_col_index.exit.i_crit_edge ], [ 7, %for.inc.6.i.i.sdw_find_col_index.exit.i_crit_edge ]
  %row.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 11, i32 6
  %29 = ptrtoint ptr %row.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %row.i, align 8
  %call7.i = tail call i32 @sdw_find_row_index(i32 noundef %30) #5
  %shl.i = shl i32 %call7.i, 3
  %or.i = or i32 %shl.i, %retval.0.i.i
  %conv.i = trunc i32 %or.i to i8
  %31 = ptrtoint ptr %call7.i.i84.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %call7.i.i84.i, align 8
  %next_bank.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %next_bank.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %next_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not.i = icmp eq i32 %33, 0
  %..i = select i1 %tobool9.not.i, i32 96, i32 112
  %call13.i = tail call i32 @sdw_fill_msg(ptr noundef nonnull %call7.i.i.i, ptr noundef null, i32 noundef %..i, i32 noundef 1, i16 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull %call7.i.i84.i) #5
  %ssp_sync.i = getelementptr inbounds %struct.sdw_msg, ptr %call7.i.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %ssp_sync.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %ssp_sync.i, align 4
  %35 = ptrtoint ptr %multi_link5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %multi_link5, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool15.not.i = icmp eq i8 %36, 0
  br i1 %tobool15.not.i, label %sdw_find_col_index.exit.i.if.end24.thread.i_crit_edge, label %land.end.i

sdw_find_col_index.exit.i.if.end24.thread.i_crit_edge: ; preds = %sdw_find_col_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i

land.end.i:                                       ; preds = %sdw_find_col_index.exit.i
  %hw_sync_min_links.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 19
  %37 = ptrtoint ptr %hw_sync_min_links.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_sync_min_links.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %1)
  %cmp.not.i = icmp sgt i32 %38, %1
  br i1 %cmp.not.i, label %land.end.i.if.end24.thread.i_crit_edge, label %if.end24.i

land.end.i.if.end24.thread.i_crit_edge:           ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i

if.end24.i:                                       ; preds = %land.end.i
  %call21.i = tail call i32 @sdw_transfer_defer(ptr noundef %5, ptr noundef nonnull %call7.i.i.i, ptr noundef %defer_msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21.i)
  %cmp25.i = icmp sgt i32 %call21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call21.i)
  %cmp27.not.i = icmp eq i32 %call21.i, -61
  %or.cond.i = or i1 %cmp25.i, %cmp27.not.i
  br i1 %or.cond.i, label %if.end24.i.sdw_bank_switch.exit_crit_edge, label %if.end24.i.do.end.i_crit_edge

if.end24.i.do.end.i_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end24.i.sdw_bank_switch.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_bank_switch.exit

if.end24.thread.i:                                ; preds = %land.end.i.if.end24.thread.i_crit_edge, %sdw_find_col_index.exit.i.if.end24.thread.i_crit_edge
  %call23.i = tail call i32 @sdw_transfer(ptr noundef %5, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23.i)
  %cmp2586.i = icmp sgt i32 %call23.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call23.i)
  %cmp27.not87.i = icmp eq i32 %call23.i, -61
  %or.cond88.i = or i1 %cmp2586.i, %cmp27.not87.i
  br i1 %or.cond88.i, label %if.then32.i, label %if.end24.thread.i.do.end.i_crit_edge

if.end24.thread.i.do.end.i_crit_edge:             ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.end24.thread.i.do.end.i_crit_edge, %if.end24.i.do.end.i_crit_edge
  %ret.089.i = phi i32 [ %call23.i, %if.end24.thread.i.do.end.i_crit_edge ], [ %call21.i, %if.end24.i.do.end.i_crit_edge ]
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.124) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i84.i) #5
  br label %error_1.i

if.then32.i:                                      ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i84.i) #5
  %41 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %msg.i, align 4
  %42 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool36.not.i = icmp eq i32 %43, 0
  %lnot.ext.i = zext i1 %tobool36.not.i to i32
  %44 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %lnot.ext.i, ptr %params.i, align 8
  %45 = ptrtoint ptr %next_bank.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool41.not.i = icmp eq i32 %46, 0
  %lnot.ext43.i = zext i1 %tobool41.not.i to i32
  %47 = ptrtoint ptr %next_bank.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %lnot.ext43.i, ptr %next_bank.i, align 4
  br label %sdw_bank_switch.exit

error_1.i:                                        ; preds = %do.end.i, %if.end.i.error_1.i_crit_edge
  %ret.1.i = phi i32 [ %ret.089.i, %do.end.i ], [ -12, %if.end.i.error_1.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %48 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %msg.i, align 4
  br label %do.end19

sdw_bank_switch.exit:                             ; preds = %if.then32.i, %if.end24.i.sdw_bank_switch.exit_crit_edge
  %49 = ptrtoint ptr %.pn248 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn248, align 4
  %cmp.not = icmp eq ptr %.pn, %master_list
  br i1 %cmp.not, label %sdw_bank_switch.exit.for.cond32.preheader_crit_edge, label %sdw_bank_switch.exit.for.body_crit_edge

sdw_bank_switch.exit.for.body_crit_edge:          ; preds = %sdw_bank_switch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sdw_bank_switch.exit.for.cond32.preheader_crit_edge: ; preds = %sdw_bank_switch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond32.preheader

do.end19:                                         ; preds = %error_1.i, %if.end13.do.end19_crit_edge
  %retval.0.i.ph = phi i32 [ %ret.1.i, %error_1.i ], [ -12, %if.end13.do.end19_crit_edge ]
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i.ph) #8
  br label %error

for.body37:                                       ; preds = %for.inc75.for.body37_crit_edge, %for.cond32.preheader.for.body37_crit_edge
  %.pn205251 = phi ptr [ %.pn205, %for.inc75.for.body37_crit_edge ], [ %.pn205249, %for.cond32.preheader.for.body37_crit_edge ]
  %m_rt.1 = getelementptr i8, ptr %.pn205251, i32 -32
  %52 = ptrtoint ptr %m_rt.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m_rt.1, align 4
  %ops39 = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops39, align 8
  %post_bank_switch = getelementptr inbounds %struct.sdw_master_ops, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %post_bank_switch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %post_bank_switch, align 4
  %tobool40.not = icmp eq ptr %57, null
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %for.body37
  %call43 = tail call i32 %57(ptr noundef %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.then41.if.end58_crit_edge

if.then41.if.end58_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.116, i32 noundef %call43) #8
  br label %error

if.else:                                          ; preds = %for.body37
  br i1 %multi_link.0.off0.lcssa, label %do.end55, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end55:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.119) #8
  br label %error

if.end58:                                         ; preds = %if.else.if.end58_crit_edge, %if.then41.if.end58_crit_edge
  %bank_switch_timeout = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 17
  %62 = ptrtoint ptr %bank_switch_timeout to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bank_switch_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool59.not = icmp eq i32 %63, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %bank_switch_timeout to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3000, ptr %bank_switch_timeout, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  %multi_link.i = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 18
  %65 = ptrtoint ptr %multi_link.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %multi_link.i, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i208 = icmp eq i8 %66, 0
  br i1 %tobool.not.i208, label %if.end62.if.end70_crit_edge, label %if.end.i209

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.end.i209:                                      ; preds = %if.end62
  %complete.i = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 15, i32 1
  %67 = ptrtoint ptr %bank_switch_timeout to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bank_switch_timeout, align 8
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef %68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end68, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i209
  %params.i211 = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 11
  %69 = ptrtoint ptr %params.i211 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %params.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool4.not.i = icmp eq i32 %70, 0
  %lnot.ext.i212 = zext i1 %tobool4.not.i to i32
  %71 = ptrtoint ptr %params.i211 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %lnot.ext.i212, ptr %params.i211, align 8
  %next_bank.i213 = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 11, i32 1
  %72 = ptrtoint ptr %next_bank.i213 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next_bank.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool8.not.i = icmp eq i32 %73, 0
  %lnot.ext10.i = zext i1 %tobool8.not.i to i32
  %74 = ptrtoint ptr %next_bank.i213 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %lnot.ext10.i, ptr %next_bank.i213, align 4
  %msg.i214 = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 15, i32 2
  %75 = ptrtoint ptr %msg.i214 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %msg.i214, align 4
  %tobool14.not.i = icmp eq ptr %76, null
  br i1 %tobool14.not.i, label %if.end3.i.if.end70_crit_edge, label %if.then15.i

if.end3.i.if.end70_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %buf.i = getelementptr inbounds %struct.sdw_msg, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %78) #5
  %79 = ptrtoint ptr %msg.i214 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %msg.i214, align 4
  tail call void @kfree(ptr noundef %80) #5
  br label %if.end70

do.end68:                                         ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.126) #8
  %83 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.122, i32 noundef -110) #8
  br label %error

if.end70:                                         ; preds = %if.then15.i, %if.end3.i.if.end70_crit_edge, %if.end62.if.end70_crit_edge
  br i1 %multi_link.0.off0.lcssa, label %if.then72, label %if.end70.for.inc75_crit_edge

if.end70.for.inc75_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc75

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %msg_lock73 = getelementptr inbounds %struct.sdw_bus, ptr %53, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %msg_lock73) #5
  br label %for.inc75

for.inc75:                                        ; preds = %if.then72, %if.end70.for.inc75_crit_edge
  %85 = ptrtoint ptr %.pn205251 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn205 = load ptr, ptr %.pn205251, align 4
  %cmp35.not = icmp eq ptr %.pn205, %master_list
  br i1 %cmp35.not, label %for.inc75.cleanup_crit_edge, label %for.inc75.for.body37_crit_edge

for.inc75.for.body37_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.inc75.cleanup_crit_edge:                      ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

error:                                            ; preds = %do.end68, %do.end55, %do.end48, %do.end19
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end19 ], [ %call43, %do.end48 ], [ -110, %do.end68 ], [ 0, %do.end55 ]
  %multi_link.2.off0 = phi i1 [ %multi_link.1.off0, %do.end19 ], [ %multi_link.0.off0.lcssa, %do.end48 ], [ %multi_link.0.off0.lcssa, %do.end68 ], [ true, %do.end55 ]
  %86 = ptrtoint ptr %master_list to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn206252 = load ptr, ptr %master_list, align 4
  %cmp90.not253 = icmp eq ptr %.pn206252, %master_list
  br i1 %cmp90.not253, label %error.msg_unlock_crit_edge, label %error.for.body92_crit_edge

error.for.body92_crit_edge:                       ; preds = %error
  br label %for.body92

error.msg_unlock_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_unlock

for.body92:                                       ; preds = %for.inc101.for.body92_crit_edge, %error.for.body92_crit_edge
  %.pn206254 = phi ptr [ %.pn206, %for.inc101.for.body92_crit_edge ], [ %.pn206252, %error.for.body92_crit_edge ]
  %m_rt.2 = getelementptr i8, ptr %.pn206254, i32 -32
  %87 = ptrtoint ptr %m_rt.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %m_rt.2, align 4
  %msg = getelementptr inbounds %struct.sdw_bus, ptr %88, i32 0, i32 15, i32 2
  %89 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %msg, align 4
  %tobool94.not = icmp eq ptr %90, null
  br i1 %tobool94.not, label %for.body92.for.inc101_crit_edge, label %if.then95

for.body92.for.inc101_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101

if.then95:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #7
  %buf = getelementptr inbounds %struct.sdw_msg, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %92) #5
  %93 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %msg, align 4
  tail call void @kfree(ptr noundef %94) #5
  br label %for.inc101

for.inc101:                                       ; preds = %if.then95, %for.body92.for.inc101_crit_edge
  %95 = ptrtoint ptr %.pn206254 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn206 = load ptr, ptr %.pn206254, align 4
  %cmp90.not = icmp eq ptr %.pn206, %master_list
  br i1 %cmp90.not, label %for.inc101.msg_unlock_crit_edge, label %for.inc101.for.body92_crit_edge

for.inc101.for.body92_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body92

for.inc101.msg_unlock_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg_unlock

msg_unlock:                                       ; preds = %for.inc101.msg_unlock_crit_edge, %error.msg_unlock_crit_edge
  br i1 %multi_link.2.off0, label %msg_unlock.for.cond115.preheader_crit_edge, label %msg_unlock.cleanup_crit_edge

msg_unlock.cleanup_crit_edge:                     ; preds = %msg_unlock
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

msg_unlock.for.cond115.preheader_crit_edge:       ; preds = %msg_unlock
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond115.preheader

for.cond115.preheader:                            ; preds = %msg_unlock.for.cond115.preheader_crit_edge, %do.end.for.cond115.preheader_crit_edge
  %ret.3222.ph = phi i32 [ %call, %do.end.for.cond115.preheader_crit_edge ], [ %ret.2, %msg_unlock.for.cond115.preheader_crit_edge ]
  %96 = ptrtoint ptr %master_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn207255 = load ptr, ptr %master_list, align 4
  %cmp118.not256 = icmp eq ptr %.pn207255, %master_list
  br i1 %cmp118.not256, label %for.cond115.preheader.cleanup_crit_edge, label %for.cond115.preheader.for.body120_crit_edge

for.cond115.preheader.for.body120_crit_edge:      ; preds = %for.cond115.preheader
  br label %for.body120

for.cond115.preheader.cleanup_crit_edge:          ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body120:                                      ; preds = %for.inc127.for.body120_crit_edge, %for.cond115.preheader.for.body120_crit_edge
  %.pn207257 = phi ptr [ %.pn207, %for.inc127.for.body120_crit_edge ], [ %.pn207255, %for.cond115.preheader.for.body120_crit_edge ]
  %m_rt.3 = getelementptr i8, ptr %.pn207257, i32 -32
  %97 = ptrtoint ptr %m_rt.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %m_rt.3, align 4
  %msg_lock122 = getelementptr inbounds %struct.sdw_bus, ptr %98, i32 0, i32 7
  %call123 = tail call zeroext i1 @mutex_is_locked(ptr noundef %msg_lock122) #5
  br i1 %call123, label %if.then124, label %for.body120.for.inc127_crit_edge

for.body120.for.inc127_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc127

if.then124:                                       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %msg_lock122) #5
  br label %for.inc127

for.inc127:                                       ; preds = %if.then124, %for.body120.for.inc127_crit_edge
  %99 = ptrtoint ptr %.pn207257 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn207 = load ptr, ptr %.pn207257, align 4
  %cmp118.not = icmp eq ptr %.pn207, %master_list
  br i1 %cmp118.not, label %for.inc127.cleanup_crit_edge, label %for.inc127.for.body120_crit_edge

for.inc127.for.body120_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body120

for.inc127.cleanup_crit_edge:                     ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc127.cleanup_crit_edge, %for.cond115.preheader.cleanup_crit_edge, %msg_unlock.cleanup_crit_edge, %for.inc75.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.cond32.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %msg_unlock.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ], [ %ret.3222.ph, %for.cond115.preheader.cleanup_crit_edge ], [ 0, %for.cond32.preheader.cleanup_crit_edge ], [ %ret.3222.ph, %for.inc127.cleanup_crit_edge ], [ 0, %for.inc75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdw_prep_deprep_ports(ptr noundef readonly %m_rt, i1 noundef zeroext %prep) unnamed_addr #0 align 64 {
entry:
  %prep_ch.i = alloca %struct.sdw_prepare_ch, align 4
  %prep_ch.i166.i = alloca %struct.sdw_prepare_ch, align 4
  %prep_ch.i.i = alloca %struct.sdw_prepare_ch, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_rt_list = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 4
  %0 = ptrtoint ptr %slave_rt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn117 = load ptr, ptr %slave_rt_list, align 4
  %cmp.not119 = icmp eq ptr %.pn117, %slave_rt_list
  br i1 %cmp.not119, label %entry.for.end23_crit_edge, label %for.body.lr.ph

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body.lr.ph:                                   ; preds = %entry
  %prep_ch.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %prep_ch.i.i, i32 0, i32 1
  %prep_ch.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %prep_ch.i.i, i32 0, i32 2
  %prep_ch.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %prep_ch.i.i, i32 0, i32 3
  %prep_ch.coerce.fca.1.gep.i167.i = getelementptr inbounds [4 x i32], ptr %prep_ch.i166.i, i32 0, i32 1
  %prep_ch.coerce.fca.2.gep.i168.i = getelementptr inbounds [4 x i32], ptr %prep_ch.i166.i, i32 0, i32 2
  %prep_ch.coerce.fca.3.gep.i169.i = getelementptr inbounds [4 x i32], ptr %prep_ch.i166.i, i32 0, i32 3
  %prep.not = xor i1 %prep, true
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond6.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0120, %for.body.for.cond.loopexit_crit_edge ], [ %retval.0.i159, %for.cond6.for.cond.loopexit_crit_edge ]
  %1 = ptrtoint ptr %.pn121 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn121, align 4
  %cmp.not = icmp eq ptr %.pn, %slave_rt_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end23_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.loopexit.for.end23_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn121 = phi ptr [ %.pn117, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %ret.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %s_rt.0122 = getelementptr i8, ptr %.pn121, i32 -12
  %port_list = getelementptr i8, ptr %.pn121, i32 8
  %2 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn69114 = load ptr, ptr %port_list, align 4
  %cmp8.not115 = icmp eq ptr %.pn69114, %port_list
  br i1 %cmp8.not115, label %for.body.for.cond.loopexit_crit_edge, label %for.body10.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.body10.lr.ph:                                 ; preds = %for.body
  %direction.i = getelementptr i8, ptr %.pn121, i32 -8
  br label %for.body10

for.cond6:                                        ; preds = %sdw_prep_deprep_slave_ports.exit.for.cond6_crit_edge, %sdw_do_port_prep.exit178.i.for.cond6_crit_edge
  %retval.0.i159 = phi i32 [ %call83.i, %sdw_prep_deprep_slave_ports.exit.for.cond6_crit_edge ], [ %ret.2.i, %sdw_do_port_prep.exit178.i.for.cond6_crit_edge ]
  %3 = ptrtoint ptr %.pn69116 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn69 = load ptr, ptr %.pn69116, align 4
  %cmp8.not = icmp eq ptr %.pn69, %port_list
  br i1 %cmp8.not, label %for.cond6.for.cond.loopexit_crit_edge, label %for.cond6.for.body10_crit_edge

for.cond6.for.body10_crit_edge:                   ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10

for.cond6.for.cond.loopexit_crit_edge:            ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.body10:                                       ; preds = %for.cond6.for.body10_crit_edge, %for.body10.lr.ph
  %.pn69116 = phi ptr [ %.pn69114, %for.body10.lr.ph ], [ %.pn69, %for.cond6.for.body10_crit_edge ]
  %p_rt.0 = getelementptr i8, ptr %.pn69116, i32 -64
  %4 = ptrtoint ptr %m_rt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rt, align 4
  %6 = ptrtoint ptr %p_rt.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_rt.0, align 4
  %ch_mask.i = getelementptr i8, ptr %.pn69116, i32 -60
  %8 = ptrtoint ptr %ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_mask.i, align 4
  %10 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_rt.0122, align 4
  %12 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i159.i = icmp eq i32 %13, 1
  br i1 %cmp.i159.i, label %cond.false.i.i, label %cond.false701.i.i

cond.false.i.i:                                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  %source_ports.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 14
  %14 = ptrtoint ptr %source_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %source_ports.i.i, align 4
  %call.i.i.i = call i32 @__sw_hweight32(i32 noundef %15) #5
  %src_dpn_prop.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 17
  br label %if.end.i162.i

cond.false701.i.i:                                ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  %sink_ports.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 15
  %16 = ptrtoint ptr %sink_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sink_ports.i.i, align 4
  %call.i799.i.i = call i32 @__sw_hweight32(i32 noundef %17) #5
  %sink_dpn_prop.i.i = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 5, i32 18
  br label %if.end.i162.i

if.end.i162.i:                                    ; preds = %cond.false701.i.i, %cond.false.i.i
  %dpn_prop.0.in.i.i = phi ptr [ %src_dpn_prop.i.i, %cond.false.i.i ], [ %sink_dpn_prop.i.i, %cond.false701.i.i ]
  %num_ports.0.in.i.i = phi i32 [ %call.i.i.i, %cond.false.i.i ], [ %call.i799.i.i, %cond.false701.i.i ]
  %18 = ptrtoint ptr %dpn_prop.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %dpn_prop.0.i.i = load ptr, ptr %dpn_prop.0.in.i.i, align 4
  %conv709.i.i = and i32 %num_ports.0.in.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv709.i.i)
  %cmp710800.not.i.i = icmp eq i32 %conv709.i.i, 0
  br i1 %cmp710800.not.i.i, label %if.end.i162.i.do.end.i_crit_edge, label %if.end.i162.i.for.body.i.i_crit_edge

if.end.i162.i.for.body.i.i_crit_edge:             ; preds = %if.end.i162.i
  br label %for.body.i.i

if.end.i162.i.do.end.i_crit_edge:                 ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0801.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv709.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond.i.i.do.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i162.i.for.body.i.i_crit_edge
  %i.0801.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i162.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i, i32 %i.0801.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %7)
  %cmp712.i.i = icmp eq i32 %20, %7
  br i1 %cmp712.i.i, label %sdw_get_slave_dpn_prop.exit.i, label %for.cond.i.i

sdw_get_slave_dpn_prop.exit.i:                    ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %sdw_get_slave_dpn_prop.exit.i.do.end.i_crit_edge, label %if.end.i

sdw_get_slave_dpn_prop.exit.i.do.end.i_crit_edge: ; preds = %sdw_get_slave_dpn_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %sdw_get_slave_dpn_prop.exit.i.do.end.i_crit_edge, %for.cond.i.i.do.end.i_crit_edge, %if.end.i162.i.do.end.i_crit_edge
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.128, i32 noundef %7) #8
  br label %cleanup

if.end.i:                                         ; preds = %sdw_get_slave_dpn_prop.exit.i
  %next_bank.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %next_bank.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_bank.i, align 4
  %imp_def_interrupts.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i, i32 %i.0801.i.i, i32 9
  %25 = ptrtoint ptr %imp_def_interrupts.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %imp_def_interrupts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not.i = icmp eq i32 %26, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %simple_ch_prep_sm.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i, i32 %i.0801.i.i, i32 7
  %27 = ptrtoint ptr %simple_ch_prep_sm.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %simple_ch_prep_sm.i, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not.i = icmp eq i8 %28, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.end12.i_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.if.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %s_data_mode.i = getelementptr inbounds %struct.sdw_bus, ptr %5, i32 0, i32 11, i32 7
  %29 = ptrtoint ptr %s_data_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_data_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  %brmerge = or i1 %cmp.not.i, %prep.not
  %31 = and i1 %cmp.not.i, %prep
  %.mux185.i.mux = select i1 %31, i32 33554431, i32 16777215
  br i1 %brmerge, label %lor.lhs.false9.i.if.end24.i_crit_edge, label %lor.lhs.false9.i.if.then15.i_crit_edge

lor.lhs.false9.i.if.then15.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

lor.lhs.false9.i.if.end24.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.end12.i:                                       ; preds = %lor.lhs.false.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  br i1 %prep, label %if.end12.i.if.then15.i_crit_edge, label %if.end12.i.if.end24.i_crit_edge

if.end12.i.if.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.end12.i.if.then15.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i.if.then15.i_crit_edge, %lor.lhs.false9.i.if.then15.i_crit_edge
  %32 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_rt.0122, align 4
  %34 = ptrtoint ptr %p_rt.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_rt.0, align 4
  %call20.i = call i32 @sdw_configure_dpn_intr(ptr noundef %33, i32 noundef %35, i1 noundef zeroext true, i32 noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then15.i.cleanup_crit_edge, label %if.then15.i.if.end24.i_crit_edge

if.then15.i.if.end24.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.i:                                       ; preds = %if.then15.i.if.end24.i_crit_edge, %if.end12.i.if.end24.i_crit_edge, %lor.lhs.false9.i.if.end24.i_crit_edge
  %intr.0.off0.not186.i = phi i1 [ false, %if.then15.i.if.end24.i_crit_edge ], [ false, %if.end12.i.if.end24.i_crit_edge ], [ %cmp.not.i, %lor.lhs.false9.i.if.end24.i_crit_edge ]
  %prep_ch.sroa.13.sroa.0.0.insert.shift.i = phi i32 [ 33554431, %if.then15.i.if.end24.i_crit_edge ], [ 16777215, %if.end12.i.if.end24.i_crit_edge ], [ %.mux185.i.mux, %lor.lhs.false9.i.if.end24.i_crit_edge ]
  %ret.0.i = phi i32 [ %call20.i, %if.then15.i.if.end24.i_crit_edge ], [ 0, %if.end12.i.if.end24.i_crit_edge ], [ 0, %lor.lhs.false9.i.if.end24.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prep_ch.i.i) #5
  %36 = ptrtoint ptr %prep_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %7, ptr %prep_ch.i.i, align 4
  %37 = ptrtoint ptr %prep_ch.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %9, ptr %prep_ch.coerce.fca.1.gep.i.i, align 4
  %38 = ptrtoint ptr %prep_ch.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %prep_ch.sroa.13.sroa.0.0.insert.shift.i, ptr %prep_ch.coerce.fca.2.gep.i.i, align 4
  %39 = ptrtoint ptr %prep_ch.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %24, ptr %prep_ch.coerce.fca.3.gep.i.i, align 4
  %40 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_rt.0122, align 4
  %ops1.i.i = getelementptr inbounds %struct.sdw_slave, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops1.i.i, align 8
  %port_prep.i.i = getelementptr inbounds %struct.sdw_slave_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %port_prep.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_prep.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end24.i.sdw_do_port_prep.exit.i_crit_edge, label %if.then.i165.i

if.end24.i.sdw_do_port_prep.exit.i_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_do_port_prep.exit.i

if.then.i165.i:                                   ; preds = %if.end24.i
  %call.i.i = call i32 %45(ptr noundef %41, ptr noundef nonnull %prep_ch.i.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i164.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i164.i, label %do.end.i.i, label %if.then.i165.i.sdw_do_port_prep.exit.i_crit_edge

if.then.i165.i.sdw_do_port_prep.exit.i_crit_edge: ; preds = %if.then.i165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_do_port_prep.exit.i

do.end.i.i:                                       ; preds = %if.then.i165.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_rt.0122, align 4
  %dev.i.i = getelementptr inbounds %struct.sdw_slave, ptr %47, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.136, i32 noundef 0, i32 noundef %call.i.i) #8
  br label %sdw_do_port_prep.exit.i

sdw_do_port_prep.exit.i:                          ; preds = %do.end.i.i, %if.then.i165.i.sdw_do_port_prep.exit.i_crit_edge, %if.end24.i.sdw_do_port_prep.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prep_ch.i.i) #5
  %simple_ch_prep_sm26.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i, i32 %i.0801.i.i, i32 7
  %48 = ptrtoint ptr %simple_ch_prep_sm26.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %simple_ch_prep_sm26.i, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool27.not.i = icmp eq i8 %49, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %sdw_do_port_prep.exit.i.if.end72.i_crit_edge

sdw_do_port_prep.exit.i.if.end72.i_crit_edge:     ; preds = %sdw_do_port_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.i

if.then28.i:                                      ; preds = %sdw_do_port_prep.exit.i
  %50 = ptrtoint ptr %p_rt.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p_rt.0, align 4
  %mul.i = shl i32 %51, 8
  %add.i = or i32 %mul.i, 5
  %52 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_rt.0122, align 4
  br i1 %prep, label %if.then31.i, label %if.then28.i.if.end37.i_crit_edge

if.then28.i.if.end37.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ch_mask.i, align 4
  %conv.i = trunc i32 %55 to i8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then31.i, %if.then28.i.if.end37.i_crit_edge
  %.sink.i = phi i8 [ %conv.i, %if.then31.i ], [ 0, %if.then28.i.if.end37.i_crit_edge ]
  %call36.i = call i32 @sdw_write(ptr noundef %53, i32 noundef %add.i, i8 noundef zeroext %.sink.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp38.i = icmp slt i32 %call36.i, 0
  %56 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_rt.0122, align 4
  br i1 %cmp38.i, label %do.end43.i, label %if.end46.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev45.i = getelementptr inbounds %struct.sdw_slave, ptr %57, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i, ptr noundef nonnull @.str.131) #8
  br label %cleanup

if.end46.i:                                       ; preds = %if.end37.i
  %arrayidx.i = getelementptr %struct.sdw_slave, ptr %57, i32 0, i32 8, i32 %7
  %ch_prep_timeout.i = getelementptr %struct.sdw_dpn_prop, ptr %dpn_prop.0.i.i, i32 %i.0801.i.i, i32 8
  %58 = ptrtoint ptr %ch_prep_timeout.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ch_prep_timeout.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %59) #5
  %call51.i = call i32 @wait_for_completion_timeout(ptr noundef %arrayidx.i, i32 noundef %call2.i.i) #5
  %60 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_rt.0122, align 4
  %62 = ptrtoint ptr %p_rt.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p_rt.0, align 4
  %mul54.i = shl i32 %63, 8
  %add55.i = or i32 %mul54.i, 4
  %call56.i = call i32 @sdw_read(ptr noundef %61, i32 noundef %add55.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.end46.i.if.then62.i_crit_edge, label %lor.lhs.false59.i

if.end46.i.if.then62.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62.i

lor.lhs.false59.i:                                ; preds = %if.end46.i
  %64 = ptrtoint ptr %ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ch_mask.i, align 4
  %and.i = and i32 %65, %call56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool61.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool61.not.i, label %lor.lhs.false59.i.if.end72.i_crit_edge, label %lor.lhs.false59.i.if.then62.i_crit_edge

lor.lhs.false59.i.if.then62.i_crit_edge:          ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62.i

lor.lhs.false59.i.if.end72.i_crit_edge:           ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.i

if.then62.i:                                      ; preds = %lor.lhs.false59.i.if.then62.i_crit_edge, %if.end46.i.if.then62.i_crit_edge
  %spec.select.i = phi i32 [ -110, %lor.lhs.false59.i.if.then62.i_crit_edge ], [ %call56.i, %if.end46.i.if.then62.i_crit_edge ]
  %66 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_rt.0122, align 4
  %dev69.i = getelementptr inbounds %struct.sdw_slave, ptr %67, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69.i, ptr noundef nonnull @.str.134, i32 noundef %7, i32 noundef %spec.select.i) #8
  br label %cleanup

if.end72.i:                                       ; preds = %lor.lhs.false59.i.if.end72.i_crit_edge, %sdw_do_port_prep.exit.i.if.end72.i_crit_edge
  %ret.2.i = phi i32 [ %ret.0.i, %sdw_do_port_prep.exit.i.if.end72.i_crit_edge ], [ %call36.i, %lor.lhs.false59.i.if.end72.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prep_ch.i166.i) #5
  %68 = ptrtoint ptr %prep_ch.i166.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %7, ptr %prep_ch.i166.i, align 4
  %69 = ptrtoint ptr %prep_ch.coerce.fca.1.gep.i167.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %9, ptr %prep_ch.coerce.fca.1.gep.i167.i, align 4
  %70 = ptrtoint ptr %prep_ch.coerce.fca.2.gep.i168.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %prep_ch.sroa.13.sroa.0.0.insert.shift.i, ptr %prep_ch.coerce.fca.2.gep.i168.i, align 4
  %71 = ptrtoint ptr %prep_ch.coerce.fca.3.gep.i169.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %24, ptr %prep_ch.coerce.fca.3.gep.i169.i, align 4
  %72 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_rt.0122, align 4
  %ops1.i170.i = getelementptr inbounds %struct.sdw_slave, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops1.i170.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops1.i170.i, align 8
  %port_prep.i171.i = getelementptr inbounds %struct.sdw_slave_ops, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %port_prep.i171.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %port_prep.i171.i, align 4
  %tobool.not.i172.i = icmp eq ptr %77, null
  br i1 %tobool.not.i172.i, label %if.end72.i.sdw_do_port_prep.exit178.i_crit_edge, label %if.then.i175.i

if.end72.i.sdw_do_port_prep.exit178.i_crit_edge:  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_do_port_prep.exit178.i

if.then.i175.i:                                   ; preds = %if.end72.i
  %call.i173.i = call i32 %77(ptr noundef %73, ptr noundef nonnull %prep_ch.i166.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173.i)
  %cmp.i174.i = icmp slt i32 %call.i173.i, 0
  br i1 %cmp.i174.i, label %do.end.i177.i, label %if.then.i175.i.sdw_do_port_prep.exit178.i_crit_edge

if.then.i175.i.sdw_do_port_prep.exit178.i_crit_edge: ; preds = %if.then.i175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_do_port_prep.exit178.i

do.end.i177.i:                                    ; preds = %if.then.i175.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_rt.0122, align 4
  %dev.i176.i = getelementptr inbounds %struct.sdw_slave, ptr %79, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i176.i, ptr noundef nonnull @.str.136, i32 noundef 2, i32 noundef %call.i173.i) #8
  br label %sdw_do_port_prep.exit178.i

sdw_do_port_prep.exit178.i:                       ; preds = %do.end.i177.i, %if.then.i175.i.sdw_do_port_prep.exit178.i_crit_edge, %if.end72.i.sdw_do_port_prep.exit178.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prep_ch.i166.i) #5
  %brmerge158.i = or i1 %intr.0.off0.not186.i, %prep
  br i1 %brmerge158.i, label %sdw_do_port_prep.exit178.i.for.cond6_crit_edge, label %sdw_prep_deprep_slave_ports.exit

sdw_do_port_prep.exit178.i.for.cond6_crit_edge:   ; preds = %sdw_do_port_prep.exit178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6

sdw_prep_deprep_slave_ports.exit:                 ; preds = %sdw_do_port_prep.exit178.i
  %80 = ptrtoint ptr %s_rt.0122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_rt.0122, align 4
  %82 = ptrtoint ptr %p_rt.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %p_rt.0, align 4
  %84 = ptrtoint ptr %imp_def_interrupts.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %imp_def_interrupts.i, align 4
  %call83.i = call i32 @sdw_configure_dpn_intr(ptr noundef %81, i32 noundef %83, i1 noundef zeroext false, i32 noundef %85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp11 = icmp slt i32 %call83.i, 0
  br i1 %cmp11, label %sdw_prep_deprep_slave_ports.exit.cleanup_crit_edge, label %sdw_prep_deprep_slave_ports.exit.for.cond6_crit_edge

sdw_prep_deprep_slave_ports.exit.for.cond6_crit_edge: ; preds = %sdw_prep_deprep_slave_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6

sdw_prep_deprep_slave_ports.exit.cleanup_crit_edge: ; preds = %sdw_prep_deprep_slave_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end23:                                        ; preds = %for.cond.loopexit.for.end23_crit_edge, %entry.for.end23_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end23_crit_edge ], [ %ret.1.lcssa, %for.cond.loopexit.for.end23_crit_edge ]
  %port_list25 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 5
  %86 = ptrtoint ptr %port_list25 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn68124 = load ptr, ptr %port_list25, align 4
  %cmp32.not125 = icmp eq ptr %.pn68124, %port_list25
  br i1 %cmp32.not125, label %for.end23.cleanup_crit_edge, label %for.body34.lr.ph

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body34.lr.ph:                                 ; preds = %for.end23
  %frombool.i = zext i1 %prep to i8
  %87 = getelementptr inbounds i8, ptr %prep_ch.i, i32 8
  %ch_mask3.i = getelementptr inbounds %struct.sdw_prepare_ch, ptr %prep_ch.i, i32 0, i32 1
  %bank.i = getelementptr inbounds %struct.sdw_prepare_ch, ptr %prep_ch.i, i32 0, i32 3
  br label %for.body34

for.body34:                                       ; preds = %sdw_prep_deprep_master_ports.exit.for.body34_crit_edge, %for.body34.lr.ph
  %.pn68126 = phi ptr [ %.pn68124, %for.body34.lr.ph ], [ %.pn68, %sdw_prep_deprep_master_ports.exit.for.body34_crit_edge ]
  %p_rt.1 = getelementptr i8, ptr %.pn68126, i32 -64
  %88 = ptrtoint ptr %m_rt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %m_rt, align 4
  %port_ops.i = getelementptr inbounds %struct.sdw_bus, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %port_ops.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prep_ch.i) #5
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %87, align 4
  %93 = ptrtoint ptr %p_rt.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %p_rt.1, align 4
  %95 = ptrtoint ptr %prep_ch.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %prep_ch.i, align 4
  %ch_mask.i70 = getelementptr i8, ptr %.pn68126, i32 -60
  %96 = ptrtoint ptr %ch_mask.i70 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ch_mask.i70, align 4
  %98 = ptrtoint ptr %ch_mask3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %ch_mask3.i, align 4
  store i8 %frombool.i, ptr %87, align 4
  %next_bank.i71 = getelementptr inbounds %struct.sdw_bus, ptr %89, i32 0, i32 11, i32 1
  %99 = ptrtoint ptr %next_bank.i71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %next_bank.i71, align 4
  %101 = ptrtoint ptr %bank.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %bank.i, align 4
  %dpn_port_prep.i = getelementptr inbounds %struct.sdw_master_port_ops, ptr %91, i32 0, i32 2
  %102 = ptrtoint ptr %dpn_port_prep.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dpn_port_prep.i, align 4
  %tobool5.not.i = icmp eq ptr %103, null
  br i1 %tobool5.not.i, label %for.body34.sdw_prep_deprep_master_ports.exit_crit_edge, label %if.then.i

for.body34.sdw_prep_deprep_master_ports.exit_crit_edge: ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_prep_deprep_master_ports.exit

if.then.i:                                        ; preds = %for.body34
  %call.i = call i32 %103(ptr noundef %89, ptr noundef nonnull %prep_ch.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sdw_prep_deprep_master_ports.exit.thread, label %if.then.i.sdw_prep_deprep_master_ports.exit_crit_edge

if.then.i.sdw_prep_deprep_master_ports.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdw_prep_deprep_master_ports.exit

sdw_prep_deprep_master_ports.exit.thread:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %89, align 8
  %port_num.i = getelementptr i8, ptr %.pn68126, i32 -52
  %106 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port_num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.138, i32 noundef %107) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prep_ch.i) #5
  br label %cleanup

sdw_prep_deprep_master_ports.exit:                ; preds = %if.then.i.sdw_prep_deprep_master_ports.exit_crit_edge, %for.body34.sdw_prep_deprep_master_ports.exit_crit_edge
  %retval.0.i73 = phi i32 [ %call.i, %if.then.i.sdw_prep_deprep_master_ports.exit_crit_edge ], [ 0, %for.body34.sdw_prep_deprep_master_ports.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prep_ch.i) #5
  %108 = ptrtoint ptr %.pn68126 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn68 = load ptr, ptr %.pn68126, align 4
  %cmp32.not = icmp eq ptr %.pn68, %port_list25
  br i1 %cmp32.not, label %sdw_prep_deprep_master_ports.exit.cleanup_crit_edge, label %sdw_prep_deprep_master_ports.exit.for.body34_crit_edge

sdw_prep_deprep_master_ports.exit.for.body34_crit_edge: ; preds = %sdw_prep_deprep_master_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

sdw_prep_deprep_master_ports.exit.cleanup_crit_edge: ; preds = %sdw_prep_deprep_master_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sdw_prep_deprep_master_ports.exit.cleanup_crit_edge, %sdw_prep_deprep_master_ports.exit.thread, %for.end23.cleanup_crit_edge, %sdw_prep_deprep_slave_ports.exit.cleanup_crit_edge, %if.then62.i, %do.end43.i, %if.then15.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call.i, %sdw_prep_deprep_master_ports.exit.thread ], [ -22, %do.end.i ], [ %spec.select.i, %if.then62.i ], [ %call36.i, %do.end43.i ], [ %ret.0.lcssa, %for.end23.cleanup_crit_edge ], [ %retval.0.i73, %sdw_prep_deprep_master_ports.exit.cleanup_crit_edge ], [ %call20.i, %if.then15.i.cleanup_crit_edge ], [ %call83.i, %sdw_prep_deprep_slave_ports.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdw_enable_disable_ports(ptr noundef readonly %m_rt, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %enable_ch.i = alloca %struct.sdw_enable_ch, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_rt_list = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 4
  %0 = ptrtoint ptr %slave_rt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn80 = load ptr, ptr %slave_rt_list, align 4
  %cmp.not82 = icmp eq ptr %.pn80, %slave_rt_list
  br i1 %cmp.not82, label %entry.for.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.cond.loopexit:                                ; preds = %for.cond6
  %1 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn83, align 4
  %cmp.not = icmp eq ptr %.pn, %slave_rt_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end23_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.loopexit.for.end23_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn80, %entry.for.body_crit_edge ]
  %s_rt.084 = getelementptr i8, ptr %.pn83, i32 -12
  %port_list = getelementptr i8, ptr %.pn83, i32 8
  br label %for.cond6

for.cond6:                                        ; preds = %if.end9.i.for.cond6_crit_edge, %for.body
  %.pn68.in = phi ptr [ %port_list, %for.body ], [ %.pn68, %if.end9.i.for.cond6_crit_edge ]
  %2 = ptrtoint ptr %.pn68.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn68 = load ptr, ptr %.pn68.in, align 4
  %cmp8.not = icmp eq ptr %.pn68, %port_list
  br i1 %cmp8.not, label %for.cond.loopexit, label %for.body10

for.body10:                                       ; preds = %for.cond6
  %s_port.0 = getelementptr i8, ptr %.pn68, i32 -64
  %3 = ptrtoint ptr %m_rt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_rt, align 4
  %next_bank.i = getelementptr inbounds %struct.sdw_bus, ptr %4, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %next_bank.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_bank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %s_port.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_port.0, align 4
  %mul2.i = shl i32 %8, 8
  %..i = select i1 %tobool.not.i, i32 32, i32 48
  %add3.i = or i32 %mul2.i, %..i
  %9 = ptrtoint ptr %s_rt.084 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_rt.084, align 4
  br i1 %en, label %if.then5.i, label %for.body10.if.end9.i_crit_edge

for.body10.if.end9.i_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then5.i:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  %ch_mask.i = getelementptr i8, ptr %.pn68, i32 -60
  %11 = ptrtoint ptr %ch_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_mask.i, align 4
  %conv.i = trunc i32 %12 to i8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %for.body10.if.end9.i_crit_edge
  %.sink.i = phi i8 [ %conv.i, %if.then5.i ], [ 0, %for.body10.if.end9.i_crit_edge ]
  %call8.i = tail call i32 @sdw_write(ptr noundef %10, i32 noundef %add3.i, i8 noundef zeroext %.sink.i) #5
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %sdw_enable_disable_slave_ports.exit.thread, label %if.end9.i.for.cond6_crit_edge

if.end9.i.for.cond6_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6

sdw_enable_disable_slave_ports.exit.thread:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %s_rt.084 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_rt.084, align 4
  %dev.i = getelementptr inbounds %struct.sdw_slave, ptr %14, i32 0, i32 1
  %port_num.i = getelementptr i8, ptr %.pn68, i32 -52
  %15 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_num.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.102, i32 noundef %call8.i, i32 noundef %16) #8
  br label %cleanup

for.end23:                                        ; preds = %for.cond.loopexit.for.end23_crit_edge, %entry.for.end23_crit_edge
  %port_list25 = getelementptr inbounds %struct.sdw_master_runtime, ptr %m_rt, i32 0, i32 5
  %17 = ptrtoint ptr %port_list25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn6785 = load ptr, ptr %port_list25, align 4
  %cmp32.not86 = icmp eq ptr %.pn6785, %port_list25
  br i1 %cmp32.not86, label %for.end23.cleanup_crit_edge, label %for.body34.lr.ph

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body34.lr.ph:                                 ; preds = %for.end23
  %frombool.i = zext i1 %en to i8
  %18 = getelementptr inbounds i8, ptr %enable_ch.i, i32 8
  %ch_mask2.i = getelementptr inbounds %struct.sdw_enable_ch, ptr %enable_ch.i, i32 0, i32 1
  br label %for.body34

for.body34:                                       ; preds = %sdw_enable_disable_master_ports.exit.for.body34_crit_edge, %for.body34.lr.ph
  %.pn6787 = phi ptr [ %.pn6785, %for.body34.lr.ph ], [ %.pn67, %sdw_enable_disable_master_ports.exit.for.body34_crit_edge ]
  %m_port.0 = getelementptr i8, ptr %.pn6787, i32 -64
  %19 = ptrtoint ptr %m_rt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_rt, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %enable_ch.i) #5
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %18, align 4
  %22 = ptrtoint ptr %m_port.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_port.0, align 4
  %24 = ptrtoint ptr %enable_ch.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %enable_ch.i, align 4
  %ch_mask.i69 = getelementptr i8, ptr %.pn6787, i32 -60
  %25 = ptrtoint ptr %ch_mask.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch_mask.i69, align 4
  %27 = ptrtoint ptr %ch_mask2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ch_mask2.i, align 4
  store i8 %frombool.i, ptr %18, align 4
  %port_ops.i = getelementptr inbounds %struct.sdw_bus, ptr %20, i32 0, i32 10
  %28 = ptrtoint ptr %port_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_ops.i, align 4
  %dpn_port_enable_ch.i = getelementptr inbounds %struct.sdw_master_port_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dpn_port_enable_ch.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dpn_port_enable_ch.i, align 4
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %do.end11.i, label %if.then.i

if.then.i:                                        ; preds = %for.body34
  %next_bank.i70 = getelementptr inbounds %struct.sdw_bus, ptr %20, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %next_bank.i70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %next_bank.i70, align 4
  %call.i = call i32 %31(ptr noundef %20, ptr noundef nonnull %enable_ch.i, i32 noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i71 = icmp slt i32 %call.i, 0
  br i1 %cmp.i71, label %do.end.i72, label %sdw_enable_disable_master_ports.exit

do.end.i72:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %20, align 8
  %port_num8.i = getelementptr i8, ptr %.pn6787, i32 -52
  %36 = ptrtoint ptr %port_num8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_num8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.104, i32 noundef %call.i, i32 noundef %37) #8
  br label %sdw_enable_disable_master_ports.exit.thread

do.end11.i:                                       ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %20, align 8
  %cond.i = select i1 %en, ptr @.str.109, ptr @.str.110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.107, ptr noundef nonnull %cond.i) #8
  br label %sdw_enable_disable_master_ports.exit.thread

sdw_enable_disable_master_ports.exit.thread:      ; preds = %do.end11.i, %do.end.i72
  %retval.0.i.ph = phi i32 [ -22, %do.end11.i ], [ %call.i, %do.end.i72 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %enable_ch.i) #5
  br label %cleanup

sdw_enable_disable_master_ports.exit:             ; preds = %if.then.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %enable_ch.i) #5
  %40 = ptrtoint ptr %.pn6787 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn67 = load ptr, ptr %.pn6787, align 4
  %cmp32.not = icmp eq ptr %.pn67, %port_list25
  br i1 %cmp32.not, label %sdw_enable_disable_master_ports.exit.cleanup_crit_edge, label %sdw_enable_disable_master_ports.exit.for.body34_crit_edge

sdw_enable_disable_master_ports.exit.for.body34_crit_edge: ; preds = %sdw_enable_disable_master_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

sdw_enable_disable_master_ports.exit.cleanup_crit_edge: ; preds = %sdw_enable_disable_master_ports.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sdw_enable_disable_master_ports.exit.cleanup_crit_edge, %sdw_enable_disable_master_ports.exit.thread, %for.end23.cleanup_crit_edge, %sdw_enable_disable_slave_ports.exit.thread
  %retval.0 = phi i32 [ %call8.i, %sdw_enable_disable_slave_ports.exit.thread ], [ %retval.0.i.ph, %sdw_enable_disable_master_ports.exit.thread ], [ 0, %for.end23.cleanup_crit_edge ], [ 0, %sdw_enable_disable_master_ports.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_update(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_fill_msg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_transfer_defer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_transfer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_configure_dpn_intr(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !86, !87, !88, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !296, !297, !299, !300, !301, !302, !304, !305, !307, !308, !309, !311, !312, !314, !315, !316, !317, !319, !320, !322, !323, !325, !326, !327}
!llvm.module.flags = !{!328, !329, !330, !331, !332, !333, !334, !335}
!llvm.ident = !{!336}

!0 = !{ptr @sdw_rows, !1, !"sdw_rows", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/stream.c", i32 25, i32 5}
!2 = !{ptr @__ksymtab_sdw_rows, !3, !"__ksymtab_sdw_rows", i1 false, i1 false}
!3 = !{!"../drivers/soundwire/stream.c", i32 28, i32 1}
!4 = !{ptr @sdw_cols, !5, !"sdw_cols", i1 false, i1 false}
!5 = !{!"../drivers/soundwire/stream.c", i32 30, i32 5}
!6 = !{ptr @__ksymtab_sdw_cols, !7, !"__ksymtab_sdw_cols", i1 false, i1 false}
!7 = !{!"../drivers/soundwire/stream.c", i32 31, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soundwire/stream.c", i32 42, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sdw_find_col_index._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @sdw_find_col_index._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_sdw_find_col_index, !15, !"__ksymtab_sdw_find_col_index", i1 false, i1 false}
!15 = !{!"../drivers/soundwire/stream.c", i32 45, i32 1}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soundwire/stream.c", i32 56, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sdw_find_row_index._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @sdw_find_row_index._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_sdw_find_row_index, !22, !"__ksymtab_sdw_find_row_index", i1 false, i1 false}
!22 = !{!"../drivers/soundwire/stream.c", i32 59, i32 1}
!23 = !{ptr @__ksymtab_sdw_release_stream, !24, !"__ksymtab_sdw_release_stream", i1 false, i1 false}
!24 = !{!"../drivers/soundwire/stream.c", i32 879, i32 1}
!25 = !{ptr @__ksymtab_sdw_alloc_stream, !26, !"__ksymtab_sdw_alloc_stream", i1 false, i1 false}
!26 = !{!"../drivers/soundwire/stream.c", i32 905, i32 1}
!27 = !{ptr @__ksymtab_sdw_stream_remove_master, !28, !"__ksymtab_sdw_stream_remove_master", i1 false, i1 false}
!28 = !{!"../drivers/soundwire/stream.c", i32 1112, i32 1}
!29 = !{ptr @__ksymtab_sdw_stream_remove_slave, !30, !"__ksymtab_sdw_stream_remove_slave", i1 false, i1 false}
!30 = !{!"../drivers/soundwire/stream.c", i32 1134, i32 1}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soundwire/stream.c", i32 1297, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sdw_stream_add_master._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @sdw_stream_add_master._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soundwire/stream.c", i32 1305, i32 3}
!40 = !{ptr @sdw_stream_add_master._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sdw_stream_add_master._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_sdw_stream_add_master, !43, !"__ksymtab_sdw_stream_add_master", i1 false, i1 false}
!43 = !{!"../drivers/soundwire/stream.c", i32 1330, i32 1}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soundwire/stream.c", i32 1363, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sdw_stream_add_slave._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sdw_stream_add_slave._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soundwire/stream.c", i32 1372, i32 3}
!51 = !{ptr @sdw_stream_add_slave._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sdw_stream_add_slave._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__ksymtab_sdw_stream_add_slave, !54, !"__ksymtab_sdw_stream_add_slave", i1 false, i1 false}
!54 = !{!"../drivers/soundwire/stream.c", i32 1416, i32 1}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soundwire/stream.c", i32 1586, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sdw_prepare_stream._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sdw_prepare_stream._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soundwire/stream.c", i32 1600, i32 3}
!62 = !{ptr @sdw_prepare_stream._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sdw_prepare_stream._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @__ksymtab_sdw_prepare_stream, !65, !"__ksymtab_sdw_prepare_stream", i1 false, i1 false}
!65 = !{!"../drivers/soundwire/stream.c", i32 1621, i32 1}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soundwire/stream.c", i32 1676, i32 3}
!68 = !{ptr @sdw_enable_stream._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sdw_enable_stream._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @sdw_enable_stream._entry.23, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/soundwire/stream.c", i32 1684, i32 3}
!72 = !{ptr @sdw_enable_stream._entry_ptr.24, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__ksymtab_sdw_enable_stream, !74, !"__ksymtab_sdw_enable_stream", i1 false, i1 false}
!74 = !{!"../drivers/soundwire/stream.c", i32 1696, i32 1}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soundwire/stream.c", i32 1759, i32 3}
!77 = !{ptr @sdw_disable_stream._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sdw_disable_stream._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @sdw_disable_stream._entry.26, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/soundwire/stream.c", i32 1766, i32 3}
!81 = !{ptr @sdw_disable_stream._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__ksymtab_sdw_disable_stream, !83, !"__ksymtab_sdw_disable_stream", i1 false, i1 false}
!83 = !{!"../drivers/soundwire/stream.c", i32 1778, i32 1}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soundwire/stream.c", i32 1834, i32 3}
!86 = !{ptr @sdw_deprepare_stream._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sdw_deprepare_stream._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @sdw_deprepare_stream._entry.29, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/soundwire/stream.c", i32 1842, i32 3}
!90 = !{ptr @sdw_deprepare_stream._entry_ptr.30, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @__ksymtab_sdw_deprepare_stream, !92, !"__ksymtab_sdw_deprepare_stream", i1 false, i1 false}
!92 = !{!"../drivers/soundwire/stream.c", i32 1854, i32 1}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/soundwire/stream.c", i32 1892, i32 32}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soundwire/stream.c", i32 1894, i32 32}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soundwire/stream.c", i32 1901, i32 3}
!99 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sdw_startup_stream._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @sdw_startup_stream._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @__ksymtab_sdw_startup_stream, !103, !"__ksymtab_sdw_startup_stream", i1 false, i1 false}
!103 = !{!"../drivers/soundwire/stream.c", i32 1918, i32 1}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soundwire/stream.c", i32 1940, i32 3}
!106 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sdw_shutdown_stream._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @sdw_shutdown_stream._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @__ksymtab_sdw_shutdown_stream, !110, !"__ksymtab_sdw_shutdown_stream", i1 false, i1 false}
!110 = !{!"../drivers/soundwire/stream.c", i32 1951, i32 1}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soundwire/stream.c", i32 1161, i32 3}
!113 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @sdw_config_stream._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @sdw_config_stream._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/soundwire/stream.c", i32 1167, i32 3}
!118 = !{ptr @sdw_config_stream._entry.39, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @sdw_config_stream._entry_ptr.41, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/soundwire/stream.c", i32 1186, i32 3}
!122 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @sdw_is_valid_port_range._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @sdw_is_valid_port_range._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/soundwire/stream.c", i32 1510, i32 4}
!127 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @_sdw_prepare_stream._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @_sdw_prepare_stream._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/soundwire/stream.c", i32 1526, i32 5}
!132 = !{ptr @_sdw_prepare_stream._entry.46, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @_sdw_prepare_stream._entry_ptr.48, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/soundwire/stream.c", i32 1536, i32 4}
!136 = !{ptr @_sdw_prepare_stream._entry.49, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @_sdw_prepare_stream._entry_ptr.51, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/soundwire/stream.c", i32 1542, i32 3}
!140 = !{ptr @_sdw_prepare_stream._entry.52, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @_sdw_prepare_stream._entry_ptr.54, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/soundwire/stream.c", i32 1548, i32 3}
!144 = !{ptr @_sdw_prepare_stream._entry.55, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @_sdw_prepare_stream._entry_ptr.57, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/soundwire/stream.c", i32 1558, i32 4}
!148 = !{ptr @_sdw_prepare_stream._entry.58, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @_sdw_prepare_stream._entry_ptr.60, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/soundwire/stream.c", i32 631, i32 4}
!152 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @sdw_program_params._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @sdw_program_params._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/soundwire/stream.c", i32 638, i32 4}
!157 = !{ptr @sdw_program_params._entry.63, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @sdw_program_params._entry_ptr.65, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soundwire/stream.c", i32 649, i32 4}
!161 = !{ptr @sdw_program_params._entry.66, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @sdw_program_params._entry_ptr.68, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soundwire/stream.c", i32 167, i32 3}
!165 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @sdw_program_slave_port_params._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @sdw_program_slave_port_params._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/soundwire/stream.c", i32 177, i32 4}
!170 = !{ptr @sdw_program_slave_port_params._entry.71, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @sdw_program_slave_port_params._entry_ptr.73, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/soundwire/stream.c", i32 188, i32 3}
!174 = !{ptr @sdw_program_slave_port_params._entry.74, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @sdw_program_slave_port_params._entry_ptr.76, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/soundwire/stream.c", i32 197, i32 3}
!178 = !{ptr @sdw_program_slave_port_params._entry.77, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @sdw_program_slave_port_params._entry_ptr.79, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/soundwire/stream.c", i32 207, i32 4}
!182 = !{ptr @sdw_program_slave_port_params._entry.80, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @sdw_program_slave_port_params._entry_ptr.82, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/soundwire/stream.c", i32 218, i32 4}
!186 = !{ptr @sdw_program_slave_port_params._entry.83, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @sdw_program_slave_port_params._entry_ptr.85, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/soundwire/stream.c", i32 229, i32 4}
!190 = !{ptr @sdw_program_slave_port_params._entry.86, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @sdw_program_slave_port_params._entry_ptr.88, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/soundwire/stream.c", i32 85, i32 3}
!194 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @_sdw_program_slave_port_params._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @_sdw_program_slave_port_params._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/soundwire/stream.c", i32 92, i32 3}
!199 = !{ptr @_sdw_program_slave_port_params._entry.91, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @_sdw_program_slave_port_params._entry_ptr.93, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/soundwire/stream.c", i32 109, i32 3}
!203 = !{ptr @_sdw_program_slave_port_params._entry.94, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @_sdw_program_slave_port_params._entry_ptr.96, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/soundwire/stream.c", i32 119, i32 3}
!207 = !{ptr @_sdw_program_slave_port_params._entry.97, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @_sdw_program_slave_port_params._entry_ptr.99, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/soundwire/stream.c", i32 595, i32 5}
!211 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @sdw_notify_config._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @sdw_notify_config._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/soundwire/stream.c", i32 326, i32 3}
!216 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @sdw_enable_disable_slave_ports._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @sdw_enable_disable_slave_ports._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/soundwire/stream.c", i32 352, i32 4}
!221 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @sdw_enable_disable_master_ports._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @sdw_enable_disable_master_ports._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/soundwire/stream.c", i32 358, i32 3}
!226 = !{ptr @sdw_enable_disable_master_ports._entry.106, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @sdw_enable_disable_master_ports._entry_ptr.108, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/soundwire/stream.c", i32 784, i32 5}
!232 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @do_bank_switch._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @do_bank_switch._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @do_bank_switch._entry.113, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/soundwire/stream.c", i32 798, i32 4}
!237 = !{ptr @do_bank_switch._entry_ptr.114, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/soundwire/stream.c", i32 817, i32 5}
!240 = !{ptr @do_bank_switch._entry.115, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @do_bank_switch._entry_ptr.117, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/soundwire/stream.c", i32 823, i32 4}
!244 = !{ptr @do_bank_switch._entry.118, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @do_bank_switch._entry_ptr.120, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/soundwire/stream.c", i32 835, i32 4}
!248 = !{ptr @do_bank_switch._entry.121, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @do_bank_switch._entry_ptr.123, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/soundwire/stream.c", i32 704, i32 3}
!252 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @sdw_bank_switch._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @sdw_bank_switch._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.126, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/soundwire/stream.c", i32 745, i32 3}
!257 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @sdw_ml_sync_bank_switch._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @sdw_ml_sync_bank_switch._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/soundwire/stream.c", i32 439, i32 3}
!262 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @sdw_prep_deprep_slave_ports._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @sdw_prep_deprep_slave_ports._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/soundwire/stream.c", i32 477, i32 4}
!267 = !{ptr @sdw_prep_deprep_slave_ports._entry.130, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @sdw_prep_deprep_slave_ports._entry_ptr.132, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/soundwire/stream.c", i32 490, i32 4}
!271 = !{ptr @sdw_prep_deprep_slave_ports._entry.133, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @sdw_prep_deprep_slave_ports._entry_ptr.135, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/soundwire/stream.c", i32 410, i32 4}
!275 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @sdw_do_port_prep._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @sdw_do_port_prep._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/soundwire/stream.c", i32 526, i32 4}
!280 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @sdw_prep_deprep_master_ports._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @sdw_prep_deprep_master_ports._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.140, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/soundwire/stream.c", i32 1636, i32 4}
!285 = !{ptr @_sdw_enable_stream._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @_sdw_enable_stream._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/soundwire/stream.c", i32 1643, i32 4}
!289 = !{ptr @_sdw_enable_stream._entry.141, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @_sdw_enable_stream._entry_ptr.143, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @_sdw_enable_stream._entry.144, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/soundwire/stream.c", i32 1650, i32 3}
!293 = !{ptr @_sdw_enable_stream._entry_ptr.145, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @_sdw_enable_stream._entry.146, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/soundwire/stream.c", i32 1656, i32 3}
!296 = !{ptr @_sdw_enable_stream._entry_ptr.147, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/soundwire/stream.c", i32 1709, i32 4}
!299 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @_sdw_disable_stream._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @_sdw_disable_stream._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @_sdw_disable_stream._entry.150, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/soundwire/stream.c", i32 1721, i32 4}
!304 = !{ptr @_sdw_disable_stream._entry_ptr.151, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.153, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/soundwire/stream.c", i32 1728, i32 3}
!307 = !{ptr @_sdw_disable_stream._entry.152, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @_sdw_disable_stream._entry_ptr.154, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @_sdw_disable_stream._entry.155, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/soundwire/stream.c", i32 1739, i32 4}
!311 = !{ptr @_sdw_disable_stream._entry_ptr.156, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.157, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/soundwire/stream.c", i32 1791, i32 4}
!314 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @_sdw_deprepare_stream._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @_sdw_deprepare_stream._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @_sdw_deprepare_stream._entry.159, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../drivers/soundwire/stream.c", i32 1804, i32 5}
!319 = !{ptr @_sdw_deprepare_stream._entry_ptr.160, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @_sdw_deprepare_stream._entry.161, !321, !"_entry", i1 false, i1 false}
!321 = !{!"../drivers/soundwire/stream.c", i32 1813, i32 4}
!322 = !{ptr @_sdw_deprepare_stream._entry_ptr.162, !321, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.163, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/soundwire/stream.c", i32 1868, i32 4}
!325 = !{ptr @.str.164, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @set_stream._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @set_stream._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{i32 1, !"wchar_size", i32 2}
!329 = !{i32 1, !"min_enum_size", i32 4}
!330 = !{i32 8, !"branch-target-enforcement", i32 0}
!331 = !{i32 8, !"sign-return-address", i32 0}
!332 = !{i32 8, !"sign-return-address-all", i32 0}
!333 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!334 = !{i32 7, !"uwtable", i32 1}
!335 = !{i32 7, !"frame-pointer", i32 2}
!336 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!337 = !{i8 0, i8 2}
