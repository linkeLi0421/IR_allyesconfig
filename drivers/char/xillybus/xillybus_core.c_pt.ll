; ModuleID = '/llk/IR_all_yes/drivers/char/xillybus/xillybus_core.c_pt.bc'
source_filename = "../drivers/char/xillybus/xillybus_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xillybus_isr\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_isr\09\09\09\09"
module asm "\09.long\09__crc_xillybus_isr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_isr\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xillybus_init_endpoint\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_init_endpoint\09\09\09\09"
module asm "\09.long\09__crc_xillybus_init_endpoint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_init_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_init_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_init_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xillybus_endpoint_discovery\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_endpoint_discovery\09\09\09\09"
module asm "\09.long\09__crc_xillybus_endpoint_discovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_endpoint_discovery:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_endpoint_discovery\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_endpoint_discovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xillybus_endpoint_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_xillybus_endpoint_remove\09\09\09\09"
module asm "\09.long\09__crc_xillybus_endpoint_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xillybus_endpoint_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22xillybus_endpoint_remove\22\09\09\09\09\09"
module asm "__kstrtabns_xillybus_endpoint_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xilly_alloc_state = type { ptr, i32, i32, i32, i32 }
%struct.xilly_endpoint = type { ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.wait_queue_head, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xilly_channel = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, %struct.delayed_work, [4 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xilly_buffer = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.xilly_mapping = type { ptr, i32, i32, i32 }
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

@__UNIQUE_ID_description234 = internal constant [50 x i8] c"xillybus_core.description=Xillybus core functions\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"xillybus_core.author=Eli Billauer, Xillybus Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [34 x i8] c"xillybus_core.alias=xillybus_core\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [55 x i8] c"xillybus_core.file=drivers/char/xillybus/xillybus_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [29 x i8] c"xillybus_core.license=GPL v2\00", section ".modinfo", align 1
@xillybus_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Sending a NACK on counter %x (instead of %x) on entry %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xillybus_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/char/xillybus/xillybus_core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xillybus_isr._entry_ptr = internal global ptr @xillybus_isr._entry, section ".printk_index", align 4
@xillybus_isr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Lost sync with interrupt messages. Stopping.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xillybus_isr._entry_ptr.8 = internal global ptr @xillybus_isr._entry.5, section ".printk_index", align 4
@xillybus_isr._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bad interrupt message. Stopping.\0A\00", [62 x i8] zeroinitializer }, align 32
@xillybus_isr._entry_ptr.11 = internal global ptr @xillybus_isr._entry.9, section ".printk_index", align 4
@xillybus_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xillybus_isr._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 267, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [251 x i8], [37 x i8] } { [251 x i8] c"FPGA reported a fatal error. This means that the low-level communication with the device has failed. This hardware problem is most likely unrelated to Xillybus (neither kernel module nor FPGA core), but reports are still welcome. All I/O is aborted.\0A\00", [37 x i8] zeroinitializer }, align 32
@xillybus_isr._entry_ptr.14 = internal global ptr @xillybus_isr._entry.12, section ".printk_index", align 4
@__kstrtab_xillybus_isr = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_isr = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_isr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_isr to i32), ptr @__kstrtab_xillybus_isr, ptr @__kstrtabns_xillybus_isr }, section "___ksymtab+xillybus_isr", align 4
@xillybus_init_endpoint.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&endpoint->ep_wait\00", [45 x i8] zeroinitializer }, align 32
@xillybus_init_endpoint.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&endpoint->register_mutex\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_xillybus_init_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_init_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_init_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_init_endpoint to i32), ptr @__kstrtab_xillybus_init_endpoint, ptr @__kstrtabns_xillybus_init_endpoint }, section "___ksymtab+xillybus_init_endpoint", align 4
@xillybus_endpoint_discovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1901, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No response from FPGA. Aborting.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xillybus_endpoint_discovery\00", [36 x i8] zeroinitializer }, align 32
@xillybus_endpoint_discovery._entry_ptr = internal global ptr @xillybus_endpoint_discovery._entry, section ".printk_index", align 4
@xillybus_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @xillybus_llseek, ptr @xillybus_read, ptr @xillybus_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xillybus_poll, ptr null, ptr null, ptr null, i32 0, ptr @xillybus_open, ptr @xillybus_flush, ptr @xillybus_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xillyname = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xillybus\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_xillybus_endpoint_discovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_endpoint_discovery = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_endpoint_discovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_endpoint_discovery to i32), ptr @__kstrtab_xillybus_endpoint_discovery, ptr @__kstrtabns_xillybus_endpoint_discovery }, section "___ksymtab+xillybus_endpoint_discovery", align 4
@__kstrtab_xillybus_endpoint_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_xillybus_endpoint_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_xillybus_endpoint_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xillybus_endpoint_remove to i32), ptr @__kstrtab_xillybus_endpoint_remove, ptr @__kstrtabns_xillybus_endpoint_remove }, section "___ksymtab+xillybus_endpoint_remove", align 4
@__initcall__kmod_xillybus_core__239_1990_xillybus_init6 = internal global ptr @xillybus_init, section ".initcall6.init", align 4
@__exitcall_xillybus_exit = internal global ptr @xillybus_exit, section ".exitcall.exit", align 4
@malformed_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Malformed message (skipping): opcode=%d, channel=%03x, dir=%d, bufno=%03x, data=%07x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"malformed_message\00", [46 x i8] zeroinitializer }, align 32
@malformed_message._entry_ptr = internal global ptr @malformed_message._entry, section ".printk_index", align 4
@__const.xilly_setupchannels.rd_alloc = private unnamed_addr constant %struct.xilly_alloc_state { ptr null, i32 0, i32 1, i32 1, i32 0 }, align 4
@__const.xilly_setupchannels.wr_alloc = private unnamed_addr constant %struct.xilly_alloc_state { ptr null, i32 0, i32 1, i32 2, i32 -2147483648 }, align 4
@xilly_setupchannels.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&channel->wr_spinlock\00", [42 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&channel->rd_spinlock\00", [42 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&channel->wr_mutex\00", [45 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&channel->rd_mutex\00", [45 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&channel->rd_wait\00", [46 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&channel->wr_wait\00", [46 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&channel->wr_ready_wait\00", [40 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&channel->rd_workitem)->work)\00", [46 x i8] zeroinitializer }, align 32
@xilly_setupchannels.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&channel->rd_workitem)->timer\00", [32 x i8] zeroinitializer }, align 32
@xilly_setupchannels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 524, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IDT requests channel out of range. Aborting.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xilly_setupchannels\00", [44 x i8] zeroinitializer }, align 32
@xilly_setupchannels._entry_ptr = internal global ptr @xilly_setupchannels._entry, section ".printk_index", align 4
@xilly_setupchannels._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 583, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Corrupt IDT: No message buffer. Aborting.\0A\00", [53 x i8] zeroinitializer }, align 32
@xilly_setupchannels._entry_ptr.43 = internal global ptr @xilly_setupchannels._entry.41, section ".printk_index", align 4
@xillybus_autoflush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Autoflush failed because work queue thread got a signal.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xillybus_autoflush\00", [45 x i8] zeroinitializer }, align 32
@xillybus_autoflush._entry_ptr = internal global ptr @xillybus_autoflush._entry, section ".printk_index", align 4
@xillybus_autoflush._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 1199, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Autoflush failed under weird circumstances.\0A\00", [51 x i8] zeroinitializer }, align 32
@xillybus_autoflush._entry_ptr.48 = internal global ptr @xillybus_autoflush._entry.46, section ".printk_index", align 4
@xillybus_myflush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Timed out while flushing. Output data may be lost.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xillybus_myflush\00", [47 x i8] zeroinitializer }, align 32
@xillybus_myflush._entry_ptr = internal global ptr @xillybus_myflush._entry, section ".printk_index", align 4
@xilly_get_dma_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 370, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Corrupt buffer allocation in IDT. Aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilly_get_dma_buffers\00", [42 x i8] zeroinitializer }, align 32
@xilly_get_dma_buffers._entry_ptr = internal global ptr @xilly_get_dma_buffers._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@xilly_obtain_idt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 651, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to obtain IDT. Aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xilly_obtain_idt\00", [47 x i8] zeroinitializer }, align 32
@xilly_obtain_idt._entry_ptr = internal global ptr @xilly_obtain_idt._entry, section ".printk_index", align 4
@xilly_obtain_idt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 667, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IDT length mismatch (%d != %d). Aborting.\0A\00", [53 x i8] zeroinitializer }, align 32
@xilly_obtain_idt._entry_ptr.59 = internal global ptr @xilly_obtain_idt._entry.57, section ".printk_index", align 4
@xilly_obtain_idt._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 673, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IDT failed CRC check. Aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@xilly_obtain_idt._entry_ptr.62 = internal global ptr @xilly_obtain_idt._entry.60, section ".printk_index", align 4
@xilly_obtain_idt._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 683, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"No support for IDT version 0x%02x. Maybe the xillybus driver needs an upgrade. Aborting.\0A\00", [38 x i8] zeroinitializer }, align 32
@xilly_obtain_idt._entry_ptr.65 = internal global ptr @xilly_obtain_idt._entry.63, section ".printk_index", align 4
@xilly_scan_idt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 613, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IDT device name list overflow. Aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xilly_scan_idt\00", [17 x i8] zeroinitializer }, align 32
@xilly_scan_idt._entry_ptr = internal global ptr @xilly_scan_idt._entry, section ".printk_index", align 4
@xilly_scan_idt._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 622, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Corrupt IDT device name list. Aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@xilly_scan_idt._entry_ptr.70 = internal global ptr @xilly_scan_idt._entry.68, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@xillybus_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1461, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"open() failed: O_NONBLOCK not allowed for read on this device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xillybus_open\00", [18 x i8] zeroinitializer }, align 32
@xillybus_open._entry_ptr = internal global ptr @xillybus_open._entry, section ".printk_index", align 4
@xillybus_open._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1468, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"open() failed: O_NONBLOCK not allowed for write on this device\0A\00", [32 x i8] zeroinitializer }, align 32
@xillybus_open._entry_ptr.78 = internal global ptr @xillybus_open._entry.76, section ".printk_index", align 4
@xillybus_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1653, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Hardware failed to respond to close command, therefore left in messy state.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xillybus_release\00", [47 x i8] zeroinitializer }, align 32
@xillybus_release._entry_ptr = internal global ptr @xillybus_release._entry, section ".printk_index", align 4
@xilly_quiesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1839, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to quiesce the device on exit.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xilly_quiesce\00", [18 x i8] zeroinitializer }, align 32
@xilly_quiesce._entry_ptr = internal global ptr @xilly_quiesce._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 131, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 138, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 155, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"xillybus_wq\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 60, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 266, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1818, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1819, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1901, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"xillybus_fops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1794, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [10 x i8] c"xillyname\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 58, i32 19 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 101, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 489, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 490, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 491, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 492, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 493, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 494, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 495, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 497, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 523, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 582, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1195, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1198, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1155, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 369, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 326, i32 6 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 651, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 665, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 673, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 681, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 612, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 621, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 230, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 214, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 174, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1460, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1467, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1652, i32 6 }
@___asan_gen_.347 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [41 x i8] c"../drivers/char/xillybus/xillybus_core.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1838, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_xillybus_exit, ptr @__initcall__kmod_xillybus_core__239_1990_xillybus_init6, ptr @__ksymtab_xillybus_endpoint_discovery, ptr @__ksymtab_xillybus_endpoint_remove, ptr @__ksymtab_xillybus_init_endpoint, ptr @__ksymtab_xillybus_isr, ptr @malformed_message._entry, ptr @malformed_message._entry_ptr, ptr @xilly_get_dma_buffers._entry, ptr @xilly_get_dma_buffers._entry_ptr, ptr @xilly_obtain_idt._entry, ptr @xilly_obtain_idt._entry.57, ptr @xilly_obtain_idt._entry.60, ptr @xilly_obtain_idt._entry.63, ptr @xilly_obtain_idt._entry_ptr, ptr @xilly_obtain_idt._entry_ptr.59, ptr @xilly_obtain_idt._entry_ptr.62, ptr @xilly_obtain_idt._entry_ptr.65, ptr @xilly_quiesce._entry, ptr @xilly_quiesce._entry_ptr, ptr @xilly_scan_idt._entry, ptr @xilly_scan_idt._entry.68, ptr @xilly_scan_idt._entry_ptr, ptr @xilly_scan_idt._entry_ptr.70, ptr @xilly_setupchannels._entry, ptr @xilly_setupchannels._entry.41, ptr @xilly_setupchannels._entry_ptr, ptr @xilly_setupchannels._entry_ptr.43, ptr @xillybus_autoflush._entry, ptr @xillybus_autoflush._entry.46, ptr @xillybus_autoflush._entry_ptr, ptr @xillybus_autoflush._entry_ptr.48, ptr @xillybus_endpoint_discovery._entry, ptr @xillybus_endpoint_discovery._entry_ptr, ptr @xillybus_exit, ptr @xillybus_isr._entry, ptr @xillybus_isr._entry.12, ptr @xillybus_isr._entry.5, ptr @xillybus_isr._entry.9, ptr @xillybus_isr._entry_ptr, ptr @xillybus_isr._entry_ptr.11, ptr @xillybus_isr._entry_ptr.14, ptr @xillybus_isr._entry_ptr.8, ptr @xillybus_myflush._entry, ptr @xillybus_myflush._entry_ptr, ptr @xillybus_open._entry, ptr @xillybus_open._entry.76, ptr @xillybus_open._entry_ptr, ptr @xillybus_open._entry_ptr.78, ptr @xillybus_release._entry, ptr @xillybus_release._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @xillybus_wq, ptr @.str.13, ptr @xillybus_init_endpoint.__key, ptr @.str.15, ptr @xillybus_init_endpoint.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @xillybus_fops, ptr @xillyname, ptr @.str.20, ptr @.str.21, ptr @xilly_setupchannels.__key, ptr @.str.22, ptr @xilly_setupchannels.__key.23, ptr @.str.24, ptr @xilly_setupchannels.__key.25, ptr @.str.26, ptr @xilly_setupchannels.__key.27, ptr @.str.28, ptr @xilly_setupchannels.__key.29, ptr @.str.30, ptr @xilly_setupchannels.__key.31, ptr @.str.32, ptr @xilly_setupchannels.__key.33, ptr @.str.34, ptr @xilly_setupchannels.__key.35, ptr @.str.36, ptr @xilly_setupchannels.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_isr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_isr._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_isr._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 251, i32 288, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_endpoint.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_init_endpoint.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_endpoint_discovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillyname to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malformed_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_setupchannels._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_autoflush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_autoflush._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_myflush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_get_dma_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_obtain_idt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_obtain_idt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_obtain_idt._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_obtain_idt._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_scan_idt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_scan_idt._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_open._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xillybus_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilly_quiesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xillybus_isr(i32 %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgbuf_addr = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %msgbuf_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgbuf_addr, align 4
  %msg_buf_size = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 14
  %2 = ptrtoint ptr %msg_buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_buf_size, align 4
  %div288 = lshr i32 %3, 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %msgbuf_dma_addr = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 13
  %6 = ptrtoint ptr %msgbuf_dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgbuf_dma_addr, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %5, i32 noundef %7, i32 noundef %3, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp353.not = icmp ult i32 %3, 4
  br i1 %cmp353.not, label %entry.do.end31_crit_edge, label %for.body.lr.ph

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

for.body.lr.ph:                                   ; preds = %entry
  %msg_counter = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %msg_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_counter, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0354 = phi i32 [ 0, %for.body.lr.ph ], [ %add26, %for.inc.for.body_crit_edge ]
  %add = or i32 %i.0354, 1
  %arrayidx = getelementptr i32, ptr %1, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %11, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp2.not = icmp eq i32 %shr, %9
  br i1 %cmp2.not, label %if.else20, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx.le = getelementptr i32, ptr %1, i32 %add
  %arrayidx3 = getelementptr i32, ptr %1, i32 %i.0354
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %shr.i = lshr i32 %13, 24
  %and2.i = and i32 %13, 1
  %shr4.i = lshr i32 %13, 1
  %and5.i = and i32 %shr4.i, 2047
  %shr7.i = lshr i32 %13, 12
  %and8.i = and i32 %shr7.i, 1023
  %arrayidx9.i = getelementptr i32, ptr %arrayidx3, i32 1
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i, align 4
  %and10.i = and i32 %15, 268435455
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.20, i32 noundef %shr.i, i32 noundef %and5.i, i32 noundef %and2.i, i32 noundef %and8.i, i32 noundef %and10.i) #12
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.le, align 4
  %shr7 = lshr i32 %21, 28
  %22 = ptrtoint ptr %msg_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_counter, align 4
  %div10361 = lshr exact i32 %i.0354, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %shr7, i32 noundef %23, i32 noundef %div10361) #12
  %failed_messages = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 10
  %24 = ptrtoint ptr %failed_messages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %failed_messages, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %failed_messages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp11 = icmp sgt i32 %inc, 10
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  br i1 %cmp11, label %do.end15, label %if.else

do.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %msgbuf_dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msgbuf_dma_addr, align 4
  %30 = ptrtoint ptr %msg_buf_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_buf_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef 2) #9
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 3
  %32 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !185
  br label %cleanup

if.else20:                                        ; preds = %for.body
  %arrayidx21 = getelementptr i32, ptr %1, i32 %i.0354
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %for.inc, label %for.body37.lr.ph

for.inc:                                          ; preds = %if.else20
  %add26 = add nuw nsw i32 %i.0354, 2
  %cmp = icmp ult i32 %add26, %div288
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end31_crit_edge

for.inc.do.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end31:                                         ; preds = %for.inc.do.end31_crit_edge, %entry.do.end31_crit_edge
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10) #12
  br label %cleanup

for.body37.lr.ph:                                 ; preds = %if.else20
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 4
  %ep_wait129 = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 6
  %num_channels104 = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 7
  %channels111 = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 8
  %idtlen = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 11
  br label %for.body37

for.body37:                                       ; preds = %for.inc135.for.body37_crit_edge, %for.body37.lr.ph
  %i.1356 = phi i32 [ 0, %for.body37.lr.ph ], [ %add136, %for.inc135.for.body37_crit_edge ]
  %arrayidx38 = getelementptr i32, ptr %1, i32 %i.1356
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx38, align 4
  %shr39 = lshr i32 %39, 24
  %and42 = and i32 %39, 1
  %shr44 = lshr i32 %39, 1
  %and45 = and i32 %shr44, 2047
  %shr47 = lshr i32 %39, 12
  %and48 = and i32 %shr47, 1023
  %add49 = or i32 %i.1356, 1
  %arrayidx50 = getelementptr i32, ptr %1, i32 %add49
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %41, 268435455
  %trunc = trunc i32 %shr39 to i8
  %42 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 1, label %sw.bb
    i8 5, label %sw.bb76
    i8 2, label %sw.bb102
    i8 3, label %sw.bb103
    i8 4, label %sw.bb128
  ]

sw.bb:                                            ; preds = %for.body37
  %43 = ptrtoint ptr %num_channels104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_channels104, align 4
  %45 = add nsw i32 %and45, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %44)
  %.not = icmp ult i32 %45, %44
  br i1 %.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i299 = getelementptr i32, ptr %arrayidx38, i32 1
  %46 = ptrtoint ptr %arrayidx9.i299 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx9.i299, align 4
  %and10.i300 = and i32 %47, 268435455
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef %and42, i32 noundef %and48, i32 noundef %and10.i300) #12
  br label %for.inc135

if.end56:                                         ; preds = %sw.bb
  %50 = ptrtoint ptr %channels111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %channels111, align 4
  %arrayidx57 = getelementptr ptr, ptr %51, i32 %and45
  %52 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool58.not = icmp eq i32 %and42, 0
  br i1 %tobool58.not, label %if.else66, label %if.then59

if.then59:                                        ; preds = %if.end56
  %num_wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %num_wr_buffers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_wr_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %55)
  %cmp60.not = icmp ult i32 %and48, %55
  br i1 %cmp60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i307 = getelementptr i32, ptr %arrayidx38, i32 1
  %56 = ptrtoint ptr %arrayidx9.i307 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx9.i307, align 4
  %and10.i308 = and i32 %57, 268435455
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef %and42, i32 noundef %and48, i32 noundef %and10.i308) #12
  br label %for.inc135

if.end63:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %wr_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %wr_spinlock) #9
  %wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 4
  %60 = ptrtoint ptr %wr_buffers to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr_buffers, align 4
  %arrayidx64 = getelementptr ptr, ptr %61, i32 %and48
  %62 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx64, align 4
  %end_offset = getelementptr inbounds %struct.xilly_buffer, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %end_offset to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and51, ptr %end_offset, align 4
  %wr_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 7
  %65 = ptrtoint ptr %wr_fpga_buf_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and48, ptr %wr_fpga_buf_idx, align 4
  %wr_empty = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 10
  %66 = ptrtoint ptr %wr_empty to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %wr_empty, align 4
  %wr_sleepy = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 12
  %67 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %wr_sleepy, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wr_spinlock) #9
  %wr_wait = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wr_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %for.inc135

if.else66:                                        ; preds = %if.end56
  %num_rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 25
  %68 = ptrtoint ptr %num_rd_buffers to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_rd_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %69)
  %cmp67.not = icmp ult i32 %and48, %69
  br i1 %cmp67.not, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i315 = getelementptr i32, ptr %arrayidx38, i32 1
  %70 = ptrtoint ptr %arrayidx9.i315 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx9.i315, align 4
  %and10.i316 = and i32 %71, 268435455
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef 0, i32 noundef %and48, i32 noundef %and10.i316) #12
  br label %for.inc135

if.end70:                                         ; preds = %if.else66
  %rd_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %rd_spinlock) #9
  %rd_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 27
  %74 = ptrtoint ptr %rd_fpga_buf_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and48, ptr %rd_fpga_buf_idx, align 4
  %rd_full = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 30
  %75 = ptrtoint ptr %rd_full to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %rd_full, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rd_spinlock) #9
  %rd_wait = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %rd_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %rd_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 36
  %76 = ptrtoint ptr %rd_synchronous to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rd_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool72.not = icmp eq i32 %77, 0
  br i1 %tobool72.not, label %if.then73, label %if.end70.for.inc135_crit_edge

if.end70.for.inc135_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc135

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %78 = load ptr, ptr @xillybus_wq, align 4
  %rd_workitem = getelementptr inbounds %struct.xilly_channel, ptr %53, i32 0, i32 38
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %rd_workitem, i32 noundef 1) #9
  br label %for.inc135

sw.bb76:                                          ; preds = %for.body37
  %79 = ptrtoint ptr %num_channels104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_channels104, align 4
  %81 = add nsw i32 %and45, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %80)
  %82 = icmp uge i32 %81, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool82.not = icmp eq i32 %and42, 0
  %or.cond290 = select i1 %82, i1 true, i1 %tobool82.not
  br i1 %or.cond290, label %sw.bb76.if.then87_crit_edge, label %lor.lhs.false83

sw.bb76.if.then87_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

lor.lhs.false83:                                  ; preds = %sw.bb76
  %83 = ptrtoint ptr %channels111 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %channels111, align 4
  %arrayidx85 = getelementptr ptr, ptr %84, i32 %and45
  %85 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx85, align 4
  %wr_supports_nonempty = getelementptr inbounds %struct.xilly_channel, ptr %86, i32 0, i32 23
  %87 = ptrtoint ptr %wr_supports_nonempty to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wr_supports_nonempty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool86.not = icmp eq i32 %88, 0
  br i1 %tobool86.not, label %lor.lhs.false83.if.then87_crit_edge, label %if.end89

lor.lhs.false83.if.then87_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

if.then87:                                        ; preds = %lor.lhs.false83.if.then87_crit_edge, %sw.bb76.if.then87_crit_edge
  %arrayidx9.i323 = getelementptr i32, ptr %arrayidx38, i32 1
  %89 = ptrtoint ptr %arrayidx9.i323 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx9.i323, align 4
  %and10.i324 = and i32 %90, 268435455
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef %and42, i32 noundef %and48, i32 noundef %and10.i324) #12
  br label %for.inc135

if.end89:                                         ; preds = %lor.lhs.false83
  %num_wr_buffers92 = getelementptr inbounds %struct.xilly_channel, ptr %86, i32 0, i32 5
  %93 = ptrtoint ptr %num_wr_buffers92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_wr_buffers92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %94)
  %cmp93.not = icmp ult i32 %and48, %94
  br i1 %cmp93.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i331 = getelementptr i32, ptr %arrayidx38, i32 1
  %95 = ptrtoint ptr %arrayidx9.i331 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx9.i331, align 4
  %and10.i332 = and i32 %96, 268435455
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef %and42, i32 noundef %and48, i32 noundef %and10.i332) #12
  br label %for.inc135

if.end96:                                         ; preds = %if.end89
  %wr_spinlock97 = getelementptr inbounds %struct.xilly_channel, ptr %86, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %wr_spinlock97) #9
  %wr_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %86, i32 0, i32 8
  %99 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wr_host_buf_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and48, i32 %100)
  %cmp98 = icmp eq i32 %and48, %100
  br i1 %cmp98, label %if.then99, label %if.end96.if.end100_crit_edge

if.end96.if.end100_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %wr_ready = getelementptr inbounds %struct.xilly_channel, ptr %86, i32 0, i32 11
  %101 = ptrtoint ptr %wr_ready to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %wr_ready, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end96.if.end100_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wr_spinlock97) #9
  %wr_ready_wait = getelementptr inbounds %struct.xilly_channel, ptr %86, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wr_ready_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %for.inc135

sw.bb102:                                         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %idtlen to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and51, ptr %idtlen, align 4
  tail call void @__wake_up(ptr noundef %ep_wait129, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %for.inc135

sw.bb103:                                         ; preds = %for.body37
  %103 = ptrtoint ptr %num_channels104 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_channels104, align 4
  %105 = add nsw i32 %and45, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %104)
  %106 = icmp uge i32 %105, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool109.not = icmp eq i32 %and42, 0
  %or.cond292 = select i1 %106, i1 true, i1 %tobool109.not
  br i1 %or.cond292, label %sw.bb103.if.then115_crit_edge, label %lor.lhs.false110

sw.bb103.if.then115_crit_edge:                    ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

lor.lhs.false110:                                 ; preds = %sw.bb103
  %107 = ptrtoint ptr %channels111 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %channels111, align 4
  %arrayidx112 = getelementptr ptr, ptr %108, i32 %and45
  %109 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx112, align 4
  %num_wr_buffers113 = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %num_wr_buffers113 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_wr_buffers113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool114.not = icmp eq i32 %112, 0
  br i1 %tobool114.not, label %lor.lhs.false110.if.then115_crit_edge, label %if.end117

lor.lhs.false110.if.then115_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.then115:                                       ; preds = %lor.lhs.false110.if.then115_crit_edge, %sw.bb103.if.then115_crit_edge
  %arrayidx9.i339 = getelementptr i32, ptr %arrayidx38, i32 1
  %113 = ptrtoint ptr %arrayidx9.i339 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx9.i339, align 4
  %and10.i340 = and i32 %114, 268435455
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef %and42, i32 noundef %and48, i32 noundef %and10.i340) #12
  br label %for.inc135

if.end117:                                        ; preds = %lor.lhs.false110
  %wr_spinlock120 = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %wr_spinlock120) #9
  %wr_eof = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 13
  %117 = ptrtoint ptr %wr_eof to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and48, ptr %wr_eof, align 4
  %wr_sleepy121 = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 12
  %118 = ptrtoint ptr %wr_sleepy121 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %wr_sleepy121, align 4
  %wr_empty122 = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 10
  %119 = ptrtoint ptr %wr_empty122 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wr_empty122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool123.not = icmp eq i32 %120, 0
  br i1 %tobool123.not, label %if.end117.land.end_crit_edge, label %land.rhs

if.end117.land.end_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %wr_host_buf_idx124 = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 8
  %121 = ptrtoint ptr %wr_host_buf_idx124 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %wr_host_buf_idx124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %and48)
  %cmp125 = icmp eq i32 %122, %and48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end117.land.end_crit_edge
  %123 = phi i1 [ false, %if.end117.land.end_crit_edge ], [ %cmp125, %land.rhs ]
  %land.ext = zext i1 %123 to i32
  %wr_hangup = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 14
  %124 = ptrtoint ptr %wr_hangup to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %land.ext, ptr %wr_hangup, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wr_spinlock120) #9
  %wr_wait127 = getelementptr inbounds %struct.xilly_channel, ptr %110, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wr_wait127, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %for.inc135

sw.bb128:                                         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %fatal_error to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %fatal_error, align 4
  tail call void @__wake_up(ptr noundef %ep_wait129, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %126 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.13) #12
  br label %for.inc135

sw.default:                                       ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i347 = getelementptr i32, ptr %arrayidx38, i32 1
  %128 = ptrtoint ptr %arrayidx9.i347 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx9.i347, align 4
  %and10.i348 = and i32 %129, 268435455
  %130 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.20, i32 noundef %shr39, i32 noundef %and45, i32 noundef %and42, i32 noundef %and48, i32 noundef %and10.i348) #12
  br label %for.inc135

for.inc135:                                       ; preds = %sw.default, %sw.bb128, %land.end, %if.then115, %sw.bb102, %if.end100, %if.then94, %if.then87, %if.then73, %if.end70.for.inc135_crit_edge, %if.then68, %if.end63, %if.then61, %if.then54
  %add136 = add nuw nsw i32 %i.1356, 2
  %cmp36 = icmp ult i32 %i.1356, %i.0354
  br i1 %cmp36, label %for.inc135.for.body37_crit_edge, label %for.end137

for.inc135.for.body37_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

for.end137:                                       ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 4
  %134 = ptrtoint ptr %msgbuf_dma_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msgbuf_dma_addr, align 4
  %136 = ptrtoint ptr %msg_buf_size to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %msg_buf_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %133, i32 noundef %135, i32 noundef %137, i32 noundef 2) #9
  %138 = ptrtoint ptr %msg_counter to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %msg_counter, align 4
  %add142 = add i32 %139, 1
  %and143 = and i32 %add142, 15
  store i32 %and143, ptr %msg_counter, align 4
  %failed_messages145 = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 10
  %140 = ptrtoint ptr %failed_messages145 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %failed_messages145, align 4
  %registers146 = getelementptr inbounds %struct.xilly_endpoint, ptr %data, i32 0, i32 3
  %141 = ptrtoint ptr %registers146 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %registers146, align 4
  %add.ptr147 = getelementptr i8, ptr %142, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 50331648) #9, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %for.end137, %do.end31, %if.else, %do.end15
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xillybus_init_endpoint(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %msg_counter = getelementptr inbounds %struct.xilly_endpoint, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %msg_counter to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %msg_counter, align 4
  %failed_messages = getelementptr inbounds %struct.xilly_endpoint, ptr %call.i, i32 0, i32 10
  %2 = ptrtoint ptr %failed_messages to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %failed_messages, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %fatal_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fatal_error, align 4
  %ep_wait = getelementptr inbounds %struct.xilly_endpoint, ptr %call.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %ep_wait, ptr noundef nonnull @.str.15, ptr noundef nonnull @xillybus_init_endpoint.__key) #9
  %register_mutex = getelementptr inbounds %struct.xilly_endpoint, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %register_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @xillybus_init_endpoint.__key.16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xillybus_endpoint_discovery(ptr noundef %endpoint) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %bogus_idt = alloca [8 x i8], align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bogus_idt) #9
  %2 = ptrtoint ptr %bogus_idt to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 135118984000310272, ptr %bogus_idt, align 8
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 3
  %3 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !185
  %call = tail call ptr @devres_open_group(ptr noundef %1, ptr noundef null, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup89_crit_edge, label %if.end

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end:                                           ; preds = %entry
  %num_channels = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 7
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_channels, align 4
  %call2 = call fastcc i32 @xilly_setupchannels(ptr noundef %endpoint, ptr noundef nonnull %bogus_idt, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup89_crit_edge

if.end.cleanup89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup89

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 67108864) #9, !srcloc !185
  %idtlen = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 11
  %8 = ptrtoint ptr %idtlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %idtlen, align 4
  %dma_using_dac = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 2
  %9 = ptrtoint ptr %dma_using_dac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_using_dac, align 4
  %11 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %and = shl i32 %10, 24
  %13 = and i32 %and, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %13) #9, !srcloc !185
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1899) #9
  %14 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %if.end5.if.end57_crit_edge, label %if.then21

if.end5.if.end57_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then21:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %ep_wait = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 6
  %call23169 = call i32 @prepare_to_wait_event(ptr noundef %ep_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %17 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp26170 = icmp sgt i32 %18, -1
  br i1 %cmp26170, label %if.then21.for.end_crit_edge, label %if.then21.if.end42_crit_edge

if.then21.if.end42_crit_edge:                     ; preds = %if.then21
  br label %if.end42

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %if.then21.if.end42_crit_edge
  %__ret22.1172 = phi i32 [ %__ret22.1, %cleanup.if.end42_crit_edge ], [ 10, %if.then21.if.end42_crit_edge ]
  %call23171 = phi i32 [ %call23, %cleanup.if.end42_crit_edge ], [ %call23169, %if.then21.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23171)
  %tobool43.not = icmp eq i32 %call23171, 0
  br i1 %tobool43.not, label %cleanup, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

cleanup:                                          ; preds = %if.end42
  %call46 = call i32 @schedule_timeout(i32 noundef %__ret22.1172) #9
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %ep_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %19 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp26 = icmp sgt i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool30.not = icmp eq i32 %call46, 0
  %21 = select i1 %cmp26, i1 %tobool30.not, i1 false
  %__ret22.1 = select i1 %21, i32 1, i32 %call46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool36.not = icmp eq i32 %__ret22.1, 0
  %22 = select i1 %cmp26, i1 true, i1 %tobool36.not
  br i1 %22, label %cleanup.for.end_crit_edge, label %cleanup.if.end42_crit_edge

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then21.for.end_crit_edge
  %__ret22.1.lcssa = phi i32 [ 10, %if.then21.for.end_crit_edge ], [ %__ret22.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %ep_wait, ptr noundef nonnull %__wq_entry) #9
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.end42.if.end49_crit_edge
  %__ret22.2152 = phi i32 [ %__ret22.1.lcssa, %for.end ], [ %call23171, %if.end42.if.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret22.2152)
  %cmp51 = icmp slt i32 %__ret22.2152, 1
  br i1 %cmp51, label %do.end55, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.18) #12
  br label %cleanup89

if.end57:                                         ; preds = %if.end49.if.end57_crit_edge, %if.end5.if.end57_crit_edge
  %25 = ptrtoint ptr %dma_using_dac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_using_dac, align 4
  %27 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %registers, align 4
  %add.ptr61 = getelementptr i8, ptr %28, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %and59 = shl i32 %26, 24
  %or = and i32 %and59, 16777216
  %29 = or i32 %or, 33554432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %29) #9, !srcloc !185
  %30 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %31)
  %cmp63.not174 = icmp slt i32 %31, 4096
  br i1 %cmp63.not174, label %if.end57.while.end_crit_edge, label %while.body.lr.ph

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end57
  %arrayidx = getelementptr inbounds [8 x i8], ptr %bogus_idt, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %arrayidx.promoted = load i8, ptr %arrayidx, align 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %33 = phi i8 [ %arrayidx.promoted, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %idtbuffersize.0175 = phi i32 [ 4096, %while.body.lr.ph ], [ %mul, %while.body.while.body_crit_edge ]
  %mul = shl i32 %idtbuffersize.0175, 1
  %inc = add i8 %33, 1
  %cmp63.not = icmp slt i32 %31, %mul
  br i1 %cmp63.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %inc, ptr %arrayidx, align 2
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end57.while.end_crit_edge
  %35 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_channels, align 4
  %call66 = call fastcc i32 @xilly_setupchannels(ptr noundef %endpoint, ptr noundef nonnull %bogus_idt, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %while.end.failed_idt_crit_edge

while.end.failed_idt_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_idt

if.end69:                                         ; preds = %while.end
  %channels.i = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 8
  %36 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channels.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %wr_sleepy.i = getelementptr inbounds %struct.xilly_channel, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %wr_sleepy.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %wr_sleepy.i, align 4
  %41 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %registers, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777219) #9, !srcloc !185
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 648) #9
  %43 = ptrtoint ptr %wr_sleepy.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wr_sleepy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end69.if.end48.i_crit_edge, label %if.then11.i

if.end69.if.end48.i_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then11.i:                                      ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %45 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %wr_wait.i = getelementptr inbounds %struct.xilly_channel, ptr %39, i32 0, i32 17
  %call134.i = call i32 @prepare_to_wait_event(ptr noundef %wr_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %46 = ptrtoint ptr %wr_sleepy.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wr_sleepy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not135.i = icmp eq i32 %47, 0
  br i1 %tobool15.not135.i, label %if.then11.i.for.end.i_crit_edge, label %if.then11.i.if.end32.i_crit_edge

if.then11.i.if.end32.i_crit_edge:                 ; preds = %if.then11.i
  br label %if.end32.i

if.then11.i.for.end.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end32.i:                                       ; preds = %cleanup.i.if.end32.i_crit_edge, %if.then11.i.if.end32.i_crit_edge
  %__ret12.1137.i = phi i32 [ %__ret12.1.i, %cleanup.i.if.end32.i_crit_edge ], [ 10, %if.then11.i.if.end32.i_crit_edge ]
  %call136.i = phi i32 [ %call.i, %cleanup.i.if.end32.i_crit_edge ], [ %call134.i, %if.then11.i.if.end32.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %tobool33.not.i = icmp eq i32 %call136.i, 0
  br i1 %tobool33.not.i, label %cleanup.i, label %if.end32.i.if.end39.i_crit_edge

if.end32.i.if.end39.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

cleanup.i:                                        ; preds = %if.end32.i
  %call36.i = call i32 @schedule_timeout(i32 noundef %__ret12.1137.i) #9
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %wr_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %48 = ptrtoint ptr %wr_sleepy.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wr_sleepy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool15.not.i = icmp eq i32 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool20.not.i = icmp eq i32 %call36.i, 0
  %50 = select i1 %tobool15.not.i, i1 %tobool20.not.i, i1 false
  %__ret12.1.i = select i1 %50, i32 1, i32 %call36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i)
  %tobool26.not.i = icmp eq i32 %__ret12.1.i, 0
  %51 = select i1 %tobool15.not.i, i1 true, i1 %tobool26.not.i
  br i1 %51, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end32.i_crit_edge

cleanup.i.if.end32.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then11.i.for.end.i_crit_edge
  %__ret12.1.lcssa.i = phi i32 [ 10, %if.then11.i.for.end.i_crit_edge ], [ %__ret12.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %wr_wait.i, ptr noundef nonnull %__wq_entry.i) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.end.i, %if.end32.i.if.end39.i_crit_edge
  %__ret12.2124.i = phi i32 [ %__ret12.1.lcssa.i, %for.end.i ], [ %call136.i, %if.end32.i.if.end39.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret12.2124.i)
  %cmp.i = icmp slt i32 %__ret12.2124.i, 1
  br i1 %cmp.i, label %do.end44.i, label %if.end39.i.if.end48.i_crit_edge

if.end39.i.if.end48.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.55) #12
  %fatal_error.i = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 4
  %54 = ptrtoint ptr %fatal_error.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fatal_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool45.not.i = icmp eq i32 %55, 0
  %..i = select i1 %tobool45.not.i, i32 -19, i32 -5
  br label %failed_idt

if.end48.i:                                       ; preds = %if.end39.i.if.end48.i_crit_edge, %if.end69.if.end48.i_crit_edge
  %56 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %39, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %wr_buffers.i = getelementptr inbounds %struct.xilly_channel, ptr %39, i32 0, i32 4
  %60 = ptrtoint ptr %wr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wr_buffers.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %dma_addr.i = getelementptr inbounds %struct.xilly_buffer, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_addr.i, align 4
  %wr_buf_size.i = getelementptr inbounds %struct.xilly_channel, ptr %39, i32 0, i32 6
  %66 = ptrtoint ptr %wr_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wr_buf_size.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %59, i32 noundef %65, i32 noundef %67, i32 noundef 2) #9
  %68 = ptrtoint ptr %wr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr_buffers.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %end_offset.i = getelementptr inbounds %struct.xilly_buffer, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %end_offset.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %end_offset.i, align 4
  %74 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp54.not.i = icmp eq i32 %73, %75
  br i1 %cmp54.not.i, label %if.end64.i, label %do.end58.i

do.end58.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.58, i32 noundef %73, i32 noundef %75) #12
  br label %failed_idt

if.end64.i:                                       ; preds = %if.end48.i
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %71, align 4
  %add.i = add i32 %73, 1
  %call68.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %79, i32 noundef %add.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.not.i = icmp eq i32 %call68.i, 0
  br i1 %cmp69.not.i, label %if.end75.i, label %do.end73.i

do.end73.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.61) #12
  br label %failed_idt

if.end75.i:                                       ; preds = %if.end64.i
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %83)
  %cmp79.i = icmp ugt i8 %83, -126
  br i1 %cmp79.i, label %do.end84.i, label %if.end73

do.end84.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %83 to i32
  %84 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.64, i32 noundef %conv.i) #12
  br label %failed_idt

if.end73:                                         ; preds = %if.end75.i
  %86 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %channels.i, align 4
  %arrayidx.i143 = getelementptr ptr, ptr %87, i32 1
  %88 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i143, align 4
  %wr_buffers.i144 = getelementptr inbounds %struct.xilly_channel, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %wr_buffers.i144 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr_buffers.i144, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %96 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %idtlen, align 4
  %add.ptr.i146 = getelementptr i8, ptr %95, i32 %97
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i146, i32 -4
  %add.ptr3.i = getelementptr i8, ptr %95, i32 1
  %cmp.not56.i = icmp ugt ptr %add.ptr3.i, %add.ptr2.i
  br i1 %cmp.not56.i, label %if.end73.while.end12.i_crit_edge, label %if.end73.land.rhs.i_crit_edge

if.end73.land.rhs.i_crit_edge:                    ; preds = %if.end73
  br label %land.rhs.i

if.end73.while.end12.i_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end12.i

land.rhs.i:                                       ; preds = %while.end.i.land.rhs.i_crit_edge, %if.end73.land.rhs.i_crit_edge
  %scan.058.i = phi ptr [ %scan.2.i, %while.end.i.land.rhs.i_crit_edge ], [ %add.ptr3.i, %if.end73.land.rhs.i_crit_edge ]
  %count.057.i = phi i32 [ %inc.i, %while.end.i.land.rhs.i_crit_edge ], [ 0, %if.end73.land.rhs.i_crit_edge ]
  %98 = ptrtoint ptr %scan.058.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %scan.058.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i147 = icmp eq i8 %99, 0
  br i1 %tobool.not.i147, label %land.rhs.i.while.end12.i_crit_edge, label %land.rhs.i.while.cond4.i_crit_edge

land.rhs.i.while.cond4.i_crit_edge:               ; preds = %land.rhs.i
  br label %while.cond4.i

land.rhs.i.while.end12.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end12.i

while.cond4.i:                                    ; preds = %land.rhs7.i.while.cond4.i_crit_edge, %land.rhs.i.while.cond4.i_crit_edge
  %scan.1.i = phi ptr [ %incdec.ptr.i, %land.rhs7.i.while.cond4.i_crit_edge ], [ %scan.058.i, %land.rhs.i.while.cond4.i_crit_edge ]
  %cmp5.not.i = icmp ugt ptr %scan.1.i, %add.ptr2.i
  br i1 %cmp5.not.i, label %while.cond4.i.while.end.i_crit_edge, label %land.rhs7.i

while.cond4.i.while.end.i_crit_edge:              ; preds = %while.cond4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.rhs7.i:                                      ; preds = %while.cond4.i
  %incdec.ptr.i = getelementptr i8, ptr %scan.1.i, i32 1
  %100 = ptrtoint ptr %scan.1.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %scan.1.i, align 1
  %tobool9.not.i = icmp eq i8 %101, 0
  br i1 %tobool9.not.i, label %land.rhs7.i.while.end.i_crit_edge, label %land.rhs7.i.while.cond4.i_crit_edge

land.rhs7.i.while.cond4.i_crit_edge:              ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond4.i

land.rhs7.i.while.end.i_crit_edge:                ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %land.rhs7.i.while.end.i_crit_edge, %while.cond4.i.while.end.i_crit_edge
  %scan.2.i = phi ptr [ %incdec.ptr.i, %land.rhs7.i.while.end.i_crit_edge ], [ %scan.1.i, %while.cond4.i.while.end.i_crit_edge ]
  %inc.i = add i32 %count.057.i, 1
  %cmp.not.i = icmp ugt ptr %scan.2.i, %add.ptr2.i
  br i1 %cmp.not.i, label %while.end.i.while.end12.i_crit_edge, label %while.end.i.land.rhs.i_crit_edge

while.end.i.land.rhs.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.end.i.while.end12.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end12.i

while.end12.i:                                    ; preds = %while.end.i.while.end12.i_crit_edge, %land.rhs.i.while.end12.i_crit_edge, %if.end73.while.end12.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.end73.while.end12.i_crit_edge ], [ %count.057.i, %land.rhs.i.while.end12.i_crit_edge ], [ %inc.i, %while.end.i.while.end12.i_crit_edge ]
  %scan.0.lcssa.i = phi ptr [ %add.ptr3.i, %if.end73.while.end12.i_crit_edge ], [ %scan.058.i, %land.rhs.i.while.end12.i_crit_edge ], [ %scan.2.i, %while.end.i.while.end12.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %scan.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %incdec.ptr14.i = getelementptr i8, ptr %scan.0.lcssa.i, i32 1
  %cmp15.i = icmp ugt ptr %incdec.ptr14.i, %add.ptr2.i
  br i1 %cmp15.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.66) #12
  br label %failed_idt

if.end.i:                                         ; preds = %while.end12.i
  %sub.ptr.lhs.cast18.i = ptrtoint ptr %incdec.ptr14.i to i32
  %sub.ptr.rhs.cast19.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub20.neg.i = add i32 %sub.ptr.rhs.cast19.i, -3
  %add.neg.i = add i32 %sub.ptr.sub20.neg.i, %97
  %sub.i = sub i32 %add.neg.i, %sub.ptr.lhs.cast18.i
  %and.i = and i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.end77, label %do.end25.i

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.69) #12
  br label %failed_idt

if.end77:                                         ; preds = %if.end.i
  %shr.i = ashr i32 %sub.i, 2
  %106 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %count.0.lcssa.i, ptr %num_channels, align 4
  call void @devres_close_group(ptr noundef %1, ptr noundef nonnull %call) #9
  %call78 = call fastcc i32 @xilly_setupchannels(ptr noundef %endpoint, ptr noundef %incdec.ptr14.i, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.failed_idt_crit_edge

if.end77.failed_idt_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_idt

if.end81:                                         ; preds = %if.end77
  %owner = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 1
  %107 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %owner, align 4
  %109 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_channels, align 4
  %call83 = call i32 @xillybus_init_chrdev(ptr noundef %1, ptr noundef nonnull @xillybus_fops, ptr noundef %108, ptr noundef %endpoint, ptr noundef %add.ptr3.i, i32 noundef %sub.ptr.sub.i, i32 noundef %110, ptr noundef nonnull @xillyname, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end81.failed_idt_crit_edge

if.end81.failed_idt_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_idt

if.end86:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = call i32 @devres_release_group(ptr noundef %1, ptr noundef nonnull %call) #9
  br label %cleanup89

failed_idt:                                       ; preds = %if.end81.failed_idt_crit_edge, %if.end77.failed_idt_crit_edge, %do.end25.i, %do.end.i, %do.end84.i, %do.end73.i, %do.end58.i, %do.end44.i, %while.end.failed_idt_crit_edge
  %rc.0 = phi i32 [ %call66, %while.end.failed_idt_crit_edge ], [ %call78, %if.end77.failed_idt_crit_edge ], [ %call83, %if.end81.failed_idt_crit_edge ], [ %..i, %do.end44.i ], [ -19, %do.end84.i ], [ -19, %do.end73.i ], [ -19, %do.end58.i ], [ -19, %do.end.i ], [ -19, %do.end25.i ]
  call fastcc void @xilly_quiesce(ptr noundef %endpoint)
  %111 = load ptr, ptr @xillybus_wq, align 4
  call void @flush_workqueue(ptr noundef %111) #9
  br label %cleanup89

cleanup89:                                        ; preds = %failed_idt, %if.end86, %do.end55, %if.end.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.0 = phi i32 [ -19, %do.end55 ], [ %rc.0, %failed_idt ], [ 0, %if.end86 ], [ -12, %entry.cleanup89_crit_edge ], [ %call2, %if.end.cleanup89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bogus_idt) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xilly_setupchannels(ptr noundef %ep, ptr nocapture noundef readonly %chandesc, i32 noundef %entries) unnamed_addr #0 align 64 {
entry:
  %rd_alloc = alloca %struct.xilly_alloc_state, align 4
  %wr_alloc = alloca %struct.xilly_alloc_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rd_alloc) #9
  %2 = call ptr @memcpy(ptr %rd_alloc, ptr @__const.xilly_setupchannels.rd_alloc, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wr_alloc) #9
  %3 = call ptr @memcpy(ptr %wr_alloc, ptr @__const.xilly_setupchannels.wr_alloc, i32 20)
  %num_channels = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 7
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 656) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup155_crit_edge, label %devm_kcalloc.exit, !prof !186

entry.cleanup155_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

devm_kcalloc.exit:                                ; preds = %entry
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %8, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup155_crit_edge, label %if.end

devm_kcalloc.exit.cleanup155_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

if.end:                                           ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels, align 4
  %add = add i32 %10, 1
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit287.thread, label %devm_kcalloc.exit287, !prof !186

devm_kcalloc.exit287.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %channels295 = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 8
  %13 = ptrtoint ptr %channels295 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %channels295, align 4
  br label %cleanup155

devm_kcalloc.exit287:                             ; preds = %if.end
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i284 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %14, i32 noundef 3520) #9
  %channels = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 8
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i284, ptr %channels, align 4
  %tobool6.not = icmp eq ptr %call5.i.i284, null
  br i1 %tobool6.not, label %devm_kcalloc.exit287.cleanup155_crit_edge, label %if.end8

devm_kcalloc.exit287.cleanup155_crit_edge:        ; preds = %devm_kcalloc.exit287
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

if.end8:                                          ; preds = %devm_kcalloc.exit287
  %16 = ptrtoint ptr %call5.i.i284 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %call5.i.i284, align 4
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not304 = icmp slt i32 %18, 1
  br i1 %cmp.not304, label %if.end8.for.cond52.preheader_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.cond52.preheader_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.body.for.cond52.preheader_crit_edge, %if.end8.for.cond52.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp53307 = icmp sgt i32 %entries, 0
  br i1 %cmp53307, label %for.cond52.preheader.for.body54_crit_edge, label %for.cond52.preheader.do.end152_crit_edge

for.cond52.preheader.do.end152_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end152

for.cond52.preheader.for.body54_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body54

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %channel.0306 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call5.i.i, %if.end8.for.body_crit_edge ]
  %i.0305 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end8.for.body_crit_edge ]
  %wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 4
  %19 = ptrtoint ptr %wr_buffers to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %wr_buffers, align 4
  %rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 24
  %20 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rd_buffers, align 4
  %num_wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 5
  %21 = ptrtoint ptr %num_wr_buffers to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %num_wr_buffers, align 4
  %num_rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 25
  %22 = ptrtoint ptr %num_rd_buffers to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %num_rd_buffers, align 4
  %wr_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 7
  %23 = ptrtoint ptr %wr_fpga_buf_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %wr_fpga_buf_idx, align 4
  %wr_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 8
  %24 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %wr_host_buf_idx, align 4
  %wr_host_buf_pos = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 9
  %25 = ptrtoint ptr %wr_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wr_host_buf_pos, align 4
  %wr_empty = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 10
  %26 = ptrtoint ptr %wr_empty to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %wr_empty, align 4
  %wr_ready = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 11
  %27 = ptrtoint ptr %wr_ready to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wr_ready, align 4
  %wr_sleepy = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 12
  %28 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %wr_sleepy, align 4
  %rd_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 27
  %wr_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 19
  %29 = ptrtoint ptr %wr_ref_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wr_ref_count, align 4
  %rd_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 34
  %30 = ptrtoint ptr %rd_ref_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rd_ref_count, align 4
  %wr_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 15
  %31 = call ptr @memset(ptr %rd_fpga_buf_idx, i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef %wr_spinlock, ptr noundef nonnull @.str.22, ptr noundef nonnull @xilly_setupchannels.__key, i16 noundef signext 3) #9
  %rd_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %rd_spinlock, ptr noundef nonnull @.str.24, ptr noundef nonnull @xilly_setupchannels.__key.23, i16 noundef signext 3) #9
  %wr_mutex = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %wr_mutex, ptr noundef nonnull @.str.26, ptr noundef nonnull @xilly_setupchannels.__key.25) #9
  %rd_mutex = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %rd_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @xilly_setupchannels.__key.27) #9
  %rd_wait = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 33
  tail call void @__init_waitqueue_head(ptr noundef %rd_wait, ptr noundef nonnull @.str.30, ptr noundef nonnull @xilly_setupchannels.__key.29) #9
  %wr_wait = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %wr_wait, ptr noundef nonnull @.str.32, ptr noundef nonnull @xilly_setupchannels.__key.31) #9
  %wr_ready_wait = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %wr_ready_wait, ptr noundef nonnull @.str.34, ptr noundef nonnull @xilly_setupchannels.__key.33) #9
  %rd_workitem = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 38
  tail call void @__init_work(ptr noundef %rd_workitem, i32 noundef 0) #9
  %32 = ptrtoint ptr %rd_workitem to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %rd_workitem, align 4
  %lockdep_map = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 38, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.36, ptr noundef nonnull @xilly_setupchannels.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry39 = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 38, i32 0, i32 1
  %33 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 38, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry39, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 38, i32 0, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xillybus_autoflush, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 38, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.38, ptr noundef nonnull @xilly_setupchannels.__key.37) #9
  %36 = ptrtoint ptr %channel.0306 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ep, ptr %channel.0306, align 4
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 1
  %37 = ptrtoint ptr %chan_num to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.0305, ptr %chan_num, align 4
  %log2_element_size = getelementptr inbounds %struct.xilly_channel, ptr %channel.0306, i32 0, i32 2
  %38 = ptrtoint ptr %log2_element_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %log2_element_size, align 4
  %incdec.ptr = getelementptr %struct.xilly_channel, ptr %channel.0306, i32 1
  %39 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channels, align 4
  %arrayidx51 = getelementptr ptr, ptr %40, i32 %i.0305
  %41 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %channel.0306, ptr %arrayidx51, align 4
  %inc = add i32 %i.0305, 1
  %42 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_channels, align 4
  %cmp.not = icmp sgt i32 %inc, %43
  br i1 %cmp.not, label %for.body.for.cond52.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.cond52.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond52.preheader

for.body54:                                       ; preds = %for.inc145.for.body54_crit_edge, %for.cond52.preheader.for.body54_crit_edge
  %msg_buf_done.0310 = phi i32 [ %msg_buf_done.1, %for.inc145.for.body54_crit_edge ], [ 0, %for.cond52.preheader.for.body54_crit_edge ]
  %entry2.0309 = phi i32 [ %inc146, %for.inc145.for.body54_crit_edge ], [ 0, %for.cond52.preheader.for.body54_crit_edge ]
  %chandesc.addr.0308 = phi ptr [ %add.ptr, %for.inc145.for.body54_crit_edge ], [ %chandesc, %for.cond52.preheader.for.body54_crit_edge ]
  %44 = ptrtoint ptr %chandesc.addr.0308 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chandesc.addr.0308, align 1
  %conv = zext i8 %45 to i32
  %46 = lshr i32 %conv, 1
  %arrayidx58 = getelementptr i8, ptr %chandesc.addr.0308, i32 1
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %48 to i32
  %and60 = shl nuw nsw i32 %conv59, 7
  %shl = and i32 %and60, 1920
  %or = or i32 %shl, %46
  %49 = lshr i32 %conv59, 4
  %and64 = and i32 %49, 3
  %50 = lshr i32 %conv59, 6
  %and68 = and i32 %50, 1
  %51 = lshr i32 %conv59, 7
  %arrayidx73 = getelementptr i8, ptr %chandesc.addr.0308, i32 2
  %52 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  %and75 = and i32 %conv74, 31
  %arrayidx77 = getelementptr i8, ptr %chandesc.addr.0308, i32 3
  %54 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx77, align 1
  %56 = and i8 %55, 15
  %and79 = zext i8 %56 to i32
  %shl80 = shl nuw nsw i32 1, %and79
  %57 = lshr i32 %conv74, 7
  %58 = lshr i32 %conv74, 6
  %and88 = and i32 %58, 1
  %59 = lshr i32 %conv74, 5
  %and92 = and i32 %59, 1
  %60 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %61)
  %cmp94 = icmp sgt i32 %or, %61
  br i1 %cmp94, label %for.body54.do.end102_crit_edge, label %lor.lhs.false

for.body54.do.end102_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end102

lor.lhs.false:                                    ; preds = %for.body54
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp96 = icmp eq i32 %or, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool98.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp96, i1 %tobool98.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.end102_crit_edge, label %if.end104

lor.lhs.false.do.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end102

do.end102:                                        ; preds = %lor.lhs.false.do.end102_crit_edge, %for.body54.do.end102_crit_edge
  %62 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ep, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.39) #12
  br label %cleanup155

if.end104:                                        ; preds = %lor.lhs.false
  %64 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %channels, align 4
  %arrayidx106 = getelementptr ptr, ptr %65, i32 %or
  %66 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx106, align 4
  %tobool107.not.not = xor i1 %tobool98.not, true
  %or.cond283 = select i1 %tobool107.not.not, i1 %cmp96, i1 false
  br i1 %or.cond283, label %if.end104.if.end122_crit_edge, label %if.then111

if.end104.if.end122_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then111:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and64)
  %cmp112 = icmp eq i32 %and64, 3
  %spec.select = select i1 %cmp112, i32 2, i32 %and64
  %log2_element_size114 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %log2_element_size114 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.select, ptr %log2_element_size114, align 4
  %69 = shl nuw nsw i32 %shl80, 2
  %shl116 = shl nuw nsw i32 1, %spec.select
  %call5.i.i288 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %69, i32 noundef 3520) #9
  %tobool118.not = icmp eq ptr %call5.i.i288, null
  br i1 %tobool118.not, label %if.then111.cleanup155_crit_edge, label %if.then111.if.end122_crit_edge

if.then111.if.end122_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then111.cleanup155_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

if.end122:                                        ; preds = %if.then111.if.end122_crit_edge, %if.end104.if.end122_crit_edge
  %shl116.pn = phi i32 [ %shl116, %if.then111.if.end122_crit_edge ], [ 4, %if.end104.if.end122_crit_edge ]
  %buffers.0 = phi ptr [ %call5.i.i288, %if.then111.if.end122_crit_edge ], [ null, %if.end104.if.end122_crit_edge ]
  %bytebufsize.0 = shl i32 %shl116.pn, %and75
  br i1 %tobool98.not, label %if.then124, label %if.else129

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %num_rd_buffers125 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 25
  %70 = ptrtoint ptr %num_rd_buffers125 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shl80, ptr %num_rd_buffers125, align 4
  %rd_buf_size = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 26
  %71 = ptrtoint ptr %rd_buf_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %bytebufsize.0, ptr %rd_buf_size, align 4
  %rd_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 35
  %72 = ptrtoint ptr %rd_allow_partial to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and68, ptr %rd_allow_partial, align 4
  %rd_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 36
  %73 = ptrtoint ptr %rd_synchronous to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %51, ptr %rd_synchronous, align 4
  %rd_exclusive_open = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 37
  %74 = ptrtoint ptr %rd_exclusive_open to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %57, ptr %rd_exclusive_open, align 4
  %seekable126 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 3
  %75 = ptrtoint ptr %seekable126 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and88, ptr %seekable126, align 4
  %rd_buffers127 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 24
  %76 = ptrtoint ptr %rd_buffers127 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buffers.0, ptr %rd_buffers127, align 4
  %call128 = call fastcc i32 @xilly_get_dma_buffers(ptr noundef %ep, ptr noundef nonnull %rd_alloc, ptr noundef %buffers.0, i32 noundef %shl80, i32 noundef %bytebufsize.0)
  br label %cleanup

if.else129:                                       ; preds = %if.end122
  br i1 %cmp96, label %if.else137, label %if.then132

if.then132:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #11
  %num_wr_buffers133 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 5
  %77 = ptrtoint ptr %num_wr_buffers133 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shl80, ptr %num_wr_buffers133, align 4
  %wr_buf_size = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 6
  %78 = ptrtoint ptr %wr_buf_size to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %bytebufsize.0, ptr %wr_buf_size, align 4
  %seekable134 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 3
  %79 = ptrtoint ptr %seekable134 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and88, ptr %seekable134, align 4
  %wr_supports_nonempty = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 23
  %80 = ptrtoint ptr %wr_supports_nonempty to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and92, ptr %wr_supports_nonempty, align 4
  %wr_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 21
  %81 = ptrtoint ptr %wr_allow_partial to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and68, ptr %wr_allow_partial, align 4
  %wr_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 20
  %82 = ptrtoint ptr %wr_synchronous to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %51, ptr %wr_synchronous, align 4
  %wr_exclusive_open = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 22
  %83 = ptrtoint ptr %wr_exclusive_open to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %57, ptr %wr_exclusive_open, align 4
  %wr_buffers135 = getelementptr inbounds %struct.xilly_channel, ptr %67, i32 0, i32 4
  %84 = ptrtoint ptr %wr_buffers135 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %buffers.0, ptr %wr_buffers135, align 4
  %call136 = call fastcc i32 @xilly_get_dma_buffers(ptr noundef %ep, ptr noundef nonnull %wr_alloc, ptr noundef %buffers.0, i32 noundef %shl80, i32 noundef %bytebufsize.0)
  br label %cleanup

if.else137:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #11
  %call138 = call fastcc i32 @xilly_get_dma_buffers(ptr noundef %ep, ptr noundef nonnull %wr_alloc, ptr noundef null, i32 noundef %shl80, i32 noundef %bytebufsize.0)
  %inc139 = add i32 %msg_buf_done.0310, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else137, %if.then132, %if.then124
  %rc.0 = phi i32 [ %call136, %if.then132 ], [ %call138, %if.else137 ], [ %call128, %if.then124 ]
  %msg_buf_done.1 = phi i32 [ %msg_buf_done.0310, %if.then132 ], [ %inc139, %if.else137 ], [ %msg_buf_done.0310, %if.then124 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool142.not = icmp eq i32 %rc.0, 0
  br i1 %tobool142.not, label %for.inc145, label %cleanup.cleanup155_crit_edge

cleanup.cleanup155_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

for.inc145:                                       ; preds = %cleanup
  %inc146 = add nuw nsw i32 %entry2.0309, 1
  %add.ptr = getelementptr i8, ptr %chandesc.addr.0308, i32 4
  %exitcond.not = icmp eq i32 %inc146, %entries
  br i1 %exitcond.not, label %for.end147, label %for.inc145.for.body54_crit_edge

for.inc145.for.body54_crit_edge:                  ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body54

for.end147:                                       ; preds = %for.inc145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_buf_done.1)
  %tobool148.not = icmp eq i32 %msg_buf_done.1, 0
  br i1 %tobool148.not, label %for.end147.do.end152_crit_edge, label %for.end147.cleanup155_crit_edge

for.end147.cleanup155_crit_edge:                  ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup155

for.end147.do.end152_crit_edge:                   ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end152

do.end152:                                        ; preds = %for.end147.do.end152_crit_edge, %for.cond52.preheader.do.end152_crit_edge
  %85 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ep, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.42) #12
  br label %cleanup155

cleanup155:                                       ; preds = %do.end152, %for.end147.cleanup155_crit_edge, %cleanup.cleanup155_crit_edge, %if.then111.cleanup155_crit_edge, %do.end102, %devm_kcalloc.exit287.cleanup155_crit_edge, %devm_kcalloc.exit287.thread, %devm_kcalloc.exit.cleanup155_crit_edge, %entry.cleanup155_crit_edge
  %retval.2 = phi i32 [ -19, %do.end152 ], [ -12, %devm_kcalloc.exit.cleanup155_crit_edge ], [ -12, %devm_kcalloc.exit287.cleanup155_crit_edge ], [ 0, %for.end147.cleanup155_crit_edge ], [ -12, %devm_kcalloc.exit287.thread ], [ -12, %entry.cleanup155_crit_edge ], [ -19, %do.end102 ], [ -12, %cleanup.cleanup155_crit_edge ], [ -12, %if.then111.cleanup155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wr_alloc) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rd_alloc) #9
  ret i32 %retval.2
}

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
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xillybus_init_chrdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xilly_quiesce(ptr noundef %endpoint) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idtlen = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 11
  %0 = ptrtoint ptr %idtlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idtlen, align 4
  %dma_using_dac = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 2
  %1 = ptrtoint ptr %dma_using_dac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dma_using_dac, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 3
  %3 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %and = shl i32 %2, 24
  %5 = and i32 %and, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #9, !srcloc !185
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1836) #9
  %6 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.then9

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %ep_wait = getelementptr inbounds %struct.xilly_endpoint, ptr %endpoint, i32 0, i32 6
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %ep_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %9 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp1314 = icmp sgt i32 %10, -1
  br i1 %cmp1314, label %if.then9.for.end_crit_edge, label %if.then9.if.end29_crit_edge

if.then9.if.end29_crit_edge:                      ; preds = %if.then9
  br label %if.end29

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %if.then9.if.end29_crit_edge
  %__ret10.116 = phi i32 [ %__ret10.1, %cleanup.if.end29_crit_edge ], [ 10, %if.then9.if.end29_crit_edge ]
  %call15 = phi i32 [ %call, %cleanup.if.end29_crit_edge ], [ %call13, %if.then9.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool30.not = icmp eq i32 %call15, 0
  br i1 %tobool30.not, label %cleanup, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

cleanup:                                          ; preds = %if.end29
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret10.116) #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %ep_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %11 = ptrtoint ptr %idtlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idtlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp13 = icmp sgt i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool17.not = icmp eq i32 %call33, 0
  %13 = select i1 %cmp13, i1 %tobool17.not, i1 false
  %__ret10.1 = select i1 %13, i32 1, i32 %call33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool23.not = icmp eq i32 %__ret10.1, 0
  %14 = select i1 %cmp13, i1 true, i1 %tobool23.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.if.end29_crit_edge

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ 10, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %ep_wait, ptr noundef nonnull %__wq_entry) #9
  br label %if.end36

if.end36:                                         ; preds = %for.end, %if.end29.if.end36_crit_edge
  %__ret10.23 = phi i32 [ %__ret10.1.lcssa, %for.end ], [ %call15, %if.end29.if.end36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret10.23)
  %cmp38 = icmp slt i32 %__ret10.23, 1
  br i1 %cmp38, label %do.end42, label %if.end36.cleanup44_crit_edge

if.end36.cleanup44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %endpoint, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.81) #12
  br label %cleanup44

cleanup44:                                        ; preds = %do.end42, %if.end36.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xillybus_endpoint_remove(ptr noundef %endpoint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %endpoint, align 4
  tail call void @xillybus_cleanup_chrdev(ptr noundef %endpoint, ptr noundef %1) #9
  tail call fastcc void @xilly_quiesce(ptr noundef %endpoint)
  %2 = load ptr, ptr @xillybus_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xillybus_cleanup_chrdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xillybus_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @xillybus_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @xillyname, i32 noundef 0, i32 noundef 0) #9
  store ptr %call, ptr @xillybus_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xillybus_autoflush(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -552
  %call = tail call fastcc i32 @xillybus_myflush(ptr noundef %add.ptr3, i32 noundef -1)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call, label %do.end7 [
    i32 -4, label %do.end
    i32 0, label %entry.if.end10_crit_edge
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr3, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.44) #12
  br label %if.end10

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.47) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %do.end, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xilly_get_dma_buffers(ptr nocapture noundef %ep, ptr nocapture noundef %s, ptr noundef writeonly %buffers, i32 noundef %bufnum, i32 noundef %bytebufsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %tobool.not = icmp eq ptr %buffers, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %bufnum, i32 12) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.then.cleanup48_crit_edge, label %devm_kcalloc.exit, !prof !186

if.then.cleanup48_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

devm_kcalloc.exit:                                ; preds = %if.then
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %4, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool2.not, label %devm_kcalloc.exit.cleanup48_crit_edge, label %devm_kcalloc.exit.if.end4_crit_edge

devm_kcalloc.exit.if.end4_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

devm_kcalloc.exit.cleanup48_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end4:                                          ; preds = %devm_kcalloc.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %this_buffer.0 = phi ptr [ %call5.i.i, %devm_kcalloc.exit.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufnum)
  %cmp114 = icmp sgt i32 %bufnum, 0
  br i1 %cmp114, label %for.body.lr.ph, label %if.end4.cleanup48_crit_edge

if.end4.cleanup48_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

for.body.lr.ph:                                   ; preds = %if.end4
  %left_of_salami = getelementptr inbounds %struct.xilly_alloc_state, ptr %s, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %bytebufsize)
  %cmp14107 = icmp sgt i32 %bytebufsize, 4096
  %direction = getelementptr inbounds %struct.xilly_alloc_state, ptr %s, i32 0, i32 3
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 3
  %regdirection = getelementptr inbounds %struct.xilly_alloc_state, ptr %s, i32 0, i32 4
  %nbuffer = getelementptr inbounds %struct.xilly_alloc_state, ptr %s, i32 0, i32 2
  %msgbuf_addr = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 12
  %msgbuf_dma_addr = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 13
  %msg_buf_size = getelementptr inbounds %struct.xilly_endpoint, ptr %ep, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.body.lr.ph
  %this_buffer.1117 = phi ptr [ %this_buffer.0, %for.body.lr.ph ], [ %this_buffer.2, %if.end43.for.body_crit_edge ]
  %i.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %if.end43.for.body_crit_edge ]
  %5 = ptrtoint ptr %left_of_salami to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %left_of_salami, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %bytebufsize)
  %cmp5 = icmp slt i32 %6, %bytebufsize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp sgt i32 %6, 0
  %or.cond = and i1 %cmp5, %cmp7
  br i1 %or.cond, label %do.end, label %if.end10

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.51) #12
  br label %cleanup48

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12 = icmp eq i32 %6, 0
  br i1 %cmp12, label %while.cond.preheader, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

while.cond.preheader:                             ; preds = %if.end10
  br i1 %cmp14107, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %allocsize.0109 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ 4096, %while.cond.preheader.while.body_crit_edge ]
  %allocorder.0108 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %mul = shl i32 %allocsize.0109, 1
  %inc = add i32 %allocorder.0108, 1
  %cmp14 = icmp slt i32 %mul, %bytebufsize
  br i1 %cmp14, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %allocorder.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %allocsize.0.lcssa = phi i32 [ 4096, %while.cond.preheader.while.end_crit_edge ], [ %mul, %while.body.while.end_crit_edge ]
  %call15 = tail call i32 @devm_get_free_pages(ptr noundef %1, i32 noundef 3524, i32 noundef %allocorder.0.lcssa) #9
  %9 = inttoptr i32 %call15 to ptr
  %10 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %while.end.cleanup48_crit_edge, label %if.end19

while.end.cleanup48_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end19:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %left_of_salami to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %allocsize.0.lcssa, ptr %left_of_salami, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end10.if.end22_crit_edge
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s, align 4
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.cleanup48_crit_edge, label %if.end.i

if.end22.cleanup48_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end.i:                                         ; preds = %if.end22
  %17 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !187

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %18) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %22, %if.end.i.i.i ], [ %20, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %23 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ep, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %24, i32 noundef -1) #9
  br label %cleanup.sink.split.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %18, ptr noundef %13, i32 noundef %bytebufsize) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %26 = ptrtoint ptr %13 to i32
  %sub.i.i = add i32 %26, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %25, i32 %shr.i.i
  %and.i.i = and i32 %26, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %bytebufsize, i32 noundef %15, i32 noundef 0) #9
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %28, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.cleanup.sink.split.i_crit_edge, label %if.end6.i

dma_map_single_attrs.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %dma_map_single_attrs.exit.i
  %29 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep, align 4
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %call7.i.i.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.xilly_mapping, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call41.i.i, ptr %dma_addr.i, align 4
  %size8.i = getelementptr inbounds %struct.xilly_mapping, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bytebufsize, ptr %size8.i, align 8
  %direction9.i = getelementptr inbounds %struct.xilly_mapping, ptr %call7.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %direction9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %15, ptr %direction9.i, align 4
  %call.i26.i = tail call i32 @devm_add_action(ptr noundef %30, ptr noundef nonnull @xilly_unmap, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool.not.i.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool.not.i.i, label %if.end27, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr.i.le = getelementptr inbounds %struct.xilly_mapping, ptr %call7.i.i.i, i32 0, i32 1
  %size8.i.le = getelementptr inbounds %struct.xilly_mapping, ptr %call7.i.i.i, i32 0, i32 2
  %direction9.i.le = getelementptr inbounds %struct.xilly_mapping, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i.i, align 8
  %37 = ptrtoint ptr %dma_addr.i.le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr.i.le, align 4
  %39 = ptrtoint ptr %size8.i.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size8.i.le, align 8
  %41 = ptrtoint ptr %direction9.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %direction9.i.le, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef 0) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i27.i, %dma_map_single_attrs.exit.i.cleanup.sink.split.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %retval.0.ph.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ -19, %dma_map_single_attrs.exit.thread.i ], [ -19, %dma_map_single_attrs.exit.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup48

if.end27:                                         ; preds = %if.end6.i
  %43 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %45) #9, !srcloc !185
  %46 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %registers, align 4
  %add.ptr31 = getelementptr i8, ptr %47, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #9, !srcloc !185
  %48 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s, align 4
  br i1 %tobool.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %this_buffer.1117 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %this_buffer.1117, align 4
  %dma_addr35 = getelementptr inbounds %struct.xilly_buffer, ptr %this_buffer.1117, i32 0, i32 1
  %51 = ptrtoint ptr %dma_addr35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call41.i.i, ptr %dma_addr35, align 4
  %incdec.ptr = getelementptr %struct.xilly_buffer, ptr %this_buffer.1117, i32 1
  %arrayidx = getelementptr ptr, ptr %buffers, i32 %i.0115
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %this_buffer.1117, ptr %arrayidx, align 4
  %53 = ptrtoint ptr %regdirection to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %regdirection, align 4
  %55 = ptrtoint ptr %nbuffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nbuffer, align 4
  %inc36 = add i32 %56, 1
  store i32 %inc36, ptr %nbuffer, align 4
  %or = or i32 %56, %54
  %57 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %registers, align 4
  %add.ptr38 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %59) #9, !srcloc !185
  br label %if.end43

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %msgbuf_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %49, ptr %msgbuf_addr, align 4
  %61 = ptrtoint ptr %msgbuf_dma_addr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call41.i.i, ptr %msgbuf_dma_addr, align 4
  %62 = ptrtoint ptr %msg_buf_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %bytebufsize, ptr %msg_buf_size, align 4
  %63 = ptrtoint ptr %regdirection to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regdirection, align 4
  %65 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %registers, align 4
  %add.ptr42 = getelementptr i8, ptr %66, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %67) #9, !srcloc !185
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then33
  %this_buffer.2 = phi ptr [ %incdec.ptr, %if.then33 ], [ %this_buffer.1117, %if.else ]
  %68 = ptrtoint ptr %left_of_salami to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %left_of_salami, align 4
  %sub = sub i32 %69, %bytebufsize
  store i32 %sub, ptr %left_of_salami, align 4
  %70 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s, align 4
  %add.ptr46 = getelementptr i8, ptr %71, i32 %bytebufsize
  store ptr %add.ptr46, ptr %s, align 4
  %inc47 = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc47, %bufnum
  br i1 %exitcond.not, label %if.end43.cleanup48_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end43.cleanup48_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

cleanup48:                                        ; preds = %if.end43.cleanup48_crit_edge, %cleanup.sink.split.i, %if.end22.cleanup48_crit_edge, %while.end.cleanup48_crit_edge, %do.end, %if.end4.cleanup48_crit_edge, %devm_kcalloc.exit.cleanup48_crit_edge, %if.then.cleanup48_crit_edge
  %retval.3 = phi i32 [ -19, %do.end ], [ -12, %devm_kcalloc.exit.cleanup48_crit_edge ], [ -12, %if.then.cleanup48_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ 0, %if.end4.cleanup48_crit_edge ], [ 0, %if.end43.cleanup48_crit_edge ], [ -12, %while.end.cleanup48_crit_edge ], [ -12, %if.end22.cleanup48_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xillybus_myflush(ptr noundef %channel, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry163 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup226_crit_edge

entry.cleanup226_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup226

if.end:                                           ; preds = %entry
  %rd_mutex = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 32
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %rd_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup226_crit_edge

if.end.cleanup226_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup226

if.end3:                                          ; preds = %if.end
  %rd_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 34
  %4 = ptrtoint ptr %rd_ref_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end3.done_crit_edge, label %if.end6

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end6:                                          ; preds = %if.end3
  %rd_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 29
  %6 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_host_buf_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %cond.true, label %if.end6.cond.end_crit_edge

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %num_rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 25
  %8 = ptrtoint ptr %num_rd_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rd_buffers, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end6.cond.end_crit_edge
  %cond.in = phi i32 [ %9, %cond.true ], [ %7, %if.end6.cond.end_crit_edge ]
  %cond = add i32 %cond.in, -1
  %rd_host_buf_pos = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 28
  %10 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rd_host_buf_pos, align 4
  %log2_element_size = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 2
  %12 = ptrtoint ptr %log2_element_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %log2_element_size, align 4
  %shr = ashr i32 %11, %13
  %shl = shl i32 %shr, %13
  %sub10 = sub i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool11.not = icmp eq i32 %shr, 0
  br i1 %tobool11.not, label %if.else67, label %if.then12

if.then12:                                        ; preds = %cond.end
  %rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp15342 = icmp sgt i32 %sub10, 0
  br i1 %cmp15342, label %for.body.preheader, label %if.then12.do.body17_crit_edge

if.then12.do.body17_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

for.body.preheader:                               ; preds = %if.then12
  %14 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rd_buffers, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %7
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %shl
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0344 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tail.0343 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %tail.0343, i32 1
  %20 = ptrtoint ptr %tail.0343 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tail.0343, align 1
  %arrayidx16 = getelementptr %struct.xilly_channel, ptr %channel, i32 0, i32 39, i32 %i.0344
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx16, align 1
  %inc = add nuw nsw i32 %i.0344, 1
  %exitcond.not = icmp eq i32 %inc, %sub10
  br i1 %exitcond.not, label %for.body.do.body17_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.body17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

do.body17:                                        ; preds = %for.body.do.body17_crit_edge, %if.then12.do.body17_crit_edge
  %rd_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 31
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rd_spinlock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp23 = icmp slt i32 %timeout, 0
  br i1 %cmp23, label %land.lhs.true, label %do.body17.if.end30_crit_edge

do.body17.if.end30_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %do.body17
  %rd_full = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 30
  %23 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rd_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %rd_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 27
  %25 = ptrtoint ptr %rd_fpga_buf_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rd_fpga_buf_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %26)
  %cmp26.not = icmp eq i32 %cond, %26
  br i1 %cmp26.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %lor.lhs.false.if.end30_crit_edge, %do.body17.if.end30_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shl)
  %cmp31 = icmp ne i32 %11, %shl
  %conv33 = zext i1 %cmp31 to i8
  %arrayidx35 = getelementptr %struct.xilly_channel, ptr %channel, i32 0, i32 39, i32 3
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv33, ptr %arrayidx35, align 1
  %rd_fpga_buf_idx36 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 27
  %28 = ptrtoint ptr %rd_fpga_buf_idx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rd_fpga_buf_idx36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %29)
  %cmp37 = icmp eq i32 %7, %29
  br i1 %cmp37, label %if.then39, label %if.end30.if.end41_crit_edge

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %rd_full40 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 30
  %30 = ptrtoint ptr %rd_full40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %rd_full40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end30.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock, i32 noundef %call20) #9
  %num_rd_buffers43 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 25
  %31 = ptrtoint ptr %num_rd_buffers43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_rd_buffers43, align 4
  %sub44 = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub44)
  %cmp45.not = icmp slt i32 %7, %sub44
  br i1 %cmp45.not, label %if.else, label %if.end41.cleanup.thread_crit_edge

if.end41.cleanup.thread_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rd_host_buf_idx, align 4
  %inc50 = add i32 %34, 1
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.end41.cleanup.thread_crit_edge
  %storemerge = phi i32 [ %inc50, %if.else ], [ 0, %if.end41.cleanup.thread_crit_edge ]
  %35 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %rd_host_buf_idx, align 4
  %36 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rd_buffers, align 4
  %arrayidx54 = getelementptr ptr, ptr %41, i32 %7
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx54, align 4
  %dma_addr = getelementptr inbounds %struct.xilly_buffer, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr, align 4
  %rd_buf_size = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 26
  %46 = ptrtoint ptr %rd_buf_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rd_buf_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %39, i32 noundef %45, i32 noundef %47, i32 noundef 1) #9
  %48 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channel, align 4
  %register_mutex = getelementptr inbounds %struct.xilly_endpoint, ptr %49, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #9
  %sub56 = add i32 %shr, -1
  %50 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %channel, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %registers, align 4
  %add.ptr58 = getelementptr i8, ptr %53, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %sub56) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %54) #9, !srcloc !185
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 1
  %55 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chan_num, align 4
  %shl59 = shl i32 %56, 1
  %shl60 = shl i32 %7, 12
  %or = or i32 %shl60, %shl59
  %or61 = or i32 %or, 33554432
  %57 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %channel, align 4
  %registers63 = getelementptr inbounds %struct.xilly_endpoint, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %registers63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %registers63, align 4
  %add.ptr64 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %or61) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %61) #9, !srcloc !185
  %62 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %channel, align 4
  %register_mutex66 = getelementptr inbounds %struct.xilly_endpoint, ptr %63, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %register_mutex66) #9
  br label %if.end75

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock, i32 noundef %call20) #9
  br label %done

if.else67:                                        ; preds = %cond.end
  br i1 %cmp, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  %num_rd_buffers71 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 25
  %64 = ptrtoint ptr %num_rd_buffers71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_rd_buffers71, align 4
  %sub72 = add i32 %65, -1
  br label %if.end75

if.else73:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %7, -1
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then70, %cleanup.thread
  %bufidx.0 = phi i32 [ %sub72, %if.then70 ], [ %dec, %if.else73 ], [ %7, %cleanup.thread ]
  %66 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub10, ptr %rd_host_buf_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp77 = icmp slt i32 %timeout, 0
  br i1 %cmp77, label %if.end75.done_crit_edge, label %while.cond.preheader

if.end75.done_crit_edge:                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

while.cond.preheader:                             ; preds = %if.end75
  %rd_spinlock88 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 31
  %rd_fpga_buf_idx95 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 27
  %rd_full99 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp107 = icmp eq i32 %timeout, 0
  %rd_wait167 = getelementptr inbounds %struct.xilly_channel, ptr %channel, i32 0, i32 33
  br label %while.cond

while.cond:                                       ; preds = %if.end215.while.cond_crit_edge, %while.cond.preheader
  %call90 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rd_spinlock88) #9
  %67 = ptrtoint ptr %rd_fpga_buf_idx95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rd_fpga_buf_idx95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bufidx.0, i32 %68)
  %cmp96.not = icmp eq i32 %bufidx.0, %68
  br i1 %cmp96.not, label %if.end100, label %if.end100.thread

if.end100.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %rd_full99, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock88, i32 noundef %call90) #9
  br label %if.end106

if.end100:                                        ; preds = %while.cond
  %70 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr357 = load i32, ptr %rd_full99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr357)
  %tobool102.not = icmp eq i32 %.pr357, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock88, i32 noundef %call90) #9
  br i1 %tobool102.not, label %if.end100.done_crit_edge, label %if.end100.if.end106_crit_edge

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.end100.done_crit_edge:                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end106:                                        ; preds = %if.end100.if.end106_crit_edge, %if.end100.thread
  br i1 %cmp107, label %if.then109, label %if.else137

if.then109:                                       ; preds = %if.end106
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1149) #9
  %71 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rd_full99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool117.not = icmp eq i32 %72, 0
  br i1 %tobool117.not, label %if.then109.if.end215_crit_edge, label %if.then118

if.then109.if.end215_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.then118:                                       ; preds = %if.then109
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %73 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call121352 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %74 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rd_full99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool123.not353 = icmp eq i32 %75, 0
  br i1 %tobool123.not353, label %if.then118.for.end132_crit_edge, label %if.then118.if.end125_crit_edge

if.then118.if.end125_crit_edge:                   ; preds = %if.then118
  br label %if.end125

if.then118.for.end132_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end132

if.end125:                                        ; preds = %cleanup129.if.end125_crit_edge, %if.then118.if.end125_crit_edge
  %call121354 = phi i32 [ %call121, %cleanup129.if.end125_crit_edge ], [ %call121352, %if.then118.if.end125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121354)
  %tobool126.not = icmp eq i32 %call121354, 0
  br i1 %tobool126.not, label %cleanup129, label %if.end125.__out_crit_edge

if.end125.__out_crit_edge:                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup129:                                       ; preds = %if.end125
  call void @schedule() #9
  %call121 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %76 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rd_full99, align 4
  %tobool123.not = icmp eq i32 %77, 0
  br i1 %tobool123.not, label %cleanup129.for.end132_crit_edge, label %cleanup129.if.end125_crit_edge

cleanup129.if.end125_crit_edge:                   ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

cleanup129.for.end132_crit_edge:                  ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end132

for.end132:                                       ; preds = %cleanup129.for.end132_crit_edge, %if.then118.for.end132_crit_edge
  call void @finish_wait(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end132, %if.end125.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end215thread-pre-split

if.else137:                                       ; preds = %if.end106
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1154) #9
  %78 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rd_full99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool146.not = icmp eq i32 %79, 0
  br i1 %tobool146.not, label %if.else137.if.end215_crit_edge, label %if.then162

if.else137.if.end215_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215

if.then162:                                       ; preds = %if.else137
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry163) #9
  %80 = call ptr @memset(ptr %__wq_entry163, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry163, i32 noundef 0) #9
  %call168345 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry163, i32 noundef 1) #9
  %81 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rd_full99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool171.not346 = icmp eq i32 %82, 0
  br i1 %tobool171.not346, label %if.end204.thread, label %if.then162.if.end192_crit_edge

if.then162.if.end192_crit_edge:                   ; preds = %if.then162
  br label %if.end192

if.end204.thread:                                 ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry163) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry163) #9
  br label %if.end215thread-pre-split

if.end192:                                        ; preds = %cleanup197.if.end192_crit_edge, %if.then162.if.end192_crit_edge
  %__ret164.1350 = phi i32 [ %__ret164.1, %cleanup197.if.end192_crit_edge ], [ %timeout, %if.then162.if.end192_crit_edge ]
  %call168349 = phi i32 [ %call168, %cleanup197.if.end192_crit_edge ], [ %call168345, %if.then162.if.end192_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168349)
  %tobool193.not = icmp eq i32 %call168349, 0
  br i1 %tobool193.not, label %cleanup197, label %if.end204.thread336

if.end204.thread336:                              ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry163) #9
  br label %if.end215thread-pre-split

cleanup197:                                       ; preds = %if.end192
  %call196 = call i32 @schedule_timeout(i32 noundef %__ret164.1350) #9
  %call168 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry163, i32 noundef 1) #9
  %83 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rd_full99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool171.not = icmp eq i32 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool178.not = icmp eq i32 %call196, 0
  %85 = select i1 %tobool171.not, i1 %tobool178.not, i1 false
  %__ret164.1 = select i1 %85, i32 1, i32 %call196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret164.1)
  %tobool185.not = icmp eq i32 %__ret164.1, 0
  %86 = select i1 %tobool171.not, i1 true, i1 %tobool185.not
  br i1 %86, label %if.end204, label %cleanup197.if.end192_crit_edge

cleanup197.if.end192_crit_edge:                   ; preds = %cleanup197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.end204:                                        ; preds = %cleanup197
  call void @finish_wait(ptr noundef %rd_wait167, ptr noundef nonnull %__wq_entry163) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry163) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret164.1)
  %cmp206 = icmp eq i32 %__ret164.1, 0
  br i1 %cmp206, label %do.end211, label %if.end204.if.end215thread-pre-split_crit_edge

if.end204.if.end215thread-pre-split_crit_edge:    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end215thread-pre-split

do.end211:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %channel, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.49) #12
  br label %done

if.end215thread-pre-split:                        ; preds = %if.end204.if.end215thread-pre-split_crit_edge, %if.end204.thread336, %if.end204.thread, %__out
  %91 = ptrtoint ptr %rd_full99 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr = load i32, ptr %rd_full99, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.end215thread-pre-split, %if.else137.if.end215_crit_edge, %if.then109.if.end215_crit_edge
  %92 = phi i32 [ %.pr, %if.end215thread-pre-split ], [ 0, %if.then109.if.end215_crit_edge ], [ 0, %if.else137.if.end215_crit_edge ]
  %tobool217.not = icmp eq i32 %92, 0
  br i1 %tobool217.not, label %if.end215.while.cond_crit_edge, label %if.end215.done_crit_edge

if.end215.done_crit_edge:                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end215.while.cond_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

done:                                             ; preds = %if.end215.done_crit_edge, %do.end211, %if.end100.done_crit_edge, %if.end75.done_crit_edge, %cleanup, %if.end3.done_crit_edge
  %rc.0 = phi i32 [ 0, %cleanup ], [ 0, %if.end75.done_crit_edge ], [ -110, %do.end211 ], [ 0, %if.end3.done_crit_edge ], [ -4, %if.end215.done_crit_edge ], [ 0, %if.end100.done_crit_edge ]
  call void @mutex_unlock(ptr noundef %rd_mutex) #9
  %93 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %channel, align 4
  %fatal_error222 = getelementptr inbounds %struct.xilly_endpoint, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %fatal_error222 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fatal_error222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool223.not = icmp eq i32 %96, 0
  %rc.0. = select i1 %tobool223.not, i32 %rc.0, i32 -5
  br label %cleanup226

cleanup226:                                       ; preds = %done, %if.end.cleanup226_crit_edge, %entry.cleanup226_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup226_crit_edge ], [ %call, %if.end.cleanup226_crit_edge ], [ %rc.0., %done ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_get_free_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilly_unmap(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %dma_addr = getelementptr inbounds %struct.xilly_mapping, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr, align 4
  %size = getelementptr inbounds %struct.xilly_mapping, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %direction = getelementptr inbounds %struct.xilly_mapping, ptr %ptr, i32 0, i32 3
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xillybus_llseek(ptr nocapture noundef %filp, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_pos = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 10
  %2 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_pos, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wr_mutex = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %wr_mutex, i32 noundef 0) #9
  %rd_mutex = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex, i32 noundef 0) #9
  %8 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %whence, label %if.end.end_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %if.end.sw.epilog_crit_edge46
  ]

if.end.sw.epilog_crit_edge46:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i64 %3, %offset
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge46
  %pos.0 = phi i64 [ %add, %sw.bb1 ], [ %offset, %if.end.sw.epilog_crit_edge ], [ %offset, %if.end.sw.epilog_crit_edge46 ]
  %log2_element_size = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %log2_element_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %log2_element_size, align 4
  %notmask = shl nsw i32 -1, %10
  %sub = xor i32 %notmask, -1
  %conv = sext i32 %sub to i64
  %and = and i64 %pos.0, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end5, label %sw.epilog.end_crit_edge

sw.epilog.end_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end5:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %register_mutex = getelementptr inbounds %struct.xilly_endpoint, ptr %12, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #9
  %13 = ptrtoint ptr %log2_element_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %log2_element_size, align 4
  %sh_prom = zext i32 %14 to i64
  %shr = ashr i64 %pos.0, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv8) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #9, !srcloc !185
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan_num, align 4
  %shl10 = shl i32 %21, 1
  %or = or i32 %shl10, 100663296
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %registers12 = getelementptr inbounds %struct.xilly_endpoint, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %registers12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %registers12, align 4
  %add.ptr13 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %26) #9, !srcloc !185
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %register_mutex15 = getelementptr inbounds %struct.xilly_endpoint, ptr %28, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %register_mutex15) #9
  br label %end

end:                                              ; preds = %if.end5, %sw.epilog.end_crit_edge, %if.end.end_crit_edge
  %pos.1 = phi i64 [ %pos.0, %if.end5 ], [ %3, %if.end.end_crit_edge ], [ %pos.0, %sw.epilog.end_crit_edge ]
  %tobool18.not = phi i1 [ true, %if.end5 ], [ false, %if.end.end_crit_edge ], [ false, %sw.epilog.end_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end5 ], [ -22, %if.end.end_crit_edge ], [ -22, %sw.epilog.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rd_mutex) #9
  tail call void @mutex_unlock(ptr noundef %wr_mutex) #9
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = sext i32 %rc.0 to i64
  br label %cleanup

if.end21:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %pos.1, ptr %f_pos, align 8
  %arrayidx = getelementptr %struct.xilly_channel, ptr %1, i32 0, i32 39, i32 3
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv20, %if.then19 ], [ %pos.1, %if.end21 ], [ -5, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_read(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry256 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup340_crit_edge

entry.cleanup340_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup340

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add1 = add i32 %6, 2
  %wr_mutex = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 16
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %wr_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %if.end.cleanup340_crit_edge

if.end.cleanup340_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup340

while.cond.preheader:                             ; preds = %if.end
  %wr_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 15
  %wr_empty = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 10
  %wr_ready = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 11
  %wr_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 8
  %wr_host_buf_pos = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 9
  %wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 4
  %log2_element_size = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 2
  %wr_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 7
  %wr_sleepy = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 12
  %num_wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 5
  %wr_eof = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 13
  %wr_hangup = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 14
  %wr_buf_size = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 6
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 1
  %f_flags500 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %wr_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 20
  %wr_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 21
  %wr_wait260 = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 17
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %howmany.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %howmany.1578, %while.cond.outer.backedge ]
  %bufpos.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %bufpos.1581, %while.cond.outer.backedge ]
  %bufidx.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %bufidx.1584, %while.cond.outer.backedge ]
  %bufferdone.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %bufferdone.1589, %while.cond.outer.backedge ]
  %tobool92.not = phi i1 [ true, %while.cond.preheader ], [ false, %while.cond.outer.backedge ]
  %bytes_done.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %bytes_done.0.ph.be, %while.cond.outer.backedge ]
  %userbuf.addr.0.ph = phi ptr [ %userbuf, %while.cond.preheader ], [ %userbuf.addr.1, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %howmany.0 = phi i32 [ %howmany.0.ph, %while.cond.outer ], [ %howmany.1578, %while.cond.backedge ]
  %bufpos.0 = phi i32 [ %bufpos.0.ph, %while.cond.outer ], [ %bufpos.1581, %while.cond.backedge ]
  %bufidx.0 = phi i32 [ %bufidx.0.ph, %while.cond.outer ], [ %bufidx.1584, %while.cond.backedge ]
  %bufferdone.0 = phi i32 [ %bufferdone.0.ph, %while.cond.outer ], [ %bufferdone.1589, %while.cond.backedge ]
  %bytes_done.0 = phi i32 [ %bytes_done.0.ph, %while.cond.outer ], [ %bytes_done.1, %while.cond.backedge ]
  %userbuf.addr.0 = phi ptr [ %userbuf.addr.0.ph, %while.cond.outer ], [ %userbuf.addr.1, %while.cond.backedge ]
  %sub = sub i32 %count, %bytes_done.0
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wr_spinlock) #9
  %7 = ptrtoint ptr %wr_empty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wr_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.then13, label %if.end37.thread

if.end37.thread:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %wr_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wr_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11 = icmp ne i32 %10, 0
  br label %land.rhs

if.then13:                                        ; preds = %while.cond
  %11 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wr_host_buf_idx, align 4
  %13 = ptrtoint ptr %wr_host_buf_pos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wr_host_buf_pos, align 4
  %15 = ptrtoint ptr %wr_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_buffers, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %end_offset = getelementptr inbounds %struct.xilly_buffer, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %end_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end_offset, align 4
  %add14 = add i32 %20, 1
  %21 = ptrtoint ptr %log2_element_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %log2_element_size, align 4
  %shl = shl i32 %add14, %22
  %sub15 = sub i32 %shl, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %sub)
  %cmp16 = icmp sgt i32 %sub15, %sub
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %add20 = add i32 %14, %sub
  %23 = ptrtoint ptr %wr_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add20, ptr %wr_host_buf_pos, align 4
  br label %if.end37

if.else:                                          ; preds = %if.then13
  %24 = ptrtoint ptr %wr_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %wr_host_buf_pos, align 4
  %25 = ptrtoint ptr %wr_fpga_buf_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_fpga_buf_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %26)
  %cmp22 = icmp eq i32 %12, %26
  br i1 %cmp22, label %if.then24, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %wr_empty to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %wr_empty, align 4
  %28 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %wr_sleepy, align 4
  %29 = ptrtoint ptr %wr_ready to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wr_ready, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.else.if.end27_crit_edge
  %30 = ptrtoint ptr %num_wr_buffers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_wr_buffers, align 4
  %sub28 = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub28)
  %cmp29.not = icmp slt i32 %12, %sub28
  br i1 %cmp29.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wr_host_buf_idx, align 4
  br label %if.end37

if.else33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wr_host_buf_idx, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %wr_host_buf_idx, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.then31, %if.then18
  %howmany.1.ph = phi i32 [ %sub15, %if.else33 ], [ %sub15, %if.then31 ], [ %sub, %if.then18 ]
  %bufferdone.1.ph = phi i32 [ 1, %if.else33 ], [ 1, %if.then31 ], [ 0, %if.then18 ]
  %35 = ptrtoint ptr %wr_empty to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %wr_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool39.not = icmp eq i32 %.pr, 0
  br i1 %tobool39.not, label %if.end37.land.end_crit_edge, label %if.end37.land.rhs_crit_edge

if.end37.land.rhs_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end37.land.end_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end37.land.rhs_crit_edge, %if.end37.thread
  %bufferdone.1588 = phi i32 [ %bufferdone.0, %if.end37.thread ], [ %bufferdone.1.ph, %if.end37.land.rhs_crit_edge ]
  %bufidx.1583 = phi i32 [ %bufidx.0, %if.end37.thread ], [ %12, %if.end37.land.rhs_crit_edge ]
  %bufpos.1580 = phi i32 [ %bufpos.0, %if.end37.thread ], [ %14, %if.end37.land.rhs_crit_edge ]
  %howmany.1577 = phi i32 [ %howmany.0, %if.end37.thread ], [ %howmany.1.ph, %if.end37.land.rhs_crit_edge ]
  %36 = phi i1 [ %tobool11, %if.end37.thread ], [ true, %if.end37.land.rhs_crit_edge ]
  %37 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wr_host_buf_idx, align 4
  %39 = ptrtoint ptr %wr_eof to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wr_eof, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp41 = icmp eq i32 %38, %40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end37.land.end_crit_edge
  %tobool39.not592 = phi i1 [ true, %if.end37.land.end_crit_edge ], [ false, %land.rhs ]
  %bufferdone.1589 = phi i32 [ %bufferdone.1.ph, %if.end37.land.end_crit_edge ], [ %bufferdone.1588, %land.rhs ]
  %bufidx.1584 = phi i32 [ %12, %if.end37.land.end_crit_edge ], [ %bufidx.1583, %land.rhs ]
  %bufpos.1581 = phi i32 [ %14, %if.end37.land.end_crit_edge ], [ %bufpos.1580, %land.rhs ]
  %howmany.1578 = phi i32 [ %howmany.1.ph, %if.end37.land.end_crit_edge ], [ %howmany.1577, %land.rhs ]
  %41 = phi i1 [ true, %if.end37.land.end_crit_edge ], [ %36, %land.rhs ]
  %42 = phi i1 [ false, %if.end37.land.end_crit_edge ], [ %cmp41, %land.rhs ]
  %land.ext = zext i1 %42 to i32
  %43 = ptrtoint ptr %wr_hangup to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %land.ext, ptr %wr_hangup, align 4
  %44 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wr_host_buf_idx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wr_spinlock, i32 noundef %call7) #9
  br i1 %tobool10.not, label %if.then47, label %land.end.if.end81_crit_edge

land.end.if.end81_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then47:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufpos.1581)
  %cmp48 = icmp eq i32 %bufpos.1581, 0
  br i1 %cmp48, label %if.then50, label %if.then47.if.end54_crit_edge

if.then47.if.end54_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %wr_buffers to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr_buffers, align 4
  %arrayidx53 = getelementptr ptr, ptr %51, i32 %bufidx.1584
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx53, align 4
  %dma_addr = getelementptr inbounds %struct.xilly_buffer, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_addr, align 4
  %56 = ptrtoint ptr %wr_buf_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wr_buf_size, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %49, i32 noundef %55, i32 noundef %57, i32 noundef 2) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then47.if.end54_crit_edge
  %58 = ptrtoint ptr %wr_buffers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wr_buffers, align 4
  %arrayidx56 = getelementptr ptr, ptr %59, i32 %bufidx.1584
  %60 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx56, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %add.ptr = getelementptr i8, ptr %63, i32 %bufpos.1581
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %howmany.1578)
  %cmp9.i.i = icmp slt i32 %howmany.1578, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end54
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !187

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.end54
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %howmany.1578, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.73, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf.addr.0, i32 %howmany.1578, i32 -1226833920) #15, !srcloc !188
  %asmresult.i.i = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %howmany.1578) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %userbuf.addr.0, ptr noundef %add.ptr, i32 noundef %howmany.1578) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %howmany.1578, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %howmany.1578, %if.end.i.i.copy_to_user.exit_crit_edge ], [ 1, %if.then27.i.i ], [ 1, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool58.not = icmp eq i32 %n.addr.0.i, 0
  %add.ptr61 = getelementptr i8, ptr %userbuf.addr.0, i32 %howmany.1578
  %add62 = add i32 %howmany.1578, %bytes_done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufferdone.1589)
  %tobool63.not = icmp eq i32 %bufferdone.1589, 0
  br i1 %tobool63.not, label %copy_to_user.exit.if.end76_crit_edge, label %if.then64

copy_to_user.exit.if.end76_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then64:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %wr_buffers to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr_buffers, align 4
  %arrayidx68 = getelementptr ptr, ptr %70, i32 %bufidx.1584
  %71 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx68, align 4
  %dma_addr69 = getelementptr inbounds %struct.xilly_buffer, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %dma_addr69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr69, align 4
  %75 = ptrtoint ptr %wr_buf_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wr_buf_size, align 4
  call void @dma_sync_single_for_device(ptr noundef %68, i32 noundef %74, i32 noundef %76, i32 noundef 2) #9
  %77 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chan_num, align 4
  %shl71 = shl i32 %78, 1
  %shl72 = shl i32 %bufidx.1584, 12
  %or = or i32 %shl72, %shl71
  %or73 = or i32 %or, 1
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %registers, align 4
  %add.ptr75 = getelementptr i8, ptr %82, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %83 = call i32 @llvm.bswap.i32(i32 %or73) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %83) #9, !srcloc !185
  br label %if.end76

if.end76:                                         ; preds = %if.then64, %copy_to_user.exit.if.end76_crit_edge
  br i1 %tobool58.not, label %if.end76.if.end81_crit_edge, label %if.then78

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %wr_mutex) #9
  br label %cleanup340

if.end81:                                         ; preds = %if.end76.if.end81_crit_edge, %land.end.if.end81_crit_edge
  %bytes_done.1 = phi i32 [ %bytes_done.0, %land.end.if.end81_crit_edge ], [ %add62, %if.end76.if.end81_crit_edge ]
  %userbuf.addr.1 = phi ptr [ %userbuf.addr.0, %land.end.if.end81_crit_edge ], [ %add.ptr61, %if.end76.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_done.1, i32 %count)
  %cmp82.not = icmp uge i32 %bytes_done.1, %count
  %brmerge = select i1 %cmp82.not, i1 true, i1 %42
  br i1 %brmerge, label %if.end81.while.end_crit_edge, label %if.end86

if.end81.while.end_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end86:                                         ; preds = %if.end81
  br i1 %tobool39.not592, label %if.end86.while.cond.backedge_crit_edge, label %if.end89

if.end86.while.cond.backedge_crit_edge:           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end89:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %cmp90 = icmp sgt i32 %bytes_done.1, 0
  br i1 %cmp90, label %land.lhs.true, label %if.end98

land.lhs.true:                                    ; preds = %if.end89
  br i1 %tobool92.not, label %lor.lhs.false93, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false93:                                  ; preds = %land.lhs.true
  %84 = ptrtoint ptr %wr_synchronous to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wr_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool94.not = icmp eq i32 %85, 0
  br i1 %tobool94.not, label %lor.lhs.false93.land.lhs.true100_crit_edge, label %land.lhs.true95

lor.lhs.false93.land.lhs.true100_crit_edge:       ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true100

land.lhs.true95:                                  ; preds = %lor.lhs.false93
  %86 = ptrtoint ptr %wr_allow_partial to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wr_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool96.not = icmp eq i32 %87, 0
  br i1 %tobool96.not, label %land.lhs.true95.land.lhs.true100_crit_edge, label %land.lhs.true95.while.end_crit_edge

land.lhs.true95.while.end_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true95.land.lhs.true100_crit_edge:       ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true100

if.end98:                                         ; preds = %if.end89
  br i1 %tobool92.not, label %land.lhs.true100.thread, label %if.end98.if.end168_crit_edge

if.end98.if.end168_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

land.lhs.true100:                                 ; preds = %land.lhs.true95.land.lhs.true100_crit_edge, %lor.lhs.false93.land.lhs.true100_crit_edge
  %88 = ptrtoint ptr %f_flags500 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %f_flags500, align 4
  %and = and i32 %89, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %land.lhs.true100.if.then115_crit_edge, label %land.lhs.true100.while.end_crit_edge

land.lhs.true100.while.end_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true100.if.then115_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

land.lhs.true100.thread:                          ; preds = %if.end98
  %90 = ptrtoint ptr %f_flags500 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %f_flags500, align 4
  %and501 = and i32 %91, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and501)
  %tobool101.not502 = icmp eq i32 %and501, 0
  br i1 %tobool101.not502, label %land.lhs.true100.thread.if.then115_crit_edge, label %if.end106

land.lhs.true100.thread.if.then115_crit_edge:     ; preds = %land.lhs.true100.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.end106:                                        ; preds = %land.lhs.true100.thread
  br i1 %41, label %if.end106.desperate_crit_edge, label %if.end106.while.end_crit_edge

if.end106.while.end_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end106.desperate_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %desperate

if.then115:                                       ; preds = %land.lhs.true100.thread.if.then115_crit_edge, %land.lhs.true100.if.then115_crit_edge
  %92 = xor i32 %bytes_done.1, -1
  %sub117 = add i32 %92, %count
  %93 = ptrtoint ptr %log2_element_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %log2_element_size, align 4
  %shr = lshr i32 %sub117, %94
  %95 = ptrtoint ptr %wr_buf_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wr_buf_size, align 4
  %shr121 = lshr i32 %96, %94
  %97 = ptrtoint ptr %wr_synchronous to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wr_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool123.not = icmp eq i32 %98, 0
  br i1 %tobool123.not, label %if.end144, label %if.then124

if.then124:                                       ; preds = %if.then115
  %99 = ptrtoint ptr %wr_allow_partial to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wr_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool126.not = icmp eq i32 %100, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr121)
  %cmp128.not = icmp slt i32 %shr, %shr121
  %or.cond = select i1 %tobool126.not, i1 true, i1 %cmp128.not
  %sub131 = add i32 %shr121, -1
  %offsetlimit.0 = select i1 %or.cond, i32 %shr, i32 %sub131
  br i1 %tobool126.not, label %land.lhs.true135, label %if.then124.if.then151_crit_edge

if.then124.if.then151_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

land.lhs.true135:                                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %num_wr_buffers to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_wr_buffers, align 4
  %mul = mul i32 %102, %shr121
  call void @__sanitizer_cov_trace_cmp4(i32 %offsetlimit.0, i32 %mul)
  %cmp137.not = icmp slt i32 %offsetlimit.0, %mul
  %sub142 = add i32 %mul, -1
  %spec.select491 = select i1 %cmp137.not, i32 %offsetlimit.0, i32 %sub142
  br label %if.then151

if.end144:                                        ; preds = %if.then115
  %sub148 = add i32 %shr121, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sub148)
  %cmp149 = icmp slt i32 %shr, %sub148
  br i1 %cmp149, label %if.end144.if.then151_crit_edge, label %if.end144.if.end168_crit_edge

if.end144.if.end168_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.end144.if.then151_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.then151:                                       ; preds = %if.end144.if.then151_crit_edge, %land.lhs.true135, %if.then124.if.then151_crit_edge
  %offsetlimit.1508 = phi i32 [ %shr, %if.end144.if.then151_crit_edge ], [ %spec.select491, %land.lhs.true135 ], [ %offsetlimit.0, %if.then124.if.then151_crit_edge ]
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %register_mutex = getelementptr inbounds %struct.xilly_endpoint, ptr %104, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #9
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %registers154 = getelementptr inbounds %struct.xilly_endpoint, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %registers154 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %registers154, align 4
  %add.ptr155 = getelementptr i8, ptr %108, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %109 = call i32 @llvm.bswap.i32(i32 %offsetlimit.1508) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %109) #9, !srcloc !185
  %110 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %chan_num, align 4
  %shl157 = shl i32 %111, 1
  %shl160 = shl i32 %45, 12
  %or159 = or i32 %shl160, %shl157
  %or161 = or i32 %or159, 33554433
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %registers163 = getelementptr inbounds %struct.xilly_endpoint, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %registers163 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %registers163, align 4
  %add.ptr164 = getelementptr i8, ptr %115, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %116 = call i32 @llvm.bswap.i32(i32 %or161) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %116) #9, !srcloc !185
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %register_mutex166 = getelementptr inbounds %struct.xilly_endpoint, ptr %118, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %register_mutex166) #9
  br label %if.end168

if.end168:                                        ; preds = %if.then151, %if.end144.if.end168_crit_edge, %if.end98.if.end168_crit_edge
  %tobool99.not496 = phi i1 [ false, %if.then151 ], [ false, %if.end144.if.end168_crit_edge ], [ true, %if.end98.if.end168_crit_edge ]
  %119 = ptrtoint ptr %wr_allow_partial to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wr_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool170.not = icmp eq i32 %120, 0
  br i1 %tobool170.not, label %if.end168.do.body177.preheader_crit_edge, label %lor.lhs.false171

if.end168.do.body177.preheader_crit_edge:         ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body177.preheader

lor.lhs.false171:                                 ; preds = %if.end168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %cmp174 = icmp eq i32 %bytes_done.1, 0
  %or.cond493 = select i1 %tobool99.not496, i1 %cmp174, i1 false
  br i1 %or.cond493, label %lor.lhs.false171.do.body177.preheader_crit_edge, label %if.end226

lor.lhs.false171.do.body177.preheader_crit_edge:  ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body177.preheader

do.body177.preheader:                             ; preds = %lor.lhs.false171.do.body177.preheader_crit_edge, %if.end168.do.body177.preheader_crit_edge
  br label %do.body177

do.body177:                                       ; preds = %do.cond209.do.body177_crit_edge, %do.body177.preheader
  call void @mutex_unlock(ptr noundef %wr_mutex) #9
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 921) #9
  %121 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool186.not = icmp eq i32 %122, 0
  br i1 %tobool186.not, label %do.body177.if.end203_crit_edge, label %if.then187

do.body177.if.end203_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then187:                                       ; preds = %do.body177
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %123 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call189562 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait260, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %124 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool191.not563 = icmp eq i32 %125, 0
  br i1 %tobool191.not563, label %if.then187.if.end199.thread518_crit_edge, label %if.then187.if.end193_crit_edge

if.then187.if.end193_crit_edge:                   ; preds = %if.then187
  br label %if.end193

if.then187.if.end199.thread518_crit_edge:         ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199.thread518

if.end193:                                        ; preds = %cleanup.if.end193_crit_edge, %if.then187.if.end193_crit_edge
  %call189564 = phi i32 [ %call189, %cleanup.if.end193_crit_edge ], [ %call189562, %if.then187.if.end193_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189564)
  %tobool194.not = icmp eq i32 %call189564, 0
  br i1 %tobool194.not, label %cleanup, label %if.end199

cleanup:                                          ; preds = %if.end193
  call void @schedule() #9
  %call189 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait260, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %126 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wr_sleepy, align 4
  %tobool191.not = icmp eq i32 %127, 0
  br i1 %tobool191.not, label %cleanup.if.end199.thread518_crit_edge, label %cleanup.if.end193_crit_edge

cleanup.if.end193_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

cleanup.if.end199.thread518_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199.thread518

if.end199.thread518:                              ; preds = %cleanup.if.end199.thread518_crit_edge, %if.then187.if.end199.thread518_crit_edge
  call void @finish_wait(ptr noundef %wr_wait260, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end203

if.end199:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %interrupted

if.end203:                                        ; preds = %if.end199.thread518, %do.body177.if.end203_crit_edge
  %call205 = call i32 @mutex_lock_interruptible_nested(ptr noundef %wr_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %do.cond209, label %if.end203.interrupted_crit_edge

if.end203.interrupted_crit_edge:                  ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %interrupted

do.cond209:                                       ; preds = %if.end203
  %128 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %wr_sleepy, align 4
  %tobool211.not = icmp eq i32 %129, 0
  br i1 %tobool211.not, label %do.cond209.while.cond.backedge_crit_edge, label %do.cond209.do.body177_crit_edge

do.cond209.do.body177_crit_edge:                  ; preds = %do.cond209
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body177

do.cond209.while.cond.backedge_crit_edge:         ; preds = %do.cond209
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

interrupted:                                      ; preds = %if.end203.interrupted_crit_edge, %if.end199
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %fatal_error214 = getelementptr inbounds %struct.xilly_endpoint, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %fatal_error214 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fatal_error214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool215.not = icmp eq i32 %133, 0
  br i1 %tobool215.not, label %if.end217, label %interrupted.cleanup340_crit_edge

interrupted.cleanup340_crit_edge:                 ; preds = %interrupted
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup340

if.end217:                                        ; preds = %interrupted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %tobool218.not = icmp eq i32 %bytes_done.1, 0
  br i1 %tobool218.not, label %if.end220, label %if.end217.cleanup340_crit_edge

if.end217.cleanup340_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup340

if.end220:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %f_flags500 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %f_flags500, align 4
  %and222 = and i32 %135, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  %. = select i1 %tobool223.not, i32 -4, i32 -11
  br label %cleanup340

if.end226:                                        ; preds = %lor.lhs.false171
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %sub227 = sub i32 %add1, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub227)
  %cmp228 = icmp sgt i32 %sub227, 0
  br i1 %cmp228, label %if.then230, label %if.end226.desperate_crit_edge

if.end226.desperate_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %desperate

if.then230:                                       ; preds = %if.end226
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 954) #9
  %137 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool239.not = icmp eq i32 %138, 0
  br i1 %tobool239.not, label %if.then230.while.cond.backedge_crit_edge, label %if.then255

if.then230.while.cond.backedge_crit_edge:         ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end295.while.cond.backedge_crit_edge, %if.then230.while.cond.backedge_crit_edge, %do.cond209.while.cond.backedge_crit_edge, %if.end86.while.cond.backedge_crit_edge
  br label %while.cond

if.then255:                                       ; preds = %if.then230
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry256) #9
  %139 = call ptr @memset(ptr %__wq_entry256, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry256, i32 noundef 0) #9
  %call261555 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait260, ptr noundef nonnull %__wq_entry256, i32 noundef 1) #9
  %140 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool264.not556 = icmp eq i32 %141, 0
  br i1 %tobool264.not556, label %if.then255.for.end291_crit_edge, label %if.then255.if.end283_crit_edge

if.then255.if.end283_crit_edge:                   ; preds = %if.then255
  br label %if.end283

if.then255.for.end291_crit_edge:                  ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end291

if.end283:                                        ; preds = %cleanup288.if.end283_crit_edge, %if.then255.if.end283_crit_edge
  %__ret257.1560 = phi i32 [ %__ret257.1, %cleanup288.if.end283_crit_edge ], [ %sub227, %if.then255.if.end283_crit_edge ]
  %call261559 = phi i32 [ %call261, %cleanup288.if.end283_crit_edge ], [ %call261555, %if.then255.if.end283_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261559)
  %tobool284.not = icmp eq i32 %call261559, 0
  br i1 %tobool284.not, label %cleanup288, label %if.end283.if.end295_crit_edge

if.end283.if.end295_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end295

cleanup288:                                       ; preds = %if.end283
  %call287 = call i32 @schedule_timeout(i32 noundef %__ret257.1560) #9
  %call261 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait260, ptr noundef nonnull %__wq_entry256, i32 noundef 1) #9
  %142 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool264.not = icmp eq i32 %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool270.not = icmp eq i32 %call287, 0
  %144 = select i1 %tobool264.not, i1 %tobool270.not, i1 false
  %__ret257.1 = select i1 %144, i32 1, i32 %call287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret257.1)
  %tobool277.not = icmp eq i32 %__ret257.1, 0
  %145 = select i1 %tobool264.not, i1 true, i1 %tobool277.not
  br i1 %145, label %cleanup288.for.end291_crit_edge, label %cleanup288.if.end283_crit_edge

cleanup288.if.end283_crit_edge:                   ; preds = %cleanup288
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283

cleanup288.for.end291_crit_edge:                  ; preds = %cleanup288
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end291

for.end291:                                       ; preds = %cleanup288.for.end291_crit_edge, %if.then255.for.end291_crit_edge
  %__ret257.1.lcssa = phi i32 [ %sub227, %if.then255.for.end291_crit_edge ], [ %__ret257.1, %cleanup288.for.end291_crit_edge ]
  call void @finish_wait(ptr noundef %wr_wait260, ptr noundef nonnull %__wq_entry256) #9
  br label %if.end295

if.end295:                                        ; preds = %for.end291, %if.end283.if.end295_crit_edge
  %__ret257.2523 = phi i32 [ %__ret257.1.lcssa, %for.end291 ], [ %call261559, %if.end283.if.end295_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret257.2523)
  %cmp297 = icmp sgt i32 %__ret257.2523, 0
  br i1 %cmp297, label %if.end295.while.cond.backedge_crit_edge, label %if.end300

if.end295.while.cond.backedge_crit_edge:          ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end300:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret257.2523)
  %cmp301 = icmp slt i32 %__ret257.2523, 0
  br i1 %cmp301, label %if.then303, label %if.end300.desperate_crit_edge

if.end300.desperate_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #11
  br label %desperate

if.then303:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %wr_mutex) #9
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %fatal_error306 = getelementptr inbounds %struct.xilly_endpoint, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %fatal_error306 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fatal_error306, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool307.not = icmp eq i32 %149, 0
  %.bytes_done.1494 = select i1 %cmp174, i32 -4, i32 %bytes_done.1
  %spec.select546 = select i1 %tobool307.not, i32 %.bytes_done.1494, i32 -5
  br label %cleanup340

desperate:                                        ; preds = %if.end300.desperate_crit_edge, %if.end226.desperate_crit_edge, %if.end106.desperate_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %cmp315 = icmp eq i32 %bytes_done.1, 0
  br i1 %cmp315, label %if.then317, label %desperate.while.cond.outer.backedge_crit_edge

desperate.while.cond.outer.backedge_crit_edge:    ; preds = %desperate
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then317, %desperate.while.cond.outer.backedge_crit_edge
  %bytes_done.0.ph.be = phi i32 [ 0, %if.then317 ], [ %bytes_done.1, %desperate.while.cond.outer.backedge_crit_edge ]
  br label %while.cond.outer

if.then317:                                       ; preds = %desperate
  call void @__sanitizer_cov_trace_pc() #11
  %150 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %chan_num, align 4
  %shl319 = shl i32 %151, 1
  %shl322 = shl i32 %45, 12
  %or321 = or i32 %shl322, %shl319
  %or323 = or i32 %or321, 50331649
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %registers325 = getelementptr inbounds %struct.xilly_endpoint, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %registers325 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %registers325, align 4
  %add.ptr326 = getelementptr i8, ptr %155, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %156 = call i32 @llvm.bswap.i32(i32 %or323) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr326, i32 %156) #9, !srcloc !185
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %if.end106.while.end_crit_edge, %land.lhs.true100.while.end_crit_edge, %land.lhs.true95.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.end81.while.end_crit_edge
  %tobool337.not = phi i32 [ %bytes_done.1, %land.lhs.true.while.end_crit_edge ], [ %bytes_done.1, %land.lhs.true95.while.end_crit_edge ], [ %bytes_done.1, %if.end81.while.end_crit_edge ], [ %bytes_done.1, %land.lhs.true100.while.end_crit_edge ], [ -11, %if.end106.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %wr_mutex) #9
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %fatal_error333 = getelementptr inbounds %struct.xilly_endpoint, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %fatal_error333 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %fatal_error333, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool334.not = icmp eq i32 %160, 0
  %spec.select = select i1 %tobool334.not, i32 %tobool337.not, i32 -5
  br label %cleanup340

cleanup340:                                       ; preds = %while.end, %if.then303, %if.end220, %if.end217.cleanup340_crit_edge, %interrupted.cleanup340_crit_edge, %if.then78, %if.end.cleanup340_crit_edge, %entry.cleanup340_crit_edge
  %retval.2 = phi i32 [ -5, %entry.cleanup340_crit_edge ], [ %call, %if.end.cleanup340_crit_edge ], [ %., %if.end220 ], [ %bytes_done.1, %if.end217.cleanup340_crit_edge ], [ -5, %interrupted.cleanup340_crit_edge ], [ -14, %if.then78 ], [ %spec.select546, %if.then303 ], [ %spec.select, %while.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_write(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup228_crit_edge

entry.cleanup228_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

if.end:                                           ; preds = %entry
  %rd_mutex = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 32
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %rd_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.end.cleanup228_crit_edge

if.end.cleanup228_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

while.cond.preheader:                             ; preds = %if.end
  %rd_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 31
  %rd_full = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 30
  %rd_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 29
  %rd_host_buf_pos = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 28
  %rd_buf_size = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool19.not = icmp eq i32 %count, 0
  %log2_element_size22 = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 2
  %rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 24
  %rd_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 27
  %num_rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 25
  %arrayidx66 = getelementptr %struct.xilly_channel, ptr %1, i32 0, i32 39, i32 3
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 1
  %rd_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 35
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %rd_wait = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 33
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %bytes_done.0 = phi i32 [ 0, %while.cond.preheader ], [ %bytes_done.1, %while.cond.backedge ]
  %end_offset_plus1.0 = phi i32 [ 0, %while.cond.preheader ], [ %end_offset_plus1.2367, %while.cond.backedge ]
  %userbuf.addr.0 = phi ptr [ %userbuf, %while.cond.preheader ], [ %userbuf.addr.1, %while.cond.backedge ]
  %sub = sub i32 %count, %bytes_done.0
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rd_spinlock) #9
  %6 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.then10, label %if.end53.thread369

if.end53.thread369:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_full, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock, i32 noundef %call6) #9
  br label %if.end139

if.then10:                                        ; preds = %while.cond
  %10 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rd_host_buf_idx, align 4
  %12 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_host_buf_pos, align 4
  %14 = ptrtoint ptr %rd_buf_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd_buf_size, align 4
  %sub11 = sub i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %sub)
  %cmp12 = icmp sgt i32 %sub11, %sub
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then10
  br i1 %tobool19.not, label %lor.lhs.false, label %land.lhs.true.if.end53.thread_crit_edge

land.lhs.true.if.end53.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = ptrtoint ptr %log2_element_size22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %log2_element_size22, align 4
  %shr = ashr i32 %13, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp15 = icmp eq i32 %shr, 0
  br i1 %cmp15, label %lor.lhs.false.if.end53.thread_crit_edge, label %lor.lhs.false.if.else25_crit_edge

lor.lhs.false.if.else25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else25

lor.lhs.false.if.end53.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.thread

if.end53.thread:                                  ; preds = %lor.lhs.false.if.end53.thread_crit_edge, %land.lhs.true.if.end53.thread_crit_edge
  %add = add i32 %13, %sub
  %18 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %rd_host_buf_pos, align 4
  br label %if.then57

if.else:                                          ; preds = %if.then10
  br i1 %tobool19.not, label %if.else.if.else25_crit_edge, label %if.then20

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else25

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %log2_element_size22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %log2_element_size22, align 4
  %shr23 = lshr i32 %15, %20
  %21 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rd_host_buf_pos, align 4
  br label %if.end37

if.else25:                                        ; preds = %if.else.if.else25_crit_edge, %lor.lhs.false.if.else25_crit_edge
  %22 = ptrtoint ptr %log2_element_size22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log2_element_size22, align 4
  %shr27 = ashr i32 %13, %23
  %shl = shl i32 %shr27, %23
  %sub30 = sub i32 %13, %shl
  %24 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub30, ptr %rd_host_buf_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp34416 = icmp sgt i32 %sub30, 0
  br i1 %cmp34416, label %for.body.preheader, label %if.else25.if.end37_crit_edge

if.else25.if.end37_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.body.preheader:                               ; preds = %if.else25
  %25 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rd_buffers, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %11
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %shl
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0418 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tail.0417 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %tail.0417, i32 1
  %31 = ptrtoint ptr %tail.0417 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tail.0417, align 1
  %arrayidx36 = getelementptr %struct.xilly_channel, ptr %1, i32 0, i32 39, i32 %i.0418
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx36, align 1
  %inc = add nuw nsw i32 %i.0418, 1
  %34 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rd_host_buf_pos, align 4
  %cmp34 = icmp slt i32 %inc, %35
  br i1 %cmp34, label %for.body.for.body_crit_edge, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end37:                                         ; preds = %for.body.if.end37_crit_edge, %if.else25.if.end37_crit_edge, %if.then20
  %howmany.1 = phi i32 [ %sub11, %if.then20 ], [ 0, %if.else25.if.end37_crit_edge ], [ 0, %for.body.if.end37_crit_edge ]
  %end_offset_plus1.1 = phi i32 [ %shr23, %if.then20 ], [ %shr27, %if.else25.if.end37_crit_edge ], [ %shr27, %for.body.if.end37_crit_edge ]
  %36 = ptrtoint ptr %rd_fpga_buf_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rd_fpga_buf_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %37)
  %cmp38 = icmp eq i32 %11, %37
  br i1 %cmp38, label %if.then40, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %rd_full to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %rd_full, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %39 = ptrtoint ptr %num_rd_buffers to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_rd_buffers, align 4
  %sub43 = add i32 %40, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub43)
  %cmp44.not = icmp slt i32 %11, %sub43
  br i1 %cmp44.not, label %if.else48, label %if.end42.if.end53_crit_edge

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.else48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rd_host_buf_idx, align 4
  %inc50 = add i32 %42, 1
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.end42.if.end53_crit_edge
  %storemerge = phi i32 [ %inc50, %if.else48 ], [ 0, %if.end42.if.end53_crit_edge ]
  %43 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %rd_host_buf_idx, align 4
  br label %if.then57

if.then57:                                        ; preds = %if.end53, %if.end53.thread
  %end_offset_plus1.2368 = phi i32 [ %end_offset_plus1.0, %if.end53.thread ], [ %end_offset_plus1.1, %if.end53 ]
  %tobool98.not = phi i1 [ true, %if.end53.thread ], [ false, %if.end53 ]
  %howmany.2356 = phi i32 [ %sub, %if.end53.thread ], [ %howmany.1, %if.end53 ]
  %44 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rd_full, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock, i32 noundef %call6) #9
  %46 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rd_buffers, align 4
  %arrayidx59 = getelementptr ptr, ptr %47, i32 %11
  %48 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx59, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp62 = icmp eq i32 %13, 0
  br i1 %cmp62, label %if.then57.if.then70_crit_edge, label %lor.lhs.false64

if.then57.if.then70_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

lor.lhs.false64:                                  ; preds = %if.then57
  %52 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp68.not = icmp eq i8 %53, 0
  br i1 %cmp68.not, label %lor.lhs.false64.if.end87_crit_edge, label %lor.lhs.false64.if.then70_crit_edge

lor.lhs.false64.if.then70_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

lor.lhs.false64.if.end87_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then70:                                        ; preds = %lor.lhs.false64.if.then70_crit_edge, %if.then57.if.then70_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dma_addr = getelementptr inbounds %struct.xilly_buffer, ptr %49, i32 0, i32 1
  %58 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_addr, align 4
  %60 = ptrtoint ptr %rd_buf_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rd_buf_size, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp76419 = icmp sgt i32 %13, 0
  br i1 %cmp76419, label %if.then70.for.body78_crit_edge, label %if.then70.for.end84_crit_edge

if.then70.for.end84_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

if.then70.for.body78_crit_edge:                   ; preds = %if.then70
  br label %for.body78

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %if.then70.for.body78_crit_edge
  %i61.0421 = phi i32 [ %inc83, %for.body78.for.body78_crit_edge ], [ 0, %if.then70.for.body78_crit_edge ]
  %head.0420 = phi ptr [ %incdec.ptr81, %for.body78.for.body78_crit_edge ], [ %51, %if.then70.for.body78_crit_edge ]
  %arrayidx80 = getelementptr %struct.xilly_channel, ptr %1, i32 0, i32 39, i32 %i61.0421
  %62 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx80, align 1
  %incdec.ptr81 = getelementptr i8, ptr %head.0420, i32 1
  %64 = ptrtoint ptr %head.0420 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %head.0420, align 1
  %inc83 = add nuw nsw i32 %i61.0421, 1
  %exitcond.not = icmp eq i32 %inc83, %13
  br i1 %exitcond.not, label %for.body78.for.end84_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78

for.body78.for.end84_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84

for.end84:                                        ; preds = %for.body78.for.end84_crit_edge, %if.then70.for.end84_crit_edge
  %65 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx66, align 1
  br label %if.end87

if.end87:                                         ; preds = %for.end84, %lor.lhs.false64.if.end87_crit_edge
  %66 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rd_buffers, align 4
  %arrayidx89 = getelementptr ptr, ptr %67, i32 %11
  %68 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx89, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %add.ptr91 = getelementptr i8, ptr %71, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %howmany.2356)
  %cmp9.i.i = icmp slt i32 %howmany.2356, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end87
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_from_user.exit_crit_edge, label %if.then27.i.i, !prof !187

land.rhs16.i.i.copy_from_user.exit_crit_edge:     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_user.exit

if.then.i.i.i:                                    ; preds = %if.end87
  call void @__check_object_size(ptr noundef %add.ptr91, i32 noundef %howmany.2356, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.73, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf.addr.0, i32 %howmany.2356, i32 -1226833920) #15, !srcloc !189
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !187

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr91, i32 noundef %howmany.2356) #9
  %73 = call i32 @llvm.read_register.i32(metadata !174) #9
  %and.i.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !190
  %and.i.i.i.i = and i32 %75, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr91, ptr noundef %userbuf.addr.0, i32 noundef %howmany.2356) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #9, !srcloc !191
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %howmany.2356, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %howmany.2356, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !187

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %howmany.2356, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr91, i32 %sub.i.i
  %76 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_from_user.exit_crit_edge
  %tobool125.not = phi i1 [ false, %land.rhs16.i.i.copy_from_user.exit_crit_edge ], [ false, %if.then27.i.i ], [ false, %if.then11.i.i ], [ true, %if.end.i.i.copy_from_user.exit_crit_edge ]
  %77 = phi i32 [ -14, %land.rhs16.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %if.then11.i.i ], [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ]
  %add.ptr96 = getelementptr i8, ptr %userbuf.addr.0, i32 %howmany.2356
  %add97 = add i32 %howmany.2356, %bytes_done.0
  br i1 %tobool98.not, label %copy_from_user.exit.if.end124_crit_edge, label %if.then99

copy_from_user.exit.if.end124_crit_edge:          ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then99:                                        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %rd_buffers to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rd_buffers, align 4
  %arrayidx103 = getelementptr ptr, ptr %83, i32 %11
  %84 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx103, align 4
  %dma_addr104 = getelementptr inbounds %struct.xilly_buffer, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %dma_addr104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_addr104, align 4
  %88 = ptrtoint ptr %rd_buf_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rd_buf_size, align 4
  call void @dma_sync_single_for_device(ptr noundef %81, i32 noundef %87, i32 noundef %89, i32 noundef 1) #9
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %register_mutex = getelementptr inbounds %struct.xilly_endpoint, ptr %91, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #9
  %sub107 = add i32 %end_offset_plus1.2368, -1
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %registers, align 4
  %add.ptr109 = getelementptr i8, ptr %95, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %96 = call i32 @llvm.bswap.i32(i32 %sub107) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %96) #9, !srcloc !185
  %97 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chan_num, align 4
  %shl110 = shl i32 %98, 1
  %shl111 = shl i32 %11, 12
  %or = or i32 %shl111, %shl110
  %or112 = or i32 %or, 33554432
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %registers114 = getelementptr inbounds %struct.xilly_endpoint, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %registers114 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %registers114, align 4
  %add.ptr115 = getelementptr i8, ptr %102, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %103 = call i32 @llvm.bswap.i32(i32 %or112) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %103) #9, !srcloc !185
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %register_mutex117 = getelementptr inbounds %struct.xilly_endpoint, ptr %105, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %register_mutex117) #9
  %106 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rd_host_buf_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp119 = icmp ne i32 %107, 0
  %conv121 = zext i1 %cmp119 to i8
  %108 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv121, ptr %arrayidx66, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.then99, %copy_from_user.exit.if.end124_crit_edge
  br i1 %tobool125.not, label %if.end124.if.end139_crit_edge, label %if.then126

if.end124.if.end139_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then126:                                       ; preds = %if.end124
  call void @mutex_unlock(ptr noundef %rd_mutex) #9
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %fatal_error129 = getelementptr inbounds %struct.xilly_endpoint, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %fatal_error129 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fatal_error129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool130.not = icmp eq i32 %112, 0
  br i1 %tobool130.not, label %if.end132, label %if.then126.cleanup228_crit_edge

if.then126.cleanup228_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

if.end132:                                        ; preds = %if.then126
  %rd_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 36
  %113 = ptrtoint ptr %rd_synchronous to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rd_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool133.not = icmp eq i32 %114, 0
  br i1 %tobool133.not, label %if.then134, label %if.end132.cleanup228_crit_edge

if.end132.cleanup228_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %115 = load ptr, ptr @xillybus_wq, align 4
  %rd_workitem = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 38
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %115, ptr noundef %rd_workitem, i32 noundef 1) #9
  br label %cleanup228

if.end139:                                        ; preds = %if.end124.if.end139_crit_edge, %if.end53.thread369
  %116 = phi i32 [ %9, %if.end53.thread369 ], [ %45, %if.end124.if.end139_crit_edge ]
  %end_offset_plus1.2367 = phi i32 [ %end_offset_plus1.0, %if.end53.thread369 ], [ %end_offset_plus1.2368, %if.end124.if.end139_crit_edge ]
  %bytes_done.1 = phi i32 [ %bytes_done.0, %if.end53.thread369 ], [ %add97, %if.end124.if.end139_crit_edge ]
  %userbuf.addr.1 = phi ptr [ %userbuf.addr.0, %if.end53.thread369 ], [ %add.ptr96, %if.end124.if.end139_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_done.1, i32 %count)
  %cmp140.not = icmp ult i32 %bytes_done.1, %count
  br i1 %cmp140.not, label %if.end143, label %if.end139.while.end_crit_edge

if.end139.while.end_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end143:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool144.not = icmp eq i32 %116, 0
  br i1 %tobool144.not, label %if.end143.while.cond.backedge_crit_edge, label %if.end146

if.end143.while.cond.backedge_crit_edge:          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end146:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %cmp147 = icmp sgt i32 %bytes_done.1, 0
  br i1 %cmp147, label %land.lhs.true149, label %if.end146.if.end152_crit_edge

if.end146.if.end152_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

land.lhs.true149:                                 ; preds = %if.end146
  %117 = ptrtoint ptr %rd_allow_partial to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rd_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool150.not = icmp eq i32 %118, 0
  br i1 %tobool150.not, label %land.lhs.true149.if.end152_crit_edge, label %land.lhs.true149.while.end_crit_edge

land.lhs.true149.while.end_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true149.if.end152_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.end152:                                        ; preds = %land.lhs.true149.if.end152_crit_edge, %if.end146.if.end152_crit_edge
  %119 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %f_flags, align 4
  %and = and i32 %120, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool153.not = icmp eq i32 %and, 0
  br i1 %tobool153.not, label %if.end155, label %if.end152.while.end_crit_edge

if.end152.while.end_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end155:                                        ; preds = %if.end152
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1392) #9
  %121 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rd_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool163.not = icmp eq i32 %122, 0
  br i1 %tobool163.not, label %if.end155.while.cond.backedge_crit_edge, label %if.then164

if.end155.while.cond.backedge_crit_edge:          ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end181.thread387, %if.end155.while.cond.backedge_crit_edge, %if.end143.while.cond.backedge_crit_edge
  br label %while.cond

if.then164:                                       ; preds = %if.end155
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %123 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call167422 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %124 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rd_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool169.not423 = icmp eq i32 %125, 0
  br i1 %tobool169.not423, label %if.then164.if.end181.thread387_crit_edge, label %if.then164.if.end171_crit_edge

if.then164.if.end171_crit_edge:                   ; preds = %if.then164
  br label %if.end171

if.then164.if.end181.thread387_crit_edge:         ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181.thread387

if.end171:                                        ; preds = %cleanup175.if.end171_crit_edge, %if.then164.if.end171_crit_edge
  %call167424 = phi i32 [ %call167, %cleanup175.if.end171_crit_edge ], [ %call167422, %if.then164.if.end171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167424)
  %tobool172.not = icmp eq i32 %call167424, 0
  br i1 %tobool172.not, label %cleanup175, label %if.then184

cleanup175:                                       ; preds = %if.end171
  call void @schedule() #9
  %call167 = call i32 @prepare_to_wait_event(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %126 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rd_full, align 4
  %tobool169.not = icmp eq i32 %127, 0
  br i1 %tobool169.not, label %cleanup175.if.end181.thread387_crit_edge, label %cleanup175.if.end171_crit_edge

cleanup175.if.end171_crit_edge:                   ; preds = %cleanup175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171

cleanup175.if.end181.thread387_crit_edge:         ; preds = %cleanup175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181.thread387

if.end181.thread387:                              ; preds = %cleanup175.if.end181.thread387_crit_edge, %if.then164.if.end181.thread387_crit_edge
  call void @finish_wait(ptr noundef %rd_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %while.cond.backedge

if.then184:                                       ; preds = %if.end171
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @mutex_unlock(ptr noundef %rd_mutex) #9
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %fatal_error187 = getelementptr inbounds %struct.xilly_endpoint, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %fatal_error187 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fatal_error187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool188.not = icmp eq i32 %131, 0
  br i1 %tobool188.not, label %if.end190, label %if.then184.cleanup228_crit_edge

if.then184.cleanup228_crit_edge:                  ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

if.end190:                                        ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %tobool191.not = icmp eq i32 %bytes_done.1, 0
  %.bytes_done.1346 = select i1 %tobool191.not, i32 -4, i32 %bytes_done.1
  br label %cleanup228

while.end:                                        ; preds = %if.end152.while.end_crit_edge, %land.lhs.true149.while.end_crit_edge, %if.end139.while.end_crit_edge
  %tobool210.not = phi i1 [ false, %if.end139.while.end_crit_edge ], [ false, %land.lhs.true149.while.end_crit_edge ], [ true, %if.end152.while.end_crit_edge ]
  %rc.3.ph = phi i32 [ 0, %if.end139.while.end_crit_edge ], [ 0, %land.lhs.true149.while.end_crit_edge ], [ -11, %if.end152.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %rd_mutex) #9
  %rd_synchronous199 = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 36
  %132 = ptrtoint ptr %rd_synchronous199 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rd_synchronous199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool200.not = icmp eq i32 %133, 0
  br i1 %tobool200.not, label %if.then201, label %while.end.if.end204_crit_edge

while.end.if.end204_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

if.then201:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %134 = load ptr, ptr @xillybus_wq, align 4
  %rd_workitem202 = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 38
  %call.i347 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %134, ptr noundef %rd_workitem202, i32 noundef 1) #9
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %while.end.if.end204_crit_edge
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %fatal_error206 = getelementptr inbounds %struct.xilly_endpoint, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %fatal_error206 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fatal_error206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool207.not = icmp ne i32 %138, 0
  %brmerge = or i1 %tobool210.not, %tobool207.not
  %.mux = select i1 %tobool207.not, i32 -5, i32 %rc.3.ph
  br i1 %brmerge, label %if.end204.cleanup228_crit_edge, label %if.end212

if.end204.cleanup228_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

if.end212:                                        ; preds = %if.end204
  %139 = ptrtoint ptr %rd_synchronous199 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rd_synchronous199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool214.not = icmp ne i32 %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_done.1)
  %cmp216 = icmp sgt i32 %bytes_done.1, 0
  %or.cond = select i1 %tobool214.not, i1 %cmp216, i1 false
  br i1 %or.cond, label %if.then218, label %if.end212.if.end227_crit_edge

if.end212.if.end227_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.then218:                                       ; preds = %if.end212
  %141 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %private_data, align 4
  %call220 = call fastcc i32 @xillybus_myflush(ptr noundef %142, i32 noundef 0)
  %143 = zext i32 %call220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call220, label %if.then218.cleanup228_crit_edge [
    i32 0, label %if.then218.if.end227_crit_edge
    i32 -4, label %if.then218.if.end227_crit_edge430
  ]

if.then218.if.end227_crit_edge430:                ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.then218.if.end227_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.then218.cleanup228_crit_edge:                  ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup228

if.end227:                                        ; preds = %if.then218.if.end227_crit_edge, %if.then218.if.end227_crit_edge430, %if.end212.if.end227_crit_edge
  br label %cleanup228

cleanup228:                                       ; preds = %if.end227, %if.then218.cleanup228_crit_edge, %if.end204.cleanup228_crit_edge, %if.end190, %if.then184.cleanup228_crit_edge, %if.then134, %if.end132.cleanup228_crit_edge, %if.then126.cleanup228_crit_edge, %if.end.cleanup228_crit_edge, %entry.cleanup228_crit_edge
  %retval.4 = phi i32 [ %bytes_done.1, %if.end227 ], [ -5, %entry.cleanup228_crit_edge ], [ %call, %if.end.cleanup228_crit_edge ], [ %.mux, %if.end204.cleanup228_crit_edge ], [ %call220, %if.then218.cleanup228_crit_edge ], [ %.bytes_done.1346, %if.end190 ], [ -5, %if.then184.cleanup228_crit_edge ], [ %77, %if.end132.cleanup228_crit_edge ], [ %77, %if.then134 ], [ -5, %if.then126.cleanup228_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ep_wait = getelementptr inbounds %struct.xilly_endpoint, ptr %3, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %ep_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %ep_wait, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %wr_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %wr_synchronous to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wr_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %poll_wait.exit.if.end14_crit_edge

poll_wait.exit.if.end14_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %poll_wait.exit
  %wr_supports_nonempty = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %wr_supports_nonempty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr_supports_nonempty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end14_crit_edge, label %if.then

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %wr_wait = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 17
  br i1 %tobool.not.i, label %if.then.poll_wait.exit83_crit_edge, label %land.lhs.true.i74

if.then.poll_wait.exit83_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit83

land.lhs.true.i74:                                ; preds = %if.then
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait, align 4
  %tobool1.not.i71 = icmp eq ptr %11, null
  %tobool3.not.i72 = icmp eq ptr %wr_wait, null
  %or.cond.i73 = or i1 %tobool3.not.i72, %tobool1.not.i71
  br i1 %or.cond.i73, label %land.lhs.true.i74.land.lhs.true.i81_crit_edge, label %if.then.i75

land.lhs.true.i74.land.lhs.true.i81_crit_edge:    ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i81

if.then.i75:                                      ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %filp, ptr noundef nonnull %wr_wait, ptr noundef nonnull %wait) #9
  br label %land.lhs.true.i81

land.lhs.true.i81:                                ; preds = %if.then.i75, %land.lhs.true.i74.land.lhs.true.i81_crit_edge
  %wr_ready_wait91 = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait, align 4
  %tobool1.not.i78 = icmp eq ptr %13, null
  %tobool3.not.i79 = icmp eq ptr %wr_ready_wait91, null
  %or.cond.i80 = or i1 %tobool3.not.i79, %tobool1.not.i78
  br i1 %or.cond.i80, label %land.lhs.true.i81.poll_wait.exit83_crit_edge, label %if.then.i82

land.lhs.true.i81.poll_wait.exit83_crit_edge:     ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit83

if.then.i82:                                      ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %filp, ptr noundef nonnull %wr_ready_wait91, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit83

poll_wait.exit83:                                 ; preds = %if.then.i82, %land.lhs.true.i81.poll_wait.exit83_crit_edge, %if.then.poll_wait.exit83_crit_edge
  %wr_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wr_spinlock) #9
  %wr_empty = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %wr_empty to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %poll_wait.exit83.if.then8_crit_edge, label %lor.lhs.false

poll_wait.exit83.if.then8_crit_edge:              ; preds = %poll_wait.exit83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %poll_wait.exit83
  %wr_ready = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %wr_ready to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wr_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %poll_wait.exit83.if.then8_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then8, %lor.lhs.false.if.end_crit_edge
  %mask.0 = phi i32 [ 65, %if.then8 ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %wr_hangup = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %wr_hangup to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wr_hangup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  %spec.select = select i1 %tobool9.not, i32 %mask.0, i32 65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wr_spinlock, i32 noundef %call3) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true.if.end14_crit_edge, %poll_wait.exit.if.end14_crit_edge
  %mask.2 = phi i32 [ 0, %poll_wait.exit.if.end14_crit_edge ], [ %spec.select, %if.end ], [ 0, %land.lhs.true.if.end14_crit_edge ]
  %rd_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 35
  %20 = ptrtoint ptr %rd_allow_partial to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rd_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %if.end14.if.end35_crit_edge, label %if.then16

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then16:                                        ; preds = %if.end14
  %rd_wait = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 33
  br i1 %tobool.not.i, label %if.then16.poll_wait.exit90_crit_edge, label %land.lhs.true.i88

if.then16.poll_wait.exit90_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit90

land.lhs.true.i88:                                ; preds = %if.then16
  %22 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wait, align 4
  %tobool1.not.i85 = icmp eq ptr %23, null
  %tobool3.not.i86 = icmp eq ptr %rd_wait, null
  %or.cond.i87 = or i1 %tobool3.not.i86, %tobool1.not.i85
  br i1 %or.cond.i87, label %land.lhs.true.i88.poll_wait.exit90_crit_edge, label %if.then.i89

land.lhs.true.i88.poll_wait.exit90_crit_edge:     ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit90

if.then.i89:                                      ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %filp, ptr noundef nonnull %rd_wait, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit90

poll_wait.exit90:                                 ; preds = %if.then.i89, %land.lhs.true.i88.poll_wait.exit90_crit_edge, %if.then16.poll_wait.exit90_crit_edge
  %rd_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 31
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rd_spinlock) #9
  %rd_full = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 30
  %24 = ptrtoint ptr %rd_full to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rd_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool30.not = icmp eq i32 %25, 0
  %or32 = or i32 %mask.2, 260
  %spec.select68 = select i1 %tobool30.not, i32 %or32, i32 %mask.2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock, i32 noundef %call25) #9
  br label %if.end35

if.end35:                                         ; preds = %poll_wait.exit90, %if.end14.if.end35_crit_edge
  %mask.4 = phi i32 [ %spec.select68, %poll_wait.exit90 ], [ %mask.2, %if.end14.if.end35_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  %or39 = or i32 %mask.4, 8
  %spec.select69 = select i1 %tobool37.not, i32 %mask.4, i32 %or39
  ret i32 %spec.select69
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %endpoint = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endpoint) #9
  %0 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endpoint, align 4, !annotation !193
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %index, align 4, !annotation !193
  %call = call i32 @xillybus_find_inode(ptr noundef %inode, ptr noundef nonnull %endpoint, ptr noundef nonnull %index) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endpoint, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %channels = getelementptr inbounds %struct.xilly_endpoint, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %add = add i32 %9, 1
  %arrayidx = getelementptr ptr, ptr %7, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %private_data, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %13 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_mode, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %land.lhs.true

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %num_wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 5
  %15 = ptrtoint ptr %num_wr_buffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_wr_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %and9 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true11:                                  ; preds = %if.end7
  %num_rd_buffers = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 25
  %17 = ptrtoint ptr %num_rd_buffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rd_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  br i1 %tobool4.not, label %if.end14.if.end27_crit_edge, label %land.lhs.true18

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true18:                                  ; preds = %if.end14
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %19 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_flags, align 4
  %and19 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end27_crit_edge, label %land.lhs.true21

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %wr_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 20
  %21 = ptrtoint ptr %wr_synchronous to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wr_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not = icmp eq i32 %22, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %land.lhs.true21.do.end_crit_edge

land.lhs.true21.do.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %wr_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 21
  %23 = ptrtoint ptr %wr_allow_partial to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false24

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %wr_supports_nonempty = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 23
  %25 = ptrtoint ptr %wr_supports_nonempty to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_supports_nonempty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not = icmp eq i32 %26, 0
  br i1 %tobool25.not, label %lor.lhs.false24.do.end_crit_edge, label %lor.lhs.false24.if.end27_crit_edge

lor.lhs.false24.if.end27_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

lor.lhs.false24.do.end_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false24.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %land.lhs.true21.do.end_crit_edge
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.74) #12
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false24.if.end27_crit_edge, %land.lhs.true18.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  br i1 %tobool10.not, label %if.end27.if.end44_crit_edge, label %land.lhs.true31

if.end27.if.end44_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true31:                                  ; preds = %if.end27
  %f_flags32 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %29 = ptrtoint ptr %f_flags32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_flags32, align 4
  %and33 = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true31.if.end44_crit_edge, label %land.lhs.true35

land.lhs.true31.if.end44_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %rd_synchronous = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 36
  %31 = ptrtoint ptr %rd_synchronous to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rd_synchronous, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool36.not = icmp eq i32 %32, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %land.lhs.true35.do.end42_crit_edge

land.lhs.true35.do.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

lor.lhs.false37:                                  ; preds = %land.lhs.true35
  %rd_allow_partial = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 35
  %33 = ptrtoint ptr %rd_allow_partial to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rd_allow_partial, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool38.not = icmp eq i32 %34, 0
  br i1 %tobool38.not, label %lor.lhs.false37.do.end42_crit_edge, label %lor.lhs.false37.if.end44_crit_edge

lor.lhs.false37.if.end44_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

lor.lhs.false37.do.end42_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false37.do.end42_crit_edge, %land.lhs.true35.do.end42_crit_edge
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.77) #12
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false37.if.end44_crit_edge, %land.lhs.true31.if.end44_crit_edge, %if.end27.if.end44_crit_edge
  br i1 %tobool4.not, label %if.end44.if.end53_crit_edge, label %if.then48

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then48:                                        ; preds = %if.end44
  %wr_mutex = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 16
  %call49 = call i32 @mutex_lock_interruptible_nested(ptr noundef %wr_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %37 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_mode, align 8
  %and55 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end62_crit_edge, label %if.then57

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then57:                                        ; preds = %if.end53
  %rd_mutex = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 32
  %call58 = call i32 @mutex_lock_interruptible_nested(ptr noundef %rd_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.if.end62_crit_edge, label %if.then57.unlock_wr_crit_edge

if.then57.unlock_wr_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_wr

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %if.end53.if.end62_crit_edge
  %39 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f_mode, align 8
  %and64 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end70_crit_edge, label %land.lhs.true66

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true66:                                  ; preds = %if.end62
  %wr_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 19
  %41 = ptrtoint ptr %wr_ref_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wr_ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not = icmp eq i32 %42, 0
  br i1 %cmp.not, label %land.lhs.true66.if.end70_crit_edge, label %land.lhs.true67

land.lhs.true66.if.end70_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true67:                                  ; preds = %land.lhs.true66
  %wr_exclusive_open = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 22
  %43 = ptrtoint ptr %wr_exclusive_open to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wr_exclusive_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool68.not = icmp eq i32 %44, 0
  br i1 %tobool68.not, label %land.lhs.true67.if.end70_crit_edge, label %land.lhs.true67.unlock_crit_edge

land.lhs.true67.unlock_crit_edge:                 ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

land.lhs.true67.if.end70_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true67.if.end70_crit_edge, %land.lhs.true66.if.end70_crit_edge, %if.end62.if.end70_crit_edge
  %and72 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end79_crit_edge, label %land.lhs.true74

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true74:                                  ; preds = %if.end70
  %rd_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 34
  %45 = ptrtoint ptr %rd_ref_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rd_ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp75.not = icmp eq i32 %46, 0
  br i1 %cmp75.not, label %land.lhs.true74.if.end79_crit_edge, label %land.lhs.true76

land.lhs.true74.if.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true76:                                  ; preds = %land.lhs.true74
  %rd_exclusive_open = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 37
  %47 = ptrtoint ptr %rd_exclusive_open to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rd_exclusive_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool77.not = icmp eq i32 %48, 0
  br i1 %tobool77.not, label %land.lhs.true76.if.end79_crit_edge, label %land.lhs.true76.unlock_crit_edge

land.lhs.true76.unlock_crit_edge:                 ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

land.lhs.true76.if.end79_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true76.if.end79_crit_edge, %land.lhs.true74.if.end79_crit_edge, %if.end70.if.end79_crit_edge
  br i1 %tobool65.not, label %if.end79.if.end105_crit_edge, label %if.then83

if.end79.if.end105_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then83:                                        ; preds = %if.end79
  %wr_ref_count84 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 19
  %49 = ptrtoint ptr %wr_ref_count84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wr_ref_count84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp85 = icmp eq i32 %50, 0
  br i1 %cmp85, label %do.body88, label %if.then83.if.end103_crit_edge

if.then83.if.end103_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

do.body88:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %wr_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 15
  %call91 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wr_spinlock) #9
  %wr_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 8
  %51 = ptrtoint ptr %wr_host_buf_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %wr_host_buf_idx, align 4
  %wr_host_buf_pos = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 9
  %52 = ptrtoint ptr %wr_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %wr_host_buf_pos, align 4
  %wr_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 7
  %53 = ptrtoint ptr %wr_fpga_buf_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %wr_fpga_buf_idx, align 4
  %wr_empty = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 10
  %54 = ptrtoint ptr %wr_empty to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %wr_empty, align 4
  %wr_ready = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 11
  %55 = ptrtoint ptr %wr_ready to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %wr_ready, align 4
  %wr_sleepy = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 12
  %56 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %wr_sleepy, align 4
  %wr_eof = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 13
  %57 = ptrtoint ptr %wr_eof to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %wr_eof, align 4
  %wr_hangup = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 14
  %58 = ptrtoint ptr %wr_hangup to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %wr_hangup, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wr_spinlock, i32 noundef %call91) #9
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 1
  %59 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan_num, align 4
  %shl = shl i32 %60, 1
  %wr_synchronous98 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 20
  %61 = ptrtoint ptr %wr_synchronous98 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wr_synchronous98, align 4
  %and99 = shl i32 %62, 23
  %shl100 = and i32 %and99, 8388608
  %or97 = or i32 %shl, %shl100
  %or101 = or i32 %or97, 67108865
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %11, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %67 = call i32 @llvm.bswap.i32(i32 %or101) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %67) #9, !srcloc !185
  br label %if.end103

if.end103:                                        ; preds = %do.body88, %if.then83.if.end103_crit_edge
  %68 = ptrtoint ptr %wr_ref_count84 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wr_ref_count84, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %wr_ref_count84, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end103, %if.end79.if.end105_crit_edge
  %70 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %f_mode, align 8
  %and107 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.unlock_crit_edge, label %if.then109

if.end105.unlock_crit_edge:                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then109:                                       ; preds = %if.end105
  %rd_ref_count110 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 34
  %72 = ptrtoint ptr %rd_ref_count110 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rd_ref_count110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp111 = icmp eq i32 %73, 0
  br i1 %cmp111, label %do.body115, label %if.then109.if.end136_crit_edge

if.then109.if.end136_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

do.body115:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  %rd_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 31
  %call122 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rd_spinlock) #9
  %rd_host_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 29
  %74 = ptrtoint ptr %rd_host_buf_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %rd_host_buf_idx, align 4
  %rd_host_buf_pos = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 28
  %75 = ptrtoint ptr %rd_host_buf_pos to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %rd_host_buf_pos, align 4
  %arrayidx127 = getelementptr %struct.xilly_channel, ptr %11, i32 0, i32 39, i32 3
  %76 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx127, align 1
  %num_rd_buffers128 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 25
  %77 = ptrtoint ptr %num_rd_buffers128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_rd_buffers128, align 4
  %sub = add i32 %78, -1
  %rd_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 27
  %79 = ptrtoint ptr %rd_fpga_buf_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub, ptr %rd_fpga_buf_idx, align 4
  %rd_full = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 30
  %80 = ptrtoint ptr %rd_full to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %rd_full, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rd_spinlock, i32 noundef %call122) #9
  %chan_num130 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 1
  %81 = ptrtoint ptr %chan_num130 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chan_num130, align 4
  %shl131 = shl i32 %82, 1
  %or132 = or i32 %shl131, 67108864
  %83 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %11, align 4
  %registers134 = getelementptr inbounds %struct.xilly_endpoint, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %registers134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %registers134, align 4
  %add.ptr135 = getelementptr i8, ptr %86, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %87 = call i32 @llvm.bswap.i32(i32 %or132) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %87) #9, !srcloc !185
  br label %if.end136

if.end136:                                        ; preds = %do.body115, %if.then109.if.end136_crit_edge
  %88 = ptrtoint ptr %rd_ref_count110 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rd_ref_count110, align 4
  %inc138 = add i32 %89, 1
  store i32 %inc138, ptr %rd_ref_count110, align 4
  br label %unlock

unlock:                                           ; preds = %if.end136, %if.end105.unlock_crit_edge, %land.lhs.true76.unlock_crit_edge, %land.lhs.true67.unlock_crit_edge
  %rc.2 = phi i32 [ 0, %if.end136 ], [ 0, %if.end105.unlock_crit_edge ], [ -16, %land.lhs.true67.unlock_crit_edge ], [ -16, %land.lhs.true76.unlock_crit_edge ]
  %90 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %f_mode, align 8
  %and141 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %unlock.unlock_wr_crit_edge, label %if.then143

unlock.unlock_wr_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_wr

if.then143:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  %rd_mutex144 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 32
  call void @mutex_unlock(ptr noundef %rd_mutex144) #9
  br label %unlock_wr

unlock_wr:                                        ; preds = %if.then143, %unlock.unlock_wr_crit_edge, %if.then57.unlock_wr_crit_edge
  %rc.3 = phi i32 [ %call58, %if.then57.unlock_wr_crit_edge ], [ %rc.2, %if.then143 ], [ %rc.2, %unlock.unlock_wr_crit_edge ]
  %92 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %f_mode, align 8
  %and147 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %unlock_wr.if.end151_crit_edge, label %if.then149

unlock_wr.if.end151_crit_edge:                    ; preds = %unlock_wr
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then149:                                       ; preds = %unlock_wr
  call void @__sanitizer_cov_trace_pc() #11
  %wr_mutex150 = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %wr_mutex150) #9
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %unlock_wr.if.end151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool152.not = icmp eq i32 %rc.3, 0
  br i1 %tobool152.not, label %land.lhs.true153, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true153:                                 ; preds = %if.end151
  %seekable = getelementptr inbounds %struct.xilly_channel, ptr %11, i32 0, i32 3
  %94 = ptrtoint ptr %seekable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %seekable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool154.not = icmp eq i32 %95, 0
  br i1 %tobool154.not, label %if.then155, label %land.lhs.true153.cleanup_crit_edge

land.lhs.true153.cleanup_crit_edge:               ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then155:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  %call156 = call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then155, %land.lhs.true153.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %do.end42, %do.end, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end42 ], [ %call156, %if.then155 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %land.lhs.true11.cleanup_crit_edge ], [ %call49, %if.then48.cleanup_crit_edge ], [ 0, %land.lhs.true153.cleanup_crit_edge ], [ %rc.3, %if.end151.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endpoint) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_flush(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @xillybus_myflush(ptr noundef %3, i32 noundef 100)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xillybus_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fatal_error = getelementptr inbounds %struct.xilly_endpoint, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup75_crit_edge

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %rd_mutex = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex, i32 noundef 0) #9
  %rd_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %rd_ref_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_ref_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %rd_ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then4, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %chan_num = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan_num, align 4
  %shl = shl i32 %11, 1
  %or = or i32 %shl, 83886080
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %registers = getelementptr inbounds %struct.xilly_endpoint, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #9, !srcloc !185
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %rd_mutex) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %17 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_mode, align 8
  %and10 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.cleanup75_crit_edge, label %if.then12

if.end8.cleanup75_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup75

if.then12:                                        ; preds = %if.end8
  %wr_mutex = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %wr_mutex, i32 noundef 0) #9
  %wr_ref_count = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %wr_ref_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wr_ref_count, align 4
  %dec13 = add i32 %20, -1
  store i32 %dec13, ptr %wr_ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec13)
  %cmp15 = icmp eq i32 %dec13, 0
  br i1 %cmp15, label %if.then16, label %if.then12.if.end72_crit_edge

if.then12.if.end72_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then16:                                        ; preds = %if.then12
  %chan_num17 = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %chan_num17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan_num17, align 4
  %shl18 = shl i32 %22, 1
  %or20 = or i32 %shl18, 83886081
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %registers22 = getelementptr inbounds %struct.xilly_endpoint, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %registers22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %registers22, align 4
  %add.ptr23 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or20) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %27) #9, !srcloc !185
  %wr_spinlock = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 15
  %wr_fpga_buf_idx = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 7
  %wr_eof = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 13
  %wr_sleepy = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 12
  %num_wr_buffers = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 5
  %wr_wait = getelementptr inbounds %struct.xilly_channel, ptr %1, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %if.end62.while.cond_crit_edge, %if.then16
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wr_spinlock) #9
  %28 = ptrtoint ptr %wr_fpga_buf_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wr_fpga_buf_idx, align 4
  %30 = ptrtoint ptr %wr_eof to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wr_eof, align 4
  %32 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %wr_sleepy, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wr_spinlock, i32 noundef %call26) #9
  %inc = add i32 %29, 1
  %33 = ptrtoint ptr %num_wr_buffers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_wr_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %34)
  %cmp30 = icmp eq i32 %inc, %34
  %spec.store.select = select i1 %cmp30, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %31)
  %cmp34 = icmp eq i32 %spec.store.select, %31
  br i1 %cmp34, label %while.cond.if.end72_crit_edge, label %if.end37

while.cond.if.end72_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end37:                                         ; preds = %while.cond
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1647) #9
  %35 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool45.not = icmp eq i32 %36, 0
  br i1 %tobool45.not, label %if.end37.if.end62_crit_edge, label %if.then46

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then46:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call48122 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %38 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wr_sleepy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not123 = icmp eq i32 %39, 0
  br i1 %tobool50.not123, label %if.then46.if.end58.thread118_crit_edge, label %if.then46.if.end52_crit_edge

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  br label %if.end52

if.then46.if.end58.thread118_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread118

if.end52:                                         ; preds = %cleanup.if.end52_crit_edge, %if.then46.if.end52_crit_edge
  %call48124 = phi i32 [ %call48, %cleanup.if.end52_crit_edge ], [ %call48122, %if.then46.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48124)
  %tobool53.not = icmp eq i32 %call48124, 0
  br i1 %tobool53.not, label %cleanup, label %if.then61

cleanup:                                          ; preds = %if.end52
  call void @schedule() #9
  %call48 = call i32 @prepare_to_wait_event(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %40 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wr_sleepy, align 4
  %tobool50.not = icmp eq i32 %41, 0
  br i1 %tobool50.not, label %cleanup.if.end58.thread118_crit_edge, label %cleanup.if.end52_crit_edge

cleanup.if.end52_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

cleanup.if.end58.thread118_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.thread118

if.end58.thread118:                               ; preds = %cleanup.if.end58.thread118_crit_edge, %if.then46.if.end58.thread118_crit_edge
  call void @finish_wait(ptr noundef %wr_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end62thread-pre-split

if.then61:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @msleep(i32 noundef 100) #9
  br label %if.end62thread-pre-split

if.end62thread-pre-split:                         ; preds = %if.then61, %if.end58.thread118
  %42 = ptrtoint ptr %wr_sleepy to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %wr_sleepy, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62thread-pre-split, %if.end37.if.end62_crit_edge
  %43 = phi i32 [ %.pr, %if.end62thread-pre-split ], [ 0, %if.end37.if.end62_crit_edge ]
  %tobool64.not = icmp eq i32 %43, 0
  br i1 %tobool64.not, label %if.end62.while.cond_crit_edge, label %if.then65

if.end62.while.cond_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %wr_mutex) #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.79) #12
  br label %cleanup75

if.end72:                                         ; preds = %while.cond.if.end72_crit_edge, %if.then12.if.end72_crit_edge
  call void @mutex_unlock(ptr noundef %wr_mutex) #9
  br label %cleanup75

cleanup75:                                        ; preds = %if.end72, %if.then65, %if.end8.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ -4, %if.then65 ], [ -5, %entry.cleanup75_crit_edge ], [ 0, %if.end72 ], [ 0, %if.end8.cleanup75_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xillybus_find_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !171, !172, !173}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__UNIQUE_ID_description234, !1, !"__UNIQUE_ID_description234", i1 false, i1 false}
!1 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_author235, !3, !"__UNIQUE_ID_author235", i1 false, i1 false}
!3 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias236, !5, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!5 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_file237, !7, !"__UNIQUE_ID_file237", i1 false, i1 false}
!7 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 37, i32 1}
!8 = !{ptr @__UNIQUE_ID_license238, !7, !"__UNIQUE_ID_license238", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 131, i32 4}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @xillybus_isr._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @xillybus_isr._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 138, i32 5}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xillybus_isr._entry.5, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @xillybus_isr._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 155, i32 3}
!24 = !{ptr @xillybus_isr._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @xillybus_isr._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 266, i32 4}
!28 = !{ptr @xillybus_isr._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xillybus_isr._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_xillybus_isr, !31, !"__ksymtab_xillybus_isr", i1 false, i1 false}
!31 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 284, i32 1}
!32 = !{ptr @xillybus_init_endpoint.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1818, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @xillybus_init_endpoint.__key.16, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1819, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__ksymtab_xillybus_init_endpoint, !39, !"__ksymtab_xillybus_init_endpoint", i1 false, i1 false}
!39 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1823, i32 1}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1901, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xillybus_endpoint_discovery._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @xillybus_endpoint_discovery._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_xillybus_endpoint_discovery, !46, !"__ksymtab_xillybus_endpoint_discovery", i1 false, i1 false}
!46 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1959, i32 1}
!47 = !{ptr @__ksymtab_xillybus_endpoint_remove, !48, !"__ksymtab_xillybus_endpoint_remove", i1 false, i1 false}
!48 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1973, i32 1}
!49 = !{ptr @__initcall__kmod_xillybus_core__239_1990_xillybus_init6, !50, !"__initcall__kmod_xillybus_core__239_1990_xillybus_init6", i1 false, i1 false}
!50 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1990, i32 1}
!51 = !{ptr @__exitcall_xillybus_exit, !52, !"__exitcall_xillybus_exit", i1 false, i1 false}
!52 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1991, i32 1}
!53 = !{ptr @xillybus_wq, !54, !"xillybus_wq", i1 false, i1 false}
!54 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 60, i32 33}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 101, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @malformed_message._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @malformed_message._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @xilly_setupchannels.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 489, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @xilly_setupchannels.__key.23, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 490, i32 3}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @xilly_setupchannels.__key.25, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 491, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xilly_setupchannels.__key.27, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 492, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @xilly_setupchannels.__key.29, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 493, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @xilly_setupchannels.__key.31, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 494, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xilly_setupchannels.__key.33, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 495, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @xilly_setupchannels.__key.35, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 497, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @xilly_setupchannels.__key.37, !82, !"__key", i1 false, i1 false}
!85 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 523, i32 4}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @xilly_setupchannels._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @xilly_setupchannels._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 582, i32 3}
!93 = !{ptr @xilly_setupchannels._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @xilly_setupchannels._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1195, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xillybus_autoflush._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @xillybus_autoflush._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1198, i32 3}
!102 = !{ptr @xillybus_autoflush._entry.46, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @xillybus_autoflush._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1155, i32 4}
!106 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @xillybus_myflush._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @xillybus_myflush._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 369, i32 4}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @xilly_get_dma_buffers._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @xilly_get_dma_buffers._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 651, i32 3}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @xilly_obtain_idt._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @xilly_obtain_idt._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 665, i32 3}
!125 = !{ptr @xilly_obtain_idt._entry.57, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @xilly_obtain_idt._entry_ptr.59, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 673, i32 3}
!129 = !{ptr @xilly_obtain_idt._entry.60, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @xilly_obtain_idt._entry_ptr.62, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 681, i32 3}
!133 = !{ptr @xilly_obtain_idt._entry.63, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @xilly_obtain_idt._entry_ptr.65, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 612, i32 3}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @xilly_scan_idt._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @xilly_scan_idt._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 621, i32 3}
!142 = !{ptr @xilly_scan_idt._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @xilly_scan_idt._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @xillybus_fops, !145, !"xillybus_fops", i1 false, i1 false}
!145 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1794, i32 37}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1460, i32 3}
!155 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @xillybus_open._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @xillybus_open._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1467, i32 3}
!160 = !{ptr @xillybus_open._entry.76, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @xillybus_open._entry_ptr.78, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1652, i32 6}
!164 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @xillybus_release._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @xillybus_release._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @xillyname, !168, !"xillyname", i1 false, i1 false}
!168 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 58, i32 19}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/char/xillybus/xillybus_core.c", i32 1838, i32 3}
!171 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @xilly_quiesce._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @xilly_quiesce._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2152361597}
!185 = !{i64 4819475}
!186 = !{!"branch_weights", i32 1, i32 2000}
!187 = !{!"branch_weights", i32 2000, i32 1}
!188 = !{i64 2153344915, i64 2153344940}
!189 = !{i64 2153344234, i64 2153344259}
!190 = !{i64 5839789}
!191 = !{i64 5839986}
!192 = !{i64 2153325219}
!193 = !{!"auto-init"}
